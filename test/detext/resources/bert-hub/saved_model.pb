άΧ%
Π’
B
AssignVariableOp
resource
value"dtype"
dtypetype
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
Ύ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized
"serve*2.3.02v2.3.0-rc2-23-gb36436b0878€!
W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 

VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
R
Variable/AssignAssignVariableOpVariableasset_path_initializer*
dtype0
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
h

Variable_1VarHandleOp*
_output_shapes
: *
dtype0
*
shape: *
shared_name
Variable_1
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0


word_embeddings/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*+
shared_nameword_embeddings/embeddings

.word_embeddings/embeddings/Read/ReadVariableOpReadVariableOpword_embeddings/embeddings*
_output_shapes

:d*
dtype0

position_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_nameposition_embedding/embeddings

1position_embedding/embeddings/Read/ReadVariableOpReadVariableOpposition_embedding/embeddings*
_output_shapes
:	*
dtype0

type_embeddings/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nametype_embeddings/embeddings

.type_embeddings/embeddings/Read/ReadVariableOpReadVariableOptype_embeddings/embeddings*
_output_shapes

:*
dtype0

embeddings/layer_norm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameembeddings/layer_norm/gamma

/embeddings/layer_norm/gamma/Read/ReadVariableOpReadVariableOpembeddings/layer_norm/gamma*
_output_shapes
:*
dtype0

embeddings/layer_norm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameembeddings/layer_norm/beta

.embeddings/layer_norm/beta/Read/ReadVariableOpReadVariableOpembeddings/layer_norm/beta*
_output_shapes
:*
dtype0
Ύ
/transformer/layer_0/self_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/transformer/layer_0/self_attention/query/kernel
·
Ctransformer/layer_0/self_attention/query/kernel/Read/ReadVariableOpReadVariableOp/transformer/layer_0/self_attention/query/kernel*"
_output_shapes
:*
dtype0
Ά
-transformer/layer_0/self_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*>
shared_name/-transformer/layer_0/self_attention/query/bias
―
Atransformer/layer_0/self_attention/query/bias/Read/ReadVariableOpReadVariableOp-transformer/layer_0/self_attention/query/bias*
_output_shapes

:*
dtype0
Ί
-transformer/layer_0/self_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-transformer/layer_0/self_attention/key/kernel
³
Atransformer/layer_0/self_attention/key/kernel/Read/ReadVariableOpReadVariableOp-transformer/layer_0/self_attention/key/kernel*"
_output_shapes
:*
dtype0
²
+transformer/layer_0/self_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+transformer/layer_0/self_attention/key/bias
«
?transformer/layer_0/self_attention/key/bias/Read/ReadVariableOpReadVariableOp+transformer/layer_0/self_attention/key/bias*
_output_shapes

:*
dtype0
Ύ
/transformer/layer_0/self_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/transformer/layer_0/self_attention/value/kernel
·
Ctransformer/layer_0/self_attention/value/kernel/Read/ReadVariableOpReadVariableOp/transformer/layer_0/self_attention/value/kernel*"
_output_shapes
:*
dtype0
Ά
-transformer/layer_0/self_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*>
shared_name/-transformer/layer_0/self_attention/value/bias
―
Atransformer/layer_0/self_attention/value/bias/Read/ReadVariableOpReadVariableOp-transformer/layer_0/self_attention/value/bias*
_output_shapes

:*
dtype0
Τ
:transformer/layer_0/self_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:transformer/layer_0/self_attention/attention_output/kernel
Ν
Ntransformer/layer_0/self_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp:transformer/layer_0/self_attention/attention_output/kernel*"
_output_shapes
:*
dtype0
Θ
8transformer/layer_0/self_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8transformer/layer_0/self_attention/attention_output/bias
Α
Ltransformer/layer_0/self_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp8transformer/layer_0/self_attention/attention_output/bias*
_output_shapes
:*
dtype0
Ύ
3transformer/layer_0/self_attention_layer_norm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53transformer/layer_0/self_attention_layer_norm/gamma
·
Gtransformer/layer_0/self_attention_layer_norm/gamma/Read/ReadVariableOpReadVariableOp3transformer/layer_0/self_attention_layer_norm/gamma*
_output_shapes
:*
dtype0
Ό
2transformer/layer_0/self_attention_layer_norm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42transformer/layer_0/self_attention_layer_norm/beta
΅
Ftransformer/layer_0/self_attention_layer_norm/beta/Read/ReadVariableOpReadVariableOp2transformer/layer_0/self_attention_layer_norm/beta*
_output_shapes
:*
dtype0
ͺ
'transformer/layer_0/intermediate/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'transformer/layer_0/intermediate/kernel
£
;transformer/layer_0/intermediate/kernel/Read/ReadVariableOpReadVariableOp'transformer/layer_0/intermediate/kernel*
_output_shapes

: *
dtype0
’
%transformer/layer_0/intermediate/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%transformer/layer_0/intermediate/bias

9transformer/layer_0/intermediate/bias/Read/ReadVariableOpReadVariableOp%transformer/layer_0/intermediate/bias*
_output_shapes
: *
dtype0

!transformer/layer_0/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *2
shared_name#!transformer/layer_0/output/kernel

5transformer/layer_0/output/kernel/Read/ReadVariableOpReadVariableOp!transformer/layer_0/output/kernel*
_output_shapes

: *
dtype0

transformer/layer_0/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!transformer/layer_0/output/bias

3transformer/layer_0/output/bias/Read/ReadVariableOpReadVariableOptransformer/layer_0/output/bias*
_output_shapes
:*
dtype0
?
+transformer/layer_0/output_layer_norm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+transformer/layer_0/output_layer_norm/gamma
§
?transformer/layer_0/output_layer_norm/gamma/Read/ReadVariableOpReadVariableOp+transformer/layer_0/output_layer_norm/gamma*
_output_shapes
:*
dtype0
¬
*transformer/layer_0/output_layer_norm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*transformer/layer_0/output_layer_norm/beta
₯
>transformer/layer_0/output_layer_norm/beta/Read/ReadVariableOpReadVariableOp*transformer/layer_0/output_layer_norm/beta*
_output_shapes
:*
dtype0

pooler_transform/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_namepooler_transform/kernel

+pooler_transform/kernel/Read/ReadVariableOpReadVariableOppooler_transform/kernel*
_output_shapes

:*
dtype0

pooler_transform/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namepooler_transform/bias
{
)pooler_transform/bias/Read/ReadVariableOpReadVariableOppooler_transform/bias*
_output_shapes
:*
dtype0

NoOpNoOp^Variable/Assign
e
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ηd
value½dBΊd B³d
Σ
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3

vocab_file
do_lower_case
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
 
 
 

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	variables
regularization_losses
trainable_variables
	keras_api
 
HF
VARIABLE_VALUE
Variable_1(do_lower_case/.ATTRIBUTES/VARIABLE_VALUE
Ά
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
23
 
?
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
­
4non_trainable_variables
5layer_metrics

6layers
7metrics
	variables
regularization_losses
8layer_regularization_losses
	trainable_variables
 
 
b

embeddings
9	variables
:regularization_losses
;trainable_variables
<	keras_api
 
|

embeddings
_position_embeddings
=	variables
>regularization_losses
?trainable_variables
@	keras_api
b

embeddings
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
R
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
q
Iaxis
	 gamma
!beta
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
R
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
 
R
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
΅
V_attention_layer
W_attention_output_dense
X_attention_dropout
Y_attention_layer_norm
Z_intermediate_dense
"[_intermediate_activation_layer
\_output_dense
]_output_dropout
^_output_layer_norm
_	variables
`regularization_losses
atrainable_variables
b	keras_api
R
c	variables
dregularization_losses
etrainable_variables
f	keras_api
h

2kernel
3bias
g	variables
hregularization_losses
itrainable_variables
j	keras_api
?
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
 
?
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
­
knon_trainable_variables
llayer_metrics

mlayers
nmetrics
	variables
regularization_losses
olayer_regularization_losses
trainable_variables
VT
VARIABLE_VALUEword_embeddings/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEposition_embedding/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtype_embeddings/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEembeddings/layer_norm/gamma&variables/3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEembeddings/layer_norm/beta&variables/4/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/transformer/layer_0/self_attention/query/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE-transformer/layer_0/self_attention/query/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE-transformer/layer_0/self_attention/key/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE+transformer/layer_0/self_attention/key/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE/transformer/layer_0/self_attention/value/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-transformer/layer_0/self_attention/value/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE:transformer/layer_0/self_attention/attention_output/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE8transformer/layer_0/self_attention/attention_output/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3transformer/layer_0/self_attention_layer_norm/gamma'variables/13/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE2transformer/layer_0/self_attention_layer_norm/beta'variables/14/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE'transformer/layer_0/intermediate/kernel'variables/15/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%transformer/layer_0/intermediate/bias'variables/16/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!transformer/layer_0/output/kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEtransformer/layer_0/output/bias'variables/18/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE+transformer/layer_0/output_layer_norm/gamma'variables/19/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*transformer/layer_0/output_layer_norm/beta'variables/20/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEpooler_transform/kernel'variables/21/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEpooler_transform/bias'variables/22/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
1
2
3
 
 

0
 

0
­
pnon_trainable_variables
qlayer_metrics

rlayers
smetrics
9	variables
:regularization_losses
tlayer_regularization_losses
;trainable_variables

0
 

0
­
unon_trainable_variables
vlayer_metrics

wlayers
xmetrics
=	variables
>regularization_losses
ylayer_regularization_losses
?trainable_variables

0
 

0
­
znon_trainable_variables
{layer_metrics

|layers
}metrics
A	variables
Bregularization_losses
~layer_regularization_losses
Ctrainable_variables
 
 
 
±
non_trainable_variables
layer_metrics
layers
metrics
E	variables
Fregularization_losses
 layer_regularization_losses
Gtrainable_variables
 

 0
!1
 

 0
!1
²
non_trainable_variables
layer_metrics
layers
metrics
J	variables
Kregularization_losses
 layer_regularization_losses
Ltrainable_variables
 
 
 
²
non_trainable_variables
layer_metrics
layers
metrics
N	variables
Oregularization_losses
 layer_regularization_losses
Ptrainable_variables
 
 
 
²
non_trainable_variables
layer_metrics
layers
metrics
R	variables
Sregularization_losses
 layer_regularization_losses
Ttrainable_variables
Λ
_query_dense

_key_dense
_value_dense
_masked_softmax
_dropout_layer
W_output_dense
	variables
regularization_losses
trainable_variables
	keras_api

partial_output_shape
full_output_shape

(kernel
)bias
	variables
regularization_losses
 trainable_variables
‘	keras_api
V
’	variables
£regularization_losses
€trainable_variables
₯	keras_api
v
	¦axis
	*gamma
+beta
§	variables
¨regularization_losses
©trainable_variables
ͺ	keras_api


,kernel
,_kernel
-bias
	-_bias
«	variables
¬regularization_losses
­trainable_variables
?	keras_api
V
―	variables
°regularization_losses
±trainable_variables
²	keras_api


.kernel
._kernel
/bias
	/_bias
³	variables
΄regularization_losses
΅trainable_variables
Ά	keras_api
V
·	variables
Έregularization_losses
Ήtrainable_variables
Ί	keras_api
v
	»axis
	0gamma
1beta
Ό	variables
½regularization_losses
Ύtrainable_variables
Ώ	keras_api
v
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
 
v
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
²
ΐnon_trainable_variables
Αlayer_metrics
Βlayers
Γmetrics
_	variables
`regularization_losses
 Δlayer_regularization_losses
atrainable_variables
 
 
 
²
Εnon_trainable_variables
Ζlayer_metrics
Ηlayers
Θmetrics
c	variables
dregularization_losses
 Ιlayer_regularization_losses
etrainable_variables

20
31
 

20
31
²
Κnon_trainable_variables
Λlayer_metrics
Μlayers
Νmetrics
g	variables
hregularization_losses
 Ξlayer_regularization_losses
itrainable_variables
 
 
^
0
1
2
3
4
5
6
7
8
9
10
11
12
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Οpartial_output_shape
Πfull_output_shape

"kernel
#bias
Ρ	variables
?regularization_losses
Σtrainable_variables
Τ	keras_api

Υpartial_output_shape
Φfull_output_shape

$kernel
%bias
Χ	variables
Ψregularization_losses
Ωtrainable_variables
Ϊ	keras_api

Ϋpartial_output_shape
άfull_output_shape

&kernel
'bias
έ	variables
ήregularization_losses
ίtrainable_variables
ΰ	keras_api
q
α_mask_expansion_axes
β	variables
γregularization_losses
δtrainable_variables
ε	keras_api
V
ζ	variables
ηregularization_losses
θtrainable_variables
ι	keras_api
8
"0
#1
$2
%3
&4
'5
(6
)7
 
8
"0
#1
$2
%3
&4
'5
(6
)7
΅
κnon_trainable_variables
λlayer_metrics
μlayers
νmetrics
	variables
regularization_losses
 ξlayer_regularization_losses
trainable_variables
 
 

(0
)1
 

(0
)1
΅
οnon_trainable_variables
πlayer_metrics
ρlayers
ςmetrics
	variables
regularization_losses
 σlayer_regularization_losses
 trainable_variables
 
 
 
΅
τnon_trainable_variables
υlayer_metrics
φlayers
χmetrics
’	variables
£regularization_losses
 ψlayer_regularization_losses
€trainable_variables
 

*0
+1
 

*0
+1
΅
ωnon_trainable_variables
ϊlayer_metrics
ϋlayers
όmetrics
§	variables
¨regularization_losses
 ύlayer_regularization_losses
©trainable_variables

,0
-1
 

,0
-1
΅
ώnon_trainable_variables
?layer_metrics
layers
metrics
«	variables
¬regularization_losses
 layer_regularization_losses
­trainable_variables
 
 
 
΅
non_trainable_variables
layer_metrics
layers
metrics
―	variables
°regularization_losses
 layer_regularization_losses
±trainable_variables

.0
/1
 

.0
/1
΅
non_trainable_variables
layer_metrics
layers
metrics
³	variables
΄regularization_losses
 layer_regularization_losses
΅trainable_variables
 
 
 
΅
non_trainable_variables
layer_metrics
layers
metrics
·	variables
Έregularization_losses
 layer_regularization_losses
Ήtrainable_variables
 

00
11
 

00
11
΅
non_trainable_variables
layer_metrics
layers
metrics
Ό	variables
½regularization_losses
 layer_regularization_losses
Ύtrainable_variables
 
 
?
V0
W1
X2
Y3
Z4
[5
\6
]7
^8
 
 
 
 
 
 
 
 
 
 
 
 
 
 

"0
#1
 

"0
#1
΅
non_trainable_variables
layer_metrics
layers
metrics
Ρ	variables
?regularization_losses
 layer_regularization_losses
Σtrainable_variables
 
 

$0
%1
 

$0
%1
΅
non_trainable_variables
layer_metrics
layers
metrics
Χ	variables
Ψregularization_losses
  layer_regularization_losses
Ωtrainable_variables
 
 

&0
'1
 

&0
'1
΅
‘non_trainable_variables
’layer_metrics
£layers
€metrics
έ	variables
ήregularization_losses
 ₯layer_regularization_losses
ίtrainable_variables
 
 
 
 
΅
¦non_trainable_variables
§layer_metrics
¨layers
©metrics
β	variables
γregularization_losses
 ͺlayer_regularization_losses
δtrainable_variables
 
 
 
΅
«non_trainable_variables
¬layer_metrics
­layers
?metrics
ζ	variables
ηregularization_losses
 ―layer_regularization_losses
θtrainable_variables
 
 
/
0
1
2
3
4
W5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_input_maskPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????

serving_default_input_type_idsPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????

serving_default_input_word_idsPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
μ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_maskserving_default_input_type_idsserving_default_input_word_idsword_embeddings/embeddingsposition_embedding/embeddingstype_embeddings/embeddingsembeddings/layer_norm/gammaembeddings/layer_norm/beta/transformer/layer_0/self_attention/query/kernel-transformer/layer_0/self_attention/query/bias-transformer/layer_0/self_attention/key/kernel+transformer/layer_0/self_attention/key/bias/transformer/layer_0/self_attention/value/kernel-transformer/layer_0/self_attention/value/bias:transformer/layer_0/self_attention/attention_output/kernel8transformer/layer_0/self_attention/attention_output/bias3transformer/layer_0/self_attention_layer_norm/gamma2transformer/layer_0/self_attention_layer_norm/beta'transformer/layer_0/intermediate/kernel%transformer/layer_0/intermediate/bias!transformer/layer_0/output/kerneltransformer/layer_0/output/bias+transformer/layer_0/output_layer_norm/gamma*transformer/layer_0/output_layer_norm/betapooler_transform/kernelpooler_transform/bias*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:?????????:??????????????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_3346
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ε
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_1/Read/ReadVariableOp.word_embeddings/embeddings/Read/ReadVariableOp1position_embedding/embeddings/Read/ReadVariableOp.type_embeddings/embeddings/Read/ReadVariableOp/embeddings/layer_norm/gamma/Read/ReadVariableOp.embeddings/layer_norm/beta/Read/ReadVariableOpCtransformer/layer_0/self_attention/query/kernel/Read/ReadVariableOpAtransformer/layer_0/self_attention/query/bias/Read/ReadVariableOpAtransformer/layer_0/self_attention/key/kernel/Read/ReadVariableOp?transformer/layer_0/self_attention/key/bias/Read/ReadVariableOpCtransformer/layer_0/self_attention/value/kernel/Read/ReadVariableOpAtransformer/layer_0/self_attention/value/bias/Read/ReadVariableOpNtransformer/layer_0/self_attention/attention_output/kernel/Read/ReadVariableOpLtransformer/layer_0/self_attention/attention_output/bias/Read/ReadVariableOpGtransformer/layer_0/self_attention_layer_norm/gamma/Read/ReadVariableOpFtransformer/layer_0/self_attention_layer_norm/beta/Read/ReadVariableOp;transformer/layer_0/intermediate/kernel/Read/ReadVariableOp9transformer/layer_0/intermediate/bias/Read/ReadVariableOp5transformer/layer_0/output/kernel/Read/ReadVariableOp3transformer/layer_0/output/bias/Read/ReadVariableOp?transformer/layer_0/output_layer_norm/gamma/Read/ReadVariableOp>transformer/layer_0/output_layer_norm/beta/Read/ReadVariableOp+pooler_transform/kernel/Read/ReadVariableOp)pooler_transform/bias/Read/ReadVariableOpConst*%
Tin
2
*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_5143
ΰ	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
Variable_1word_embeddings/embeddingsposition_embedding/embeddingstype_embeddings/embeddingsembeddings/layer_norm/gammaembeddings/layer_norm/beta/transformer/layer_0/self_attention/query/kernel-transformer/layer_0/self_attention/query/bias-transformer/layer_0/self_attention/key/kernel+transformer/layer_0/self_attention/key/bias/transformer/layer_0/self_attention/value/kernel-transformer/layer_0/self_attention/value/bias:transformer/layer_0/self_attention/attention_output/kernel8transformer/layer_0/self_attention/attention_output/bias3transformer/layer_0/self_attention_layer_norm/gamma2transformer/layer_0/self_attention_layer_norm/beta'transformer/layer_0/intermediate/kernel%transformer/layer_0/intermediate/bias!transformer/layer_0/output/kerneltransformer/layer_0/output/bias+transformer/layer_0/output_layer_norm/gamma*transformer/layer_0/output_layer_norm/betapooler_transform/kernelpooler_transform/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_5225ΐΦ
ύ
ΐ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_2049

inputs)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2 
moments/mean/reduction_indices₯
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2$
"moments/variance/reduction_indicesΘ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2
moments/varianceg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add}
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1t
IdentityIdentitybatchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
φ

+__inference_functional_3_layer_call_fn_3289
input_word_ids

input_mask
input_type_ids
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCallΪ
StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:?????????:??????????????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_functional_3_layer_call_and_return_conditional_losses_32382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
	
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_2505

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
strided_slice~
SqueezeSqueezestrided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
>
Λ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2796

inputs
inputs_1
inputs_2
word_embeddings_2738
position_embedding_2741
type_embeddings_2744
embeddings_layer_norm_2748
embeddings_layer_norm_2750
transformer_layer_0_2755
transformer_layer_0_2757
transformer_layer_0_2759
transformer_layer_0_2761
transformer_layer_0_2763
transformer_layer_0_2765
transformer_layer_0_2767
transformer_layer_0_2769
transformer_layer_0_2771
transformer_layer_0_2773
transformer_layer_0_2775
transformer_layer_0_2777
transformer_layer_0_2779
transformer_layer_0_2781
transformer_layer_0_2783
transformer_layer_0_2785
pooler_transform_2789
pooler_transform_2791
identity

