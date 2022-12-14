from dataclasses import dataclass
from typing import Dict
from typing import List, Optional

from absl import logging
from smart_arg import LateInit
from smart_arg import arg_suite

from smart_compose.utils import parsing_utils


class Arg:
    """Helper class for cooperative multi-inheritance"""

    def _set_late_init_attr(self, attr, value):
        """Sets an attribute as empty list if it's LateInit"""
        if getattr(self, attr) is LateInit:
            setattr(self, attr, value)

    def __post_init__(self):
        pass


@dataclass
class NetworkArg(Arg):
    """Neural network related arguments"""
    num_units: int = 50  # Dimension of embedding. Also used as the hidden state size in RNN cell
    beam_width: int = 10  # Beam width of beam search decoding
    max_decode_length: int = 3  # Max length of decoding
    length_norm_power: float = 0.  # Power of length normalization. Larger value means more penalty on long sequences generated by beam search
    min_seq_prob: float = 0.  # Minimum probability of the emitted sequence. If set to zero, then no pruning will be performed


@dataclass
class FeatureArg(Arg):
    """Feature related arguments"""
    target_column_name: str = ''  # Column name of the text source field

    # Vocab and word embedding
    vocab_file: str = ''  # Vocab file
    vocab_hub_url: str = ''  # TF hub url to vocab layer
    we_file: str = ''  # Pretrained word embedding file
    embedding_hub_url: str = ''  # TF hub url to embedding layer
    we_trainable: bool = True  # Whether to train word embedding

    # Special tokens
    PAD: str = '[PAD]'  # Token for padding
    SEP: str = '[SEP]'  # Token for sentence separation
    CLS: str = '[CLS]'  # Token for start of sentence
    UNK: str = '[UNK]'  # Token for unknown word
    MASK: str = '[MASK]'  # Token for masked word

    max_len: int = 32  # Max sent length.
    min_len: int = 3  # Min sent length.

    # Late init variables inferred from post initialization. DO NOT pass any values to the following arguments
    feature_type_2_name: Dict[str, str] = LateInit  # Late init only. DO NOT pass value. Map of feature type to feature names

    def __post_init__(self):
        super().__post_init__()

        assert self.target_column_name, "target_column_name should not be empty"

        if not self.embedding_hub_url:
            assert self.vocab_hub_url or self.vocab_file, "If embedding hub url is not specified, vocab hub url or vocab file must be given"

        # Assemble feature map
        self.feature_type_2_name = dict()
        all_ftr_names = list()
        for ftr_type in parsing_utils.get_feature_types():
            assert hasattr(self, ftr_type), f'{ftr_type} must be defined in Smart Compose argument parser'
            ftr_name = getattr(self, ftr_type)
            if ftr_name:
                self.feature_type_2_name[ftr_type] = ftr_name

                ftr_name = [ftr_name] if not isinstance(ftr_name, list) else ftr_name
                all_ftr_names += ftr_name
                assert len(set(all_ftr_names)) == len(
                    all_ftr_names), f'Duplicate feature names for feature type {ftr_type}'