identity_1’-embeddings/layer_norm/StatefulPartitionedCall’(pooler_transform/StatefulPartitionedCall’*position_embedding/StatefulPartitionedCall’+transformer/layer_0/StatefulPartitionedCall’'type_embeddings/StatefulPartitionedCall’'word_embeddings/StatefulPartitionedCall¦
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputsword_embeddings_2738*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_19322)
'word_embeddings/StatefulPartitionedCallά
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_2741*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_19672,
*position_embedding/StatefulPartitionedCall¨
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputs_2type_embeddings_2744*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_19972)
'type_embeddings/StatefulPartitionedCallι
add_1/PartitionedCallPartitionedCall0word_embeddings/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:00type_embeddings/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_20172
add_1/PartitionedCallτ
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0embeddings_layer_norm_2748embeddings_layer_norm_2750*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_20492/
-embeddings/layer_norm/StatefulPartitionedCall
dropout_1/PartitionedCallPartitionedCall6embeddings/layer_norm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_20822
dropout_1/PartitionedCallΆ
%self_attention_mask_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_21322'
%self_attention_mask_1/PartitionedCall§
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0.self_attention_mask_1/PartitionedCall:output:0transformer_layer_0_2755transformer_layer_0_2757transformer_layer_0_2759transformer_layer_0_2761transformer_layer_0_2763transformer_layer_0_2765transformer_layer_0_2767transformer_layer_0_2769transformer_layer_0_2771transformer_layer_0_2773transformer_layer_0_2775transformer_layer_0_2777transformer_layer_0_2779transformer_layer_0_2781transformer_layer_0_2783transformer_layer_0_2785*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_23762-
+transformer/layer_0/StatefulPartitionedCall
lambda_1/PartitionedCallPartitionedCall4transformer/layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_25052
lambda_1/PartitionedCallΡ
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0pooler_transform_2789pooler_transform_2791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_25292*
(pooler_transform/StatefulPartitionedCall
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
-embeddings/layer_norm/StatefulPartitionedCall-embeddings/layer_norm/StatefulPartitionedCall2T
(pooler_transform/StatefulPartitionedCall(pooler_transform/StatefulPartitionedCall2X
*position_embedding/StatefulPartitionedCall*position_embedding/StatefulPartitionedCall2Z
+transformer/layer_0/StatefulPartitionedCall+transformer/layer_0/StatefulPartitionedCall2R
'type_embeddings/StatefulPartitionedCall'type_embeddings/StatefulPartitionedCall2R
'word_embeddings/StatefulPartitionedCall'word_embeddings/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
Ζε
τ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4380
inputs_0
inputs_1
inputs_2#
word_embeddings_gather_resource.
*position_embedding_readvariableop_resource2
.type_embeddings_matmul_readvariableop_resource?
;embeddings_layer_norm_batchnorm_mul_readvariableop_resource;
7embeddings_layer_norm_batchnorm_readvariableop_resourceR
Ntransformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resourceH
Dtransformer_layer_0_self_attention_query_add_readvariableop_resourceP
Ltransformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resourceF
Btransformer_layer_0_self_attention_key_add_readvariableop_resourceR
Ntransformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resourceH
Dtransformer_layer_0_self_attention_value_add_readvariableop_resource]
Ytransformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourceS
Otransformer_layer_0_self_attention_attention_output_add_readvariableop_resourceW
Stransformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourceS
Otransformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resourceJ
Ftransformer_layer_0_intermediate_einsum_einsum_readvariableop_resource@
<transformer_layer_0_intermediate_add_readvariableop_resourceD
@transformer_layer_0_output_einsum_einsum_readvariableop_resource:
6transformer_layer_0_output_add_readvariableop_resourceO
Ktransformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resourceK
Gtransformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource3
/pooler_transform_matmul_readvariableop_resource4
0pooler_transform_biasadd_readvariableop_resource
identity

identity_1
word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
word_embeddings/Reshape/shape
word_embeddings/ReshapeReshapeinputs_0&word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2
word_embeddings/ReshapeΛ
word_embeddings/GatherResourceGatherword_embeddings_gather_resource word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02
word_embeddings/Gather
word_embeddings/IdentityIdentityword_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????2
word_embeddings/Identityf
word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2
word_embeddings/Shape
word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2!
word_embeddings/concat/values_1|
word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
word_embeddings/concat/axisΪ
word_embeddings/concatConcatV2word_embeddings/Shape:output:0(word_embeddings/concat/values_1:output:0$word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2
word_embeddings/concatΔ
word_embeddings/Reshape_1Reshape!word_embeddings/Identity:output:0word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
word_embeddings/Reshape_1
position_embedding/ShapeShape"word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:2
position_embedding/Shape
&position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&position_embedding/strided_slice/stack
(position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice/stack_1
(position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice/stack_2Τ
 position_embedding/strided_sliceStridedSlice!position_embedding/Shape:output:0/position_embedding/strided_slice/stack:output:01position_embedding/strided_slice/stack_1:output:01position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 position_embedding/strided_slice
(position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice_1/stack’
*position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*position_embedding/strided_slice_1/stack_1’
*position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*position_embedding/strided_slice_1/stack_2ή
"position_embedding/strided_slice_1StridedSlice!position_embedding/Shape:output:01position_embedding/strided_slice_1/stack:output:03position_embedding/strided_slice_1/stack_1:output:03position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"position_embedding/strided_slice_1²
!position_embedding/ReadVariableOpReadVariableOp*position_embedding_readvariableop_resource*
_output_shapes
:	*
dtype02#
!position_embedding/ReadVariableOp₯
(position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(position_embedding/strided_slice_2/stack
,position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2.
,position_embedding/strided_slice_2/stack_1/1ς
*position_embedding/strided_slice_2/stack_1Pack+position_embedding/strided_slice_1:output:05position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2,
*position_embedding/strided_slice_2/stack_1©
*position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*position_embedding/strided_slice_2/stack_2
"position_embedding/strided_slice_2StridedSlice)position_embedding/ReadVariableOp:value:01position_embedding/strided_slice_2/stack:output:03position_embedding/strided_slice_2/stack_1:output:03position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2$
"position_embedding/strided_slice_2
&position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&position_embedding/BroadcastTo/shape/2
$position_embedding/BroadcastTo/shapePack)position_embedding/strided_slice:output:0+position_embedding/strided_slice_1:output:0/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$position_embedding/BroadcastTo/shapeκ
position_embedding/BroadcastToBroadcastTo+position_embedding/strided_slice_2:output:0-position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2 
position_embedding/BroadcastTo
type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
type_embeddings/Reshape/shape
type_embeddings/ReshapeReshapeinputs_2&type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2
type_embeddings/Reshape
 type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 type_embeddings/one_hot/on_value
!type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!type_embeddings/one_hot/off_value
type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
type_embeddings/one_hot/depth
type_embeddings/one_hotOneHot type_embeddings/Reshape:output:0&type_embeddings/one_hot/depth:output:0)type_embeddings/one_hot/on_value:output:0*type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2
type_embeddings/one_hot½
%type_embeddings/MatMul/ReadVariableOpReadVariableOp.type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%type_embeddings/MatMul/ReadVariableOp½
type_embeddings/MatMulMatMul type_embeddings/one_hot:output:0-type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
type_embeddings/MatMulf
type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2
type_embeddings/Shape
type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2!
type_embeddings/concat/values_1|
type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
type_embeddings/concat/axisΪ
type_embeddings/concatConcatV2type_embeddings/Shape:output:0(type_embeddings/concat/values_1:output:0$type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2
type_embeddings/concatΓ
type_embeddings/Reshape_1Reshape type_embeddings/MatMul:product:0type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
type_embeddings/Reshape_1«
	add_1/addAddV2"word_embeddings/Reshape_1:output:0'position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2
	add_1/add
add_1/add_1AddV2add_1/add:z:0"type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2
add_1/add_1Ά
4embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4embeddings/layer_norm/moments/mean/reduction_indicesπ
"embeddings/layer_norm/moments/meanMeanadd_1/add_1:z:0=embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"embeddings/layer_norm/moments/meanΤ
*embeddings/layer_norm/moments/StopGradientStopGradient+embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2,
*embeddings/layer_norm/moments/StopGradientό
/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifferenceadd_1/add_1:z:03embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????21
/embeddings/layer_norm/moments/SquaredDifferenceΎ
8embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8embeddings/layer_norm/moments/variance/reduction_indices 
&embeddings/layer_norm/moments/varianceMean3embeddings/layer_norm/moments/SquaredDifference:z:0Aembeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&embeddings/layer_norm/moments/variance
%embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2'
%embeddings/layer_norm/batchnorm/add/yσ
#embeddings/layer_norm/batchnorm/addAddV2/embeddings/layer_norm/moments/variance:output:0.embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/addΏ
%embeddings/layer_norm/batchnorm/RsqrtRsqrt'embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/Rsqrtΰ
2embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp;embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2embeddings/layer_norm/batchnorm/mul/ReadVariableOpχ
#embeddings/layer_norm/batchnorm/mulMul)embeddings/layer_norm/batchnorm/Rsqrt:y:0:embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/mulΞ
%embeddings/layer_norm/batchnorm/mul_1Muladd_1/add_1:z:0'embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/mul_1κ
%embeddings/layer_norm/batchnorm/mul_2Mul+embeddings/layer_norm/moments/mean:output:0'embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/mul_2Τ
.embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOp7embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.embeddings/layer_norm/batchnorm/ReadVariableOpσ
#embeddings/layer_norm/batchnorm/subSub6embeddings/layer_norm/batchnorm/ReadVariableOp:value:0)embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/subκ
%embeddings/layer_norm/batchnorm/add_1AddV2)embeddings/layer_norm/batchnorm/mul_1:z:0'embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/add_1
dropout_1/IdentityIdentity)embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/Identity
self_attention_mask_1/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:2
self_attention_mask_1/Shape 
)self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)self_attention_mask_1/strided_slice/stack€
+self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice/stack_1€
+self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice/stack_2ζ
#self_attention_mask_1/strided_sliceStridedSlice$self_attention_mask_1/Shape:output:02self_attention_mask_1/strided_slice/stack:output:04self_attention_mask_1/strided_slice/stack_1:output:04self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask_1/strided_slice€
+self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice_1/stack¨
-self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_1/stack_1¨
-self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_1/stack_2π
%self_attention_mask_1/strided_slice_1StridedSlice$self_attention_mask_1/Shape:output:04self_attention_mask_1/strided_slice_1/stack:output:06self_attention_mask_1/strided_slice_1/stack_1:output:06self_attention_mask_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_1v
self_attention_mask_1/Shape_1Shapeinputs_1*
T0*
_output_shapes
:2
self_attention_mask_1/Shape_1€
+self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+self_attention_mask_1/strided_slice_2/stack¨
-self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_2/stack_1¨
-self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_2/stack_2ς
%self_attention_mask_1/strided_slice_2StridedSlice&self_attention_mask_1/Shape_1:output:04self_attention_mask_1/strided_slice_2/stack:output:06self_attention_mask_1/strided_slice_2/stack_1:output:06self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_2€
+self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice_3/stack¨
-self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_3/stack_1¨
-self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_3/stack_2ς
%self_attention_mask_1/strided_slice_3StridedSlice&self_attention_mask_1/Shape_1:output:04self_attention_mask_1/strided_slice_3/stack:output:06self_attention_mask_1/strided_slice_3/stack_1:output:06self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_3
%self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%self_attention_mask_1/Reshape/shape/1
#self_attention_mask_1/Reshape/shapePack,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/Reshape/shape/1:output:0.self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2%
#self_attention_mask_1/Reshape/shapeΐ
self_attention_mask_1/ReshapeReshapeinputs_1,self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/ReshapeΆ
self_attention_mask_1/CastCast&self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/CastΖ
self_attention_mask_1/ones/mulMul,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2 
self_attention_mask_1/ones/mul
"self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"self_attention_mask_1/ones/mul_1/y½
 self_attention_mask_1/ones/mul_1Mul"self_attention_mask_1/ones/mul:z:0+self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2"
 self_attention_mask_1/ones/mul_1
!self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :θ2#
!self_attention_mask_1/ones/Less/y½
self_attention_mask_1/ones/LessLess$self_attention_mask_1/ones/mul_1:z:0*self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
self_attention_mask_1/ones/Less
#self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#self_attention_mask_1/ones/packed/2
!self_attention_mask_1/ones/packedPack,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/strided_slice_1:output:0,self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2#
!self_attention_mask_1/ones/packed
 self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 self_attention_mask_1/ones/ConstΦ
self_attention_mask_1/onesFill*self_attention_mask_1/ones/packed:output:0)self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/onesΚ
self_attention_mask_1/mulMul#self_attention_mask_1/ones:output:0self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
self_attention_mask_1/mul‘
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpΟ
6transformer/layer_0/self_attention/query/einsum/EinsumEinsumdropout_1/Identity:output:0Mtransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde28
6transformer/layer_0/self_attention/query/einsum/Einsum?
;transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpDtransformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02=
;transformer/layer_0/self_attention/query/add/ReadVariableOp?
,transformer/layer_0/self_attention/query/addAddV2?transformer/layer_0/self_attention/query/einsum/Einsum:output:0Ctransformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2.
,transformer/layer_0/self_attention/query/add
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpLtransformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02E
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpΙ
4transformer/layer_0/self_attention/key/einsum/EinsumEinsumdropout_1/Identity:output:0Ktransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde26
4transformer/layer_0/self_attention/key/einsum/Einsumω
9transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpBtransformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02;
9transformer/layer_0/self_attention/key/add/ReadVariableOp¦
*transformer/layer_0/self_attention/key/addAddV2=transformer/layer_0/self_attention/key/einsum/Einsum:output:0Atransformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2,
*transformer/layer_0/self_attention/key/add‘
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpΟ
6transformer/layer_0/self_attention/value/einsum/EinsumEinsumdropout_1/Identity:output:0Mtransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde28
6transformer/layer_0/self_attention/value/einsum/Einsum?
;transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpDtransformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02=
;transformer/layer_0/self_attention/value/add/ReadVariableOp?
,transformer/layer_0/self_attention/value/addAddV2?transformer/layer_0/self_attention/value/einsum/Einsum:output:0Ctransformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2.
,transformer/layer_0/self_attention/value/addΔ
0transformer/layer_0/self_attention/einsum/EinsumEinsum.transformer/layer_0/self_attention/key/add:z:00transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe22
0transformer/layer_0/self_attention/einsum/Einsum
(transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2*
(transformer/layer_0/self_attention/Mul/y
&transformer/layer_0/self_attention/MulMul9transformer/layer_0/self_attention/einsum/Einsum:output:01transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2(
&transformer/layer_0/self_attention/Mul?
Btransformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2D
Btransformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dimΖ
>transformer/layer_0/self_attention/masked_softmax_1/ExpandDims
ExpandDimsself_attention_mask_1/mul:z:0Ktransformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2@
>transformer/layer_0/self_attention/masked_softmax_1/ExpandDims»
9transformer/layer_0/self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9transformer/layer_0/self_attention/masked_softmax_1/sub/x?
7transformer/layer_0/self_attention/masked_softmax_1/subSubBtransformer/layer_0/self_attention/masked_softmax_1/sub/x:output:0Gtransformer/layer_0/self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????29
7transformer/layer_0/self_attention/masked_softmax_1/sub»
9transformer/layer_0/self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2;
9transformer/layer_0/self_attention/masked_softmax_1/mul/yΖ
7transformer/layer_0/self_attention/masked_softmax_1/mulMul;transformer/layer_0/self_attention/masked_softmax_1/sub:z:0Btransformer/layer_0/self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????29
7transformer/layer_0/self_attention/masked_softmax_1/mul°
7transformer/layer_0/self_attention/masked_softmax_1/addAddV2*transformer/layer_0/self_attention/Mul:z:0;transformer/layer_0/self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????29
7transformer/layer_0/self_attention/masked_softmax_1/add
;transformer/layer_0/self_attention/masked_softmax_1/SoftmaxSoftmax;transformer/layer_0/self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2=
;transformer/layer_0/self_attention/masked_softmax_1/Softmax
5transformer/layer_0/self_attention/dropout_3/IdentityIdentityEtransformer/layer_0/self_attention/masked_softmax_1/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????27
5transformer/layer_0/self_attention/dropout_3/IdentityΟ
2transformer/layer_0/self_attention/einsum_1/EinsumEinsum>transformer/layer_0/self_attention/dropout_3/Identity:output:00transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd24
2transformer/layer_0/self_attention/einsum_1/EinsumΒ
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpYtransformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02R
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp
Atransformer/layer_0/self_attention/attention_output/einsum/EinsumEinsum;transformer/layer_0/self_attention/einsum_1/Einsum:output:0Xtransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2C
Atransformer/layer_0/self_attention/attention_output/einsum/Einsum
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpOtransformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOpΦ
7transformer/layer_0/self_attention/attention_output/addAddV2Jtransformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0Ntransformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer/layer_0/self_attention/attention_output/addΨ
&transformer/layer_0/dropout_4/IdentityIdentity;transformer/layer_0/self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2(
&transformer/layer_0/dropout_4/IdentityΘ
transformer/layer_0/addAddV2dropout_1/Identity:output:0/transformer/layer_0/dropout_4/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2
transformer/layer_0/addζ
Ltransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesΔ
:transformer/layer_0/self_attention_layer_norm/moments/meanMeantransformer/layer_0/add:z:0Utransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2<
:transformer/layer_0/self_attention_layer_norm/moments/mean
Btransformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientCtransformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Btransformer/layer_0/self_attention_layer_norm/moments/StopGradientΠ
Gtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferencetransformer/layer_0/add:z:0Ktransformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceξ
Ptransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Ptransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices
>transformer/layer_0/self_attention_layer_norm/moments/varianceMeanKtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0Ytransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2@
>transformer/layer_0/self_attention_layer_norm/moments/varianceΓ
=transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add/yΣ
;transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2Gtransformer/layer_0/self_attention_layer_norm/moments/variance:output:0Ftransformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/add
=transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrt?transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt¨
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpStransformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02L
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpΧ
;transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulAtransformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0Rtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/mul’
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Multransformer/layer_0/add:z:0?transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Κ
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulCtransformer/layer_0/self_attention_layer_norm/moments/mean:output:0?transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpOtransformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpΣ
;transformer/layer_0/self_attention_layer_norm/batchnorm/subSubNtransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Atransformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/subΚ
=transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Atransformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0?transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add_1
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOpFtransformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02?
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpΧ
.transformer/layer_0/intermediate/einsum/EinsumEinsumAtransformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0Etransformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd20
.transformer/layer_0/intermediate/einsum/Einsumγ
3transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOp<transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype025
3transformer/layer_0/intermediate/add/ReadVariableOp
$transformer/layer_0/intermediate/addAddV27transformer/layer_0/intermediate/einsum/Einsum:output:0;transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/intermediate/add
&transformer/layer_0/activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2(
&transformer/layer_0/activation_1/Pow/yν
$transformer/layer_0/activation_1/PowPow(transformer/layer_0/intermediate/add:z:0/transformer/layer_0/activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation_1/Pow
&transformer/layer_0/activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2(
&transformer/layer_0/activation_1/mul/xν
$transformer/layer_0/activation_1/mulMul/transformer/layer_0/activation_1/mul/x:output:0(transformer/layer_0/activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation_1/mulθ
$transformer/layer_0/activation_1/addAddV2(transformer/layer_0/intermediate/add:z:0(transformer/layer_0/activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation_1/add
(transformer/layer_0/activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2*
(transformer/layer_0/activation_1/mul_1/xσ
&transformer/layer_0/activation_1/mul_1Mul1transformer/layer_0/activation_1/mul_1/x:output:0(transformer/layer_0/activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2(
&transformer/layer_0/activation_1/mul_1Α
%transformer/layer_0/activation_1/TanhTanh*transformer/layer_0/activation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2'
%transformer/layer_0/activation_1/Tanh
(transformer/layer_0/activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(transformer/layer_0/activation_1/add_1/xφ
&transformer/layer_0/activation_1/add_1AddV21transformer/layer_0/activation_1/add_1/x:output:0)transformer/layer_0/activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2(
&transformer/layer_0/activation_1/add_1
(transformer/layer_0/activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(transformer/layer_0/activation_1/mul_2/xυ
&transformer/layer_0/activation_1/mul_2Mul1transformer/layer_0/activation_1/mul_2/x:output:0*transformer/layer_0/activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2(
&transformer/layer_0/activation_1/mul_2μ
&transformer/layer_0/activation_1/mul_3Mul(transformer/layer_0/intermediate/add:z:0*transformer/layer_0/activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2(
&transformer/layer_0/activation_1/mul_3σ
7transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOp@transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype029
7transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
(transformer/layer_0/output/einsum/EinsumEinsum*transformer/layer_0/activation_1/mul_3:z:0?transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2*
(transformer/layer_0/output/einsum/EinsumΡ
-transformer/layer_0/output/add/ReadVariableOpReadVariableOp6transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02/
-transformer/layer_0/output/add/ReadVariableOpς
transformer/layer_0/output/addAddV21transformer/layer_0/output/einsum/Einsum:output:05transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2 
transformer/layer_0/output/addΏ
&transformer/layer_0/dropout_5/IdentityIdentity"transformer/layer_0/output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2(
&transformer/layer_0/dropout_5/Identityς
transformer/layer_0/add_1AddV2/transformer/layer_0/dropout_5/Identity:output:0Atransformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
transformer/layer_0/add_1Φ
Dtransformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2F
Dtransformer/layer_0/output_layer_norm/moments/mean/reduction_indices?
2transformer/layer_0/output_layer_norm/moments/meanMeantransformer/layer_0/add_1:z:0Mtransformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(24
2transformer/layer_0/output_layer_norm/moments/mean
:transformer/layer_0/output_layer_norm/moments/StopGradientStopGradient;transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2<
:transformer/layer_0/output_layer_norm/moments/StopGradientΊ
?transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifferencetransformer/layer_0/add_1:z:0Ctransformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer/layer_0/output_layer_norm/moments/SquaredDifferenceή
Htransformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer/layer_0/output_layer_norm/moments/variance/reduction_indicesΰ
6transformer/layer_0/output_layer_norm/moments/varianceMeanCtransformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0Qtransformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(28
6transformer/layer_0/output_layer_norm/moments/variance³
5transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+27
5transformer/layer_0/output_layer_norm/batchnorm/add/y³
3transformer/layer_0/output_layer_norm/batchnorm/addAddV2?transformer/layer_0/output_layer_norm/moments/variance:output:0>transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/addο
5transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrt7transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/Rsqrt
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02D
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp·
3transformer/layer_0/output_layer_norm/batchnorm/mulMul9transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0Jtransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/mul
5transformer/layer_0/output_layer_norm/batchnorm/mul_1Multransformer/layer_0/add_1:z:07transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/mul_1ͺ
5transformer/layer_0/output_layer_norm/batchnorm/mul_2Mul;transformer/layer_0/output_layer_norm/moments/mean:output:07transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/mul_2
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOpGtransformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02@
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp³
3transformer/layer_0/output_layer_norm/batchnorm/subSubFtransformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:09transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/subͺ
5transformer/layer_0/output_layer_norm/batchnorm/add_1AddV29transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:07transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/add_1
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda_1/strided_slice/stack
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2 
lambda_1/strided_slice/stack_1
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2 
lambda_1/strided_slice/stack_2β
lambda_1/strided_sliceStridedSlice9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
lambda_1/strided_slice
lambda_1/SqueezeSqueezelambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
lambda_1/Squeezeΐ
&pooler_transform/MatMul/ReadVariableOpReadVariableOp/pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&pooler_transform/MatMul/ReadVariableOpΉ
pooler_transform/MatMulMatMullambda_1/Squeeze:output:0.pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
pooler_transform/MatMulΏ
'pooler_transform/BiasAdd/ReadVariableOpReadVariableOp0pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'pooler_transform/BiasAdd/ReadVariableOpΕ
pooler_transform/BiasAddBiasAdd!pooler_transform/MatMul:product:0/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
pooler_transform/BiasAdd
pooler_transform/TanhTanh!pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
pooler_transform/Tanh
IdentityIdentity9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identityq

Identity_1Identitypooler_transform/Tanh:y:0*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????::::::::::::::::::::::::Z V
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/2
Δ
D
(__inference_dropout_1_layer_call_fn_4639

inputs
identityΞ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_20822
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
	
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_5002

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
strided_slice~
SqueezeSqueezestrided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
ψ$
y
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_2132

inputs
inputs_1
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2β
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2μ
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1J
Shape_1Shapeinputs_1*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ξ
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ξ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3d
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1 
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0strided_slice_3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape~
ReshapeReshapeinputs_1Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2	
Reshapet
CastCastReshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2
Castn
ones/mulMulstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2

ones/mul^
ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
ones/mul_1/ye

ones/mul_1Mulones/mul:z:0ones/mul_1/y:output:0*
T0*
_output_shapes
: 2

ones/mul_1]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :θ2
ones/Less/ye
	ones/LessLessones/mul_1:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less`
ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2
ones/packed/2
ones/packedPackstrided_slice:output:0strided_slice_1:output:0ones/packed/2:output:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2

ones/Const~
onesFillones/packed:output:0ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
onesr
mulMulones:output:0Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
mulq
IdentityIdentitymul:z:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????:??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
¦
‘
F__inference_functional_3_layer_call_and_return_conditional_losses_3238

inputs
inputs_1
inputs_2
transformer_encoder_1_3188
transformer_encoder_1_3190
transformer_encoder_1_3192
transformer_encoder_1_3194
transformer_encoder_1_3196
transformer_encoder_1_3198
transformer_encoder_1_3200
transformer_encoder_1_3202
transformer_encoder_1_3204
transformer_encoder_1_3206
transformer_encoder_1_3208
transformer_encoder_1_3210
transformer_encoder_1_3212
transformer_encoder_1_3214
transformer_encoder_1_3216
transformer_encoder_1_3218
transformer_encoder_1_3220
transformer_encoder_1_3222
transformer_encoder_1_3224
transformer_encoder_1_3226
transformer_encoder_1_3228
transformer_encoder_1_3230
transformer_encoder_1_3232
identity

identity_1’-transformer_encoder_1/StatefulPartitionedCallό
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2transformer_encoder_1_3188transformer_encoder_1_3190transformer_encoder_1_3192transformer_encoder_1_3194transformer_encoder_1_3196transformer_encoder_1_3198transformer_encoder_1_3200transformer_encoder_1_3202transformer_encoder_1_3204transformer_encoder_1_3206transformer_encoder_1_3208transformer_encoder_1_3210transformer_encoder_1_3212transformer_encoder_1_3214transformer_encoder_1_3216transformer_encoder_1_3218transformer_encoder_1_3220transformer_encoder_1_3222transformer_encoder_1_3224transformer_encoder_1_3226transformer_encoder_1_3228transformer_encoder_1_3230transformer_encoder_1_3232*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:??????????????????:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_27962/
-transformer_encoder_1/StatefulPartitionedCallΊ
IdentityIdentity6transformer_encoder_1/StatefulPartitionedCall:output:1.^transformer_encoder_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

IdentityΛ

Identity_1Identity6transformer_encoder_1/StatefulPartitionedCall:output:0.^transformer_encoder_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
-transformer_encoder_1/StatefulPartitionedCall-transformer_encoder_1/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
β
τ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4163
inputs_0
inputs_1
inputs_2#
word_embeddings_gather_resource.
*position_embedding_readvariableop_resource2
.type_embeddings_matmul_readvariableop_resource?
;embeddings_layer_norm_batchnorm_mul_readvariableop_resource;
7embeddings_layer_norm_batchnorm_readvariableop_resourceR
Ntransformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resourceH
Dtransformer_layer_0_self_attention_query_add_readvariableop_resourceP
Ltransformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resourceF
Btransformer_layer_0_self_attention_key_add_readvariableop_resourceR
Ntransformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resourceH
Dtransformer_layer_0_self_attention_value_add_readvariableop_resource]
Ytransformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourceS
Otransformer_layer_0_self_attention_attention_output_add_readvariableop_resourceW
Stransformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourceS
Otransformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resourceJ
Ftransformer_layer_0_intermediate_einsum_einsum_readvariableop_resource@
<transformer_layer_0_intermediate_add_readvariableop_resourceD
@transformer_layer_0_output_einsum_einsum_readvariableop_resource:
6transformer_layer_0_output_add_readvariableop_resourceO
Ktransformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resourceK
Gtransformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource3
/pooler_transform_matmul_readvariableop_resource4
0pooler_transform_biasadd_readvariableop_resource
identity

identity_1
word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
word_embeddings/Reshape/shape
word_embeddings/ReshapeReshapeinputs_0&word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2
word_embeddings/ReshapeΛ
word_embeddings/GatherResourceGatherword_embeddings_gather_resource word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02
word_embeddings/Gather
word_embeddings/IdentityIdentityword_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????2
word_embeddings/Identityf
word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2
word_embeddings/Shape
word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2!
word_embeddings/concat/values_1|
word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
word_embeddings/concat/axisΪ
word_embeddings/concatConcatV2word_embeddings/Shape:output:0(word_embeddings/concat/values_1:output:0$word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2
word_embeddings/concatΔ
word_embeddings/Reshape_1Reshape!word_embeddings/Identity:output:0word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
word_embeddings/Reshape_1
position_embedding/ShapeShape"word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:2
position_embedding/Shape
&position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&position_embedding/strided_slice/stack
(position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice/stack_1
(position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice/stack_2Τ
 position_embedding/strided_sliceStridedSlice!position_embedding/Shape:output:0/position_embedding/strided_slice/stack:output:01position_embedding/strided_slice/stack_1:output:01position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 position_embedding/strided_slice
(position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice_1/stack’
*position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*position_embedding/strided_slice_1/stack_1’
*position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*position_embedding/strided_slice_1/stack_2ή
"position_embedding/strided_slice_1StridedSlice!position_embedding/Shape:output:01position_embedding/strided_slice_1/stack:output:03position_embedding/strided_slice_1/stack_1:output:03position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"position_embedding/strided_slice_1²
!position_embedding/ReadVariableOpReadVariableOp*position_embedding_readvariableop_resource*
_output_shapes
:	*
dtype02#
!position_embedding/ReadVariableOp₯
(position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(position_embedding/strided_slice_2/stack
,position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2.
,position_embedding/strided_slice_2/stack_1/1ς
*position_embedding/strided_slice_2/stack_1Pack+position_embedding/strided_slice_1:output:05position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2,
*position_embedding/strided_slice_2/stack_1©
*position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*position_embedding/strided_slice_2/stack_2
"position_embedding/strided_slice_2StridedSlice)position_embedding/ReadVariableOp:value:01position_embedding/strided_slice_2/stack:output:03position_embedding/strided_slice_2/stack_1:output:03position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2$
"position_embedding/strided_slice_2
&position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&position_embedding/BroadcastTo/shape/2
$position_embedding/BroadcastTo/shapePack)position_embedding/strided_slice:output:0+position_embedding/strided_slice_1:output:0/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$position_embedding/BroadcastTo/shapeκ
position_embedding/BroadcastToBroadcastTo+position_embedding/strided_slice_2:output:0-position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2 
position_embedding/BroadcastTo
type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
type_embeddings/Reshape/shape
type_embeddings/ReshapeReshapeinputs_2&type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2
type_embeddings/Reshape
 type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 type_embeddings/one_hot/on_value
!type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!type_embeddings/one_hot/off_value
type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
type_embeddings/one_hot/depth
type_embeddings/one_hotOneHot type_embeddings/Reshape:output:0&type_embeddings/one_hot/depth:output:0)type_embeddings/one_hot/on_value:output:0*type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2
type_embeddings/one_hot½
%type_embeddings/MatMul/ReadVariableOpReadVariableOp.type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%type_embeddings/MatMul/ReadVariableOp½
type_embeddings/MatMulMatMul type_embeddings/one_hot:output:0-type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
type_embeddings/MatMulf
type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2
type_embeddings/Shape
type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2!
type_embeddings/concat/values_1|
type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
type_embeddings/concat/axisΪ
type_embeddings/concatConcatV2type_embeddings/Shape:output:0(type_embeddings/concat/values_1:output:0$type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2
type_embeddings/concatΓ
type_embeddings/Reshape_1Reshape type_embeddings/MatMul:product:0type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
type_embeddings/Reshape_1«
	add_1/addAddV2"word_embeddings/Reshape_1:output:0'position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2
	add_1/add
add_1/add_1AddV2add_1/add:z:0"type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2
add_1/add_1Ά
4embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4embeddings/layer_norm/moments/mean/reduction_indicesπ
"embeddings/layer_norm/moments/meanMeanadd_1/add_1:z:0=embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"embeddings/layer_norm/moments/meanΤ
*embeddings/layer_norm/moments/StopGradientStopGradient+embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2,
*embeddings/layer_norm/moments/StopGradientό
/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifferenceadd_1/add_1:z:03embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????21
/embeddings/layer_norm/moments/SquaredDifferenceΎ
8embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8embeddings/layer_norm/moments/variance/reduction_indices 
&embeddings/layer_norm/moments/varianceMean3embeddings/layer_norm/moments/SquaredDifference:z:0Aembeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&embeddings/layer_norm/moments/variance
%embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2'
%embeddings/layer_norm/batchnorm/add/yσ
#embeddings/layer_norm/batchnorm/addAddV2/embeddings/layer_norm/moments/variance:output:0.embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/addΏ
%embeddings/layer_norm/batchnorm/RsqrtRsqrt'embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/Rsqrtΰ
2embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp;embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2embeddings/layer_norm/batchnorm/mul/ReadVariableOpχ
#embeddings/layer_norm/batchnorm/mulMul)embeddings/layer_norm/batchnorm/Rsqrt:y:0:embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/mulΞ
%embeddings/layer_norm/batchnorm/mul_1Muladd_1/add_1:z:0'embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/mul_1κ
%embeddings/layer_norm/batchnorm/mul_2Mul+embeddings/layer_norm/moments/mean:output:0'embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/mul_2Τ
.embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOp7embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.embeddings/layer_norm/batchnorm/ReadVariableOpσ
#embeddings/layer_norm/batchnorm/subSub6embeddings/layer_norm/batchnorm/ReadVariableOp:value:0)embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/subκ
%embeddings/layer_norm/batchnorm/add_1AddV2)embeddings/layer_norm/batchnorm/mul_1:z:0'embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/add_1w
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2
dropout_1/dropout/ConstΑ
dropout_1/dropout/MulMul)embeddings/layer_norm/batchnorm/add_1:z:0 dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Mul
dropout_1/dropout/ShapeShape)embeddings/layer_norm/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shapeξ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)20
.dropout_1/dropout/random_uniform/RandomUniform
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dropout_1/dropout/GreaterEqual/yσ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_1/dropout/GreaterEqualͺ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Cast―
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Mul_1
self_attention_mask_1/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
self_attention_mask_1/Shape 
)self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)self_attention_mask_1/strided_slice/stack€
+self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice/stack_1€
+self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice/stack_2ζ
#self_attention_mask_1/strided_sliceStridedSlice$self_attention_mask_1/Shape:output:02self_attention_mask_1/strided_slice/stack:output:04self_attention_mask_1/strided_slice/stack_1:output:04self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask_1/strided_slice€
+self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice_1/stack¨
-self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_1/stack_1¨
-self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_1/stack_2π
%self_attention_mask_1/strided_slice_1StridedSlice$self_attention_mask_1/Shape:output:04self_attention_mask_1/strided_slice_1/stack:output:06self_attention_mask_1/strided_slice_1/stack_1:output:06self_attention_mask_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_1v
self_attention_mask_1/Shape_1Shapeinputs_1*
T0*
_output_shapes
:2
self_attention_mask_1/Shape_1€
+self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+self_attention_mask_1/strided_slice_2/stack¨
-self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_2/stack_1¨
-self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_2/stack_2ς
%self_attention_mask_1/strided_slice_2StridedSlice&self_attention_mask_1/Shape_1:output:04self_attention_mask_1/strided_slice_2/stack:output:06self_attention_mask_1/strided_slice_2/stack_1:output:06self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_2€
+self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice_3/stack¨
-self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_3/stack_1¨
-self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_3/stack_2ς
%self_attention_mask_1/strided_slice_3StridedSlice&self_attention_mask_1/Shape_1:output:04self_attention_mask_1/strided_slice_3/stack:output:06self_attention_mask_1/strided_slice_3/stack_1:output:06self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_3
%self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%self_attention_mask_1/Reshape/shape/1
#self_attention_mask_1/Reshape/shapePack,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/Reshape/shape/1:output:0.self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2%
#self_attention_mask_1/Reshape/shapeΐ
self_attention_mask_1/ReshapeReshapeinputs_1,self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/ReshapeΆ
self_attention_mask_1/CastCast&self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/CastΖ
self_attention_mask_1/ones/mulMul,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2 
self_attention_mask_1/ones/mul
"self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"self_attention_mask_1/ones/mul_1/y½
 self_attention_mask_1/ones/mul_1Mul"self_attention_mask_1/ones/mul:z:0+self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2"
 self_attention_mask_1/ones/mul_1
!self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :θ2#
!self_attention_mask_1/ones/Less/y½
self_attention_mask_1/ones/LessLess$self_attention_mask_1/ones/mul_1:z:0*self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
self_attention_mask_1/ones/Less
#self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#self_attention_mask_1/ones/packed/2
!self_attention_mask_1/ones/packedPack,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/strided_slice_1:output:0,self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2#
!self_attention_mask_1/ones/packed
 self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 self_attention_mask_1/ones/ConstΦ
self_attention_mask_1/onesFill*self_attention_mask_1/ones/packed:output:0)self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/onesΚ
self_attention_mask_1/mulMul#self_attention_mask_1/ones:output:0self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
self_attention_mask_1/mul‘
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpΟ
6transformer/layer_0/self_attention/query/einsum/EinsumEinsumdropout_1/dropout/Mul_1:z:0Mtransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde28
6transformer/layer_0/self_attention/query/einsum/Einsum?
;transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpDtransformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02=
;transformer/layer_0/self_attention/query/add/ReadVariableOp?
,transformer/layer_0/self_attention/query/addAddV2?transformer/layer_0/self_attention/query/einsum/Einsum:output:0Ctransformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2.
,transformer/layer_0/self_attention/query/add
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpLtransformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02E
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpΙ
4transformer/layer_0/self_attention/key/einsum/EinsumEinsumdropout_1/dropout/Mul_1:z:0Ktransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde26
4transformer/layer_0/self_attention/key/einsum/Einsumω
9transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpBtransformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02;
9transformer/layer_0/self_attention/key/add/ReadVariableOp¦
*transformer/layer_0/self_attention/key/addAddV2=transformer/layer_0/self_attention/key/einsum/Einsum:output:0Atransformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2,
*transformer/layer_0/self_attention/key/add‘
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpΟ
6transformer/layer_0/self_attention/value/einsum/EinsumEinsumdropout_1/dropout/Mul_1:z:0Mtransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde28
6transformer/layer_0/self_attention/value/einsum/Einsum?
;transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpDtransformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02=
;transformer/layer_0/self_attention/value/add/ReadVariableOp?
,transformer/layer_0/self_attention/value/addAddV2?transformer/layer_0/self_attention/value/einsum/Einsum:output:0Ctransformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2.
,transformer/layer_0/self_attention/value/addΔ
0transformer/layer_0/self_attention/einsum/EinsumEinsum.transformer/layer_0/self_attention/key/add:z:00transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe22
0transformer/layer_0/self_attention/einsum/Einsum
(transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2*
(transformer/layer_0/self_attention/Mul/y
&transformer/layer_0/self_attention/MulMul9transformer/layer_0/self_attention/einsum/Einsum:output:01transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2(
&transformer/layer_0/self_attention/Mul?
Btransformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2D
Btransformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dimΖ
>transformer/layer_0/self_attention/masked_softmax_1/ExpandDims
ExpandDimsself_attention_mask_1/mul:z:0Ktransformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2@
>transformer/layer_0/self_attention/masked_softmax_1/ExpandDims»
9transformer/layer_0/self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2;
9transformer/layer_0/self_attention/masked_softmax_1/sub/x?
7transformer/layer_0/self_attention/masked_softmax_1/subSubBtransformer/layer_0/self_attention/masked_softmax_1/sub/x:output:0Gtransformer/layer_0/self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????29
7transformer/layer_0/self_attention/masked_softmax_1/sub»
9transformer/layer_0/self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2;
9transformer/layer_0/self_attention/masked_softmax_1/mul/yΖ
7transformer/layer_0/self_attention/masked_softmax_1/mulMul;transformer/layer_0/self_attention/masked_softmax_1/sub:z:0Btransformer/layer_0/self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????29
7transformer/layer_0/self_attention/masked_softmax_1/mul°
7transformer/layer_0/self_attention/masked_softmax_1/addAddV2*transformer/layer_0/self_attention/Mul:z:0;transformer/layer_0/self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????29
7transformer/layer_0/self_attention/masked_softmax_1/add
;transformer/layer_0/self_attention/masked_softmax_1/SoftmaxSoftmax;transformer/layer_0/self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2=
;transformer/layer_0/self_attention/masked_softmax_1/Softmax½
:transformer/layer_0/self_attention/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2<
:transformer/layer_0/self_attention/dropout_3/dropout/ConstΣ
8transformer/layer_0/self_attention/dropout_3/dropout/MulMulEtransformer/layer_0/self_attention/masked_softmax_1/Softmax:softmax:0Ctransformer/layer_0/self_attention/dropout_3/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2:
8transformer/layer_0/self_attention/dropout_3/dropout/Mulν
:transformer/layer_0/self_attention/dropout_3/dropout/ShapeShapeEtransformer/layer_0/self_attention/masked_softmax_1/Softmax:softmax:0*
T0*
_output_shapes
:2<
:transformer/layer_0/self_attention/dropout_3/dropout/Shapeρ
Qtransformer/layer_0/self_attention/dropout_3/dropout/random_uniform/RandomUniformRandomUniformCtransformer/layer_0/self_attention/dropout_3/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed±?ε)*
seed22S
Qtransformer/layer_0/self_attention/dropout_3/dropout/random_uniform/RandomUniformΟ
Ctransformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2E
Ctransformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual/y
Atransformer/layer_0/self_attention/dropout_3/dropout/GreaterEqualGreaterEqualZtransformer/layer_0/self_attention/dropout_3/dropout/random_uniform/RandomUniform:output:0Ltransformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2C
Atransformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual 
9transformer/layer_0/self_attention/dropout_3/dropout/CastCastEtransformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2;
9transformer/layer_0/self_attention/dropout_3/dropout/CastΘ
:transformer/layer_0/self_attention/dropout_3/dropout/Mul_1Mul<transformer/layer_0/self_attention/dropout_3/dropout/Mul:z:0=transformer/layer_0/self_attention/dropout_3/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2<
:transformer/layer_0/self_attention/dropout_3/dropout/Mul_1Ο
2transformer/layer_0/self_attention/einsum_1/EinsumEinsum>transformer/layer_0/self_attention/dropout_3/dropout/Mul_1:z:00transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd24
2transformer/layer_0/self_attention/einsum_1/EinsumΒ
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpYtransformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02R
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp
Atransformer/layer_0/self_attention/attention_output/einsum/EinsumEinsum;transformer/layer_0/self_attention/einsum_1/Einsum:output:0Xtransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2C
Atransformer/layer_0/self_attention/attention_output/einsum/Einsum
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpOtransformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOpΦ
7transformer/layer_0/self_attention/attention_output/addAddV2Jtransformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0Ntransformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer/layer_0/self_attention/attention_output/add
+transformer/layer_0/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2-
+transformer/layer_0/dropout_4/dropout/Const
)transformer/layer_0/dropout_4/dropout/MulMul;transformer/layer_0/self_attention/attention_output/add:z:04transformer/layer_0/dropout_4/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2+
)transformer/layer_0/dropout_4/dropout/MulΕ
+transformer/layer_0/dropout_4/dropout/ShapeShape;transformer/layer_0/self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2-
+transformer/layer_0/dropout_4/dropout/Shape·
Btransformer/layer_0/dropout_4/dropout/random_uniform/RandomUniformRandomUniform4transformer/layer_0/dropout_4/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)*
seed22D
Btransformer/layer_0/dropout_4/dropout/random_uniform/RandomUniform±
4transformer/layer_0/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=26
4transformer/layer_0/dropout_4/dropout/GreaterEqual/yΓ
2transformer/layer_0/dropout_4/dropout/GreaterEqualGreaterEqualKtransformer/layer_0/dropout_4/dropout/random_uniform/RandomUniform:output:0=transformer/layer_0/dropout_4/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????24
2transformer/layer_0/dropout_4/dropout/GreaterEqualζ
*transformer/layer_0/dropout_4/dropout/CastCast6transformer/layer_0/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2,
*transformer/layer_0/dropout_4/dropout/Cast?
+transformer/layer_0/dropout_4/dropout/Mul_1Mul-transformer/layer_0/dropout_4/dropout/Mul:z:0.transformer/layer_0/dropout_4/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2-
+transformer/layer_0/dropout_4/dropout/Mul_1Θ
transformer/layer_0/addAddV2dropout_1/dropout/Mul_1:z:0/transformer/layer_0/dropout_4/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
transformer/layer_0/addζ
Ltransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesΔ
:transformer/layer_0/self_attention_layer_norm/moments/meanMeantransformer/layer_0/add:z:0Utransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2<
:transformer/layer_0/self_attention_layer_norm/moments/mean
Btransformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientCtransformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Btransformer/layer_0/self_attention_layer_norm/moments/StopGradientΠ
Gtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferencetransformer/layer_0/add:z:0Ktransformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceξ
Ptransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Ptransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices
>transformer/layer_0/self_attention_layer_norm/moments/varianceMeanKtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0Ytransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2@
>transformer/layer_0/self_attention_layer_norm/moments/varianceΓ
=transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add/yΣ
;transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2Gtransformer/layer_0/self_attention_layer_norm/moments/variance:output:0Ftransformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/add
=transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrt?transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt¨
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpStransformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02L
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpΧ
;transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulAtransformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0Rtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/mul’
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Multransformer/layer_0/add:z:0?transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Κ
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulCtransformer/layer_0/self_attention_layer_norm/moments/mean:output:0?transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpOtransformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpΣ
;transformer/layer_0/self_attention_layer_norm/batchnorm/subSubNtransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Atransformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/subΚ
=transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Atransformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0?transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add_1
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOpFtransformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02?
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpΧ
.transformer/layer_0/intermediate/einsum/EinsumEinsumAtransformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0Etransformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd20
.transformer/layer_0/intermediate/einsum/Einsumγ
3transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOp<transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype025
3transformer/layer_0/intermediate/add/ReadVariableOp
$transformer/layer_0/intermediate/addAddV27transformer/layer_0/intermediate/einsum/Einsum:output:0;transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/intermediate/add
&transformer/layer_0/activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2(
&transformer/layer_0/activation_1/Pow/yν
$transformer/layer_0/activation_1/PowPow(transformer/layer_0/intermediate/add:z:0/transformer/layer_0/activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation_1/Pow
&transformer/layer_0/activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2(
&transformer/layer_0/activation_1/mul/xν
$transformer/layer_0/activation_1/mulMul/transformer/layer_0/activation_1/mul/x:output:0(transformer/layer_0/activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation_1/mulθ
$transformer/layer_0/activation_1/addAddV2(transformer/layer_0/intermediate/add:z:0(transformer/layer_0/activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation_1/add
(transformer/layer_0/activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2*
(transformer/layer_0/activation_1/mul_1/xσ
&transformer/layer_0/activation_1/mul_1Mul1transformer/layer_0/activation_1/mul_1/x:output:0(transformer/layer_0/activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2(
&transformer/layer_0/activation_1/mul_1Α
%transformer/layer_0/activation_1/TanhTanh*transformer/layer_0/activation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2'
%transformer/layer_0/activation_1/Tanh
(transformer/layer_0/activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(transformer/layer_0/activation_1/add_1/xφ
&transformer/layer_0/activation_1/add_1AddV21transformer/layer_0/activation_1/add_1/x:output:0)transformer/layer_0/activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2(
&transformer/layer_0/activation_1/add_1
(transformer/layer_0/activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(transformer/layer_0/activation_1/mul_2/xυ
&transformer/layer_0/activation_1/mul_2Mul1transformer/layer_0/activation_1/mul_2/x:output:0*transformer/layer_0/activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2(
&transformer/layer_0/activation_1/mul_2μ
&transformer/layer_0/activation_1/mul_3Mul(transformer/layer_0/intermediate/add:z:0*transformer/layer_0/activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2(
&transformer/layer_0/activation_1/mul_3σ
7transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOp@transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype029
7transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
(transformer/layer_0/output/einsum/EinsumEinsum*transformer/layer_0/activation_1/mul_3:z:0?transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2*
(transformer/layer_0/output/einsum/EinsumΡ
-transformer/layer_0/output/add/ReadVariableOpReadVariableOp6transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02/
-transformer/layer_0/output/add/ReadVariableOpς
transformer/layer_0/output/addAddV21transformer/layer_0/output/einsum/Einsum:output:05transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2 
transformer/layer_0/output/add
+transformer/layer_0/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2-
+transformer/layer_0/dropout_5/dropout/Constφ
)transformer/layer_0/dropout_5/dropout/MulMul"transformer/layer_0/output/add:z:04transformer/layer_0/dropout_5/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2+
)transformer/layer_0/dropout_5/dropout/Mul¬
+transformer/layer_0/dropout_5/dropout/ShapeShape"transformer/layer_0/output/add:z:0*
T0*
_output_shapes
:2-
+transformer/layer_0/dropout_5/dropout/Shape·
Btransformer/layer_0/dropout_5/dropout/random_uniform/RandomUniformRandomUniform4transformer/layer_0/dropout_5/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)*
seed22D
Btransformer/layer_0/dropout_5/dropout/random_uniform/RandomUniform±
4transformer/layer_0/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=26
4transformer/layer_0/dropout_5/dropout/GreaterEqual/yΓ
2transformer/layer_0/dropout_5/dropout/GreaterEqualGreaterEqualKtransformer/layer_0/dropout_5/dropout/random_uniform/RandomUniform:output:0=transformer/layer_0/dropout_5/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????24
2transformer/layer_0/dropout_5/dropout/GreaterEqualζ
*transformer/layer_0/dropout_5/dropout/CastCast6transformer/layer_0/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2,
*transformer/layer_0/dropout_5/dropout/Cast?
+transformer/layer_0/dropout_5/dropout/Mul_1Mul-transformer/layer_0/dropout_5/dropout/Mul:z:0.transformer/layer_0/dropout_5/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2-
+transformer/layer_0/dropout_5/dropout/Mul_1ς
transformer/layer_0/add_1AddV2/transformer/layer_0/dropout_5/dropout/Mul_1:z:0Atransformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
transformer/layer_0/add_1Φ
Dtransformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2F
Dtransformer/layer_0/output_layer_norm/moments/mean/reduction_indices?
2transformer/layer_0/output_layer_norm/moments/meanMeantransformer/layer_0/add_1:z:0Mtransformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(24
2transformer/layer_0/output_layer_norm/moments/mean
:transformer/layer_0/output_layer_norm/moments/StopGradientStopGradient;transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2<
:transformer/layer_0/output_layer_norm/moments/StopGradientΊ
?transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifferencetransformer/layer_0/add_1:z:0Ctransformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer/layer_0/output_layer_norm/moments/SquaredDifferenceή
Htransformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer/layer_0/output_layer_norm/moments/variance/reduction_indicesΰ
6transformer/layer_0/output_layer_norm/moments/varianceMeanCtransformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0Qtransformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(28
6transformer/layer_0/output_layer_norm/moments/variance³
5transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+27
5transformer/layer_0/output_layer_norm/batchnorm/add/y³
3transformer/layer_0/output_layer_norm/batchnorm/addAddV2?transformer/layer_0/output_layer_norm/moments/variance:output:0>transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/addο
5transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrt7transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/Rsqrt
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02D
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp·
3transformer/layer_0/output_layer_norm/batchnorm/mulMul9transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0Jtransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/mul
5transformer/layer_0/output_layer_norm/batchnorm/mul_1Multransformer/layer_0/add_1:z:07transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/mul_1ͺ
5transformer/layer_0/output_layer_norm/batchnorm/mul_2Mul;transformer/layer_0/output_layer_norm/moments/mean:output:07transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/mul_2
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOpGtransformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02@
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp³
3transformer/layer_0/output_layer_norm/batchnorm/subSubFtransformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:09transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/subͺ
5transformer/layer_0/output_layer_norm/batchnorm/add_1AddV29transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:07transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/add_1
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda_1/strided_slice/stack
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2 
lambda_1/strided_slice/stack_1
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2 
lambda_1/strided_slice/stack_2β
lambda_1/strided_sliceStridedSlice9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
lambda_1/strided_slice
lambda_1/SqueezeSqueezelambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
lambda_1/Squeezeΐ
&pooler_transform/MatMul/ReadVariableOpReadVariableOp/pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&pooler_transform/MatMul/ReadVariableOpΉ
pooler_transform/MatMulMatMullambda_1/Squeeze:output:0.pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
pooler_transform/MatMulΏ
'pooler_transform/BiasAdd/ReadVariableOpReadVariableOp0pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'pooler_transform/BiasAdd/ReadVariableOpΕ
pooler_transform/BiasAddBiasAdd!pooler_transform/MatMul:product:0/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
pooler_transform/BiasAdd
pooler_transform/TanhTanh!pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
pooler_transform/Tanh
IdentityIdentity9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identityq

Identity_1Identitypooler_transform/Tanh:y:0*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????::::::::::::::::::::::::Z V
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/2
¨
C
'__inference_lambda_1_layer_call_fn_5021

inputs
identityΐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_25052
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
¨
C
'__inference_lambda_1_layer_call_fn_5016

inputs
identityΐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_24962
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
Ό

I__inference_type_embeddings_layer_call_and_return_conditional_losses_1997

inputs"
matmul_readvariableop_resource
identityq
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapek
ReshapeReshapeinputsReshape/shape:output:0*
T0*#
_output_shapes
:?????????2	
Reshapei
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
one_hot/on_valuek
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
one_hot/off_value`
one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
one_hot/depthΉ
one_hotOneHotReshape:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2	
one_hot
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOp}
MatMulMatMulone_hot:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMulD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapel
concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2
concat/values_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis
concatConcatV2Shape:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat
	Reshape_1ReshapeMatMul:product:0concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1s
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????::X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
ξ
y
?__inference_add_1_layer_call_and_return_conditional_losses_4574
inputs_0
inputs_1
inputs_2
identityf
addAddV2inputs_0inputs_1*
T0*4
_output_shapes"
 :??????????????????2
addi
add_1AddV2add:z:0inputs_2*
T0*4
_output_shapes"
 :??????????????????2
add_1j
IdentityIdentity	add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:??????????????????:??????????????????:??????????????????:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/1:^Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/2
§

4__inference_embeddings/layer_norm_layer_call_fn_4612

inputs
unknown
	unknown_0
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_20492
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
₯
²
J__inference_pooler_transform_layer_call_and_return_conditional_losses_5032

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
φ
 
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_2376

inputs
inputs_1>
:self_attention_query_einsum_einsum_readvariableop_resource4
0self_attention_query_add_readvariableop_resource<
8self_attention_key_einsum_einsum_readvariableop_resource2
.self_attention_key_add_readvariableop_resource>
:self_attention_value_einsum_einsum_readvariableop_resource4
0self_attention_value_add_readvariableop_resourceI
Eself_attention_attention_output_einsum_einsum_readvariableop_resource?
;self_attention_attention_output_add_readvariableop_resourceC
?self_attention_layer_norm_batchnorm_mul_readvariableop_resource?
;self_attention_layer_norm_batchnorm_readvariableop_resource6
2intermediate_einsum_einsum_readvariableop_resource,
(intermediate_add_readvariableop_resource0
,output_einsum_einsum_readvariableop_resource&
"output_add_readvariableop_resource;
7output_layer_norm_batchnorm_mul_readvariableop_resource7
3output_layer_norm_batchnorm_readvariableop_resource
identityε
1self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/query/einsum/Einsum/ReadVariableOpώ
"self_attention/query/einsum/EinsumEinsuminputs9self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/query/einsum/EinsumΓ
'self_attention/query/add/ReadVariableOpReadVariableOp0self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/query/add/ReadVariableOpή
self_attention/query/addAddV2+self_attention/query/einsum/Einsum:output:0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/query/addί
/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp8self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype021
/self_attention/key/einsum/Einsum/ReadVariableOpψ
 self_attention/key/einsum/EinsumEinsuminputs7self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2"
 self_attention/key/einsum/Einsum½
%self_attention/key/add/ReadVariableOpReadVariableOp.self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02'
%self_attention/key/add/ReadVariableOpΦ
self_attention/key/addAddV2)self_attention/key/einsum/Einsum:output:0-self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/key/addε
1self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/value/einsum/Einsum/ReadVariableOpώ
"self_attention/value/einsum/EinsumEinsuminputs9self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/value/einsum/EinsumΓ
'self_attention/value/add/ReadVariableOpReadVariableOp0self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/value/add/ReadVariableOpή
self_attention/value/addAddV2+self_attention/value/einsum/Einsum:output:0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/value/addτ
self_attention/einsum/EinsumEinsumself_attention/key/add:z:0self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2
self_attention/einsum/Einsumq
self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2
self_attention/Mul/yΑ
self_attention/MulMul%self_attention/einsum/Einsum:output:0self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
self_attention/Mulͺ
.self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:20
.self_attention/masked_softmax_1/ExpandDims/dimυ
*self_attention/masked_softmax_1/ExpandDims
ExpandDimsinputs_17self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2,
*self_attention/masked_softmax_1/ExpandDims
%self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%self_attention/masked_softmax_1/sub/x
#self_attention/masked_softmax_1/subSub.self_attention/masked_softmax_1/sub/x:output:03self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/sub
%self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2'
%self_attention/masked_softmax_1/mul/yφ
#self_attention/masked_softmax_1/mulMul'self_attention/masked_softmax_1/sub:z:0.self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/mulΰ
#self_attention/masked_softmax_1/addAddV2self_attention/Mul:z:0'self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/add?
'self_attention/masked_softmax_1/SoftmaxSoftmax'self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2)
'self_attention/masked_softmax_1/SoftmaxΡ
!self_attention/dropout_3/IdentityIdentity1self_attention/masked_softmax_1/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/dropout_3/Identity?
self_attention/einsum_1/EinsumEinsum*self_attention/dropout_3/Identity:output:0self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2 
self_attention/einsum_1/Einsum
<self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpEself_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02>
<self_attention/attention_output/einsum/Einsum/ReadVariableOpΌ
-self_attention/attention_output/einsum/EinsumEinsum'self_attention/einsum_1/Einsum:output:0Dself_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2/
-self_attention/attention_output/einsum/Einsumΰ
2self_attention/attention_output/add/ReadVariableOpReadVariableOp;self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention/attention_output/add/ReadVariableOp
#self_attention/attention_output/addAddV26self_attention/attention_output/einsum/Einsum:output:0:self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#self_attention/attention_output/add
dropout_4/IdentityIdentity'self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_4/Identityw
addAddV2inputsdropout_4/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2
addΎ
8self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8self_attention_layer_norm/moments/mean/reduction_indicesτ
&self_attention_layer_norm/moments/meanMeanadd:z:0Aself_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&self_attention_layer_norm/moments/meanΰ
.self_attention_layer_norm/moments/StopGradientStopGradient/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????20
.self_attention_layer_norm/moments/StopGradient
3self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferenceadd:z:07self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????25
3self_attention_layer_norm/moments/SquaredDifferenceΖ
<self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2>
<self_attention_layer_norm/moments/variance/reduction_indices°
*self_attention_layer_norm/moments/varianceMean7self_attention_layer_norm/moments/SquaredDifference:z:0Eself_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2,
*self_attention_layer_norm/moments/variance
)self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2+
)self_attention_layer_norm/batchnorm/add/y
'self_attention_layer_norm/batchnorm/addAddV23self_attention_layer_norm/moments/variance:output:02self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/addΛ
)self_attention_layer_norm/batchnorm/RsqrtRsqrt+self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/Rsqrtμ
6self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp?self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype028
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp
'self_attention_layer_norm/batchnorm/mulMul-self_attention_layer_norm/batchnorm/Rsqrt:y:0>self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/mul?
)self_attention_layer_norm/batchnorm/mul_1Muladd:z:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_1ϊ
)self_attention_layer_norm/batchnorm/mul_2Mul/self_attention_layer_norm/moments/mean:output:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_2ΰ
2self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOp;self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention_layer_norm/batchnorm/ReadVariableOp
'self_attention_layer_norm/batchnorm/subSub:self_attention_layer_norm/batchnorm/ReadVariableOp:value:0-self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/subϊ
)self_attention_layer_norm/batchnorm/add_1AddV2-self_attention_layer_norm/batchnorm/mul_1:z:0+self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/add_1Ι
)intermediate/einsum/Einsum/ReadVariableOpReadVariableOp2intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02+
)intermediate/einsum/Einsum/ReadVariableOp
intermediate/einsum/EinsumEinsum-self_attention_layer_norm/batchnorm/add_1:z:01intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2
intermediate/einsum/Einsum§
intermediate/add/ReadVariableOpReadVariableOp(intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02!
intermediate/add/ReadVariableOpΊ
intermediate/addAddV2#intermediate/einsum/Einsum:output:0'intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2
intermediate/addm
activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
activation_1/Pow/y
activation_1/PowPowintermediate/add:z:0activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/Powm
activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2
activation_1/mul/x
activation_1/mulMulactivation_1/mul/x:output:0activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul
activation_1/addAddV2intermediate/add:z:0activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/addq
activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2
activation_1/mul_1/x£
activation_1/mul_1Mulactivation_1/mul_1/x:output:0activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_1
activation_1/TanhTanhactivation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/Tanhq
activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
activation_1/add_1/x¦
activation_1/add_1AddV2activation_1/add_1/x:output:0activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/add_1q
activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
activation_1/mul_2/x₯
activation_1/mul_2Mulactivation_1/mul_2/x:output:0activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_2
activation_1/mul_3Mulintermediate/add:z:0activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_3·
#output/einsum/Einsum/ReadVariableOpReadVariableOp,output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02%
#output/einsum/Einsum/ReadVariableOpή
output/einsum/EinsumEinsumactivation_1/mul_3:z:0+output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2
output/einsum/Einsum
output/add/ReadVariableOpReadVariableOp"output_add_readvariableop_resource*
_output_shapes
:*
dtype02
output/add/ReadVariableOp’

output/addAddV2output/einsum/Einsum:output:0!output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2

output/add
dropout_5/IdentityIdentityoutput/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_5/Identity’
add_1AddV2dropout_5/Identity:output:0-self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add_1?
0output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:22
0output_layer_norm/moments/mean/reduction_indicesή
output_layer_norm/moments/meanMean	add_1:z:09output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2 
output_layer_norm/moments/meanΘ
&output_layer_norm/moments/StopGradientStopGradient'output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&output_layer_norm/moments/StopGradientκ
+output_layer_norm/moments/SquaredDifferenceSquaredDifference	add_1:z:0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+output_layer_norm/moments/SquaredDifferenceΆ
4output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4output_layer_norm/moments/variance/reduction_indices
"output_layer_norm/moments/varianceMean/output_layer_norm/moments/SquaredDifference:z:0=output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"output_layer_norm/moments/variance
!output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2#
!output_layer_norm/batchnorm/add/yγ
output_layer_norm/batchnorm/addAddV2+output_layer_norm/moments/variance:output:0*output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/add³
!output_layer_norm/batchnorm/RsqrtRsqrt#output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/RsqrtΤ
.output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp7output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype020
.output_layer_norm/batchnorm/mul/ReadVariableOpη
output_layer_norm/batchnorm/mulMul%output_layer_norm/batchnorm/Rsqrt:y:06output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/mulΌ
!output_layer_norm/batchnorm/mul_1Mul	add_1:z:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_1Ϊ
!output_layer_norm/batchnorm/mul_2Mul'output_layer_norm/moments/mean:output:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_2Θ
*output_layer_norm/batchnorm/ReadVariableOpReadVariableOp3output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02,
*output_layer_norm/batchnorm/ReadVariableOpγ
output_layer_norm/batchnorm/subSub2output_layer_norm/batchnorm/ReadVariableOp:value:0%output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/subΪ
!output_layer_norm/batchnorm/add_1AddV2%output_layer_norm/batchnorm/mul_1:z:0#output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/add_1
IdentityIdentity%output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*
_input_shapes
:??????????????????:'???????????????????????????:::::::::::::::::\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
Μ
υ
+__inference_functional_3_layer_call_fn_3863
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCallΜ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:?????????:??????????????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_functional_3_layer_call_and_return_conditional_losses_31282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/2
Λ>
Ϋ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2610
input_word_ids

input_mask
input_type_ids
word_embeddings_2552
position_embedding_2555
type_embeddings_2558
embeddings_layer_norm_2562
embeddings_layer_norm_2564
transformer_layer_0_2569
transformer_layer_0_2571
transformer_layer_0_2573
transformer_layer_0_2575
transformer_layer_0_2577
transformer_layer_0_2579
transformer_layer_0_2581
transformer_layer_0_2583
transformer_layer_0_2585
transformer_layer_0_2587
transformer_layer_0_2589
transformer_layer_0_2591
transformer_layer_0_2593
transformer_layer_0_2595
transformer_layer_0_2597
transformer_layer_0_2599
pooler_transform_2603
pooler_transform_2605
identity

identity_1’-embeddings/layer_norm/StatefulPartitionedCall’(pooler_transform/StatefulPartitionedCall’*position_embedding/StatefulPartitionedCall’+transformer/layer_0/StatefulPartitionedCall’'type_embeddings/StatefulPartitionedCall’'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_word_idsword_embeddings_2552*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_19322)
'word_embeddings/StatefulPartitionedCallά
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_2555*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_19672,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_type_idstype_embeddings_2558*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_19972)
'type_embeddings/StatefulPartitionedCallι
add_1/PartitionedCallPartitionedCall0word_embeddings/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:00type_embeddings/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_20172
add_1/PartitionedCallτ
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0embeddings_layer_norm_2562embeddings_layer_norm_2564*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_20492/
-embeddings/layer_norm/StatefulPartitionedCall
dropout_1/PartitionedCallPartitionedCall6embeddings/layer_norm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_20822
dropout_1/PartitionedCallΈ
%self_attention_mask_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0
input_mask*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_21322'
%self_attention_mask_1/PartitionedCall§
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0.self_attention_mask_1/PartitionedCall:output:0transformer_layer_0_2569transformer_layer_0_2571transformer_layer_0_2573transformer_layer_0_2575transformer_layer_0_2577transformer_layer_0_2579transformer_layer_0_2581transformer_layer_0_2583transformer_layer_0_2585transformer_layer_0_2587transformer_layer_0_2589transformer_layer_0_2591transformer_layer_0_2593transformer_layer_0_2595transformer_layer_0_2597transformer_layer_0_2599*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_23762-
+transformer/layer_0/StatefulPartitionedCall
lambda_1/PartitionedCallPartitionedCall4transformer/layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_25052
lambda_1/PartitionedCallΡ
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0pooler_transform_2603pooler_transform_2605*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_25292*
(pooler_transform/StatefulPartitionedCall
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
-embeddings/layer_norm/StatefulPartitionedCall-embeddings/layer_norm/StatefulPartitionedCall2T
(pooler_transform/StatefulPartitionedCall(pooler_transform/StatefulPartitionedCall2X
*position_embedding/StatefulPartitionedCall*position_embedding/StatefulPartitionedCall2Z
+transformer/layer_0/StatefulPartitionedCall+transformer/layer_0/StatefulPartitionedCall2R
'type_embeddings/StatefulPartitionedCall'type_embeddings/StatefulPartitionedCall2R
'word_embeddings/StatefulPartitionedCall'word_embeddings/StatefulPartitionedCall:` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
μΆ
’
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4810
inputs_0
inputs_1>
:self_attention_query_einsum_einsum_readvariableop_resource4
0self_attention_query_add_readvariableop_resource<
8self_attention_key_einsum_einsum_readvariableop_resource2
.self_attention_key_add_readvariableop_resource>
:self_attention_value_einsum_einsum_readvariableop_resource4
0self_attention_value_add_readvariableop_resourceI
Eself_attention_attention_output_einsum_einsum_readvariableop_resource?
;self_attention_attention_output_add_readvariableop_resourceC
?self_attention_layer_norm_batchnorm_mul_readvariableop_resource?
;self_attention_layer_norm_batchnorm_readvariableop_resource6
2intermediate_einsum_einsum_readvariableop_resource,
(intermediate_add_readvariableop_resource0
,output_einsum_einsum_readvariableop_resource&
"output_add_readvariableop_resource;
7output_layer_norm_batchnorm_mul_readvariableop_resource7
3output_layer_norm_batchnorm_readvariableop_resource
identityε
1self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/query/einsum/Einsum/ReadVariableOp
"self_attention/query/einsum/EinsumEinsuminputs_09self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/query/einsum/EinsumΓ
'self_attention/query/add/ReadVariableOpReadVariableOp0self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/query/add/ReadVariableOpή
self_attention/query/addAddV2+self_attention/query/einsum/Einsum:output:0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/query/addί
/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp8self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype021
/self_attention/key/einsum/Einsum/ReadVariableOpϊ
 self_attention/key/einsum/EinsumEinsuminputs_07self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2"
 self_attention/key/einsum/Einsum½
%self_attention/key/add/ReadVariableOpReadVariableOp.self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02'
%self_attention/key/add/ReadVariableOpΦ
self_attention/key/addAddV2)self_attention/key/einsum/Einsum:output:0-self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/key/addε
1self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/value/einsum/Einsum/ReadVariableOp
"self_attention/value/einsum/EinsumEinsuminputs_09self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/value/einsum/EinsumΓ
'self_attention/value/add/ReadVariableOpReadVariableOp0self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/value/add/ReadVariableOpή
self_attention/value/addAddV2+self_attention/value/einsum/Einsum:output:0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/value/addτ
self_attention/einsum/EinsumEinsumself_attention/key/add:z:0self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2
self_attention/einsum/Einsumq
self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2
self_attention/Mul/yΑ
self_attention/MulMul%self_attention/einsum/Einsum:output:0self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
self_attention/Mulͺ
.self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:20
.self_attention/masked_softmax_1/ExpandDims/dimυ
*self_attention/masked_softmax_1/ExpandDims
ExpandDimsinputs_17self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2,
*self_attention/masked_softmax_1/ExpandDims
%self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%self_attention/masked_softmax_1/sub/x
#self_attention/masked_softmax_1/subSub.self_attention/masked_softmax_1/sub/x:output:03self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/sub
%self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2'
%self_attention/masked_softmax_1/mul/yφ
#self_attention/masked_softmax_1/mulMul'self_attention/masked_softmax_1/sub:z:0.self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/mulΰ
#self_attention/masked_softmax_1/addAddV2self_attention/Mul:z:0'self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/add?
'self_attention/masked_softmax_1/SoftmaxSoftmax'self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2)
'self_attention/masked_softmax_1/Softmax
&self_attention/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2(
&self_attention/dropout_3/dropout/Const
$self_attention/dropout_3/dropout/MulMul1self_attention/masked_softmax_1/Softmax:softmax:0/self_attention/dropout_3/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2&
$self_attention/dropout_3/dropout/Mul±
&self_attention/dropout_3/dropout/ShapeShape1self_attention/masked_softmax_1/Softmax:softmax:0*
T0*
_output_shapes
:2(
&self_attention/dropout_3/dropout/Shape¨
=self_attention/dropout_3/dropout/random_uniform/RandomUniformRandomUniform/self_attention/dropout_3/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed±?ε)2?
=self_attention/dropout_3/dropout/random_uniform/RandomUniform§
/self_attention/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=21
/self_attention/dropout_3/dropout/GreaterEqual/yΌ
-self_attention/dropout_3/dropout/GreaterEqualGreaterEqualFself_attention/dropout_3/dropout/random_uniform/RandomUniform:output:08self_attention/dropout_3/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2/
-self_attention/dropout_3/dropout/GreaterEqualδ
%self_attention/dropout_3/dropout/CastCast1self_attention/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2'
%self_attention/dropout_3/dropout/Castψ
&self_attention/dropout_3/dropout/Mul_1Mul(self_attention/dropout_3/dropout/Mul:z:0)self_attention/dropout_3/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2(
&self_attention/dropout_3/dropout/Mul_1?
self_attention/einsum_1/EinsumEinsum*self_attention/dropout_3/dropout/Mul_1:z:0self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2 
self_attention/einsum_1/Einsum
<self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpEself_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02>
<self_attention/attention_output/einsum/Einsum/ReadVariableOpΌ
-self_attention/attention_output/einsum/EinsumEinsum'self_attention/einsum_1/Einsum:output:0Dself_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2/
-self_attention/attention_output/einsum/Einsumΰ
2self_attention/attention_output/add/ReadVariableOpReadVariableOp;self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention/attention_output/add/ReadVariableOp
#self_attention/attention_output/addAddV26self_attention/attention_output/einsum/Einsum:output:0:self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#self_attention/attention_output/addw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2
dropout_4/dropout/ConstΏ
dropout_4/dropout/MulMul'self_attention/attention_output/add:z:0 dropout_4/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_4/dropout/Mul
dropout_4/dropout/ShapeShape'self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shapeϋ
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)*
seed220
.dropout_4/dropout/random_uniform/RandomUniform
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dropout_4/dropout/GreaterEqual/yσ
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_4/dropout/GreaterEqualͺ
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_4/dropout/Cast―
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_4/dropout/Mul_1y
addAddV2inputs_0dropout_4/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
addΎ
8self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8self_attention_layer_norm/moments/mean/reduction_indicesτ
&self_attention_layer_norm/moments/meanMeanadd:z:0Aself_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&self_attention_layer_norm/moments/meanΰ
.self_attention_layer_norm/moments/StopGradientStopGradient/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????20
.self_attention_layer_norm/moments/StopGradient
3self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferenceadd:z:07self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????25
3self_attention_layer_norm/moments/SquaredDifferenceΖ
<self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2>
<self_attention_layer_norm/moments/variance/reduction_indices°
*self_attention_layer_norm/moments/varianceMean7self_attention_layer_norm/moments/SquaredDifference:z:0Eself_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2,
*self_attention_layer_norm/moments/variance
)self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2+
)self_attention_layer_norm/batchnorm/add/y
'self_attention_layer_norm/batchnorm/addAddV23self_attention_layer_norm/moments/variance:output:02self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/addΛ
)self_attention_layer_norm/batchnorm/RsqrtRsqrt+self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/Rsqrtμ
6self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp?self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype028
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp
'self_attention_layer_norm/batchnorm/mulMul-self_attention_layer_norm/batchnorm/Rsqrt:y:0>self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/mul?
)self_attention_layer_norm/batchnorm/mul_1Muladd:z:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_1ϊ
)self_attention_layer_norm/batchnorm/mul_2Mul/self_attention_layer_norm/moments/mean:output:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_2ΰ
2self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOp;self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention_layer_norm/batchnorm/ReadVariableOp
'self_attention_layer_norm/batchnorm/subSub:self_attention_layer_norm/batchnorm/ReadVariableOp:value:0-self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/subϊ
)self_attention_layer_norm/batchnorm/add_1AddV2-self_attention_layer_norm/batchnorm/mul_1:z:0+self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/add_1Ι
)intermediate/einsum/Einsum/ReadVariableOpReadVariableOp2intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02+
)intermediate/einsum/Einsum/ReadVariableOp
intermediate/einsum/EinsumEinsum-self_attention_layer_norm/batchnorm/add_1:z:01intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2
intermediate/einsum/Einsum§
intermediate/add/ReadVariableOpReadVariableOp(intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02!
intermediate/add/ReadVariableOpΊ
intermediate/addAddV2#intermediate/einsum/Einsum:output:0'intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2
intermediate/addm
activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
activation_1/Pow/y
activation_1/PowPowintermediate/add:z:0activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/Powm
activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2
activation_1/mul/x
activation_1/mulMulactivation_1/mul/x:output:0activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul
activation_1/addAddV2intermediate/add:z:0activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/addq
activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2
activation_1/mul_1/x£
activation_1/mul_1Mulactivation_1/mul_1/x:output:0activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_1
activation_1/TanhTanhactivation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/Tanhq
activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
activation_1/add_1/x¦
activation_1/add_1AddV2activation_1/add_1/x:output:0activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/add_1q
activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
activation_1/mul_2/x₯
activation_1/mul_2Mulactivation_1/mul_2/x:output:0activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_2
activation_1/mul_3Mulintermediate/add:z:0activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_3·
#output/einsum/Einsum/ReadVariableOpReadVariableOp,output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02%
#output/einsum/Einsum/ReadVariableOpή
output/einsum/EinsumEinsumactivation_1/mul_3:z:0+output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2
output/einsum/Einsum
output/add/ReadVariableOpReadVariableOp"output_add_readvariableop_resource*
_output_shapes
:*
dtype02
output/add/ReadVariableOp’

output/addAddV2output/einsum/Einsum:output:0!output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2

output/addw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2
dropout_5/dropout/Const¦
dropout_5/dropout/MulMuloutput/add:z:0 dropout_5/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_5/dropout/Mulp
dropout_5/dropout/ShapeShapeoutput/add:z:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shapeϋ
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)*
seed220
.dropout_5/dropout/random_uniform/RandomUniform
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dropout_5/dropout/GreaterEqual/yσ
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_5/dropout/GreaterEqualͺ
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_5/dropout/Cast―
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_5/dropout/Mul_1’
add_1AddV2dropout_5/dropout/Mul_1:z:0-self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add_1?
0output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:22
0output_layer_norm/moments/mean/reduction_indicesή
output_layer_norm/moments/meanMean	add_1:z:09output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2 
output_layer_norm/moments/meanΘ
&output_layer_norm/moments/StopGradientStopGradient'output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&output_layer_norm/moments/StopGradientκ
+output_layer_norm/moments/SquaredDifferenceSquaredDifference	add_1:z:0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+output_layer_norm/moments/SquaredDifferenceΆ
4output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4output_layer_norm/moments/variance/reduction_indices
"output_layer_norm/moments/varianceMean/output_layer_norm/moments/SquaredDifference:z:0=output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"output_layer_norm/moments/variance
!output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2#
!output_layer_norm/batchnorm/add/yγ
output_layer_norm/batchnorm/addAddV2+output_layer_norm/moments/variance:output:0*output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/add³
!output_layer_norm/batchnorm/RsqrtRsqrt#output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/RsqrtΤ
.output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp7output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype020
.output_layer_norm/batchnorm/mul/ReadVariableOpη
output_layer_norm/batchnorm/mulMul%output_layer_norm/batchnorm/Rsqrt:y:06output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/mulΌ
!output_layer_norm/batchnorm/mul_1Mul	add_1:z:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_1Ϊ
!output_layer_norm/batchnorm/mul_2Mul'output_layer_norm/moments/mean:output:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_2Θ
*output_layer_norm/batchnorm/ReadVariableOpReadVariableOp3output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02,
*output_layer_norm/batchnorm/ReadVariableOpγ
output_layer_norm/batchnorm/subSub2output_layer_norm/batchnorm/ReadVariableOp:value:0%output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/subΪ
!output_layer_norm/batchnorm/add_1AddV2%output_layer_norm/batchnorm/mul_1:z:0#output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/add_1
IdentityIdentity%output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*
_input_shapes
:??????????????????:'???????????????????????????:::::::::::::::::^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'???????????????????????????
"
_user_specified_name
inputs/1
§

L__inference_position_embedding_layer_call_and_return_conditional_losses_1967

inputs
readvariableop_resource
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2β
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2μ
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stackx
strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_2/stack_1/1¦
strided_slice_2/stack_1Packstrided_slice_1:output:0"strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2
strided_slice_2l
BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
BroadcastTo/shape/2¬
BroadcastTo/shapePackstrided_slice:output:0strided_slice_1:output:0BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2
BroadcastTo/shape
BroadcastToBroadcastTostrided_slice_2:output:0BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
BroadcastTou
IdentityIdentityBroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????????????::\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
§@
?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2547
input_word_ids

input_mask
input_type_ids
word_embeddings_1941
position_embedding_1976
type_embeddings_2006
embeddings_layer_norm_2060
embeddings_layer_norm_2062
transformer_layer_0_2454
transformer_layer_0_2456
transformer_layer_0_2458
transformer_layer_0_2460
transformer_layer_0_2462
transformer_layer_0_2464
transformer_layer_0_2466
transformer_layer_0_2468
transformer_layer_0_2470
transformer_layer_0_2472
transformer_layer_0_2474
transformer_layer_0_2476
transformer_layer_0_2478
transformer_layer_0_2480
transformer_layer_0_2482
transformer_layer_0_2484
pooler_transform_2540
pooler_transform_2542
identity

identity_1’!dropout_1/StatefulPartitionedCall’-embeddings/layer_norm/StatefulPartitionedCall’(pooler_transform/StatefulPartitionedCall’*position_embedding/StatefulPartitionedCall’+transformer/layer_0/StatefulPartitionedCall’'type_embeddings/StatefulPartitionedCall’'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_word_idsword_embeddings_1941*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_19322)
'word_embeddings/StatefulPartitionedCallά
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_1976*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_19672,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_type_idstype_embeddings_2006*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_19972)
'type_embeddings/StatefulPartitionedCallι
add_1/PartitionedCallPartitionedCall0word_embeddings/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:00type_embeddings/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_20172
add_1/PartitionedCallτ
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0embeddings_layer_norm_2060embeddings_layer_norm_2062*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_20492/
-embeddings/layer_norm/StatefulPartitionedCallͺ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall6embeddings/layer_norm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_20772#
!dropout_1/StatefulPartitionedCallΐ
%self_attention_mask_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0
input_mask*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_21322'
%self_attention_mask_1/PartitionedCall―
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0.self_attention_mask_1/PartitionedCall:output:0transformer_layer_0_2454transformer_layer_0_2456transformer_layer_0_2458transformer_layer_0_2460transformer_layer_0_2462transformer_layer_0_2464transformer_layer_0_2466transformer_layer_0_2468transformer_layer_0_2470transformer_layer_0_2472transformer_layer_0_2474transformer_layer_0_2476transformer_layer_0_2478transformer_layer_0_2480transformer_layer_0_2482transformer_layer_0_2484*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_22692-
+transformer/layer_0/StatefulPartitionedCall
lambda_1/PartitionedCallPartitionedCall4transformer/layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_24962
lambda_1/PartitionedCallΡ
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0pooler_transform_2540pooler_transform_2542*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_25292*
(pooler_transform/StatefulPartitionedCallΓ
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity·

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2^
-embeddings/layer_norm/StatefulPartitionedCall-embeddings/layer_norm/StatefulPartitionedCall2T
(pooler_transform/StatefulPartitionedCall(pooler_transform/StatefulPartitionedCall2X
*position_embedding/StatefulPartitionedCall*position_embedding/StatefulPartitionedCall2Z
+transformer/layer_0/StatefulPartitionedCall+transformer/layer_0/StatefulPartitionedCall2R
'type_embeddings/StatefulPartitionedCall'type_embeddings/StatefulPartitionedCall2R
'word_embeddings/StatefulPartitionedCall'word_embeddings/StatefulPartitionedCall:` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
ήΆ
 
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_2269

inputs
inputs_1>
:self_attention_query_einsum_einsum_readvariableop_resource4
0self_attention_query_add_readvariableop_resource<
8self_attention_key_einsum_einsum_readvariableop_resource2
.self_attention_key_add_readvariableop_resource>
:self_attention_value_einsum_einsum_readvariableop_resource4
0self_attention_value_add_readvariableop_resourceI
Eself_attention_attention_output_einsum_einsum_readvariableop_resource?
;self_attention_attention_output_add_readvariableop_resourceC
?self_attention_layer_norm_batchnorm_mul_readvariableop_resource?
;self_attention_layer_norm_batchnorm_readvariableop_resource6
2intermediate_einsum_einsum_readvariableop_resource,
(intermediate_add_readvariableop_resource0
,output_einsum_einsum_readvariableop_resource&
"output_add_readvariableop_resource;
7output_layer_norm_batchnorm_mul_readvariableop_resource7
3output_layer_norm_batchnorm_readvariableop_resource
identityε
1self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/query/einsum/Einsum/ReadVariableOpώ
"self_attention/query/einsum/EinsumEinsuminputs9self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/query/einsum/EinsumΓ
'self_attention/query/add/ReadVariableOpReadVariableOp0self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/query/add/ReadVariableOpή
self_attention/query/addAddV2+self_attention/query/einsum/Einsum:output:0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/query/addί
/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp8self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype021
/self_attention/key/einsum/Einsum/ReadVariableOpψ
 self_attention/key/einsum/EinsumEinsuminputs7self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2"
 self_attention/key/einsum/Einsum½
%self_attention/key/add/ReadVariableOpReadVariableOp.self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02'
%self_attention/key/add/ReadVariableOpΦ
self_attention/key/addAddV2)self_attention/key/einsum/Einsum:output:0-self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/key/addε
1self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/value/einsum/Einsum/ReadVariableOpώ
"self_attention/value/einsum/EinsumEinsuminputs9self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/value/einsum/EinsumΓ
'self_attention/value/add/ReadVariableOpReadVariableOp0self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/value/add/ReadVariableOpή
self_attention/value/addAddV2+self_attention/value/einsum/Einsum:output:0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/value/addτ
self_attention/einsum/EinsumEinsumself_attention/key/add:z:0self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2
self_attention/einsum/Einsumq
self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2
self_attention/Mul/yΑ
self_attention/MulMul%self_attention/einsum/Einsum:output:0self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
self_attention/Mulͺ
.self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:20
.self_attention/masked_softmax_1/ExpandDims/dimυ
*self_attention/masked_softmax_1/ExpandDims
ExpandDimsinputs_17self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2,
*self_attention/masked_softmax_1/ExpandDims
%self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%self_attention/masked_softmax_1/sub/x
#self_attention/masked_softmax_1/subSub.self_attention/masked_softmax_1/sub/x:output:03self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/sub
%self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2'
%self_attention/masked_softmax_1/mul/yφ
#self_attention/masked_softmax_1/mulMul'self_attention/masked_softmax_1/sub:z:0.self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/mulΰ
#self_attention/masked_softmax_1/addAddV2self_attention/Mul:z:0'self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/add?
'self_attention/masked_softmax_1/SoftmaxSoftmax'self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2)
'self_attention/masked_softmax_1/Softmax
&self_attention/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2(
&self_attention/dropout_3/dropout/Const
$self_attention/dropout_3/dropout/MulMul1self_attention/masked_softmax_1/Softmax:softmax:0/self_attention/dropout_3/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2&
$self_attention/dropout_3/dropout/Mul±
&self_attention/dropout_3/dropout/ShapeShape1self_attention/masked_softmax_1/Softmax:softmax:0*
T0*
_output_shapes
:2(
&self_attention/dropout_3/dropout/Shape¨
=self_attention/dropout_3/dropout/random_uniform/RandomUniformRandomUniform/self_attention/dropout_3/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed±?ε)2?
=self_attention/dropout_3/dropout/random_uniform/RandomUniform§
/self_attention/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=21
/self_attention/dropout_3/dropout/GreaterEqual/yΌ
-self_attention/dropout_3/dropout/GreaterEqualGreaterEqualFself_attention/dropout_3/dropout/random_uniform/RandomUniform:output:08self_attention/dropout_3/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2/
-self_attention/dropout_3/dropout/GreaterEqualδ
%self_attention/dropout_3/dropout/CastCast1self_attention/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2'
%self_attention/dropout_3/dropout/Castψ
&self_attention/dropout_3/dropout/Mul_1Mul(self_attention/dropout_3/dropout/Mul:z:0)self_attention/dropout_3/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2(
&self_attention/dropout_3/dropout/Mul_1?
self_attention/einsum_1/EinsumEinsum*self_attention/dropout_3/dropout/Mul_1:z:0self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2 
self_attention/einsum_1/Einsum
<self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpEself_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02>
<self_attention/attention_output/einsum/Einsum/ReadVariableOpΌ
-self_attention/attention_output/einsum/EinsumEinsum'self_attention/einsum_1/Einsum:output:0Dself_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2/
-self_attention/attention_output/einsum/Einsumΰ
2self_attention/attention_output/add/ReadVariableOpReadVariableOp;self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention/attention_output/add/ReadVariableOp
#self_attention/attention_output/addAddV26self_attention/attention_output/einsum/Einsum:output:0:self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#self_attention/attention_output/addw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2
dropout_4/dropout/ConstΏ
dropout_4/dropout/MulMul'self_attention/attention_output/add:z:0 dropout_4/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_4/dropout/Mul
dropout_4/dropout/ShapeShape'self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shapeϋ
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)*
seed220
.dropout_4/dropout/random_uniform/RandomUniform
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dropout_4/dropout/GreaterEqual/yσ
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_4/dropout/GreaterEqualͺ
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_4/dropout/Cast―
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_4/dropout/Mul_1w
addAddV2inputsdropout_4/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
addΎ
8self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8self_attention_layer_norm/moments/mean/reduction_indicesτ
&self_attention_layer_norm/moments/meanMeanadd:z:0Aself_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&self_attention_layer_norm/moments/meanΰ
.self_attention_layer_norm/moments/StopGradientStopGradient/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????20
.self_attention_layer_norm/moments/StopGradient
3self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferenceadd:z:07self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????25
3self_attention_layer_norm/moments/SquaredDifferenceΖ
<self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2>
<self_attention_layer_norm/moments/variance/reduction_indices°
*self_attention_layer_norm/moments/varianceMean7self_attention_layer_norm/moments/SquaredDifference:z:0Eself_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2,
*self_attention_layer_norm/moments/variance
)self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2+
)self_attention_layer_norm/batchnorm/add/y
'self_attention_layer_norm/batchnorm/addAddV23self_attention_layer_norm/moments/variance:output:02self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/addΛ
)self_attention_layer_norm/batchnorm/RsqrtRsqrt+self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/Rsqrtμ
6self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp?self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype028
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp
'self_attention_layer_norm/batchnorm/mulMul-self_attention_layer_norm/batchnorm/Rsqrt:y:0>self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/mul?
)self_attention_layer_norm/batchnorm/mul_1Muladd:z:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_1ϊ
)self_attention_layer_norm/batchnorm/mul_2Mul/self_attention_layer_norm/moments/mean:output:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_2ΰ
2self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOp;self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention_layer_norm/batchnorm/ReadVariableOp
'self_attention_layer_norm/batchnorm/subSub:self_attention_layer_norm/batchnorm/ReadVariableOp:value:0-self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/subϊ
)self_attention_layer_norm/batchnorm/add_1AddV2-self_attention_layer_norm/batchnorm/mul_1:z:0+self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/add_1Ι
)intermediate/einsum/Einsum/ReadVariableOpReadVariableOp2intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02+
)intermediate/einsum/Einsum/ReadVariableOp
intermediate/einsum/EinsumEinsum-self_attention_layer_norm/batchnorm/add_1:z:01intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2
intermediate/einsum/Einsum§
intermediate/add/ReadVariableOpReadVariableOp(intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02!
intermediate/add/ReadVariableOpΊ
intermediate/addAddV2#intermediate/einsum/Einsum:output:0'intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2
intermediate/addm
activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
activation_1/Pow/y
activation_1/PowPowintermediate/add:z:0activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/Powm
activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2
activation_1/mul/x
activation_1/mulMulactivation_1/mul/x:output:0activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul
activation_1/addAddV2intermediate/add:z:0activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/addq
activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2
activation_1/mul_1/x£
activation_1/mul_1Mulactivation_1/mul_1/x:output:0activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_1
activation_1/TanhTanhactivation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/Tanhq
activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
activation_1/add_1/x¦
activation_1/add_1AddV2activation_1/add_1/x:output:0activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/add_1q
activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
activation_1/mul_2/x₯
activation_1/mul_2Mulactivation_1/mul_2/x:output:0activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_2
activation_1/mul_3Mulintermediate/add:z:0activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_3·
#output/einsum/Einsum/ReadVariableOpReadVariableOp,output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02%
#output/einsum/Einsum/ReadVariableOpή
output/einsum/EinsumEinsumactivation_1/mul_3:z:0+output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2
output/einsum/Einsum
output/add/ReadVariableOpReadVariableOp"output_add_readvariableop_resource*
_output_shapes
:*
dtype02
output/add/ReadVariableOp’

output/addAddV2output/einsum/Einsum:output:0!output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2

output/addw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2
dropout_5/dropout/Const¦
dropout_5/dropout/MulMuloutput/add:z:0 dropout_5/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_5/dropout/Mulp
dropout_5/dropout/ShapeShapeoutput/add:z:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shapeϋ
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)*
seed220
.dropout_5/dropout/random_uniform/RandomUniform
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2"
 dropout_5/dropout/GreaterEqual/yσ
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_5/dropout/GreaterEqualͺ
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_5/dropout/Cast―
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_5/dropout/Mul_1’
add_1AddV2dropout_5/dropout/Mul_1:z:0-self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add_1?
0output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:22
0output_layer_norm/moments/mean/reduction_indicesή
output_layer_norm/moments/meanMean	add_1:z:09output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2 
output_layer_norm/moments/meanΘ
&output_layer_norm/moments/StopGradientStopGradient'output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&output_layer_norm/moments/StopGradientκ
+output_layer_norm/moments/SquaredDifferenceSquaredDifference	add_1:z:0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+output_layer_norm/moments/SquaredDifferenceΆ
4output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4output_layer_norm/moments/variance/reduction_indices
"output_layer_norm/moments/varianceMean/output_layer_norm/moments/SquaredDifference:z:0=output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"output_layer_norm/moments/variance
!output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2#
!output_layer_norm/batchnorm/add/yγ
output_layer_norm/batchnorm/addAddV2+output_layer_norm/moments/variance:output:0*output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/add³
!output_layer_norm/batchnorm/RsqrtRsqrt#output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/RsqrtΤ
.output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp7output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype020
.output_layer_norm/batchnorm/mul/ReadVariableOpη
output_layer_norm/batchnorm/mulMul%output_layer_norm/batchnorm/Rsqrt:y:06output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/mulΌ
!output_layer_norm/batchnorm/mul_1Mul	add_1:z:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_1Ϊ
!output_layer_norm/batchnorm/mul_2Mul'output_layer_norm/moments/mean:output:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_2Θ
*output_layer_norm/batchnorm/ReadVariableOpReadVariableOp3output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02,
*output_layer_norm/batchnorm/ReadVariableOpγ
output_layer_norm/batchnorm/subSub2output_layer_norm/batchnorm/ReadVariableOp:value:0%output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/subΪ
!output_layer_norm/batchnorm/add_1AddV2%output_layer_norm/batchnorm/mul_1:z:0#output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/add_1
IdentityIdentity%output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*
_input_shapes
:??????????????????:'???????????????????????????:::::::::::::::::\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
σ?
ο
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2678

inputs
inputs_1
inputs_2
word_embeddings_2620
position_embedding_2623
type_embeddings_2626
embeddings_layer_norm_2630
embeddings_layer_norm_2632
transformer_layer_0_2637
transformer_layer_0_2639
transformer_layer_0_2641
transformer_layer_0_2643
transformer_layer_0_2645
transformer_layer_0_2647
transformer_layer_0_2649
transformer_layer_0_2651
transformer_layer_0_2653
transformer_layer_0_2655
transformer_layer_0_2657
transformer_layer_0_2659
transformer_layer_0_2661
transformer_layer_0_2663
transformer_layer_0_2665
transformer_layer_0_2667
pooler_transform_2671
pooler_transform_2673
identity

identity_1’!dropout_1/StatefulPartitionedCall’-embeddings/layer_norm/StatefulPartitionedCall’(pooler_transform/StatefulPartitionedCall’*position_embedding/StatefulPartitionedCall’+transformer/layer_0/StatefulPartitionedCall’'type_embeddings/StatefulPartitionedCall’'word_embeddings/StatefulPartitionedCall¦
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputsword_embeddings_2620*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_19322)
'word_embeddings/StatefulPartitionedCallά
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_2623*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_19672,
*position_embedding/StatefulPartitionedCall¨
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputs_2type_embeddings_2626*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_19972)
'type_embeddings/StatefulPartitionedCallι
add_1/PartitionedCallPartitionedCall0word_embeddings/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:00type_embeddings/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_20172
add_1/PartitionedCallτ
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0embeddings_layer_norm_2630embeddings_layer_norm_2632*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_20492/
-embeddings/layer_norm/StatefulPartitionedCallͺ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall6embeddings/layer_norm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_20772#
!dropout_1/StatefulPartitionedCallΎ
%self_attention_mask_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_21322'
%self_attention_mask_1/PartitionedCall―
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0.self_attention_mask_1/PartitionedCall:output:0transformer_layer_0_2637transformer_layer_0_2639transformer_layer_0_2641transformer_layer_0_2643transformer_layer_0_2645transformer_layer_0_2647transformer_layer_0_2649transformer_layer_0_2651transformer_layer_0_2653transformer_layer_0_2655transformer_layer_0_2657transformer_layer_0_2659transformer_layer_0_2661transformer_layer_0_2663transformer_layer_0_2665transformer_layer_0_2667*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_22692-
+transformer/layer_0/StatefulPartitionedCall
lambda_1/PartitionedCallPartitionedCall4transformer/layer_0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_24962
lambda_1/PartitionedCallΡ
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0pooler_transform_2671pooler_transform_2673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_25292*
(pooler_transform/StatefulPartitionedCallΓ
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity·

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2^
-embeddings/layer_norm/StatefulPartitionedCall-embeddings/layer_norm/StatefulPartitionedCall2T
(pooler_transform/StatefulPartitionedCall(pooler_transform/StatefulPartitionedCall2X
*position_embedding/StatefulPartitionedCall*position_embedding/StatefulPartitionedCall2Z
+transformer/layer_0/StatefulPartitionedCall+transformer/layer_0/StatefulPartitionedCall2R
'type_embeddings/StatefulPartitionedCall'type_embeddings/StatefulPartitionedCall2R
'word_embeddings/StatefulPartitionedCall'word_embeddings/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
ω
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_4624

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeΠ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dropout/GreaterEqual/yΛ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs


4__inference_transformer_encoder_1_layer_call_fn_2729
input_word_ids

input_mask
input_type_ids
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCallγ
StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:??????????????????:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_26782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
‘
ξ
2__inference_transformer/layer_0_layer_call_fn_4993
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity’StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_23762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*
_input_shapes
:??????????????????:'???????????????????????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'???????????????????????????
"
_user_specified_name
inputs/1
ι

/__inference_pooler_transform_layer_call_fn_5041

inputs
unknown
	unknown_0
identity’StatefulPartitionedCallϊ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_25292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs


4__inference_transformer_encoder_1_layer_call_fn_2847
input_word_ids

input_mask
input_type_ids
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCallγ
StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:??????????????????:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_27962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
Ϊ
±
F__inference_functional_3_layer_call_and_return_conditional_losses_3013
input_word_ids

input_mask
input_type_ids
transformer_encoder_1_2963
transformer_encoder_1_2965
transformer_encoder_1_2967
transformer_encoder_1_2969
transformer_encoder_1_2971
transformer_encoder_1_2973
transformer_encoder_1_2975
transformer_encoder_1_2977
transformer_encoder_1_2979
transformer_encoder_1_2981
transformer_encoder_1_2983
transformer_encoder_1_2985
transformer_encoder_1_2987
transformer_encoder_1_2989
transformer_encoder_1_2991
transformer_encoder_1_2993
transformer_encoder_1_2995
transformer_encoder_1_2997
transformer_encoder_1_2999
transformer_encoder_1_3001
transformer_encoder_1_3003
transformer_encoder_1_3005
transformer_encoder_1_3007
identity

identity_1’-transformer_encoder_1/StatefulPartitionedCall	
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idstransformer_encoder_1_2963transformer_encoder_1_2965transformer_encoder_1_2967transformer_encoder_1_2969transformer_encoder_1_2971transformer_encoder_1_2973transformer_encoder_1_2975transformer_encoder_1_2977transformer_encoder_1_2979transformer_encoder_1_2981transformer_encoder_1_2983transformer_encoder_1_2985transformer_encoder_1_2987transformer_encoder_1_2989transformer_encoder_1_2991transformer_encoder_1_2993transformer_encoder_1_2995transformer_encoder_1_2997transformer_encoder_1_2999transformer_encoder_1_3001transformer_encoder_1_3003transformer_encoder_1_3005transformer_encoder_1_3007*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:??????????????????:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_26782/
-transformer_encoder_1/StatefulPartitionedCallΊ
IdentityIdentity6transformer_encoder_1/StatefulPartitionedCall:output:1.^transformer_encoder_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

IdentityΛ

Identity_1Identity6transformer_encoder_1/StatefulPartitionedCall:output:0.^transformer_encoder_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
-transformer_encoder_1/StatefulPartitionedCall-transformer_encoder_1/StatefulPartitionedCall:` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
©?
ε
F__inference_functional_3_layer_call_and_return_conditional_losses_3808
inputs_0
inputs_1
inputs_29
5transformer_encoder_1_word_embeddings_gather_resourceD
@transformer_encoder_1_position_embedding_readvariableop_resourceH
Dtransformer_encoder_1_type_embeddings_matmul_readvariableop_resourceU
Qtransformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resourceQ
Mtransformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resourceh
dtransformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource^
Ztransformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resourcef
btransformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource\
Xtransformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resourceh
dtransformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource^
Ztransformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resources
otransformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourcei
etransformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resourcem
itransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourcei
etransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource`
\transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resourceV
Rtransformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resourceZ
Vtransformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resourceP
Ltransformer_encoder_1_transformer_layer_0_output_add_readvariableop_resourcee
atransformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resourcea
]transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resourceI
Etransformer_encoder_1_pooler_transform_matmul_readvariableop_resourceJ
Ftransformer_encoder_1_pooler_transform_biasadd_readvariableop_resource
identity

identity_1½
3transformer_encoder_1/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3transformer_encoder_1/word_embeddings/Reshape/shapeί
-transformer_encoder_1/word_embeddings/ReshapeReshapeinputs_0<transformer_encoder_1/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2/
-transformer_encoder_1/word_embeddings/Reshape£
,transformer_encoder_1/word_embeddings/GatherResourceGather5transformer_encoder_1_word_embeddings_gather_resource6transformer_encoder_1/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02.
,transformer_encoder_1/word_embeddings/GatherΥ
.transformer_encoder_1/word_embeddings/IdentityIdentity5transformer_encoder_1/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????20
.transformer_encoder_1/word_embeddings/Identity
+transformer_encoder_1/word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2-
+transformer_encoder_1/word_embeddings/ShapeΈ
5transformer_encoder_1/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:27
5transformer_encoder_1/word_embeddings/concat/values_1¨
1transformer_encoder_1/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1transformer_encoder_1/word_embeddings/concat/axisΘ
,transformer_encoder_1/word_embeddings/concatConcatV24transformer_encoder_1/word_embeddings/Shape:output:0>transformer_encoder_1/word_embeddings/concat/values_1:output:0:transformer_encoder_1/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2.
,transformer_encoder_1/word_embeddings/concat
/transformer_encoder_1/word_embeddings/Reshape_1Reshape7transformer_encoder_1/word_embeddings/Identity:output:05transformer_encoder_1/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/word_embeddings/Reshape_1Θ
.transformer_encoder_1/position_embedding/ShapeShape8transformer_encoder_1/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:20
.transformer_encoder_1/position_embedding/ShapeΖ
<transformer_encoder_1/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<transformer_encoder_1/position_embedding/strided_slice/stackΚ
>transformer_encoder_1/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice/stack_1Κ
>transformer_encoder_1/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice/stack_2Ψ
6transformer_encoder_1/position_embedding/strided_sliceStridedSlice7transformer_encoder_1/position_embedding/Shape:output:0Etransformer_encoder_1/position_embedding/strided_slice/stack:output:0Gtransformer_encoder_1/position_embedding/strided_slice/stack_1:output:0Gtransformer_encoder_1/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6transformer_encoder_1/position_embedding/strided_sliceΚ
>transformer_encoder_1/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice_1/stackΞ
@transformer_encoder_1/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@transformer_encoder_1/position_embedding/strided_slice_1/stack_1Ξ
@transformer_encoder_1/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@transformer_encoder_1/position_embedding/strided_slice_1/stack_2β
8transformer_encoder_1/position_embedding/strided_slice_1StridedSlice7transformer_encoder_1/position_embedding/Shape:output:0Gtransformer_encoder_1/position_embedding/strided_slice_1/stack:output:0Itransformer_encoder_1/position_embedding/strided_slice_1/stack_1:output:0Itransformer_encoder_1/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8transformer_encoder_1/position_embedding/strided_slice_1τ
7transformer_encoder_1/position_embedding/ReadVariableOpReadVariableOp@transformer_encoder_1_position_embedding_readvariableop_resource*
_output_shapes
:	*
dtype029
7transformer_encoder_1/position_embedding/ReadVariableOpΡ
>transformer_encoder_1/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>transformer_encoder_1/position_embedding/strided_slice_2/stackΚ
Btransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1Κ
@transformer_encoder_1/position_embedding/strided_slice_2/stack_1PackAtransformer_encoder_1/position_embedding/strided_slice_1:output:0Ktransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2B
@transformer_encoder_1/position_embedding/strided_slice_2/stack_1Υ
@transformer_encoder_1/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@transformer_encoder_1/position_embedding/strided_slice_2/stack_2
8transformer_encoder_1/position_embedding/strided_slice_2StridedSlice?transformer_encoder_1/position_embedding/ReadVariableOp:value:0Gtransformer_encoder_1/position_embedding/strided_slice_2/stack:output:0Itransformer_encoder_1/position_embedding/strided_slice_2/stack_1:output:0Itransformer_encoder_1/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2:
8transformer_encoder_1/position_embedding/strided_slice_2Ύ
<transformer_encoder_1/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<transformer_encoder_1/position_embedding/BroadcastTo/shape/2ω
:transformer_encoder_1/position_embedding/BroadcastTo/shapePack?transformer_encoder_1/position_embedding/strided_slice:output:0Atransformer_encoder_1/position_embedding/strided_slice_1:output:0Etransformer_encoder_1/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2<
:transformer_encoder_1/position_embedding/BroadcastTo/shapeΒ
4transformer_encoder_1/position_embedding/BroadcastToBroadcastToAtransformer_encoder_1/position_embedding/strided_slice_2:output:0Ctransformer_encoder_1/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/position_embedding/BroadcastTo½
3transformer_encoder_1/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3transformer_encoder_1/type_embeddings/Reshape/shapeί
-transformer_encoder_1/type_embeddings/ReshapeReshapeinputs_2<transformer_encoder_1/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2/
-transformer_encoder_1/type_embeddings/Reshape΅
6transformer_encoder_1/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6transformer_encoder_1/type_embeddings/one_hot/on_value·
7transformer_encoder_1/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7transformer_encoder_1/type_embeddings/one_hot/off_value¬
3transformer_encoder_1/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :25
3transformer_encoder_1/type_embeddings/one_hot/depth
-transformer_encoder_1/type_embeddings/one_hotOneHot6transformer_encoder_1/type_embeddings/Reshape:output:0<transformer_encoder_1/type_embeddings/one_hot/depth:output:0?transformer_encoder_1/type_embeddings/one_hot/on_value:output:0@transformer_encoder_1/type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2/
-transformer_encoder_1/type_embeddings/one_hot?
;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOpReadVariableOpDtransformer_encoder_1_type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02=
;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp
,transformer_encoder_1/type_embeddings/MatMulMatMul6transformer_encoder_1/type_embeddings/one_hot:output:0Ctransformer_encoder_1/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,transformer_encoder_1/type_embeddings/MatMul
+transformer_encoder_1/type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2-
+transformer_encoder_1/type_embeddings/ShapeΈ
5transformer_encoder_1/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:27
5transformer_encoder_1/type_embeddings/concat/values_1¨
1transformer_encoder_1/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1transformer_encoder_1/type_embeddings/concat/axisΘ
,transformer_encoder_1/type_embeddings/concatConcatV24transformer_encoder_1/type_embeddings/Shape:output:0>transformer_encoder_1/type_embeddings/concat/values_1:output:0:transformer_encoder_1/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2.
,transformer_encoder_1/type_embeddings/concat
/transformer_encoder_1/type_embeddings/Reshape_1Reshape6transformer_encoder_1/type_embeddings/MatMul:product:05transformer_encoder_1/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/type_embeddings/Reshape_1
transformer_encoder_1/add_1/addAddV28transformer_encoder_1/word_embeddings/Reshape_1:output:0=transformer_encoder_1/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2!
transformer_encoder_1/add_1/addν
!transformer_encoder_1/add_1/add_1AddV2#transformer_encoder_1/add_1/add:z:08transformer_encoder_1/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2#
!transformer_encoder_1/add_1/add_1β
Jtransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jtransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesΘ
8transformer_encoder_1/embeddings/layer_norm/moments/meanMean%transformer_encoder_1/add_1/add_1:z:0Stransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2:
8transformer_encoder_1/embeddings/layer_norm/moments/mean
@transformer_encoder_1/embeddings/layer_norm/moments/StopGradientStopGradientAtransformer_encoder_1/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2B
@transformer_encoder_1/embeddings/layer_norm/moments/StopGradientΤ
Etransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference%transformer_encoder_1/add_1/add_1:z:0Itransformer_encoder_1/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2G
Etransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifferenceκ
Ntransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2P
Ntransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indicesψ
<transformer_encoder_1/embeddings/layer_norm/moments/varianceMeanItransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference:z:0Wtransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2>
<transformer_encoder_1/embeddings/layer_norm/moments/varianceΏ
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add/yΛ
9transformer_encoder_1/embeddings/layer_norm/batchnorm/addAddV2Etransformer_encoder_1/embeddings/layer_norm/moments/variance:output:0Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/add
;transformer_encoder_1/embeddings/layer_norm/batchnorm/RsqrtRsqrt=transformer_encoder_1/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt’
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02J
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpΟ
9transformer_encoder_1/embeddings/layer_norm/batchnorm/mulMul?transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt:y:0Ptransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/mul¦
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1Mul%transformer_encoder_1/add_1/add_1:z:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1Β
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2MulAtransformer_encoder_1/embeddings/layer_norm/moments/mean:output:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02F
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpΛ
9transformer_encoder_1/embeddings/layer_norm/batchnorm/subSubLtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0?transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/subΒ
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1AddV2?transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1:z:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1ΰ
(transformer_encoder_1/dropout_1/IdentityIdentity?transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2*
(transformer_encoder_1/dropout_1/IdentityΗ
1transformer_encoder_1/self_attention_mask_1/ShapeShape1transformer_encoder_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:23
1transformer_encoder_1/self_attention_mask_1/ShapeΜ
?transformer_encoder_1/self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?transformer_encoder_1/self_attention_mask_1/strided_slice/stackΠ
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1Π
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2κ
9transformer_encoder_1/self_attention_mask_1/strided_sliceStridedSlice:transformer_encoder_1/self_attention_mask_1/Shape:output:0Htransformer_encoder_1/self_attention_mask_1/strided_slice/stack:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9transformer_encoder_1/self_attention_mask_1/strided_sliceΠ
Atransformer_encoder_1/self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_1/stackΤ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1Τ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2τ
;transformer_encoder_1/self_attention_mask_1/strided_slice_1StridedSlice:transformer_encoder_1/self_attention_mask_1/Shape:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_1’
3transformer_encoder_1/self_attention_mask_1/Shape_1Shapeinputs_1*
T0*
_output_shapes
:25
3transformer_encoder_1/self_attention_mask_1/Shape_1Π
Atransformer_encoder_1/self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_2/stackΤ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1Τ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2φ
;transformer_encoder_1/self_attention_mask_1/strided_slice_2StridedSlice<transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_2Π
Atransformer_encoder_1/self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_3/stackΤ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1Τ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2φ
;transformer_encoder_1/self_attention_mask_1/strided_slice_3StridedSlice<transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_3Ό
;transformer_encoder_1/self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;transformer_encoder_1/self_attention_mask_1/Reshape/shape/1ό
9transformer_encoder_1/self_attention_mask_1/Reshape/shapePackBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/Reshape/shape/1:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2;
9transformer_encoder_1/self_attention_mask_1/Reshape/shape
3transformer_encoder_1/self_attention_mask_1/ReshapeReshapeinputs_1Btransformer_encoder_1/self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer_encoder_1/self_attention_mask_1/Reshapeψ
0transformer_encoder_1/self_attention_mask_1/CastCast<transformer_encoder_1/self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????22
0transformer_encoder_1/self_attention_mask_1/Cast
4transformer_encoder_1/self_attention_mask_1/ones/mulMulBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 26
4transformer_encoder_1/self_attention_mask_1/ones/mulΆ
8transformer_encoder_1/self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2:
8transformer_encoder_1/self_attention_mask_1/ones/mul_1/y
6transformer_encoder_1/self_attention_mask_1/ones/mul_1Mul8transformer_encoder_1/self_attention_mask_1/ones/mul:z:0Atransformer_encoder_1/self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 28
6transformer_encoder_1/self_attention_mask_1/ones/mul_1΅
7transformer_encoder_1/self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :θ29
7transformer_encoder_1/self_attention_mask_1/ones/Less/y
5transformer_encoder_1/self_attention_mask_1/ones/LessLess:transformer_encoder_1/self_attention_mask_1/ones/mul_1:z:0@transformer_encoder_1/self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 27
5transformer_encoder_1/self_attention_mask_1/ones/LessΈ
9transformer_encoder_1/self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2;
9transformer_encoder_1/self_attention_mask_1/ones/packed/2φ
7transformer_encoder_1/self_attention_mask_1/ones/packedPackBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0Btransformer_encoder_1/self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:29
7transformer_encoder_1/self_attention_mask_1/ones/packed΅
6transformer_encoder_1/self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6transformer_encoder_1/self_attention_mask_1/ones/Const?
0transformer_encoder_1/self_attention_mask_1/onesFill@transformer_encoder_1/self_attention_mask_1/ones/packed:output:0?transformer_encoder_1/self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????22
0transformer_encoder_1/self_attention_mask_1/ones’
/transformer_encoder_1/self_attention_mask_1/mulMul9transformer_encoder_1/self_attention_mask_1/ones:output:04transformer_encoder_1/self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????21
/transformer_encoder_1/self_attention_mask_1/mulγ
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpdtransformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02]
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp§
Ltransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/Identity:output:0ctransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/EinsumΑ
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpZtransformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02S
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp
Btransformer_encoder_1/transformer/layer_0/self_attention/query/addAddV2Utransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum:output:0Ytransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2D
Btransformer_encoder_1/transformer/layer_0/self_attention/query/addέ
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpbtransformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02[
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp‘
Jtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/Identity:output:0atransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2L
Jtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum»
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpXtransformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02Q
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpώ
@transformer_encoder_1/transformer/layer_0/self_attention/key/addAddV2Stransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum:output:0Wtransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2B
@transformer_encoder_1/transformer/layer_0/self_attention/key/addγ
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpdtransformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02]
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp§
Ltransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/Identity:output:0ctransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/EinsumΑ
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpZtransformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02S
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp
Btransformer_encoder_1/transformer/layer_0/self_attention/value/addAddV2Utransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum:output:0Ytransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2D
Btransformer_encoder_1/transformer/layer_0/self_attention/value/add
Ftransformer_encoder_1/transformer/layer_0/self_attention/einsum/EinsumEinsumDtransformer_encoder_1/transformer/layer_0/self_attention/key/add:z:0Ftransformer_encoder_1/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2H
Ftransformer_encoder_1/transformer/layer_0/self_attention/einsum/EinsumΕ
>transformer_encoder_1/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2@
>transformer_encoder_1/transformer/layer_0/self_attention/Mul/yι
<transformer_encoder_1/transformer/layer_0/self_attention/MulMulOtransformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum:output:0Gtransformer_encoder_1/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<transformer_encoder_1/transformer/layer_0/self_attention/Mulώ
Xtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dim
Ttransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims
ExpandDims3transformer_encoder_1/self_attention_mask_1/mul:z:0atransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2V
Ttransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDimsη
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2Q
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/xͺ
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/subSubXtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/x:output:0]transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/subη
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2Q
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/y
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mulMulQtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub:z:0Xtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/addAddV2@transformer_encoder_1/transformer/layer_0/self_attention/Mul:z:0Qtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/addΠ
Qtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/SoftmaxSoftmaxQtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/SoftmaxΟ
Ktransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/IdentityIdentity[transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2M
Ktransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/Identity§
Htransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/EinsumEinsumTtransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/Identity:output:0Ftransformer_encoder_1/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2J
Htransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpotransformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02h
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpδ
Wtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsumQtransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum:output:0ntransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2Y
Wtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsumή
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpetransformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02^
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
Mtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/addAddV2`transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0dtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add
<transformer_encoder_1/transformer/layer_0/dropout_4/IdentityIdentityQtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2>
<transformer_encoder_1/transformer/layer_0/dropout_4/Identity 
-transformer_encoder_1/transformer/layer_0/addAddV21transformer_encoder_1/dropout_1/Identity:output:0Etransformer_encoder_1/transformer/layer_0/dropout_4/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder_1/transformer/layer_0/add
btransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2d
btransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices
Ptransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/meanMean1transformer_encoder_1/transformer/layer_0/add:z:0ktransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2R
Ptransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/meanή
Xtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientYtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient¨
]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference1transformer_encoder_1/transformer/layer_0/add:z:0atransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2_
]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference
ftransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2h
ftransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesΨ
Ttransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/varianceMeanatransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0otransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2V
Ttransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/varianceο
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y«
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addΙ
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrtUtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrtκ
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpitransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02b
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp―
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulWtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0htransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mulϊ
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul1transformer_encoder_1/transformer/layer_0/add:z:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1’
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulYtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2ή
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpetransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02^
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp«
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/subSubdtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub’
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1Η
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp\transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02U
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp―
Dtransformer_encoder_1/transformer/layer_0/intermediate/einsum/EinsumEinsumWtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0[transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2F
Dtransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum₯
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOpRtransformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02K
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpβ
:transformer_encoder_1/transformer/layer_0/intermediate/addAddV2Mtransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum:output:0Qtransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/intermediate/addΑ
<transformer_encoder_1/transformer/layer_0/activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2>
<transformer_encoder_1/transformer/layer_0/activation_1/Pow/yΕ
:transformer_encoder_1/transformer/layer_0/activation_1/PowPow>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Etransformer_encoder_1/transformer/layer_0/activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation_1/PowΑ
<transformer_encoder_1/transformer/layer_0/activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2>
<transformer_encoder_1/transformer/layer_0/activation_1/mul/xΕ
:transformer_encoder_1/transformer/layer_0/activation_1/mulMulEtransformer_encoder_1/transformer/layer_0/activation_1/mul/x:output:0>transformer_encoder_1/transformer/layer_0/activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation_1/mulΐ
:transformer_encoder_1/transformer/layer_0/activation_1/addAddV2>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0>transformer_encoder_1/transformer/layer_0/activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation_1/addΕ
>transformer_encoder_1/transformer/layer_0/activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2@
>transformer_encoder_1/transformer/layer_0/activation_1/mul_1/xΛ
<transformer_encoder_1/transformer/layer_0/activation_1/mul_1MulGtransformer_encoder_1/transformer/layer_0/activation_1/mul_1/x:output:0>transformer_encoder_1/transformer/layer_0/activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<transformer_encoder_1/transformer/layer_0/activation_1/mul_1
;transformer_encoder_1/transformer/layer_0/activation_1/TanhTanh@transformer_encoder_1/transformer/layer_0/activation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2=
;transformer_encoder_1/transformer/layer_0/activation_1/TanhΕ
>transformer_encoder_1/transformer/layer_0/activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2@
>transformer_encoder_1/transformer/layer_0/activation_1/add_1/xΞ
<transformer_encoder_1/transformer/layer_0/activation_1/add_1AddV2Gtransformer_encoder_1/transformer/layer_0/activation_1/add_1/x:output:0?transformer_encoder_1/transformer/layer_0/activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<transformer_encoder_1/transformer/layer_0/activation_1/add_1Ε
>transformer_encoder_1/transformer/layer_0/activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2@
>transformer_encoder_1/transformer/layer_0/activation_1/mul_2/xΝ
<transformer_encoder_1/transformer/layer_0/activation_1/mul_2MulGtransformer_encoder_1/transformer/layer_0/activation_1/mul_2/x:output:0@transformer_encoder_1/transformer/layer_0/activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<transformer_encoder_1/transformer/layer_0/activation_1/mul_2Δ
<transformer_encoder_1/transformer/layer_0/activation_1/mul_3Mul>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0@transformer_encoder_1/transformer/layer_0/activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<transformer_encoder_1/transformer/layer_0/activation_1/mul_3΅
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02O
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp
>transformer_encoder_1/transformer/layer_0/output/einsum/EinsumEinsum@transformer_encoder_1/transformer/layer_0/activation_1/mul_3:z:0Utransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2@
>transformer_encoder_1/transformer/layer_0/output/einsum/Einsum
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpReadVariableOpLtransformer_encoder_1_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02E
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpΚ
4transformer_encoder_1/transformer/layer_0/output/addAddV2Gtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum:output:0Ktransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/transformer/layer_0/output/add
<transformer_encoder_1/transformer/layer_0/dropout_5/IdentityIdentity8transformer_encoder_1/transformer/layer_0/output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2>
<transformer_encoder_1/transformer/layer_0/dropout_5/IdentityΚ
/transformer_encoder_1/transformer/layer_0/add_1AddV2Etransformer_encoder_1/transformer/layer_0/dropout_5/Identity:output:0Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/transformer/layer_0/add_1
Ztransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2\
Ztransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices
Htransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanMean3transformer_encoder_1/transformer/layer_0/add_1:z:0ctransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2J
Htransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanΖ
Ptransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradientQtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2R
Ptransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient
Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference3transformer_encoder_1/transformer/layer_0/add_1:z:0Ytransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2W
Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference
^transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2`
^transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesΈ
Ltransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceMeanYtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0gtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2N
Ltransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceί
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/addAddV2Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance:output:0Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add±
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtMtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpatransformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02Z
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mulMulOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0`transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mulδ
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul3transformer_encoder_1/transformer/layer_0/add_1:z:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2MulQtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2Ζ
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOp]transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02V
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/subSub\transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0Otransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2Otransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1½
2transformer_encoder_1/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            24
2transformer_encoder_1/lambda_1/strided_slice/stackΑ
4transformer_encoder_1/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           26
4transformer_encoder_1/lambda_1/strided_slice/stack_1Α
4transformer_encoder_1/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         26
4transformer_encoder_1/lambda_1/strided_slice/stack_2ζ
,transformer_encoder_1/lambda_1/strided_sliceStridedSliceOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0;transformer_encoder_1/lambda_1/strided_slice/stack:output:0=transformer_encoder_1/lambda_1/strided_slice/stack_1:output:0=transformer_encoder_1/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2.
,transformer_encoder_1/lambda_1/strided_sliceΫ
&transformer_encoder_1/lambda_1/SqueezeSqueeze5transformer_encoder_1/lambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2(
&transformer_encoder_1/lambda_1/Squeeze
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOpReadVariableOpEtransformer_encoder_1_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp
-transformer_encoder_1/pooler_transform/MatMulMatMul/transformer_encoder_1/lambda_1/Squeeze:output:0Dtransformer_encoder_1/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2/
-transformer_encoder_1/pooler_transform/MatMul
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpFtransformer_encoder_1_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp
.transformer_encoder_1/pooler_transform/BiasAddBiasAdd7transformer_encoder_1/pooler_transform/MatMul:product:0Etransformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.transformer_encoder_1/pooler_transform/BiasAddΝ
+transformer_encoder_1/pooler_transform/TanhTanh7transformer_encoder_1/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2-
+transformer_encoder_1/pooler_transform/Tanh
IdentityIdentity/transformer_encoder_1/pooler_transform/Tanh:y:0*
T0*'
_output_shapes
:?????????2

Identity΄

Identity_1IdentityOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????::::::::::::::::::::::::Z V
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/2

`
4__inference_self_attention_mask_1_layer_call_fn_4682
inputs_0
inputs_1
identityπ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_21322
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????:??????????????????:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1
φ

+__inference_functional_3_layer_call_fn_3179
input_word_ids

input_mask
input_type_ids
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCallΪ
StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:?????????:??????????????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_functional_3_layer_call_and_return_conditional_losses_31282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
¦
‘
F__inference_functional_3_layer_call_and_return_conditional_losses_3128

inputs
inputs_1
inputs_2
transformer_encoder_1_3078
transformer_encoder_1_3080
transformer_encoder_1_3082
transformer_encoder_1_3084
transformer_encoder_1_3086
transformer_encoder_1_3088
transformer_encoder_1_3090
transformer_encoder_1_3092
transformer_encoder_1_3094
transformer_encoder_1_3096
transformer_encoder_1_3098
transformer_encoder_1_3100
transformer_encoder_1_3102
transformer_encoder_1_3104
transformer_encoder_1_3106
transformer_encoder_1_3108
transformer_encoder_1_3110
transformer_encoder_1_3112
transformer_encoder_1_3114
transformer_encoder_1_3116
transformer_encoder_1_3118
transformer_encoder_1_3120
transformer_encoder_1_3122
identity

identity_1’-transformer_encoder_1/StatefulPartitionedCallό
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2transformer_encoder_1_3078transformer_encoder_1_3080transformer_encoder_1_3082transformer_encoder_1_3084transformer_encoder_1_3086transformer_encoder_1_3088transformer_encoder_1_3090transformer_encoder_1_3092transformer_encoder_1_3094transformer_encoder_1_3096transformer_encoder_1_3098transformer_encoder_1_3100transformer_encoder_1_3102transformer_encoder_1_3104transformer_encoder_1_3106transformer_encoder_1_3108transformer_encoder_1_3110transformer_encoder_1_3112transformer_encoder_1_3114transformer_encoder_1_3116transformer_encoder_1_3118transformer_encoder_1_3120transformer_encoder_1_3122*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:??????????????????:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_26782/
-transformer_encoder_1/StatefulPartitionedCallΊ
IdentityIdentity6transformer_encoder_1/StatefulPartitionedCall:output:1.^transformer_encoder_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

IdentityΛ

Identity_1Identity6transformer_encoder_1/StatefulPartitionedCall:output:0.^transformer_encoder_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
-transformer_encoder_1/StatefulPartitionedCall-transformer_encoder_1/StatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:XT
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
°j
³
 __inference__traced_restore_5225
file_prefix
assignvariableop_variable_11
-assignvariableop_1_word_embeddings_embeddings4
0assignvariableop_2_position_embedding_embeddings1
-assignvariableop_3_type_embeddings_embeddings2
.assignvariableop_4_embeddings_layer_norm_gamma1
-assignvariableop_5_embeddings_layer_norm_betaF
Bassignvariableop_6_transformer_layer_0_self_attention_query_kernelD
@assignvariableop_7_transformer_layer_0_self_attention_query_biasD
@assignvariableop_8_transformer_layer_0_self_attention_key_kernelB
>assignvariableop_9_transformer_layer_0_self_attention_key_biasG
Cassignvariableop_10_transformer_layer_0_self_attention_value_kernelE
Aassignvariableop_11_transformer_layer_0_self_attention_value_biasR
Nassignvariableop_12_transformer_layer_0_self_attention_attention_output_kernelP
Lassignvariableop_13_transformer_layer_0_self_attention_attention_output_biasK
Gassignvariableop_14_transformer_layer_0_self_attention_layer_norm_gammaJ
Fassignvariableop_15_transformer_layer_0_self_attention_layer_norm_beta?
;assignvariableop_16_transformer_layer_0_intermediate_kernel=
9assignvariableop_17_transformer_layer_0_intermediate_bias9
5assignvariableop_18_transformer_layer_0_output_kernel7
3assignvariableop_19_transformer_layer_0_output_biasC
?assignvariableop_20_transformer_layer_0_output_layer_norm_gammaB
>assignvariableop_21_transformer_layer_0_output_layer_norm_beta/
+assignvariableop_22_pooler_transform_kernel-
)assignvariableop_23_pooler_transform_bias
identity_25’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_3’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9φ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueψBυB(do_lower_case/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesΐ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¨
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2
2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0
*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_variable_1Identity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0
2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1²
AssignVariableOp_1AssignVariableOp-assignvariableop_1_word_embeddings_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2΅
AssignVariableOp_2AssignVariableOp0assignvariableop_2_position_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3²
AssignVariableOp_3AssignVariableOp-assignvariableop_3_type_embeddings_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4³
AssignVariableOp_4AssignVariableOp.assignvariableop_4_embeddings_layer_norm_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5²
AssignVariableOp_5AssignVariableOp-assignvariableop_5_embeddings_layer_norm_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Η
AssignVariableOp_6AssignVariableOpBassignvariableop_6_transformer_layer_0_self_attention_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ε
AssignVariableOp_7AssignVariableOp@assignvariableop_7_transformer_layer_0_self_attention_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ε
AssignVariableOp_8AssignVariableOp@assignvariableop_8_transformer_layer_0_self_attention_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Γ
AssignVariableOp_9AssignVariableOp>assignvariableop_9_transformer_layer_0_self_attention_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Λ
AssignVariableOp_10AssignVariableOpCassignvariableop_10_transformer_layer_0_self_attention_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ι
AssignVariableOp_11AssignVariableOpAassignvariableop_11_transformer_layer_0_self_attention_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Φ
AssignVariableOp_12AssignVariableOpNassignvariableop_12_transformer_layer_0_self_attention_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Τ
AssignVariableOp_13AssignVariableOpLassignvariableop_13_transformer_layer_0_self_attention_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ο
AssignVariableOp_14AssignVariableOpGassignvariableop_14_transformer_layer_0_self_attention_layer_norm_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ξ
AssignVariableOp_15AssignVariableOpFassignvariableop_15_transformer_layer_0_self_attention_layer_norm_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Γ
AssignVariableOp_16AssignVariableOp;assignvariableop_16_transformer_layer_0_intermediate_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Α
AssignVariableOp_17AssignVariableOp9assignvariableop_17_transformer_layer_0_intermediate_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18½
AssignVariableOp_18AssignVariableOp5assignvariableop_18_transformer_layer_0_output_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19»
AssignVariableOp_19AssignVariableOp3assignvariableop_19_transformer_layer_0_output_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Η
AssignVariableOp_20AssignVariableOp?assignvariableop_20_transformer_layer_0_output_layer_norm_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ζ
AssignVariableOp_21AssignVariableOp>assignvariableop_21_transformer_layer_0_output_layer_norm_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22³
AssignVariableOp_22AssignVariableOp+assignvariableop_22_pooler_transform_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23±
AssignVariableOp_23AssignVariableOp)assignvariableop_23_pooler_transform_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpξ
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24α
Identity_25IdentityIdentity_24:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_25"#
identity_25Identity_25:output:0*u
_input_shapesd
b: ::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

’
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4917
inputs_0
inputs_1>
:self_attention_query_einsum_einsum_readvariableop_resource4
0self_attention_query_add_readvariableop_resource<
8self_attention_key_einsum_einsum_readvariableop_resource2
.self_attention_key_add_readvariableop_resource>
:self_attention_value_einsum_einsum_readvariableop_resource4
0self_attention_value_add_readvariableop_resourceI
Eself_attention_attention_output_einsum_einsum_readvariableop_resource?
;self_attention_attention_output_add_readvariableop_resourceC
?self_attention_layer_norm_batchnorm_mul_readvariableop_resource?
;self_attention_layer_norm_batchnorm_readvariableop_resource6
2intermediate_einsum_einsum_readvariableop_resource,
(intermediate_add_readvariableop_resource0
,output_einsum_einsum_readvariableop_resource&
"output_add_readvariableop_resource;
7output_layer_norm_batchnorm_mul_readvariableop_resource7
3output_layer_norm_batchnorm_readvariableop_resource
identityε
1self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/query/einsum/Einsum/ReadVariableOp
"self_attention/query/einsum/EinsumEinsuminputs_09self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/query/einsum/EinsumΓ
'self_attention/query/add/ReadVariableOpReadVariableOp0self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/query/add/ReadVariableOpή
self_attention/query/addAddV2+self_attention/query/einsum/Einsum:output:0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/query/addί
/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp8self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype021
/self_attention/key/einsum/Einsum/ReadVariableOpϊ
 self_attention/key/einsum/EinsumEinsuminputs_07self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2"
 self_attention/key/einsum/Einsum½
%self_attention/key/add/ReadVariableOpReadVariableOp.self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02'
%self_attention/key/add/ReadVariableOpΦ
self_attention/key/addAddV2)self_attention/key/einsum/Einsum:output:0-self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/key/addε
1self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/value/einsum/Einsum/ReadVariableOp
"self_attention/value/einsum/EinsumEinsuminputs_09self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/value/einsum/EinsumΓ
'self_attention/value/add/ReadVariableOpReadVariableOp0self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/value/add/ReadVariableOpή
self_attention/value/addAddV2+self_attention/value/einsum/Einsum:output:0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/value/addτ
self_attention/einsum/EinsumEinsumself_attention/key/add:z:0self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2
self_attention/einsum/Einsumq
self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2
self_attention/Mul/yΑ
self_attention/MulMul%self_attention/einsum/Einsum:output:0self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
self_attention/Mulͺ
.self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:20
.self_attention/masked_softmax_1/ExpandDims/dimυ
*self_attention/masked_softmax_1/ExpandDims
ExpandDimsinputs_17self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2,
*self_attention/masked_softmax_1/ExpandDims
%self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2'
%self_attention/masked_softmax_1/sub/x
#self_attention/masked_softmax_1/subSub.self_attention/masked_softmax_1/sub/x:output:03self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/sub
%self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2'
%self_attention/masked_softmax_1/mul/yφ
#self_attention/masked_softmax_1/mulMul'self_attention/masked_softmax_1/sub:z:0.self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/mulΰ
#self_attention/masked_softmax_1/addAddV2self_attention/Mul:z:0'self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/masked_softmax_1/add?
'self_attention/masked_softmax_1/SoftmaxSoftmax'self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2)
'self_attention/masked_softmax_1/SoftmaxΡ
!self_attention/dropout_3/IdentityIdentity1self_attention/masked_softmax_1/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/dropout_3/Identity?
self_attention/einsum_1/EinsumEinsum*self_attention/dropout_3/Identity:output:0self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2 
self_attention/einsum_1/Einsum
<self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpEself_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02>
<self_attention/attention_output/einsum/Einsum/ReadVariableOpΌ
-self_attention/attention_output/einsum/EinsumEinsum'self_attention/einsum_1/Einsum:output:0Dself_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2/
-self_attention/attention_output/einsum/Einsumΰ
2self_attention/attention_output/add/ReadVariableOpReadVariableOp;self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention/attention_output/add/ReadVariableOp
#self_attention/attention_output/addAddV26self_attention/attention_output/einsum/Einsum:output:0:self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#self_attention/attention_output/add
dropout_4/IdentityIdentity'self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_4/Identityy
addAddV2inputs_0dropout_4/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2
addΎ
8self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8self_attention_layer_norm/moments/mean/reduction_indicesτ
&self_attention_layer_norm/moments/meanMeanadd:z:0Aself_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&self_attention_layer_norm/moments/meanΰ
.self_attention_layer_norm/moments/StopGradientStopGradient/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????20
.self_attention_layer_norm/moments/StopGradient
3self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferenceadd:z:07self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????25
3self_attention_layer_norm/moments/SquaredDifferenceΖ
<self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2>
<self_attention_layer_norm/moments/variance/reduction_indices°
*self_attention_layer_norm/moments/varianceMean7self_attention_layer_norm/moments/SquaredDifference:z:0Eself_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2,
*self_attention_layer_norm/moments/variance
)self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2+
)self_attention_layer_norm/batchnorm/add/y
'self_attention_layer_norm/batchnorm/addAddV23self_attention_layer_norm/moments/variance:output:02self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/addΛ
)self_attention_layer_norm/batchnorm/RsqrtRsqrt+self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/Rsqrtμ
6self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp?self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype028
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp
'self_attention_layer_norm/batchnorm/mulMul-self_attention_layer_norm/batchnorm/Rsqrt:y:0>self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/mul?
)self_attention_layer_norm/batchnorm/mul_1Muladd:z:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_1ϊ
)self_attention_layer_norm/batchnorm/mul_2Mul/self_attention_layer_norm/moments/mean:output:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_2ΰ
2self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOp;self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention_layer_norm/batchnorm/ReadVariableOp
'self_attention_layer_norm/batchnorm/subSub:self_attention_layer_norm/batchnorm/ReadVariableOp:value:0-self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/subϊ
)self_attention_layer_norm/batchnorm/add_1AddV2-self_attention_layer_norm/batchnorm/mul_1:z:0+self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/add_1Ι
)intermediate/einsum/Einsum/ReadVariableOpReadVariableOp2intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02+
)intermediate/einsum/Einsum/ReadVariableOp
intermediate/einsum/EinsumEinsum-self_attention_layer_norm/batchnorm/add_1:z:01intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2
intermediate/einsum/Einsum§
intermediate/add/ReadVariableOpReadVariableOp(intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02!
intermediate/add/ReadVariableOpΊ
intermediate/addAddV2#intermediate/einsum/Einsum:output:0'intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2
intermediate/addm
activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
activation_1/Pow/y
activation_1/PowPowintermediate/add:z:0activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/Powm
activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2
activation_1/mul/x
activation_1/mulMulactivation_1/mul/x:output:0activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul
activation_1/addAddV2intermediate/add:z:0activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/addq
activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2
activation_1/mul_1/x£
activation_1/mul_1Mulactivation_1/mul_1/x:output:0activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_1
activation_1/TanhTanhactivation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/Tanhq
activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
activation_1/add_1/x¦
activation_1/add_1AddV2activation_1/add_1/x:output:0activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/add_1q
activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
activation_1/mul_2/x₯
activation_1/mul_2Mulactivation_1/mul_2/x:output:0activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_2
activation_1/mul_3Mulintermediate/add:z:0activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation_1/mul_3·
#output/einsum/Einsum/ReadVariableOpReadVariableOp,output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02%
#output/einsum/Einsum/ReadVariableOpή
output/einsum/EinsumEinsumactivation_1/mul_3:z:0+output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2
output/einsum/Einsum
output/add/ReadVariableOpReadVariableOp"output_add_readvariableop_resource*
_output_shapes
:*
dtype02
output/add/ReadVariableOp’

output/addAddV2output/einsum/Einsum:output:0!output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2

output/add
dropout_5/IdentityIdentityoutput/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_5/Identity’
add_1AddV2dropout_5/Identity:output:0-self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add_1?
0output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:22
0output_layer_norm/moments/mean/reduction_indicesή
output_layer_norm/moments/meanMean	add_1:z:09output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2 
output_layer_norm/moments/meanΘ
&output_layer_norm/moments/StopGradientStopGradient'output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&output_layer_norm/moments/StopGradientκ
+output_layer_norm/moments/SquaredDifferenceSquaredDifference	add_1:z:0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+output_layer_norm/moments/SquaredDifferenceΆ
4output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4output_layer_norm/moments/variance/reduction_indices
"output_layer_norm/moments/varianceMean/output_layer_norm/moments/SquaredDifference:z:0=output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"output_layer_norm/moments/variance
!output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2#
!output_layer_norm/batchnorm/add/yγ
output_layer_norm/batchnorm/addAddV2+output_layer_norm/moments/variance:output:0*output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/add³
!output_layer_norm/batchnorm/RsqrtRsqrt#output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/RsqrtΤ
.output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp7output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype020
.output_layer_norm/batchnorm/mul/ReadVariableOpη
output_layer_norm/batchnorm/mulMul%output_layer_norm/batchnorm/Rsqrt:y:06output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/mulΌ
!output_layer_norm/batchnorm/mul_1Mul	add_1:z:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_1Ϊ
!output_layer_norm/batchnorm/mul_2Mul'output_layer_norm/moments/mean:output:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_2Θ
*output_layer_norm/batchnorm/ReadVariableOpReadVariableOp3output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02,
*output_layer_norm/batchnorm/ReadVariableOpγ
output_layer_norm/batchnorm/subSub2output_layer_norm/batchnorm/ReadVariableOp:value:0%output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/subΪ
!output_layer_norm/batchnorm/add_1AddV2%output_layer_norm/batchnorm/mul_1:z:0#output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/add_1
IdentityIdentity%output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*
_input_shapes
:??????????????????:'???????????????????????????:::::::::::::::::^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'???????????????????????????
"
_user_specified_name
inputs/1
ϊ
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_2082

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :??????????????????2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
Μ
υ
+__inference_functional_3_layer_call_fn_3918
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCallΜ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:?????????:??????????????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_functional_3_layer_call_and_return_conditional_losses_32382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/2
Π
a
(__inference_dropout_1_layer_call_fn_4634

inputs
identity’StatefulPartitionedCallζ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_20772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
%
{
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_4676
inputs_0
inputs_1
identityF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2β
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2μ
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1J
Shape_1Shapeinputs_1*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ξ
strided_slice_2StridedSliceShape_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ξ
strided_slice_3StridedSliceShape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3d
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1 
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0strided_slice_3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shape~
ReshapeReshapeinputs_1Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2	
Reshapet
CastCastReshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2
Castn
ones/mulMulstrided_slice:output:0strided_slice_1:output:0*
T0*
_output_shapes
: 2

ones/mul^
ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
ones/mul_1/ye

ones/mul_1Mulones/mul:z:0ones/mul_1/y:output:0*
T0*
_output_shapes
: 2

ones/mul_1]
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :θ2
ones/Less/ye
	ones/LessLessones/mul_1:z:0ones/Less/y:output:0*
T0*
_output_shapes
: 2
	ones/Less`
ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2
ones/packed/2
ones/packedPackstrided_slice:output:0strided_slice_1:output:0ones/packed/2:output:0*
N*
T0*
_output_shapes
:2
ones/packed]

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2

ones/Const~
onesFillones/packed:output:0ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
onesr
mulMulones:output:0Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
mulq
IdentityIdentitymul:z:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:??????????????????:??????????????????:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1
Φ
ε
F__inference_functional_3_layer_call_and_return_conditional_losses_3591
inputs_0
inputs_1
inputs_29
5transformer_encoder_1_word_embeddings_gather_resourceD
@transformer_encoder_1_position_embedding_readvariableop_resourceH
Dtransformer_encoder_1_type_embeddings_matmul_readvariableop_resourceU
Qtransformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resourceQ
Mtransformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resourceh
dtransformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource^
Ztransformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resourcef
btransformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource\
Xtransformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resourceh
dtransformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource^
Ztransformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resources
otransformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourcei
etransformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resourcem
itransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourcei
etransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource`
\transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resourceV
Rtransformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resourceZ
Vtransformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resourceP
Ltransformer_encoder_1_transformer_layer_0_output_add_readvariableop_resourcee
atransformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resourcea
]transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resourceI
Etransformer_encoder_1_pooler_transform_matmul_readvariableop_resourceJ
Ftransformer_encoder_1_pooler_transform_biasadd_readvariableop_resource
identity

identity_1½
3transformer_encoder_1/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3transformer_encoder_1/word_embeddings/Reshape/shapeί
-transformer_encoder_1/word_embeddings/ReshapeReshapeinputs_0<transformer_encoder_1/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2/
-transformer_encoder_1/word_embeddings/Reshape£
,transformer_encoder_1/word_embeddings/GatherResourceGather5transformer_encoder_1_word_embeddings_gather_resource6transformer_encoder_1/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02.
,transformer_encoder_1/word_embeddings/GatherΥ
.transformer_encoder_1/word_embeddings/IdentityIdentity5transformer_encoder_1/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????20
.transformer_encoder_1/word_embeddings/Identity
+transformer_encoder_1/word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2-
+transformer_encoder_1/word_embeddings/ShapeΈ
5transformer_encoder_1/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:27
5transformer_encoder_1/word_embeddings/concat/values_1¨
1transformer_encoder_1/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1transformer_encoder_1/word_embeddings/concat/axisΘ
,transformer_encoder_1/word_embeddings/concatConcatV24transformer_encoder_1/word_embeddings/Shape:output:0>transformer_encoder_1/word_embeddings/concat/values_1:output:0:transformer_encoder_1/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2.
,transformer_encoder_1/word_embeddings/concat
/transformer_encoder_1/word_embeddings/Reshape_1Reshape7transformer_encoder_1/word_embeddings/Identity:output:05transformer_encoder_1/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/word_embeddings/Reshape_1Θ
.transformer_encoder_1/position_embedding/ShapeShape8transformer_encoder_1/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:20
.transformer_encoder_1/position_embedding/ShapeΖ
<transformer_encoder_1/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<transformer_encoder_1/position_embedding/strided_slice/stackΚ
>transformer_encoder_1/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice/stack_1Κ
>transformer_encoder_1/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice/stack_2Ψ
6transformer_encoder_1/position_embedding/strided_sliceStridedSlice7transformer_encoder_1/position_embedding/Shape:output:0Etransformer_encoder_1/position_embedding/strided_slice/stack:output:0Gtransformer_encoder_1/position_embedding/strided_slice/stack_1:output:0Gtransformer_encoder_1/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6transformer_encoder_1/position_embedding/strided_sliceΚ
>transformer_encoder_1/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice_1/stackΞ
@transformer_encoder_1/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@transformer_encoder_1/position_embedding/strided_slice_1/stack_1Ξ
@transformer_encoder_1/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@transformer_encoder_1/position_embedding/strided_slice_1/stack_2β
8transformer_encoder_1/position_embedding/strided_slice_1StridedSlice7transformer_encoder_1/position_embedding/Shape:output:0Gtransformer_encoder_1/position_embedding/strided_slice_1/stack:output:0Itransformer_encoder_1/position_embedding/strided_slice_1/stack_1:output:0Itransformer_encoder_1/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8transformer_encoder_1/position_embedding/strided_slice_1τ
7transformer_encoder_1/position_embedding/ReadVariableOpReadVariableOp@transformer_encoder_1_position_embedding_readvariableop_resource*
_output_shapes
:	*
dtype029
7transformer_encoder_1/position_embedding/ReadVariableOpΡ
>transformer_encoder_1/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>transformer_encoder_1/position_embedding/strided_slice_2/stackΚ
Btransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1Κ
@transformer_encoder_1/position_embedding/strided_slice_2/stack_1PackAtransformer_encoder_1/position_embedding/strided_slice_1:output:0Ktransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2B
@transformer_encoder_1/position_embedding/strided_slice_2/stack_1Υ
@transformer_encoder_1/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@transformer_encoder_1/position_embedding/strided_slice_2/stack_2
8transformer_encoder_1/position_embedding/strided_slice_2StridedSlice?transformer_encoder_1/position_embedding/ReadVariableOp:value:0Gtransformer_encoder_1/position_embedding/strided_slice_2/stack:output:0Itransformer_encoder_1/position_embedding/strided_slice_2/stack_1:output:0Itransformer_encoder_1/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2:
8transformer_encoder_1/position_embedding/strided_slice_2Ύ
<transformer_encoder_1/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<transformer_encoder_1/position_embedding/BroadcastTo/shape/2ω
:transformer_encoder_1/position_embedding/BroadcastTo/shapePack?transformer_encoder_1/position_embedding/strided_slice:output:0Atransformer_encoder_1/position_embedding/strided_slice_1:output:0Etransformer_encoder_1/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2<
:transformer_encoder_1/position_embedding/BroadcastTo/shapeΒ
4transformer_encoder_1/position_embedding/BroadcastToBroadcastToAtransformer_encoder_1/position_embedding/strided_slice_2:output:0Ctransformer_encoder_1/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/position_embedding/BroadcastTo½
3transformer_encoder_1/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3transformer_encoder_1/type_embeddings/Reshape/shapeί
-transformer_encoder_1/type_embeddings/ReshapeReshapeinputs_2<transformer_encoder_1/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2/
-transformer_encoder_1/type_embeddings/Reshape΅
6transformer_encoder_1/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6transformer_encoder_1/type_embeddings/one_hot/on_value·
7transformer_encoder_1/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7transformer_encoder_1/type_embeddings/one_hot/off_value¬
3transformer_encoder_1/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :25
3transformer_encoder_1/type_embeddings/one_hot/depth
-transformer_encoder_1/type_embeddings/one_hotOneHot6transformer_encoder_1/type_embeddings/Reshape:output:0<transformer_encoder_1/type_embeddings/one_hot/depth:output:0?transformer_encoder_1/type_embeddings/one_hot/on_value:output:0@transformer_encoder_1/type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2/
-transformer_encoder_1/type_embeddings/one_hot?
;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOpReadVariableOpDtransformer_encoder_1_type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02=
;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp
,transformer_encoder_1/type_embeddings/MatMulMatMul6transformer_encoder_1/type_embeddings/one_hot:output:0Ctransformer_encoder_1/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,transformer_encoder_1/type_embeddings/MatMul
+transformer_encoder_1/type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2-
+transformer_encoder_1/type_embeddings/ShapeΈ
5transformer_encoder_1/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:27
5transformer_encoder_1/type_embeddings/concat/values_1¨
1transformer_encoder_1/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1transformer_encoder_1/type_embeddings/concat/axisΘ
,transformer_encoder_1/type_embeddings/concatConcatV24transformer_encoder_1/type_embeddings/Shape:output:0>transformer_encoder_1/type_embeddings/concat/values_1:output:0:transformer_encoder_1/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2.
,transformer_encoder_1/type_embeddings/concat
/transformer_encoder_1/type_embeddings/Reshape_1Reshape6transformer_encoder_1/type_embeddings/MatMul:product:05transformer_encoder_1/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/type_embeddings/Reshape_1
transformer_encoder_1/add_1/addAddV28transformer_encoder_1/word_embeddings/Reshape_1:output:0=transformer_encoder_1/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2!
transformer_encoder_1/add_1/addν
!transformer_encoder_1/add_1/add_1AddV2#transformer_encoder_1/add_1/add:z:08transformer_encoder_1/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2#
!transformer_encoder_1/add_1/add_1β
Jtransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jtransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesΘ
8transformer_encoder_1/embeddings/layer_norm/moments/meanMean%transformer_encoder_1/add_1/add_1:z:0Stransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2:
8transformer_encoder_1/embeddings/layer_norm/moments/mean
@transformer_encoder_1/embeddings/layer_norm/moments/StopGradientStopGradientAtransformer_encoder_1/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2B
@transformer_encoder_1/embeddings/layer_norm/moments/StopGradientΤ
Etransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference%transformer_encoder_1/add_1/add_1:z:0Itransformer_encoder_1/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2G
Etransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifferenceκ
Ntransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2P
Ntransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indicesψ
<transformer_encoder_1/embeddings/layer_norm/moments/varianceMeanItransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference:z:0Wtransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2>
<transformer_encoder_1/embeddings/layer_norm/moments/varianceΏ
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add/yΛ
9transformer_encoder_1/embeddings/layer_norm/batchnorm/addAddV2Etransformer_encoder_1/embeddings/layer_norm/moments/variance:output:0Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/add
;transformer_encoder_1/embeddings/layer_norm/batchnorm/RsqrtRsqrt=transformer_encoder_1/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt’
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02J
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpΟ
9transformer_encoder_1/embeddings/layer_norm/batchnorm/mulMul?transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt:y:0Ptransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/mul¦
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1Mul%transformer_encoder_1/add_1/add_1:z:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1Β
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2MulAtransformer_encoder_1/embeddings/layer_norm/moments/mean:output:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02F
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpΛ
9transformer_encoder_1/embeddings/layer_norm/batchnorm/subSubLtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0?transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/subΒ
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1AddV2?transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1:z:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1£
-transformer_encoder_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2/
-transformer_encoder_1/dropout_1/dropout/Const
+transformer_encoder_1/dropout_1/dropout/MulMul?transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1:z:06transformer_encoder_1/dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+transformer_encoder_1/dropout_1/dropout/MulΝ
-transformer_encoder_1/dropout_1/dropout/ShapeShape?transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*
_output_shapes
:2/
-transformer_encoder_1/dropout_1/dropout/Shape°
Dtransformer_encoder_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform6transformer_encoder_1/dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)2F
Dtransformer_encoder_1/dropout_1/dropout/random_uniform/RandomUniform΅
6transformer_encoder_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=28
6transformer_encoder_1/dropout_1/dropout/GreaterEqual/yΛ
4transformer_encoder_1/dropout_1/dropout/GreaterEqualGreaterEqualMtransformer_encoder_1/dropout_1/dropout/random_uniform/RandomUniform:output:0?transformer_encoder_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/dropout_1/dropout/GreaterEqualμ
,transformer_encoder_1/dropout_1/dropout/CastCast8transformer_encoder_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2.
,transformer_encoder_1/dropout_1/dropout/Cast
-transformer_encoder_1/dropout_1/dropout/Mul_1Mul/transformer_encoder_1/dropout_1/dropout/Mul:z:00transformer_encoder_1/dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder_1/dropout_1/dropout/Mul_1Η
1transformer_encoder_1/self_attention_mask_1/ShapeShape1transformer_encoder_1/dropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:23
1transformer_encoder_1/self_attention_mask_1/ShapeΜ
?transformer_encoder_1/self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?transformer_encoder_1/self_attention_mask_1/strided_slice/stackΠ
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1Π
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2κ
9transformer_encoder_1/self_attention_mask_1/strided_sliceStridedSlice:transformer_encoder_1/self_attention_mask_1/Shape:output:0Htransformer_encoder_1/self_attention_mask_1/strided_slice/stack:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9transformer_encoder_1/self_attention_mask_1/strided_sliceΠ
Atransformer_encoder_1/self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_1/stackΤ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1Τ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2τ
;transformer_encoder_1/self_attention_mask_1/strided_slice_1StridedSlice:transformer_encoder_1/self_attention_mask_1/Shape:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_1’
3transformer_encoder_1/self_attention_mask_1/Shape_1Shapeinputs_1*
T0*
_output_shapes
:25
3transformer_encoder_1/self_attention_mask_1/Shape_1Π
Atransformer_encoder_1/self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_2/stackΤ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1Τ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2φ
;transformer_encoder_1/self_attention_mask_1/strided_slice_2StridedSlice<transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_2Π
Atransformer_encoder_1/self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_3/stackΤ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1Τ
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2φ
;transformer_encoder_1/self_attention_mask_1/strided_slice_3StridedSlice<transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_3Ό
;transformer_encoder_1/self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;transformer_encoder_1/self_attention_mask_1/Reshape/shape/1ό
9transformer_encoder_1/self_attention_mask_1/Reshape/shapePackBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/Reshape/shape/1:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2;
9transformer_encoder_1/self_attention_mask_1/Reshape/shape
3transformer_encoder_1/self_attention_mask_1/ReshapeReshapeinputs_1Btransformer_encoder_1/self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer_encoder_1/self_attention_mask_1/Reshapeψ
0transformer_encoder_1/self_attention_mask_1/CastCast<transformer_encoder_1/self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????22
0transformer_encoder_1/self_attention_mask_1/Cast
4transformer_encoder_1/self_attention_mask_1/ones/mulMulBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 26
4transformer_encoder_1/self_attention_mask_1/ones/mulΆ
8transformer_encoder_1/self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2:
8transformer_encoder_1/self_attention_mask_1/ones/mul_1/y
6transformer_encoder_1/self_attention_mask_1/ones/mul_1Mul8transformer_encoder_1/self_attention_mask_1/ones/mul:z:0Atransformer_encoder_1/self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 28
6transformer_encoder_1/self_attention_mask_1/ones/mul_1΅
7transformer_encoder_1/self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :θ29
7transformer_encoder_1/self_attention_mask_1/ones/Less/y
5transformer_encoder_1/self_attention_mask_1/ones/LessLess:transformer_encoder_1/self_attention_mask_1/ones/mul_1:z:0@transformer_encoder_1/self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 27
5transformer_encoder_1/self_attention_mask_1/ones/LessΈ
9transformer_encoder_1/self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2;
9transformer_encoder_1/self_attention_mask_1/ones/packed/2φ
7transformer_encoder_1/self_attention_mask_1/ones/packedPackBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0Btransformer_encoder_1/self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:29
7transformer_encoder_1/self_attention_mask_1/ones/packed΅
6transformer_encoder_1/self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?28
6transformer_encoder_1/self_attention_mask_1/ones/Const?
0transformer_encoder_1/self_attention_mask_1/onesFill@transformer_encoder_1/self_attention_mask_1/ones/packed:output:0?transformer_encoder_1/self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????22
0transformer_encoder_1/self_attention_mask_1/ones’
/transformer_encoder_1/self_attention_mask_1/mulMul9transformer_encoder_1/self_attention_mask_1/ones:output:04transformer_encoder_1/self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????21
/transformer_encoder_1/self_attention_mask_1/mulγ
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpdtransformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02]
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp§
Ltransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/dropout/Mul_1:z:0ctransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/EinsumΑ
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpZtransformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02S
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp
Btransformer_encoder_1/transformer/layer_0/self_attention/query/addAddV2Utransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum:output:0Ytransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2D
Btransformer_encoder_1/transformer/layer_0/self_attention/query/addέ
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpbtransformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02[
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp‘
Jtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/dropout/Mul_1:z:0atransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2L
Jtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum»
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpXtransformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02Q
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpώ
@transformer_encoder_1/transformer/layer_0/self_attention/key/addAddV2Stransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum:output:0Wtransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2B
@transformer_encoder_1/transformer/layer_0/self_attention/key/addγ
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpdtransformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02]
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp§
Ltransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/dropout/Mul_1:z:0ctransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/EinsumΑ
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpZtransformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02S
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp
Btransformer_encoder_1/transformer/layer_0/self_attention/value/addAddV2Utransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum:output:0Ytransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2D
Btransformer_encoder_1/transformer/layer_0/self_attention/value/add
Ftransformer_encoder_1/transformer/layer_0/self_attention/einsum/EinsumEinsumDtransformer_encoder_1/transformer/layer_0/self_attention/key/add:z:0Ftransformer_encoder_1/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2H
Ftransformer_encoder_1/transformer/layer_0/self_attention/einsum/EinsumΕ
>transformer_encoder_1/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2@
>transformer_encoder_1/transformer/layer_0/self_attention/Mul/yι
<transformer_encoder_1/transformer/layer_0/self_attention/MulMulOtransformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum:output:0Gtransformer_encoder_1/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<transformer_encoder_1/transformer/layer_0/self_attention/Mulώ
Xtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dim
Ttransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims
ExpandDims3transformer_encoder_1/self_attention_mask_1/mul:z:0atransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2V
Ttransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDimsη
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2Q
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/xͺ
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/subSubXtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/x:output:0]transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/subη
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2Q
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/y
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mulMulQtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub:z:0Xtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/addAddV2@transformer_encoder_1/transformer/layer_0/self_attention/Mul:z:0Qtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/addΠ
Qtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/SoftmaxSoftmaxQtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/Softmaxι
Ptransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2R
Ptransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Const«
Ntransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/MulMul[transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/Softmax:softmax:0Ytransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2P
Ntransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Mul―
Ptransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/ShapeShape[transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/Softmax:softmax:0*
T0*
_output_shapes
:2R
Ptransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Shape³
gtransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/random_uniform/RandomUniformRandomUniformYtransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed±?ε)*
seed22i
gtransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/random_uniform/RandomUniformϋ
Ytransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2[
Ytransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual/yδ
Wtransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/GreaterEqualGreaterEqualptransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/random_uniform/RandomUniform:output:0btransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2Y
Wtransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/GreaterEqualβ
Otransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/CastCast[transformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2Q
Otransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Cast 
Ptransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Mul_1MulRtransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Mul:z:0Stransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2R
Ptransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Mul_1§
Htransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/EinsumEinsumTtransformer_encoder_1/transformer/layer_0/self_attention/dropout_3/dropout/Mul_1:z:0Ftransformer_encoder_1/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2J
Htransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpotransformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02h
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpδ
Wtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsumQtransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum:output:0ntransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2Y
Wtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsumή
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpetransformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02^
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
Mtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/addAddV2`transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0dtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/addΛ
Atransformer_encoder_1/transformer/layer_0/dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2C
Atransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Constη
?transformer_encoder_1/transformer/layer_0/dropout_4/dropout/MulMulQtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add:z:0Jtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer_encoder_1/transformer/layer_0/dropout_4/dropout/Mul
Atransformer_encoder_1/transformer/layer_0/dropout_4/dropout/ShapeShapeQtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2C
Atransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Shapeω
Xtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/random_uniform/RandomUniformRandomUniformJtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)*
seed22Z
Xtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/random_uniform/RandomUniformέ
Jtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2L
Jtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/GreaterEqual/y
Htransformer_encoder_1/transformer/layer_0/dropout_4/dropout/GreaterEqualGreaterEqualatransformer_encoder_1/transformer/layer_0/dropout_4/dropout/random_uniform/RandomUniform:output:0Stransformer_encoder_1/transformer/layer_0/dropout_4/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2J
Htransformer_encoder_1/transformer/layer_0/dropout_4/dropout/GreaterEqual¨
@transformer_encoder_1/transformer/layer_0/dropout_4/dropout/CastCastLtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2B
@transformer_encoder_1/transformer/layer_0/dropout_4/dropout/CastΧ
Atransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Mul_1MulCtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Mul:z:0Dtransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2C
Atransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Mul_1 
-transformer_encoder_1/transformer/layer_0/addAddV21transformer_encoder_1/dropout_1/dropout/Mul_1:z:0Etransformer_encoder_1/transformer/layer_0/dropout_4/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder_1/transformer/layer_0/add
btransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2d
btransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices
Ptransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/meanMean1transformer_encoder_1/transformer/layer_0/add:z:0ktransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2R
Ptransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/meanή
Xtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientYtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient¨
]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference1transformer_encoder_1/transformer/layer_0/add:z:0atransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2_
]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference
ftransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2h
ftransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesΨ
Ttransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/varianceMeanatransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0otransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2V
Ttransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/varianceο
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y«
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addΙ
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrtUtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrtκ
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpitransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02b
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp―
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulWtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0htransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mulϊ
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul1transformer_encoder_1/transformer/layer_0/add:z:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1’
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulYtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2ή
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpetransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02^
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp«
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/subSubdtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub’
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1Η
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp\transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02U
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp―
Dtransformer_encoder_1/transformer/layer_0/intermediate/einsum/EinsumEinsumWtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0[transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2F
Dtransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum₯
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOpRtransformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02K
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpβ
:transformer_encoder_1/transformer/layer_0/intermediate/addAddV2Mtransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum:output:0Qtransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/intermediate/addΑ
<transformer_encoder_1/transformer/layer_0/activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2>
<transformer_encoder_1/transformer/layer_0/activation_1/Pow/yΕ
:transformer_encoder_1/transformer/layer_0/activation_1/PowPow>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Etransformer_encoder_1/transformer/layer_0/activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation_1/PowΑ
<transformer_encoder_1/transformer/layer_0/activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2>
<transformer_encoder_1/transformer/layer_0/activation_1/mul/xΕ
:transformer_encoder_1/transformer/layer_0/activation_1/mulMulEtransformer_encoder_1/transformer/layer_0/activation_1/mul/x:output:0>transformer_encoder_1/transformer/layer_0/activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation_1/mulΐ
:transformer_encoder_1/transformer/layer_0/activation_1/addAddV2>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0>transformer_encoder_1/transformer/layer_0/activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation_1/addΕ
>transformer_encoder_1/transformer/layer_0/activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2@
>transformer_encoder_1/transformer/layer_0/activation_1/mul_1/xΛ
<transformer_encoder_1/transformer/layer_0/activation_1/mul_1MulGtransformer_encoder_1/transformer/layer_0/activation_1/mul_1/x:output:0>transformer_encoder_1/transformer/layer_0/activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<transformer_encoder_1/transformer/layer_0/activation_1/mul_1
;transformer_encoder_1/transformer/layer_0/activation_1/TanhTanh@transformer_encoder_1/transformer/layer_0/activation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2=
;transformer_encoder_1/transformer/layer_0/activation_1/TanhΕ
>transformer_encoder_1/transformer/layer_0/activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2@
>transformer_encoder_1/transformer/layer_0/activation_1/add_1/xΞ
<transformer_encoder_1/transformer/layer_0/activation_1/add_1AddV2Gtransformer_encoder_1/transformer/layer_0/activation_1/add_1/x:output:0?transformer_encoder_1/transformer/layer_0/activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<transformer_encoder_1/transformer/layer_0/activation_1/add_1Ε
>transformer_encoder_1/transformer/layer_0/activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2@
>transformer_encoder_1/transformer/layer_0/activation_1/mul_2/xΝ
<transformer_encoder_1/transformer/layer_0/activation_1/mul_2MulGtransformer_encoder_1/transformer/layer_0/activation_1/mul_2/x:output:0@transformer_encoder_1/transformer/layer_0/activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<transformer_encoder_1/transformer/layer_0/activation_1/mul_2Δ
<transformer_encoder_1/transformer/layer_0/activation_1/mul_3Mul>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0@transformer_encoder_1/transformer/layer_0/activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<transformer_encoder_1/transformer/layer_0/activation_1/mul_3΅
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02O
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp
>transformer_encoder_1/transformer/layer_0/output/einsum/EinsumEinsum@transformer_encoder_1/transformer/layer_0/activation_1/mul_3:z:0Utransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2@
>transformer_encoder_1/transformer/layer_0/output/einsum/Einsum
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpReadVariableOpLtransformer_encoder_1_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02E
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpΚ
4transformer_encoder_1/transformer/layer_0/output/addAddV2Gtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum:output:0Ktransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/transformer/layer_0/output/addΛ
Atransformer_encoder_1/transformer/layer_0/dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2C
Atransformer_encoder_1/transformer/layer_0/dropout_5/dropout/ConstΞ
?transformer_encoder_1/transformer/layer_0/dropout_5/dropout/MulMul8transformer_encoder_1/transformer/layer_0/output/add:z:0Jtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer_encoder_1/transformer/layer_0/dropout_5/dropout/Mulξ
Atransformer_encoder_1/transformer/layer_0/dropout_5/dropout/ShapeShape8transformer_encoder_1/transformer/layer_0/output/add:z:0*
T0*
_output_shapes
:2C
Atransformer_encoder_1/transformer/layer_0/dropout_5/dropout/Shapeω
Xtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/random_uniform/RandomUniformRandomUniformJtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)*
seed22Z
Xtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/random_uniform/RandomUniformέ
Jtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2L
Jtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/GreaterEqual/y
Htransformer_encoder_1/transformer/layer_0/dropout_5/dropout/GreaterEqualGreaterEqualatransformer_encoder_1/transformer/layer_0/dropout_5/dropout/random_uniform/RandomUniform:output:0Stransformer_encoder_1/transformer/layer_0/dropout_5/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2J
Htransformer_encoder_1/transformer/layer_0/dropout_5/dropout/GreaterEqual¨
@transformer_encoder_1/transformer/layer_0/dropout_5/dropout/CastCastLtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2B
@transformer_encoder_1/transformer/layer_0/dropout_5/dropout/CastΧ
Atransformer_encoder_1/transformer/layer_0/dropout_5/dropout/Mul_1MulCtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/Mul:z:0Dtransformer_encoder_1/transformer/layer_0/dropout_5/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2C
Atransformer_encoder_1/transformer/layer_0/dropout_5/dropout/Mul_1Κ
/transformer_encoder_1/transformer/layer_0/add_1AddV2Etransformer_encoder_1/transformer/layer_0/dropout_5/dropout/Mul_1:z:0Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/transformer/layer_0/add_1
Ztransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2\
Ztransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices
Htransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanMean3transformer_encoder_1/transformer/layer_0/add_1:z:0ctransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2J
Htransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanΖ
Ptransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradientQtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2R
Ptransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient
Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference3transformer_encoder_1/transformer/layer_0/add_1:z:0Ytransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2W
Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference
^transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2`
^transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesΈ
Ltransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceMeanYtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0gtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2N
Ltransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceί
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/addAddV2Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance:output:0Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add±
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtMtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpatransformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02Z
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mulMulOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0`transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mulδ
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul3transformer_encoder_1/transformer/layer_0/add_1:z:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2MulQtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2Ζ
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOp]transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02V
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/subSub\transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0Otransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2Otransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1½
2transformer_encoder_1/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            24
2transformer_encoder_1/lambda_1/strided_slice/stackΑ
4transformer_encoder_1/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           26
4transformer_encoder_1/lambda_1/strided_slice/stack_1Α
4transformer_encoder_1/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         26
4transformer_encoder_1/lambda_1/strided_slice/stack_2ζ
,transformer_encoder_1/lambda_1/strided_sliceStridedSliceOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0;transformer_encoder_1/lambda_1/strided_slice/stack:output:0=transformer_encoder_1/lambda_1/strided_slice/stack_1:output:0=transformer_encoder_1/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2.
,transformer_encoder_1/lambda_1/strided_sliceΫ
&transformer_encoder_1/lambda_1/SqueezeSqueeze5transformer_encoder_1/lambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2(
&transformer_encoder_1/lambda_1/Squeeze
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOpReadVariableOpEtransformer_encoder_1_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp
-transformer_encoder_1/pooler_transform/MatMulMatMul/transformer_encoder_1/lambda_1/Squeeze:output:0Dtransformer_encoder_1/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2/
-transformer_encoder_1/pooler_transform/MatMul
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpFtransformer_encoder_1_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp
.transformer_encoder_1/pooler_transform/BiasAddBiasAdd7transformer_encoder_1/pooler_transform/MatMul:product:0Etransformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.transformer_encoder_1/pooler_transform/BiasAddΝ
+transformer_encoder_1/pooler_transform/TanhTanh7transformer_encoder_1/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2-
+transformer_encoder_1/pooler_transform/Tanh
IdentityIdentity/transformer_encoder_1/pooler_transform/Tanh:y:0*
T0*'
_output_shapes
:?????????2

Identity΄

Identity_1IdentityOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????::::::::::::::::::::::::Z V
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/2
τ
^
$__inference_add_1_layer_call_fn_4581
inputs_0
inputs_1
inputs_2
identityβ
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_20172
PartitionedCally
IdentityIdentityPartitionedCall:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:??????????????????:??????????????????:??????????????????:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0:^Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/1:^Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/2
δ
w
?__inference_add_1_layer_call_and_return_conditional_losses_2017

inputs
inputs_1
inputs_2
identityd
addAddV2inputsinputs_1*
T0*4
_output_shapes"
 :??????????????????2
addi
add_1AddV2add:z:0inputs_2*
T0*4
_output_shapes"
 :??????????????????2
add_1j
IdentityIdentity	add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*s
_input_shapesb
`:??????????????????:??????????????????:??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:\X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
ω
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_2077

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/ShapeΠ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed±?ε)2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=2
dropout/GreaterEqual/yΛ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/Mul_1r
IdentityIdentitydropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
§

L__inference_position_embedding_layer_call_and_return_conditional_losses_4534

inputs
readvariableop_resource
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2β
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2μ
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1y
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_2/stackx
strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_2/stack_1/1¦
strided_slice_2/stack_1Packstrided_slice_1:output:0"strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2
strided_slice_2l
BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
BroadcastTo/shape/2¬
BroadcastTo/shapePackstrided_slice:output:0strided_slice_1:output:0BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2
BroadcastTo/shape
BroadcastToBroadcastTostrided_slice_2:output:0BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
BroadcastTou
IdentityIdentityBroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????????????::\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
ς
t
.__inference_word_embeddings_layer_call_fn_4511

inputs
unknown
identity’StatefulPartitionedCallω
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_19322
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
ΰ
ψ
__inference__wrapped_model_1912
input_word_ids

input_mask
input_type_idsF
Bfunctional_3_transformer_encoder_1_word_embeddings_gather_resourceQ
Mfunctional_3_transformer_encoder_1_position_embedding_readvariableop_resourceU
Qfunctional_3_transformer_encoder_1_type_embeddings_matmul_readvariableop_resourceb
^functional_3_transformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resource^
Zfunctional_3_transformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resourceu
qfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resourcek
gfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resources
ofunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resourcei
efunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resourceu
qfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resourcek
gfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resource
|functional_3_transformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourcev
rfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resourcez
vfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourcev
rfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resourcem
ifunctional_3_transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resourcec
_functional_3_transformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resourceg
cfunctional_3_transformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resource]
Yfunctional_3_transformer_encoder_1_transformer_layer_0_output_add_readvariableop_resourcer
nfunctional_3_transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resourcen
jfunctional_3_transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resourceV
Rfunctional_3_transformer_encoder_1_pooler_transform_matmul_readvariableop_resourceW
Sfunctional_3_transformer_encoder_1_pooler_transform_biasadd_readvariableop_resource
identity

identity_1Χ
@functional_3/transformer_encoder_1/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2B
@functional_3/transformer_encoder_1/word_embeddings/Reshape/shape
:functional_3/transformer_encoder_1/word_embeddings/ReshapeReshapeinput_word_idsIfunctional_3/transformer_encoder_1/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2<
:functional_3/transformer_encoder_1/word_embeddings/ReshapeΧ
9functional_3/transformer_encoder_1/word_embeddings/GatherResourceGatherBfunctional_3_transformer_encoder_1_word_embeddings_gather_resourceCfunctional_3/transformer_encoder_1/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02;
9functional_3/transformer_encoder_1/word_embeddings/Gatherό
;functional_3/transformer_encoder_1/word_embeddings/IdentityIdentityBfunctional_3/transformer_encoder_1/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????2=
;functional_3/transformer_encoder_1/word_embeddings/Identity²
8functional_3/transformer_encoder_1/word_embeddings/ShapeShapeinput_word_ids*
T0*
_output_shapes
:2:
8functional_3/transformer_encoder_1/word_embeddings/Shape?
Bfunctional_3/transformer_encoder_1/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bfunctional_3/transformer_encoder_1/word_embeddings/concat/values_1Β
>functional_3/transformer_encoder_1/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>functional_3/transformer_encoder_1/word_embeddings/concat/axis
9functional_3/transformer_encoder_1/word_embeddings/concatConcatV2Afunctional_3/transformer_encoder_1/word_embeddings/Shape:output:0Kfunctional_3/transformer_encoder_1/word_embeddings/concat/values_1:output:0Gfunctional_3/transformer_encoder_1/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9functional_3/transformer_encoder_1/word_embeddings/concatΠ
<functional_3/transformer_encoder_1/word_embeddings/Reshape_1ReshapeDfunctional_3/transformer_encoder_1/word_embeddings/Identity:output:0Bfunctional_3/transformer_encoder_1/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2>
<functional_3/transformer_encoder_1/word_embeddings/Reshape_1ο
;functional_3/transformer_encoder_1/position_embedding/ShapeShapeEfunctional_3/transformer_encoder_1/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:2=
;functional_3/transformer_encoder_1/position_embedding/Shapeΰ
Ifunctional_3/transformer_encoder_1/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2K
Ifunctional_3/transformer_encoder_1/position_embedding/strided_slice/stackδ
Kfunctional_3/transformer_encoder_1/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfunctional_3/transformer_encoder_1/position_embedding/strided_slice/stack_1δ
Kfunctional_3/transformer_encoder_1/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfunctional_3/transformer_encoder_1/position_embedding/strided_slice/stack_2¦
Cfunctional_3/transformer_encoder_1/position_embedding/strided_sliceStridedSliceDfunctional_3/transformer_encoder_1/position_embedding/Shape:output:0Rfunctional_3/transformer_encoder_1/position_embedding/strided_slice/stack:output:0Tfunctional_3/transformer_encoder_1/position_embedding/strided_slice/stack_1:output:0Tfunctional_3/transformer_encoder_1/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfunctional_3/transformer_encoder_1/position_embedding/strided_sliceδ
Kfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2M
Kfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stackθ
Mfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2O
Mfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stack_1θ
Mfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2O
Mfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stack_2°
Efunctional_3/transformer_encoder_1/position_embedding/strided_slice_1StridedSliceDfunctional_3/transformer_encoder_1/position_embedding/Shape:output:0Tfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stack:output:0Vfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stack_1:output:0Vfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2G
Efunctional_3/transformer_encoder_1/position_embedding/strided_slice_1
Dfunctional_3/transformer_encoder_1/position_embedding/ReadVariableOpReadVariableOpMfunctional_3_transformer_encoder_1_position_embedding_readvariableop_resource*
_output_shapes
:	*
dtype02F
Dfunctional_3/transformer_encoder_1/position_embedding/ReadVariableOpλ
Kfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2M
Kfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stackδ
Ofunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2Q
Ofunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_1/1ώ
Mfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_1PackNfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1:output:0Xfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2O
Mfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_1ο
Mfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2O
Mfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_2Σ
Efunctional_3/transformer_encoder_1/position_embedding/strided_slice_2StridedSliceLfunctional_3/transformer_encoder_1/position_embedding/ReadVariableOp:value:0Tfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack:output:0Vfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_1:output:0Vfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2G
Efunctional_3/transformer_encoder_1/position_embedding/strided_slice_2Ψ
Ifunctional_3/transformer_encoder_1/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2K
Ifunctional_3/transformer_encoder_1/position_embedding/BroadcastTo/shape/2Ί
Gfunctional_3/transformer_encoder_1/position_embedding/BroadcastTo/shapePackLfunctional_3/transformer_encoder_1/position_embedding/strided_slice:output:0Nfunctional_3/transformer_encoder_1/position_embedding/strided_slice_1:output:0Rfunctional_3/transformer_encoder_1/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2I
Gfunctional_3/transformer_encoder_1/position_embedding/BroadcastTo/shapeφ
Afunctional_3/transformer_encoder_1/position_embedding/BroadcastToBroadcastToNfunctional_3/transformer_encoder_1/position_embedding/strided_slice_2:output:0Pfunctional_3/transformer_encoder_1/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2C
Afunctional_3/transformer_encoder_1/position_embedding/BroadcastToΧ
@functional_3/transformer_encoder_1/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2B
@functional_3/transformer_encoder_1/type_embeddings/Reshape/shape
:functional_3/transformer_encoder_1/type_embeddings/ReshapeReshapeinput_type_idsIfunctional_3/transformer_encoder_1/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2<
:functional_3/transformer_encoder_1/type_embeddings/ReshapeΟ
Cfunctional_3/transformer_encoder_1/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2E
Cfunctional_3/transformer_encoder_1/type_embeddings/one_hot/on_valueΡ
Dfunctional_3/transformer_encoder_1/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2F
Dfunctional_3/transformer_encoder_1/type_embeddings/one_hot/off_valueΖ
@functional_3/transformer_encoder_1/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2B
@functional_3/transformer_encoder_1/type_embeddings/one_hot/depthλ
:functional_3/transformer_encoder_1/type_embeddings/one_hotOneHotCfunctional_3/transformer_encoder_1/type_embeddings/Reshape:output:0Ifunctional_3/transformer_encoder_1/type_embeddings/one_hot/depth:output:0Lfunctional_3/transformer_encoder_1/type_embeddings/one_hot/on_value:output:0Mfunctional_3/transformer_encoder_1/type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2<
:functional_3/transformer_encoder_1/type_embeddings/one_hot¦
Hfunctional_3/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOpReadVariableOpQfunctional_3_transformer_encoder_1_type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02J
Hfunctional_3/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOpΙ
9functional_3/transformer_encoder_1/type_embeddings/MatMulMatMulCfunctional_3/transformer_encoder_1/type_embeddings/one_hot:output:0Pfunctional_3/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2;
9functional_3/transformer_encoder_1/type_embeddings/MatMul²
8functional_3/transformer_encoder_1/type_embeddings/ShapeShapeinput_type_ids*
T0*
_output_shapes
:2:
8functional_3/transformer_encoder_1/type_embeddings/Shape?
Bfunctional_3/transformer_encoder_1/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bfunctional_3/transformer_encoder_1/type_embeddings/concat/values_1Β
>functional_3/transformer_encoder_1/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>functional_3/transformer_encoder_1/type_embeddings/concat/axis
9functional_3/transformer_encoder_1/type_embeddings/concatConcatV2Afunctional_3/transformer_encoder_1/type_embeddings/Shape:output:0Kfunctional_3/transformer_encoder_1/type_embeddings/concat/values_1:output:0Gfunctional_3/transformer_encoder_1/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9functional_3/transformer_encoder_1/type_embeddings/concatΟ
<functional_3/transformer_encoder_1/type_embeddings/Reshape_1ReshapeCfunctional_3/transformer_encoder_1/type_embeddings/MatMul:product:0Bfunctional_3/transformer_encoder_1/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2>
<functional_3/transformer_encoder_1/type_embeddings/Reshape_1·
,functional_3/transformer_encoder_1/add_1/addAddV2Efunctional_3/transformer_encoder_1/word_embeddings/Reshape_1:output:0Jfunctional_3/transformer_encoder_1/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2.
,functional_3/transformer_encoder_1/add_1/add‘
.functional_3/transformer_encoder_1/add_1/add_1AddV20functional_3/transformer_encoder_1/add_1/add:z:0Efunctional_3/transformer_encoder_1/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????20
.functional_3/transformer_encoder_1/add_1/add_1ό
Wfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2Y
Wfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesό
Efunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/meanMean2functional_3/transformer_encoder_1/add_1/add_1:z:0`functional_3/transformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2G
Efunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/mean½
Mfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/StopGradientStopGradientNfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2O
Mfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/StopGradient
Rfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference2functional_3/transformer_encoder_1/add_1/add_1:z:0Vfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2T
Rfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference
[functional_3/transformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2]
[functional_3/transformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices¬
Ifunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/varianceMeanVfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference:z:0dfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2K
Ifunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/varianceΩ
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2J
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/add/y?
Ffunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/addAddV2Rfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/variance:output:0Qfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2H
Ffunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/add¨
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/RsqrtRsqrtJfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2J
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/RsqrtΙ
Ufunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp^functional_3_transformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02W
Ufunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp
Ffunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mulMulLfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt:y:0]functional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2H
Ffunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mulΪ
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1Mul2functional_3/transformer_encoder_1/add_1/add_1:z:0Jfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2J
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1φ
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2MulNfunctional_3/transformer_encoder_1/embeddings/layer_norm/moments/mean:output:0Jfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2J
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2½
Qfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpZfunctional_3_transformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02S
Qfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp?
Ffunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/subSubYfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0Lfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2H
Ffunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/subφ
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1AddV2Lfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1:z:0Jfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2J
Hfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1
5functional_3/transformer_encoder_1/dropout_1/IdentityIdentityLfunctional_3/transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????27
5functional_3/transformer_encoder_1/dropout_1/Identityξ
>functional_3/transformer_encoder_1/self_attention_mask_1/ShapeShape>functional_3/transformer_encoder_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:2@
>functional_3/transformer_encoder_1/self_attention_mask_1/Shapeζ
Lfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2N
Lfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stackκ
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2P
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_1κ
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2P
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_2Έ
Ffunctional_3/transformer_encoder_1/self_attention_mask_1/strided_sliceStridedSliceGfunctional_3/transformer_encoder_1/self_attention_mask_1/Shape:output:0Ufunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stack:output:0Wfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_1:output:0Wfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2H
Ffunctional_3/transformer_encoder_1/self_attention_mask_1/strided_sliceκ
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2P
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stackξ
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2R
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1ξ
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2R
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2Β
Hfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1StridedSliceGfunctional_3/transformer_encoder_1/self_attention_mask_1/Shape:output:0Wfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack:output:0Yfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1:output:0Yfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2J
Hfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1Ύ
@functional_3/transformer_encoder_1/self_attention_mask_1/Shape_1Shape
input_mask*
T0*
_output_shapes
:2B
@functional_3/transformer_encoder_1/self_attention_mask_1/Shape_1κ
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2P
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stackξ
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2R
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1ξ
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2R
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2Δ
Hfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2StridedSliceIfunctional_3/transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Wfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack:output:0Yfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1:output:0Yfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2J
Hfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_2κ
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2P
Nfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stackξ
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2R
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1ξ
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2R
Pfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2Δ
Hfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3StridedSliceIfunctional_3/transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Wfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack:output:0Yfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1:output:0Yfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2J
Hfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3Φ
Hfunctional_3/transformer_encoder_1/self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2J
Hfunctional_3/transformer_encoder_1/self_attention_mask_1/Reshape/shape/1½
Ffunctional_3/transformer_encoder_1/self_attention_mask_1/Reshape/shapePackOfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice:output:0Qfunctional_3/transformer_encoder_1/self_attention_mask_1/Reshape/shape/1:output:0Qfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2H
Ffunctional_3/transformer_encoder_1/self_attention_mask_1/Reshape/shape«
@functional_3/transformer_encoder_1/self_attention_mask_1/ReshapeReshape
input_maskOfunctional_3/transformer_encoder_1/self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2B
@functional_3/transformer_encoder_1/self_attention_mask_1/Reshape
=functional_3/transformer_encoder_1/self_attention_mask_1/CastCastIfunctional_3/transformer_encoder_1/self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2?
=functional_3/transformer_encoder_1/self_attention_mask_1/Cast?
Afunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mulMulOfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice:output:0Qfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2C
Afunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mulΠ
Efunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2G
Efunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mul_1/yΙ
Cfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mul_1MulEfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mul:z:0Nfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2E
Cfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mul_1Ο
Dfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :θ2F
Dfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/Less/yΙ
Bfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/LessLessGfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/mul_1:z:0Mfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2D
Bfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/Less?
Ffunctional_3/transformer_encoder_1/self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2H
Ffunctional_3/transformer_encoder_1/self_attention_mask_1/ones/packed/2·
Dfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/packedPackOfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice:output:0Qfunctional_3/transformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0Ofunctional_3/transformer_encoder_1/self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2F
Dfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/packedΟ
Cfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2E
Cfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/Constβ
=functional_3/transformer_encoder_1/self_attention_mask_1/onesFillMfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/packed:output:0Lfunctional_3/transformer_encoder_1/self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2?
=functional_3/transformer_encoder_1/self_attention_mask_1/onesΦ
<functional_3/transformer_encoder_1/self_attention_mask_1/mulMulFfunctional_3/transformer_encoder_1/self_attention_mask_1/ones:output:0Afunctional_3/transformer_encoder_1/self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2>
<functional_3/transformer_encoder_1/self_attention_mask_1/mul
hfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpqfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02j
hfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpΫ
Yfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/EinsumEinsum>functional_3/transformer_encoder_1/dropout_1/Identity:output:0pfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2[
Yfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsumθ
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpgfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02`
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpΊ
Ofunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/addAddV2bfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum:output:0ffunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2Q
Ofunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/add
ffunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpofunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02h
ffunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpΥ
Wfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/EinsumEinsum>functional_3/transformer_encoder_1/dropout_1/Identity:output:0nfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2Y
Wfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsumβ
\functional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpefunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02^
\functional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp²
Mfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/addAddV2`functional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum:output:0dfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2O
Mfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/add
hfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpqfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02j
hfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpΫ
Yfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/EinsumEinsum>functional_3/transformer_encoder_1/dropout_1/Identity:output:0pfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2[
Yfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsumθ
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpgfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02`
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpΊ
Ofunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/addAddV2bfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum:output:0ffunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2Q
Ofunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/addΠ
Sfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/einsum/EinsumEinsumQfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/key/add:z:0Sfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2U
Sfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsumί
Kfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅>2M
Kfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/Mul/y
Ifunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/MulMul\functional_3/transformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum:output:0Tfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/Mul
efunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2g
efunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dim?
afunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims
ExpandDims@functional_3/transformer_encoder_1/self_attention_mask_1/mul:z:0nfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2c
afunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims
\functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2^
\functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/xή
Zfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/subSubefunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub/x:output:0jfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2\
Zfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub
\functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @Ζ2^
\functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/y?
Zfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mulMul^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/sub:z:0efunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2\
Zfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mulΌ
Zfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/addAddV2Mfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/Mul:z:0^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2\
Zfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/addχ
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/SoftmaxSoftmax^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2`
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/Softmaxφ
Xfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/dropout_3/IdentityIdentityhfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax_1/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2Z
Xfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/dropout_3/IdentityΫ
Ufunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/einsum_1/EinsumEinsumafunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/dropout_3/Identity:output:0Sfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2W
Ufunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum«
sfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp|functional_3_transformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02u
sfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp
dfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsum^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum:output:0{functional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2f
dfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum
ifunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOprfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02k
ifunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpβ
Zfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/addAddV2mfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0qfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2\
Zfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/addΑ
Ifunctional_3/transformer_encoder_1/transformer/layer_0/dropout_4/IdentityIdentity^functional_3/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/dropout_4/IdentityΤ
:functional_3/transformer_encoder_1/transformer/layer_0/addAddV2>functional_3/transformer_encoder_1/dropout_1/Identity:output:0Rfunctional_3/transformer_encoder_1/transformer/layer_0/dropout_4/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2<
:functional_3/transformer_encoder_1/transformer/layer_0/add¬
ofunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2q
ofunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesΠ
]functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/meanMean>functional_3/transformer_encoder_1/transformer/layer_0/add:z:0xfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2_
]functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean
efunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientffunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2g
efunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradientά
jfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference>functional_3/transformer_encoder_1/transformer/layer_0/add:z:0nfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2l
jfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference΄
sfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2u
sfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices
afunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/varianceMeannfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0|functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2c
afunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2b
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yί
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2jfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0ifunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2`
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addπ
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrtbfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2b
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt
mfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpvfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02o
mfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpγ
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMuldfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0ufunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2`
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul>functional_3/transformer_encoder_1/transformer/layer_0/add:z:0bfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2b
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Φ
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2Mulffunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0bfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2b
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2
ifunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOprfunctional_3_transformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02k
ifunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpί
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/subSubqfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0dfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2`
^functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/subΦ
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2dfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0bfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2b
`functional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1ξ
`functional_3/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOpifunctional_3_transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02b
`functional_3/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpγ
Qfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/einsum/EinsumEinsumdfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0hfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2S
Qfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/einsum/EinsumΜ
Vfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOp_functional_3_transformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02X
Vfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp
Gfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/addAddV2Zfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum:output:0^functional_3/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2I
Gfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/addΫ
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/Pow/yω
Gfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/PowPowKfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Rfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2I
Gfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/PowΫ
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul/xω
Gfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mulMulRfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul/x:output:0Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2I
Gfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mulτ
Gfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/addAddV2Kfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2I
Gfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/addί
Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2M
Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_1/x?
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_1MulTfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_1/x:output:0Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_1ͺ
Hfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/TanhTanhMfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2J
Hfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/Tanhί
Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2M
Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/add_1/x
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/add_1AddV2Tfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/add_1/x:output:0Lfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/add_1ί
Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2M
Kfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_2/x
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_2MulTfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_2/x:output:0Mfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_2ψ
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_3MulKfunctional_3/transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Mfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_3ά
Zfunctional_3/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOpcfunctional_3_transformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02\
Zfunctional_3/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpΊ
Kfunctional_3/transformer_encoder_1/transformer/layer_0/output/einsum/EinsumEinsumMfunctional_3/transformer_encoder_1/transformer/layer_0/activation_1/mul_3:z:0bfunctional_3/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2M
Kfunctional_3/transformer_encoder_1/transformer/layer_0/output/einsum/EinsumΊ
Pfunctional_3/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpReadVariableOpYfunctional_3_transformer_encoder_1_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02R
Pfunctional_3/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpώ
Afunctional_3/transformer_encoder_1/transformer/layer_0/output/addAddV2Tfunctional_3/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum:output:0Xfunctional_3/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2C
Afunctional_3/transformer_encoder_1/transformer/layer_0/output/add¨
Ifunctional_3/transformer_encoder_1/transformer/layer_0/dropout_5/IdentityIdentityEfunctional_3/transformer_encoder_1/transformer/layer_0/output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Ifunctional_3/transformer_encoder_1/transformer/layer_0/dropout_5/Identityώ
<functional_3/transformer_encoder_1/transformer/layer_0/add_1AddV2Rfunctional_3/transformer_encoder_1/transformer/layer_0/dropout_5/Identity:output:0dfunctional_3/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2>
<functional_3/transformer_encoder_1/transformer/layer_0/add_1
gfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2i
gfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesΊ
Ufunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanMean@functional_3/transformer_encoder_1/transformer/layer_0/add_1:z:0pfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2W
Ufunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanν
]functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradient^functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2_
]functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradientΖ
bfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference@functional_3/transformer_encoder_1/transformer/layer_0/add_1:z:0ffunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2d
bfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference€
kfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2m
kfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesμ
Yfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceMeanffunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0tfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2[
Yfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceω
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2Z
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/yΏ
Vfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/addAddV2bfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance:output:0afunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2X
Vfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/addΨ
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtZfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrtω
efunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpnfunctional_3_transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02g
efunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpΓ
Vfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mulMul\functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0mfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2X
Vfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul@functional_3/transformer_encoder_1/transformer/layer_0/add_1:z:0Zfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1Ά
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2Mul^functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0Zfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2ν
afunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOpjfunctional_3_transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02c
afunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpΏ
Vfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/subSubifunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0\functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2X
Vfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/subΆ
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2\functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Zfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xfunctional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1Χ
?functional_3/transformer_encoder_1/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2A
?functional_3/transformer_encoder_1/lambda_1/strided_slice/stackΫ
Afunctional_3/transformer_encoder_1/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2C
Afunctional_3/transformer_encoder_1/lambda_1/strided_slice/stack_1Ϋ
Afunctional_3/transformer_encoder_1/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2C
Afunctional_3/transformer_encoder_1/lambda_1/strided_slice/stack_2΄
9functional_3/transformer_encoder_1/lambda_1/strided_sliceStridedSlice\functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0Hfunctional_3/transformer_encoder_1/lambda_1/strided_slice/stack:output:0Jfunctional_3/transformer_encoder_1/lambda_1/strided_slice/stack_1:output:0Jfunctional_3/transformer_encoder_1/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2;
9functional_3/transformer_encoder_1/lambda_1/strided_slice
3functional_3/transformer_encoder_1/lambda_1/SqueezeSqueezeBfunctional_3/transformer_encoder_1/lambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
25
3functional_3/transformer_encoder_1/lambda_1/Squeeze©
Ifunctional_3/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOpReadVariableOpRfunctional_3_transformer_encoder_1_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02K
Ifunctional_3/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOpΕ
:functional_3/transformer_encoder_1/pooler_transform/MatMulMatMul<functional_3/transformer_encoder_1/lambda_1/Squeeze:output:0Qfunctional_3/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2<
:functional_3/transformer_encoder_1/pooler_transform/MatMul¨
Jfunctional_3/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpSfunctional_3_transformer_encoder_1_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02L
Jfunctional_3/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpΡ
;functional_3/transformer_encoder_1/pooler_transform/BiasAddBiasAddDfunctional_3/transformer_encoder_1/pooler_transform/MatMul:product:0Rfunctional_3/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2=
;functional_3/transformer_encoder_1/pooler_transform/BiasAddτ
8functional_3/transformer_encoder_1/pooler_transform/TanhTanhDfunctional_3/transformer_encoder_1/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2:
8functional_3/transformer_encoder_1/pooler_transform/Tanh
IdentityIdentity<functional_3/transformer_encoder_1/pooler_transform/Tanh:y:0*
T0*'
_output_shapes
:?????????2

IdentityΑ

Identity_1Identity\functional_3/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????::::::::::::::::::::::::` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
Ό

I__inference_type_embeddings_layer_call_and_return_conditional_losses_4559

inputs"
matmul_readvariableop_resource
identityq
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapek
ReshapeReshapeinputsReshape/shape:output:0*
T0*#
_output_shapes
:?????????2	
Reshapei
one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
one_hot/on_valuek
one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
one_hot/off_value`
one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
one_hot/depthΉ
one_hotOneHotReshape:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2	
one_hot
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOp}
MatMulMatMulone_hot:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMulD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapel
concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2
concat/values_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis
concatConcatV2Shape:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat
	Reshape_1ReshapeMatMul:product:0concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1s
IdentityIdentityReshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????::X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
ύ
ΐ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_4603

inputs)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2 
moments/mean/reduction_indices₯
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2$
"moments/variance/reduction_indicesΘ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2
moments/varianceg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΜΌ+2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add}
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1t
IdentityIdentitybatchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????:::\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
Ζ
ϊ
"__inference_signature_wrapper_3346

input_mask
input_type_ids
input_word_ids
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:?????????:??????????????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_19122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids
ς
t
.__inference_type_embeddings_layer_call_fn_4566

inputs
unknown
identity’StatefulPartitionedCallω
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_19972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
₯

I__inference_word_embeddings_layer_call_and_return_conditional_losses_4504

inputs
gather_resource

identity_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapek
ReshapeReshapeinputsReshape/shape:output:0*
T0*#
_output_shapes
:?????????2	
Reshape
GatherResourceGathergather_resourceReshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02
Gatherc
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????2

IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapel
concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2
concat/values_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis
concatConcatV2Shape:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat
	Reshape_1ReshapeIdentity:output:0concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1w

Identity_1IdentityReshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :??????????????????::X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs

w
1__inference_position_embedding_layer_call_fn_4541

inputs
unknown
identity’StatefulPartitionedCallό
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_19672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????????????:22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
ή
ώ
4__inference_transformer_encoder_1_layer_call_fn_4435
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCallΥ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:??????????????????:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_26782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/2
ή
ώ
4__inference_transformer_encoder_1_layer_call_fn_4490
inputs_0
inputs_1
inputs_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21
identity

identity_1’StatefulPartitionedCallΥ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:??????????????????:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_27962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/1:ZV
0
_output_shapes
:??????????????????
"
_user_specified_name
inputs/2
	
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_2496

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
strided_slice~
SqueezeSqueezestrided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
₯

I__inference_word_embeddings_layer_call_and_return_conditional_losses_1932

inputs
gather_resource

identity_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapek
ReshapeReshapeinputsReshape/shape:output:0*
T0*#
_output_shapes
:?????????2	
Reshape
GatherResourceGathergather_resourceReshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02
Gatherc
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????2

IdentityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapel
concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2
concat/values_1\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis
concatConcatV2Shape:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat
	Reshape_1ReshapeIdentity:output:0concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1w

Identity_1IdentityReshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :??????????????????::X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
Ϊ
±
F__inference_functional_3_layer_call_and_return_conditional_losses_3068
input_word_ids

input_mask
input_type_ids
transformer_encoder_1_3018
transformer_encoder_1_3020
transformer_encoder_1_3022
transformer_encoder_1_3024
transformer_encoder_1_3026
transformer_encoder_1_3028
transformer_encoder_1_3030
transformer_encoder_1_3032
transformer_encoder_1_3034
transformer_encoder_1_3036
transformer_encoder_1_3038
transformer_encoder_1_3040
transformer_encoder_1_3042
transformer_encoder_1_3044
transformer_encoder_1_3046
transformer_encoder_1_3048
transformer_encoder_1_3050
transformer_encoder_1_3052
transformer_encoder_1_3054
transformer_encoder_1_3056
transformer_encoder_1_3058
transformer_encoder_1_3060
transformer_encoder_1_3062
identity

identity_1’-transformer_encoder_1/StatefulPartitionedCall	
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idstransformer_encoder_1_3018transformer_encoder_1_3020transformer_encoder_1_3022transformer_encoder_1_3024transformer_encoder_1_3026transformer_encoder_1_3028transformer_encoder_1_3030transformer_encoder_1_3032transformer_encoder_1_3034transformer_encoder_1_3036transformer_encoder_1_3038transformer_encoder_1_3040transformer_encoder_1_3042transformer_encoder_1_3044transformer_encoder_1_3046transformer_encoder_1_3048transformer_encoder_1_3050transformer_encoder_1_3052transformer_encoder_1_3054transformer_encoder_1_3056transformer_encoder_1_3058transformer_encoder_1_3060transformer_encoder_1_3062*%
Tin
2*
Tout
2*
_collective_manager_ids
 *G
_output_shapes5
3:??????????????????:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_27962/
-transformer_encoder_1/StatefulPartitionedCallΊ
IdentityIdentity6transformer_encoder_1/StatefulPartitionedCall:output:1.^transformer_encoder_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

IdentityΛ

Identity_1Identity6transformer_encoder_1/StatefulPartitionedCall:output:0.^transformer_encoder_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*Ε
_input_shapes³
°:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
-transformer_encoder_1/StatefulPartitionedCall-transformer_encoder_1/StatefulPartitionedCall:` \
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_word_ids:\X
0
_output_shapes
:??????????????????
$
_user_specified_name
input_mask:`\
0
_output_shapes
:??????????????????
(
_user_specified_nameinput_type_ids
­=

__inference__traced_save_5143
file_prefix)
%savev2_variable_1_read_readvariableop
9
5savev2_word_embeddings_embeddings_read_readvariableop<
8savev2_position_embedding_embeddings_read_readvariableop9
5savev2_type_embeddings_embeddings_read_readvariableop:
6savev2_embeddings_layer_norm_gamma_read_readvariableop9
5savev2_embeddings_layer_norm_beta_read_readvariableopN
Jsavev2_transformer_layer_0_self_attention_query_kernel_read_readvariableopL
Hsavev2_transformer_layer_0_self_attention_query_bias_read_readvariableopL
Hsavev2_transformer_layer_0_self_attention_key_kernel_read_readvariableopJ
Fsavev2_transformer_layer_0_self_attention_key_bias_read_readvariableopN
Jsavev2_transformer_layer_0_self_attention_value_kernel_read_readvariableopL
Hsavev2_transformer_layer_0_self_attention_value_bias_read_readvariableopY
Usavev2_transformer_layer_0_self_attention_attention_output_kernel_read_readvariableopW
Ssavev2_transformer_layer_0_self_attention_attention_output_bias_read_readvariableopR
Nsavev2_transformer_layer_0_self_attention_layer_norm_gamma_read_readvariableopQ
Msavev2_transformer_layer_0_self_attention_layer_norm_beta_read_readvariableopF
Bsavev2_transformer_layer_0_intermediate_kernel_read_readvariableopD
@savev2_transformer_layer_0_intermediate_bias_read_readvariableop@
<savev2_transformer_layer_0_output_kernel_read_readvariableop>
:savev2_transformer_layer_0_output_bias_read_readvariableopJ
Fsavev2_transformer_layer_0_output_layer_norm_gamma_read_readvariableopI
Esavev2_transformer_layer_0_output_layer_norm_beta_read_readvariableop6
2savev2_pooler_transform_kernel_read_readvariableop4
0savev2_pooler_transform_bias_read_readvariableop
savev2_const

identity_1’MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Const
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_412d7e4c86aa4f2385dc73fa53075ee6/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameπ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueψBυB(do_lower_case/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesΊ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0%savev2_variable_1_read_readvariableop5savev2_word_embeddings_embeddings_read_readvariableop8savev2_position_embedding_embeddings_read_readvariableop5savev2_type_embeddings_embeddings_read_readvariableop6savev2_embeddings_layer_norm_gamma_read_readvariableop5savev2_embeddings_layer_norm_beta_read_readvariableopJsavev2_transformer_layer_0_self_attention_query_kernel_read_readvariableopHsavev2_transformer_layer_0_self_attention_query_bias_read_readvariableopHsavev2_transformer_layer_0_self_attention_key_kernel_read_readvariableopFsavev2_transformer_layer_0_self_attention_key_bias_read_readvariableopJsavev2_transformer_layer_0_self_attention_value_kernel_read_readvariableopHsavev2_transformer_layer_0_self_attention_value_bias_read_readvariableopUsavev2_transformer_layer_0_self_attention_attention_output_kernel_read_readvariableopSsavev2_transformer_layer_0_self_attention_attention_output_bias_read_readvariableopNsavev2_transformer_layer_0_self_attention_layer_norm_gamma_read_readvariableopMsavev2_transformer_layer_0_self_attention_layer_norm_beta_read_readvariableopBsavev2_transformer_layer_0_intermediate_kernel_read_readvariableop@savev2_transformer_layer_0_intermediate_bias_read_readvariableop<savev2_transformer_layer_0_output_kernel_read_readvariableop:savev2_transformer_layer_0_output_bias_read_readvariableopFsavev2_transformer_layer_0_output_layer_norm_gamma_read_readvariableopEsavev2_transformer_layer_0_output_layer_norm_beta_read_readvariableop2savev2_pooler_transform_kernel_read_readvariableop0savev2_pooler_transform_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2
2
SaveV2Ί
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes‘
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*κ
_input_shapesΨ
Υ: : :d:	:::::::::::::: : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :$ 

_output_shapes

:d:%!

_output_shapes
:	:$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::($
"
_output_shapes
::$ 

_output_shapes

::(	$
"
_output_shapes
::$
 

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::($
"
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
₯
²
J__inference_pooler_transform_layer_call_and_return_conditional_losses_2529

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
‘
ξ
2__inference_transformer/layer_0_layer_call_fn_4955
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity’StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_23762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*
_input_shapes
:??????????????????:'???????????????????????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0:gc
=
_output_shapes+
):'???????????????????????????
"
_user_specified_name
inputs/1
	
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_5011

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
strided_slice~
SqueezeSqueezestrided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
ϊ
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_4629

inputs

identity_1g
IdentityIdentityinputs*
T0*4
_output_shapes"
 :??????????????????2

Identityv

Identity_1IdentityIdentity:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :??????????????????:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs"ΈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ι
serving_default΅
J

input_mask<
serving_default_input_mask:0??????????????????
R
input_type_ids@
 serving_default_input_type_ids:0??????????????????
R
input_word_ids@
 serving_default_input_word_ids:0??????????????????I
transformer_encoder_10
StatefulPartitionedCall:0?????????X
transformer_encoder_1_1=
StatefulPartitionedCall:1??????????????????tensorflow/serving/predict2/

asset_path_initializer:0uncased_vocab.txt:Θ¨

layer-0
layer-1
layer-2
layer_with_weights-0
layer-3

vocab_file
do_lower_case
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
+°&call_and_return_all_conditional_losses
±__call__
²_default_save_signature"γ
_tf_keras_networkΗ{"class_name": "Functional", "name": "functional_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "functional_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}, "name": "input_word_ids", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}, "name": "input_mask", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}, "name": "input_type_ids", "inbound_nodes": []}, {"class_name": "Text>TransformerEncoder", "config": {"vocab_size": 100, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 128, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "name": "transformer_encoder_1", "inbound_nodes": [[["input_word_ids", 0, 0, {}], ["input_mask", 0, 0, {}], ["input_type_ids", 0, 0, {}]]]}], "input_layers": [["input_word_ids", 0, 0], ["input_mask", 0, 0], ["input_type_ids", 0, 0]], "output_layers": [["transformer_encoder_1", 1, 1], ["transformer_encoder_1", 1, 0]]}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "functional_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}, "name": "input_word_ids", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}, "name": "input_mask", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}, "name": "input_type_ids", "inbound_nodes": []}, {"class_name": "Text>TransformerEncoder", "config": {"vocab_size": 100, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 128, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "name": "transformer_encoder_1", "inbound_nodes": [[["input_word_ids", 0, 0, {}], ["input_mask", 0, 0, {}], ["input_type_ids", 0, 0, {}]]]}], "input_layers": [["input_word_ids", 0, 0], ["input_mask", 0, 0], ["input_type_ids", 0, 0]], "output_layers": [["transformer_encoder_1", 1, 1], ["transformer_encoder_1", 1, 0]]}}}
ω"φ
_tf_keras_input_layerΦ{"class_name": "InputLayer", "name": "input_word_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}}
ρ"ξ
_tf_keras_input_layerΞ{"class_name": "InputLayer", "name": "input_mask", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}}
ω"φ
_tf_keras_input_layerΦ{"class_name": "InputLayer", "name": "input_type_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}}

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	variables
regularization_losses
trainable_variables
	keras_api
+³&call_and_return_all_conditional_losses
΄__call__"Α
_tf_keras_network₯{"class_name": "Text>TransformerEncoder", "name": "transformer_encoder_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"vocab_size": 100, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 128, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "TransformerEncoder", "config": {"vocab_size": 100, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 128, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}}}
* 
:
 2Variable
Φ
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322
23"
trackable_list_wrapper
 "
trackable_list_wrapper
Ξ
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322"
trackable_list_wrapper
Ξ
4non_trainable_variables
5layer_metrics

6layers
7metrics
	variables
regularization_losses
8layer_regularization_losses
	trainable_variables
±__call__
²_default_save_signature
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
-
΅serving_default"
signature_map
ω"φ
_tf_keras_input_layerΦ{"class_name": "InputLayer", "name": "input_word_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}}
ϊ

embeddings
9	variables
:regularization_losses
;trainable_variables
<	keras_api
+Ά&call_and_return_all_conditional_losses
·__call__"Ω
_tf_keras_layerΏ{"class_name": "Text>OnDeviceEmbedding", "name": "word_embeddings", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "word_embeddings", "trainable": true, "dtype": "float32", "vocab_size": 100, "embedding_width": 16, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "__passive_serialization__": true}, "use_one_hot": false}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
ω"φ
_tf_keras_input_layerΦ{"class_name": "InputLayer", "name": "input_type_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}}
τ

embeddings
_position_embeddings
=	variables
>regularization_losses
?trainable_variables
@	keras_api
+Έ&call_and_return_all_conditional_losses
Ή__call__"Ή
_tf_keras_layer{"class_name": "Text>PositionEmbedding", "name": "position_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "position_embedding", "trainable": true, "dtype": "float32", "max_sequence_length": 128, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "use_dynamic_slicing": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
ψ

embeddings
A	variables
Bregularization_losses
Ctrainable_variables
D	keras_api
+Ί&call_and_return_all_conditional_losses
»__call__"Χ
_tf_keras_layer½{"class_name": "Text>OnDeviceEmbedding", "name": "type_embeddings", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "type_embeddings", "trainable": true, "dtype": "float32", "vocab_size": 16, "embedding_width": 16, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "__passive_serialization__": true}, "use_one_hot": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
ρ
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
+Ό&call_and_return_all_conditional_losses
½__call__"ΰ
_tf_keras_layerΖ{"class_name": "Add", "name": "add_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add_1", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}]}
ε
Iaxis
	 gamma
!beta
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
+Ύ&call_and_return_all_conditional_losses
Ώ__call__"΅
_tf_keras_layer{"class_name": "LayerNormalization", "name": "embeddings/layer_norm", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "embeddings/layer_norm", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-12, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
η
N	variables
Oregularization_losses
Ptrainable_variables
Q	keras_api
+ΐ&call_and_return_all_conditional_losses
Α__call__"Φ
_tf_keras_layerΌ{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ρ"ξ
_tf_keras_input_layerΞ{"class_name": "InputLayer", "name": "input_mask", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}}
ί
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
+Β&call_and_return_all_conditional_losses
Γ__call__"Ξ
_tf_keras_layer΄{"class_name": "Text>SelfAttentionMask", "name": "self_attention_mask_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "self_attention_mask_1", "trainable": true, "dtype": "float32"}}


V_attention_layer
W_attention_output_dense
X_attention_dropout
Y_attention_layer_norm
Z_intermediate_dense
"[_intermediate_activation_layer
\_output_dense
]_output_dropout
^_output_layer_norm
_	variables
`regularization_losses
atrainable_variables
b	keras_api
+Δ&call_and_return_all_conditional_losses
Ε__call__"©
_tf_keras_layer{"class_name": "Text>Transformer", "name": "transformer/layer_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "transformer/layer_0", "trainable": true, "dtype": "float32", "num_attention_heads": 2, "intermediate_size": 32, "intermediate_activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "output_range": null, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, null]}]}
υ
c	variables
dregularization_losses
etrainable_variables
f	keras_api
+Ζ&call_and_return_all_conditional_losses
Η__call__"δ
_tf_keras_layerΚ{"class_name": "Lambda", "name": "lambda_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAABTAAAAcyQAAAB0AGoBfABkAGQAhQJkAWQChQJkAGQAhQJmAxkAZAJk\nA40CUwApBE7pAAAAAOkBAAAAKQHaBGF4aXMpAtoCdGbaB3NxdWVlemUpAdoBeKkAcgcAAAD6ZS9o\nb21lL3h3bGkvcmVwby9saWJlcnQtdGYyX3RydW5rL2xpYmVydC10ZjIvc3JjL29mZmljaWFsL25s\ncC9tb2RlbGluZy9uZXR3b3Jrcy90cmFuc2Zvcm1lcl9lbmNvZGVyLnB52gg8bGFtYmRhPsgAAADz\nAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "official.nlp.modeling.networks.transformer_encoder", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
£

2kernel
3bias
g	variables
hregularization_losses
itrainable_variables
j	keras_api
+Θ&call_and_return_all_conditional_losses
Ι__call__"ό
_tf_keras_layerβ{"class_name": "Dense", "name": "pooler_transform", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pooler_transform", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
Ξ
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322"
trackable_list_wrapper
 "
trackable_list_wrapper
Ξ
0
1
2
 3
!4
"5
#6
$7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019
120
221
322"
trackable_list_wrapper
°
knon_trainable_variables
llayer_metrics

mlayers
nmetrics
	variables
regularization_losses
olayer_regularization_losses
trainable_variables
΄__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
,:*d2word_embeddings/embeddings
0:.	2position_embedding/embeddings
,:*2type_embeddings/embeddings
):'2embeddings/layer_norm/gamma
(:&2embeddings/layer_norm/beta
E:C2/transformer/layer_0/self_attention/query/kernel
?:=2-transformer/layer_0/self_attention/query/bias
C:A2-transformer/layer_0/self_attention/key/kernel
=:;2+transformer/layer_0/self_attention/key/bias
E:C2/transformer/layer_0/self_attention/value/kernel
?:=2-transformer/layer_0/self_attention/value/bias
P:N2:transformer/layer_0/self_attention/attention_output/kernel
F:D28transformer/layer_0/self_attention/attention_output/bias
A:?23transformer/layer_0/self_attention_layer_norm/gamma
@:>22transformer/layer_0/self_attention_layer_norm/beta
9:7 2'transformer/layer_0/intermediate/kernel
3:1 2%transformer/layer_0/intermediate/bias
3:1 2!transformer/layer_0/output/kernel
-:+2transformer/layer_0/output/bias
9:72+transformer/layer_0/output_layer_norm/gamma
8:62*transformer/layer_0/output_layer_norm/beta
):'2pooler_transform/kernel
#:!2pooler_transform/bias
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
°
pnon_trainable_variables
qlayer_metrics

rlayers
smetrics
9	variables
:regularization_losses
tlayer_regularization_losses
;trainable_variables
·__call__
+Ά&call_and_return_all_conditional_losses
'Ά"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
°
unon_trainable_variables
vlayer_metrics

wlayers
xmetrics
=	variables
>regularization_losses
ylayer_regularization_losses
?trainable_variables
Ή__call__
+Έ&call_and_return_all_conditional_losses
'Έ"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
°
znon_trainable_variables
{layer_metrics

|layers
}metrics
A	variables
Bregularization_losses
~layer_regularization_losses
Ctrainable_variables
»__call__
+Ί&call_and_return_all_conditional_losses
'Ί"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΄
non_trainable_variables
layer_metrics
layers
metrics
E	variables
Fregularization_losses
 layer_regularization_losses
Gtrainable_variables
½__call__
+Ό&call_and_return_all_conditional_losses
'Ό"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
΅
non_trainable_variables
layer_metrics
layers
metrics
J	variables
Kregularization_losses
 layer_regularization_losses
Ltrainable_variables
Ώ__call__
+Ύ&call_and_return_all_conditional_losses
'Ύ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
non_trainable_variables
layer_metrics
layers
metrics
N	variables
Oregularization_losses
 layer_regularization_losses
Ptrainable_variables
Α__call__
+ΐ&call_and_return_all_conditional_losses
'ΐ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
non_trainable_variables
layer_metrics
layers
metrics
R	variables
Sregularization_losses
 layer_regularization_losses
Ttrainable_variables
Γ__call__
+Β&call_and_return_all_conditional_losses
'Β"call_and_return_conditional_losses"
_generic_user_object


_query_dense

_key_dense
_value_dense
_masked_softmax
_dropout_layer
W_output_dense
	variables
regularization_losses
trainable_variables
	keras_api
+Κ&call_and_return_all_conditional_losses
Λ__call__"
_tf_keras_layerζ{"class_name": "Text>MultiHeadAttention", "name": "self_attention", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "self_attention", "trainable": true, "dtype": "float32", "num_heads": 2, "key_size": 8, "value_size": 8, "dropout": 0.1, "use_bias": true, "output_shape": null, "attention_axes": {"class_name": "__tuple__", "items": [1]}, "return_attention_scores": false, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}]}
ώ
partial_output_shape
full_output_shape