@dataclass
class DatasetArg(Arg):
    """Dataset related arguments"""
    num_gpu: int = -1  # Number of GPU for training
    distribution_strategy: str = ''  # Distributed training strategy. Reference: tf official models: official/common/distribute_utils.py#L102

    __distribution_strategy = {'choices': ['one_device', 'mirrored', 'parameter_server', 'multi_worker_mirrored', 'tpu']}
    all_reduce_alg: Optional[str] = None  # All reduce algorithm. Reference: tf official models: official/common/distribute_utils.py#L102
    __all_reduce_alg = {'choices': ["hierarchical_copy", "nccl", "ring"]}

    run_eagerly: bool = False  # Whether to run in eager mode. Use True for debugging and False for speed

    train_file: str = ''  # Train file.
    dev_file: str = ''  # Dev file.
    test_file: str = ''  # Test file.
    out_dir: str = ''  # Store log/model files.

    num_train_steps: int = 1  # Num steps to train.
    num_eval_steps: int = 0  # Num steps to eval.
    num_epochs: int = 0  # Num of epochs to train, will overwrite train_steps if set
    steps_per_stats: int = 100  # training steps to print statistics.
    num_eval_rounds: int = 0  # number of evaluation round, this param will override steps_per_eval as max(1, num_train_steps / num_eval_rounds)
    steps_per_eval: int = 1000  # training steps to evaluate datasets.

    resume_training: bool = False  # Whether to resume training from checkpoint in out_dir.
    keep_checkpoint_max: int = 5  # The maximum number of recent checkpoint files to keep. If 0, all checkpoint files are kept. Defaults to 5

    train_batch_size: int = 32  # Training data batch size.
    test_batch_size: int = 32  # Test data batch size.

    def __post_init__(self):
        super().__post_init__()

        # Check matches between distribution strategy and all reduce algorithm. Reference: tf official models: official/common/distribute_utils.py#L102
        if self.all_reduce_alg is not None:
            if self.distribution_strategy == 'mirrored':
                assert self.all_reduce_alg in [None, 'nccl', 'hierarchical_copy']
            elif self.distribution_strategy == 'multi_worker_mirrored':
                assert self.all_reduce_alg in [None, 'nccl', 'ring']
            else:
                raise NotImplementedError(
                    f'Unsupported all reduce algorithm {self.all_reduce_alg} for chosen distribution strategy {self.distribution_strategy}')

        assert self.train_file, 'training_file must be specified'
        assert self.dev_file, 'dev_file must be specified'
        assert self.test_file, 'test_file must be specified'

        assert self.out_dir, 'out_dir must be specified'

        assert self.num_gpu >= 0, 'num_gpu must be specified'
        assert self.distribution_strategy, 'distribution_strategy must be specified'
        assert self.keep_checkpoint_max >= 0, 'keep_checkpoint_max must >= 0'

        # If epoch is set, overwrite training steps
        if self.num_epochs:
            steps_per_epoch = parsing_utils.estimate_steps_per_epoch(self.train_file, self.train_batch_size)
            self.num_train_steps = steps_per_epoch * self.num_epochs

        # If num_eval_rounds is set, override steps_per_eval
        assert self.num_eval_rounds >= 0, 'num_eval_rounds must be non-negative integers'
        if self.num_eval_rounds:
            self.steps_per_eval = max(1, int(self.num_train_steps / self.num_eval_rounds))

        if self.steps_per_stats > self.steps_per_eval:
            logging.error('steps_per_stats: %d is specified to be greater than steps_per_eval: %d, we will use steps_per_eval as'
                          ' steps_per_stats.', self.steps_per_stats, self.steps_per_eval)
            self.steps_per_stats = self.steps_per_eval


@dataclass
class OptimizationArg(Arg):
    """Optimization related arguments"""
    random_seed: int = 1234  # Random seed for experiment. Use the same random seed for experiment repeatability

    use_lr_schedule: bool = True  # Whether to use warmup and decay on learning rate
    num_warmup_steps: int = 0  # Num steps for warmup. TODO: change to warm up ratio in the future
    optimizer: str = 'sgd'  # Type of optimizer to use. adamw is the AdamWeightDecay optimizer
    use_bias_correction_for_adamw: bool = False  # Whether to use bias correction for AdamWeightDecay optimizer
    __optimizer = {'choices': ['sgd', 'adam', 'adamw', 'lamb']}
    max_gradient_norm: float = 1.0  # Clip gradients to this norm.

    learning_rate: float = 1.0  # Learning rate
    lr_bert: float = 0.001  # Learning rate for BERT

    l1: float = 0.  # Scale of L1 regularization
    l2: float = 0.  # Scale of L2 regularization

    pmetric: str = ''  # Primary metric
    __pmetric = {'choices': ['perplexity']}
    all_metrics: Optional[List[str]] = None  # All metrics

    explicit_allreduce: bool = True  # Whether to perform explicit allreduce

    def __post_init__(self):
        super().__post_init__()
        assert self.l1 >= 0, "l1 scale must be non-negative"
        assert self.l2 >= 0, "l2 scale must be non-negative"

        assert self.pmetric, "Please set your primary evaluation metric using --pmetric option"

        # Set all relevant evaluation metrics
        all_metrics = self.all_metrics if self.all_metrics else [self.pmetric]
        assert self.pmetric in all_metrics, "pmetric must be within all_metrics"
        self.all_metrics = all_metrics


@arg_suite
@dataclass
class SmartComposeArg(DatasetArg, FeatureArg, OptimizationArg, NetworkArg):
    def __post_init__(self):
        """ Post initializes fields

        This method is automatically called by smart-arg once the argument is created by parsing cli or the constructor
        """
        logging.info(f"Start __post_init__ the argument now: {self}")
        super().__post_init__()