(kernel
)bias
	variables
regularization_losses
 trainable_variables
‘	keras_api
+Μ&call_and_return_all_conditional_losses
Ν__call__" 
_tf_keras_layer{"class_name": "EinsumDense", "name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 16], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 2, 8]}}
λ
’	variables
£regularization_losses
€trainable_variables
₯	keras_api
+Ξ&call_and_return_all_conditional_losses
Ο__call__"Φ
_tf_keras_layerΌ{"class_name": "Dropout", "name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ς
	¦axis
	*gamma
+beta
§	variables
¨regularization_losses
©trainable_variables
ͺ	keras_api
+Π&call_and_return_all_conditional_losses
Ρ__call__"½
_tf_keras_layer£{"class_name": "LayerNormalization", "name": "self_attention_layer_norm", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "self_attention_layer_norm", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-12, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
ύ

,kernel
,_kernel
-bias
	-_bias
«	variables
¬regularization_losses
­trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
Σ__call__"Ί
_tf_keras_layer {"class_name": "Text>DenseEinsum", "name": "intermediate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "intermediate", "trainable": true, "dtype": "float32", "output_shape": {"class_name": "__tuple__", "items": [32]}, "num_summed_dimensions": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
ΰ
―	variables
°regularization_losses
±trainable_variables
²	keras_api
+Τ&call_and_return_all_conditional_losses
Υ__call__"Λ
_tf_keras_layer±{"class_name": "Activation", "name": "activation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "Text>gelu"}}
ρ

.kernel
._kernel
/bias
	/_bias
³	variables
΄regularization_losses
΅trainable_variables
Ά	keras_api
+Φ&call_and_return_all_conditional_losses
Χ__call__"?
_tf_keras_layer{"class_name": "Text>DenseEinsum", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "output_shape": {"class_name": "__tuple__", "items": [16]}, "num_summed_dimensions": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 32]}}
λ
·	variables
Έregularization_losses
Ήtrainable_variables
Ί	keras_api
+Ψ&call_and_return_all_conditional_losses
Ω__call__"Φ
_tf_keras_layerΌ{"class_name": "Dropout", "name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
β
	»axis
	0gamma
1beta
Ό	variables
½regularization_losses
Ύtrainable_variables
Ώ	keras_api
+Ϊ&call_and_return_all_conditional_losses
Ϋ__call__"­
_tf_keras_layer{"class_name": "LayerNormalization", "name": "output_layer_norm", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output_layer_norm", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-12, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}

"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115"
trackable_list_wrapper
 "
trackable_list_wrapper

"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115"
trackable_list_wrapper
΅
ΐnon_trainable_variables
Αlayer_metrics
Βlayers
Γmetrics
_	variables
`regularization_losses
 Δlayer_regularization_losses
atrainable_variables
Ε__call__
+Δ&call_and_return_all_conditional_losses
'Δ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
΅
Εnon_trainable_variables
Ζlayer_metrics
Ηlayers
Θmetrics
c	variables
dregularization_losses
 Ιlayer_regularization_losses
etrainable_variables
Η__call__
+Ζ&call_and_return_all_conditional_losses
'Ζ"call_and_return_conditional_losses"
_generic_user_object
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
΅
Κnon_trainable_variables
Λlayer_metrics
Μlayers
Νmetrics
g	variables
hregularization_losses
 Ξlayer_regularization_losses
itrainable_variables
Ι__call__
+Θ&call_and_return_all_conditional_losses
'Θ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ι
Οpartial_output_shape
Πfull_output_shape

"kernel
#bias
Ρ	variables
?regularization_losses
Σtrainable_variables
Τ	keras_api
+ά&call_and_return_all_conditional_losses
έ__call__"
_tf_keras_layerρ{"class_name": "EinsumDense", "name": "query", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "query", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 8], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
ε
Υpartial_output_shape
Φfull_output_shape

$kernel
%bias
Χ	variables
Ψregularization_losses
Ωtrainable_variables
Ϊ	keras_api
+ή&call_and_return_all_conditional_losses
ί__call__"
_tf_keras_layerν{"class_name": "EinsumDense", "name": "key", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "key", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 8], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
ι
Ϋpartial_output_shape
άfull_output_shape

&kernel
'bias
έ	variables
ήregularization_losses
ίtrainable_variables
ΰ	keras_api
+ΰ&call_and_return_all_conditional_losses
α__call__"
_tf_keras_layerρ{"class_name": "EinsumDense", "name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 8], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
Ν
α_mask_expansion_axes
β	variables
γregularization_losses
δtrainable_variables
ε	keras_api
+β&call_and_return_all_conditional_losses
γ__call__"
_tf_keras_layer{"class_name": "Text>MaskedSoftmax", "name": "masked_softmax_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "masked_softmax_1", "trainable": true, "dtype": "float32", "mask_expansion_axes": [1], "normalization_axes": {"class_name": "__tuple__", "items": [3]}}}
λ
ζ	variables
ηregularization_losses
θtrainable_variables
ι	keras_api
+δ&call_and_return_all_conditional_losses
ε__call__"Φ
_tf_keras_layerΌ{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
X
"0
#1
$2
%3
&4
'5
(6
)7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
"0
#1
$2
%3
&4
'5
(6
)7"
trackable_list_wrapper
Έ
κnon_trainable_variables
λlayer_metrics
μlayers
νmetrics
	variables
regularization_losses
 ξlayer_regularization_losses
trainable_variables
Λ__call__
+Κ&call_and_return_all_conditional_losses
'Κ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
Έ
οnon_trainable_variables
πlayer_metrics
ρlayers
ςmetrics
	variables
regularization_losses
 σlayer_regularization_losses
 trainable_variables
Ν__call__
+Μ&call_and_return_all_conditional_losses
'Μ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
τnon_trainable_variables
υlayer_metrics
φlayers
χmetrics
’	variables
£regularization_losses
 ψlayer_regularization_losses
€trainable_variables
Ο__call__
+Ξ&call_and_return_all_conditional_losses
'Ξ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
Έ
ωnon_trainable_variables
ϊlayer_metrics
ϋlayers
όmetrics
§	variables
¨regularization_losses
 ύlayer_regularization_losses
©trainable_variables
Ρ__call__
+Π&call_and_return_all_conditional_losses
'Π"call_and_return_conditional_losses"
_generic_user_object
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
Έ
ώnon_trainable_variables
?layer_metrics
layers
metrics
«	variables
¬regularization_losses
 layer_regularization_losses
­trainable_variables
Σ__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
layers
metrics
―	variables
°regularization_losses
 layer_regularization_losses
±trainable_variables
Υ__call__
+Τ&call_and_return_all_conditional_losses
'Τ"call_and_return_conditional_losses"
_generic_user_object
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
layers
metrics
³	variables
΄regularization_losses
 layer_regularization_losses
΅trainable_variables
Χ__call__
+Φ&call_and_return_all_conditional_losses
'Φ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
layers
metrics
·	variables
Έregularization_losses
 layer_regularization_losses
Ήtrainable_variables
Ω__call__
+Ψ&call_and_return_all_conditional_losses
'Ψ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
layers
metrics
Ό	variables
½regularization_losses
 layer_regularization_losses
Ύtrainable_variables
Ϋ__call__
+Ϊ&call_and_return_all_conditional_losses
'Ϊ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
_
V0
W1
X2
Y3
Z4
[5
\6
]7
^8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
layers
metrics
Ρ	variables
?regularization_losses
 layer_regularization_losses
Σtrainable_variables
έ__call__
+ά&call_and_return_all_conditional_losses
'ά"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
Έ
non_trainable_variables
layer_metrics
layers
metrics
Χ	variables
Ψregularization_losses
  layer_regularization_losses
Ωtrainable_variables
ί__call__
+ή&call_and_return_all_conditional_losses
'ή"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
Έ
‘non_trainable_variables
’layer_metrics
£layers
€metrics
έ	variables
ήregularization_losses
 ₯layer_regularization_losses
ίtrainable_variables
α__call__
+ΰ&call_and_return_all_conditional_losses
'ΰ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
¦non_trainable_variables
§layer_metrics
¨layers
©metrics
β	variables
γregularization_losses
 ͺlayer_regularization_losses
δtrainable_variables
γ__call__
+β&call_and_return_all_conditional_losses
'β"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
«non_trainable_variables
¬layer_metrics
­layers
?metrics
ζ	variables
ηregularization_losses
 ―layer_regularization_losses
θtrainable_variables
ε__call__
+δ&call_and_return_all_conditional_losses
'δ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
O
0
1
2
3
4
W5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ζ2γ
F__inference_functional_3_layer_call_and_return_conditional_losses_3808
F__inference_functional_3_layer_call_and_return_conditional_losses_3591
F__inference_functional_3_layer_call_and_return_conditional_losses_3013
F__inference_functional_3_layer_call_and_return_conditional_losses_3068ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ϊ2χ
+__inference_functional_3_layer_call_fn_3918
+__inference_functional_3_layer_call_fn_3289
+__inference_functional_3_layer_call_fn_3179
+__inference_functional_3_layer_call_fn_3863ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ψ2Υ
__inference__wrapped_model_1912±
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ * ’

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
2
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4380
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2547
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2610
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4163ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
4__inference_transformer_encoder_1_layer_call_fn_2729
4__inference_transformer_encoder_1_layer_call_fn_2847
4__inference_transformer_encoder_1_layer_call_fn_4435
4__inference_transformer_encoder_1_layer_call_fn_4490ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
RBP
"__inference_signature_wrapper_3346
input_maskinput_type_idsinput_word_ids
σ2π
I__inference_word_embeddings_layer_call_and_return_conditional_losses_4504’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ψ2Υ
.__inference_word_embeddings_layer_call_fn_4511’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φ2σ
L__inference_position_embedding_layer_call_and_return_conditional_losses_4534’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ϋ2Ψ
1__inference_position_embedding_layer_call_fn_4541’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
σ2π
I__inference_type_embeddings_layer_call_and_return_conditional_losses_4559’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ψ2Υ
.__inference_type_embeddings_layer_call_fn_4566’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ι2ζ
?__inference_add_1_layer_call_and_return_conditional_losses_4574’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ξ2Λ
$__inference_add_1_layer_call_fn_4581’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ω2φ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_4603’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ή2Ϋ
4__inference_embeddings/layer_norm_layer_call_fn_4612’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Δ2Α
C__inference_dropout_1_layer_call_and_return_conditional_losses_4629
C__inference_dropout_1_layer_call_and_return_conditional_losses_4624΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
(__inference_dropout_1_layer_call_fn_4634
(__inference_dropout_1_layer_call_fn_4639΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ω2φ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_4676’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ή2Ϋ
4__inference_self_attention_mask_1_layer_call_fn_4682’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Χ2Τ
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4810
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4917³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
‘2
2__inference_transformer/layer_0_layer_call_fn_4993
2__inference_transformer/layer_0_layer_call_fn_4955³
ͺ²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ξ2Λ
B__inference_lambda_1_layer_call_and_return_conditional_losses_5011
B__inference_lambda_1_layer_call_and_return_conditional_losses_5002ΐ
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
2
'__inference_lambda_1_layer_call_fn_5016
'__inference_lambda_1_layer_call_fn_5021ΐ
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
τ2ρ
J__inference_pooler_transform_layer_call_and_return_conditional_losses_5032’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ω2Φ
/__inference_pooler_transform_layer_call_fn_5041’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ο2ΜΙ
ΐ²Ό
FullArgSpec;
args30
jself
jinputs
jattention_mask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ο2ΜΙ
ΐ²Ό
FullArgSpec;
args30
jself
jinputs
jattention_mask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ί2·΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ί2·΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ί2·΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ί2·΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΅2²―
¦²’
FullArgSpec%
args
jself
jscores
jmask
varargs
 
varkw
 
defaults’

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΅2²―
¦²’
FullArgSpec%
args
jself
jscores
jmask
varargs
 
varkw
 
defaults’

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ί2·΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ί2·΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
__inference__wrapped_model_1912τ !"#$%&'()*+,-./0123¬’¨
 ’

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
ͺ "©ͺ₯
H
transformer_encoder_1/,
transformer_encoder_1?????????
Y
transformer_encoder_1_1>;
transformer_encoder_1_1??????????????????₯
?__inference_add_1_layer_call_and_return_conditional_losses_4574αͺ’¦
’

/,
inputs/0??????????????????
/,
inputs/1??????????????????
/,
inputs/2??????????????????
ͺ "2’/
(%
0??????????????????
 ύ
$__inference_add_1_layer_call_fn_4581Τͺ’¦
’

/,
inputs/0??????????????????
/,
inputs/1??????????????????
/,
inputs/2??????????????????
ͺ "%"??????????????????½
C__inference_dropout_1_layer_call_and_return_conditional_losses_4624v@’=
6’3
-*
inputs??????????????????
p
ͺ "2’/
(%
0??????????????????
 ½
C__inference_dropout_1_layer_call_and_return_conditional_losses_4629v@’=
6’3
-*
inputs??????????????????
p 
ͺ "2’/
(%
0??????????????????
 
(__inference_dropout_1_layer_call_fn_4634i@’=
6’3
-*
inputs??????????????????
p
ͺ "%"??????????????????
(__inference_dropout_1_layer_call_fn_4639i@’=
6’3
-*
inputs??????????????????
p 
ͺ "%"??????????????????Ι
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_4603v !<’9
2’/
-*
inputs??????????????????
ͺ "2’/
(%
0??????????????????
 ‘
4__inference_embeddings/layer_norm_layer_call_fn_4612i !<’9
2’/
-*
inputs??????????????????
ͺ "%"??????????????????υ
F__inference_functional_3_layer_call_and_return_conditional_losses_3013ͺ !"#$%&'()*+,-./0123΄’°
¨’€

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
p

 
ͺ "X’U
NK

0/0?????????
*'
0/1??????????????????
 υ
F__inference_functional_3_layer_call_and_return_conditional_losses_3068ͺ !"#$%&'()*+,-./0123΄’°
¨’€

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
p 

 
ͺ "X’U
NK

0/0?????????
*'
0/1??????????????????
 η
F__inference_functional_3_layer_call_and_return_conditional_losses_3591 !"#$%&'()*+,-./0123¦’’
’

+(
inputs/0??????????????????
+(
inputs/1??????????????????
+(
inputs/2??????????????????
p

 
ͺ "X’U
NK

0/0?????????
*'
0/1??????????????????
 η
F__inference_functional_3_layer_call_and_return_conditional_losses_3808 !"#$%&'()*+,-./0123¦’’
’

+(
inputs/0??????????????????
+(
inputs/1??????????????????
+(
inputs/2??????????????????
p 

 
ͺ "X’U
NK

0/0?????????
*'
0/1??????????????????
 Μ
+__inference_functional_3_layer_call_fn_3179 !"#$%&'()*+,-./0123΄’°
¨’€

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
p

 
ͺ "JG

0?????????
(%
1??????????????????Μ
+__inference_functional_3_layer_call_fn_3289 !"#$%&'()*+,-./0123΄’°
¨’€

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
p 

 
ͺ "JG

0?????????
(%
1??????????????????Ύ
+__inference_functional_3_layer_call_fn_3863 !"#$%&'()*+,-./0123¦’’
’

+(
inputs/0??????????????????
+(
inputs/1??????????????????
+(
inputs/2??????????????????
p

 
ͺ "JG

0?????????
(%
1??????????????????Ύ
+__inference_functional_3_layer_call_fn_3918 !"#$%&'()*+,-./0123¦’’
’

+(
inputs/0??????????????????
+(
inputs/1??????????????????
+(
inputs/2??????????????????
p 

 
ͺ "JG

0?????????
(%
1??????????????????³
B__inference_lambda_1_layer_call_and_return_conditional_losses_5002mD’A
:’7
-*
inputs??????????????????

 
p
ͺ "%’"

0?????????
 ³
B__inference_lambda_1_layer_call_and_return_conditional_losses_5011mD’A
:’7
-*
inputs??????????????????

 
p 
ͺ "%’"

0?????????
 
'__inference_lambda_1_layer_call_fn_5016`D’A
:’7
-*
inputs??????????????????

 
p
ͺ "?????????
'__inference_lambda_1_layer_call_fn_5021`D’A
:’7
-*
inputs??????????????????

 
p 
ͺ "?????????ͺ
J__inference_pooler_transform_layer_call_and_return_conditional_losses_5032\23/’,
%’"
 
inputs?????????
ͺ "%’"

0?????????
 
/__inference_pooler_transform_layer_call_fn_5041O23/’,
%’"
 
inputs?????????
ͺ "?????????Ε
L__inference_position_embedding_layer_call_and_return_conditional_losses_4534u<’9
2’/
-*
inputs??????????????????
ͺ "2’/
(%
0??????????????????
 
1__inference_position_embedding_layer_call_fn_4541h<’9
2’/
-*
inputs??????????????????
ͺ "%"??????????????????
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_4676―p’m
f’c
a^
/,
inputs/0??????????????????
+(
inputs/1??????????????????
ͺ ";’8
1.
0'???????????????????????????
 Ϋ
4__inference_self_attention_mask_1_layer_call_fn_4682’p’m
f’c
a^
/,
inputs/0??????????????????
+(
inputs/1??????????????????
ͺ ".+'???????????????????????????Ζ
"__inference_signature_wrapper_3346 !"#$%&'()*+,-./0123Χ’Σ
’ 
ΛͺΗ
;

input_mask-*

input_mask??????????????????
C
input_type_ids1.
input_type_ids??????????????????
C
input_word_ids1.
input_word_ids??????????????????"©ͺ₯
H
transformer_encoder_1/,
transformer_encoder_1?????????
Y
transformer_encoder_1_1>;
transformer_encoder_1_1??????????????????
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4810Κ"#$%&'()*+,-./01’~
w’t
nk
/,
inputs/0??????????????????
85
inputs/1'???????????????????????????
p
ͺ "2’/
(%
0??????????????????
 
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4917Κ"#$%&'()*+,-./01’~
w’t
nk
/,
inputs/0??????????????????
85
inputs/1'???????????????????????????
p 
ͺ "2’/
(%
0??????????????????
 τ
2__inference_transformer/layer_0_layer_call_fn_4955½"#$%&'()*+,-./01’~
w’t
nk
/,
inputs/0??????????????????
85
inputs/1'???????????????????????????
p
ͺ "%"??????????????????τ
2__inference_transformer/layer_0_layer_call_fn_4993½"#$%&'()*+,-./01’~
w’t
nk
/,
inputs/0??????????????????
85
inputs/1'???????????????????????????
p 
ͺ "%"??????????????????ώ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2547ͺ !"#$%&'()*+,-./0123΄’°
¨’€

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
p

 
ͺ "X’U
NK
*'
0/0??????????????????

0/1?????????
 ώ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2610ͺ !"#$%&'()*+,-./0123΄’°
¨’€

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
p 

 
ͺ "X’U
NK
*'
0/0??????????????????

0/1?????????
 π
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4163 !"#$%&'()*+,-./0123¦’’
’

+(
inputs/0??????????????????
+(
inputs/1??????????????????
+(
inputs/2??????????????????
p

 
ͺ "X’U
NK
*'
0/0??????????????????

0/1?????????
 π
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4380 !"#$%&'()*+,-./0123¦’’
’

+(
inputs/0??????????????????
+(
inputs/1??????????????????
+(
inputs/2??????????????????
p 

 
ͺ "X’U
NK
*'
0/0??????????????????

0/1?????????
 Υ
4__inference_transformer_encoder_1_layer_call_fn_2729 !"#$%&'()*+,-./0123΄’°
¨’€

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
p

 
ͺ "JG
(%
0??????????????????

1?????????Υ
4__inference_transformer_encoder_1_layer_call_fn_2847 !"#$%&'()*+,-./0123΄’°
¨’€

1.
input_word_ids??????????????????
-*

input_mask??????????????????
1.
input_type_ids??????????????????
p 

 
ͺ "JG
(%
0??????????????????

1?????????Η
4__inference_transformer_encoder_1_layer_call_fn_4435 !"#$%&'()*+,-./0123¦’’
’

+(
inputs/0??????????????????
+(
inputs/1??????????????????
+(
inputs/2??????????????????
p

 
ͺ "JG
(%
0??????????????????

1?????????Η
4__inference_transformer_encoder_1_layer_call_fn_4490 !"#$%&'()*+,-./0123¦’’
’

+(
inputs/0??????????????????
+(
inputs/1??????????????????
+(
inputs/2??????????????????
p 

 
ͺ "JG
(%
0??????????????????

1?????????Ύ
I__inference_type_embeddings_layer_call_and_return_conditional_losses_4559q8’5
.’+
)&
inputs??????????????????
ͺ "2’/
(%
0??????????????????
 
.__inference_type_embeddings_layer_call_fn_4566d8’5
.’+
)&
inputs??????????????????
ͺ "%"??????????????????Ύ
I__inference_word_embeddings_layer_call_and_return_conditional_losses_4504q8’5
.’+
)&
inputs??????????????????
ͺ "2’/
(%
0??????????????????
 
.__inference_word_embeddings_layer_call_fn_4511d8’5
.’+
)&
inputs??????????????????
ͺ "%"??????????????????