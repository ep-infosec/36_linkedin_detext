??)
??
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
6
Pow
x"T
y"T
z"T"
Ttype:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8??$
d
VariableVarHandleOp*
_output_shapes
: *
dtype0
*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0

W
asset_path_initializerPlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
V
Variable_1/AssignAssignVariableOp
Variable_1asset_path_initializer*
dtype0
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
Y
asset_path_initializer_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
?

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
X
Variable_2/AssignAssignVariableOp
Variable_2asset_path_initializer_1*
dtype0
a
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
?
word_embeddings/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameword_embeddings/embeddings
?
.word_embeddings/embeddings/Read/ReadVariableOpReadVariableOpword_embeddings/embeddings* 
_output_shapes
:
??*
dtype0
?
position_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*.
shared_nameposition_embedding/embeddings
?
1position_embedding/embeddings/Read/ReadVariableOpReadVariableOpposition_embedding/embeddings*
_output_shapes

:*
dtype0
?
type_embeddings/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nametype_embeddings/embeddings
?
.type_embeddings/embeddings/Read/ReadVariableOpReadVariableOptype_embeddings/embeddings*
_output_shapes

:*
dtype0
?
embeddings/layer_norm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameembeddings/layer_norm/gamma
?
/embeddings/layer_norm/gamma/Read/ReadVariableOpReadVariableOpembeddings/layer_norm/gamma*
_output_shapes
:*
dtype0
?
embeddings/layer_norm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameembeddings/layer_norm/beta
?
.embeddings/layer_norm/beta/Read/ReadVariableOpReadVariableOpembeddings/layer_norm/beta*
_output_shapes
:*
dtype0
?
/transformer/layer_0/self_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/transformer/layer_0/self_attention/query/kernel
?
Ctransformer/layer_0/self_attention/query/kernel/Read/ReadVariableOpReadVariableOp/transformer/layer_0/self_attention/query/kernel*"
_output_shapes
:*
dtype0
?
-transformer/layer_0/self_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*>
shared_name/-transformer/layer_0/self_attention/query/bias
?
Atransformer/layer_0/self_attention/query/bias/Read/ReadVariableOpReadVariableOp-transformer/layer_0/self_attention/query/bias*
_output_shapes

:*
dtype0
?
-transformer/layer_0/self_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-transformer/layer_0/self_attention/key/kernel
?
Atransformer/layer_0/self_attention/key/kernel/Read/ReadVariableOpReadVariableOp-transformer/layer_0/self_attention/key/kernel*"
_output_shapes
:*
dtype0
?
+transformer/layer_0/self_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+transformer/layer_0/self_attention/key/bias
?
?transformer/layer_0/self_attention/key/bias/Read/ReadVariableOpReadVariableOp+transformer/layer_0/self_attention/key/bias*
_output_shapes

:*
dtype0
?
/transformer/layer_0/self_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/transformer/layer_0/self_attention/value/kernel
?
Ctransformer/layer_0/self_attention/value/kernel/Read/ReadVariableOpReadVariableOp/transformer/layer_0/self_attention/value/kernel*"
_output_shapes
:*
dtype0
?
-transformer/layer_0/self_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*>
shared_name/-transformer/layer_0/self_attention/value/bias
?
Atransformer/layer_0/self_attention/value/bias/Read/ReadVariableOpReadVariableOp-transformer/layer_0/self_attention/value/bias*
_output_shapes

:*
dtype0
?
:transformer/layer_0/self_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:transformer/layer_0/self_attention/attention_output/kernel
?
Ntransformer/layer_0/self_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp:transformer/layer_0/self_attention/attention_output/kernel*"
_output_shapes
:*
dtype0
?
8transformer/layer_0/self_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8transformer/layer_0/self_attention/attention_output/bias
?
Ltransformer/layer_0/self_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp8transformer/layer_0/self_attention/attention_output/bias*
_output_shapes
:*
dtype0
?
3transformer/layer_0/self_attention_layer_norm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53transformer/layer_0/self_attention_layer_norm/gamma
?
Gtransformer/layer_0/self_attention_layer_norm/gamma/Read/ReadVariableOpReadVariableOp3transformer/layer_0/self_attention_layer_norm/gamma*
_output_shapes
:*
dtype0
?
2transformer/layer_0/self_attention_layer_norm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42transformer/layer_0/self_attention_layer_norm/beta
?
Ftransformer/layer_0/self_attention_layer_norm/beta/Read/ReadVariableOpReadVariableOp2transformer/layer_0/self_attention_layer_norm/beta*
_output_shapes
:*
dtype0
?
'transformer/layer_0/intermediate/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *8
shared_name)'transformer/layer_0/intermediate/kernel
?
;transformer/layer_0/intermediate/kernel/Read/ReadVariableOpReadVariableOp'transformer/layer_0/intermediate/kernel*
_output_shapes

: *
dtype0
?
%transformer/layer_0/intermediate/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%transformer/layer_0/intermediate/bias
?
9transformer/layer_0/intermediate/bias/Read/ReadVariableOpReadVariableOp%transformer/layer_0/intermediate/bias*
_output_shapes
: *
dtype0
?
!transformer/layer_0/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *2
shared_name#!transformer/layer_0/output/kernel
?
5transformer/layer_0/output/kernel/Read/ReadVariableOpReadVariableOp!transformer/layer_0/output/kernel*
_output_shapes

: *
dtype0
?
transformer/layer_0/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!transformer/layer_0/output/bias
?
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
?
?transformer/layer_0/output_layer_norm/gamma/Read/ReadVariableOpReadVariableOp+transformer/layer_0/output_layer_norm/gamma*
_output_shapes
:*
dtype0
?
*transformer/layer_0/output_layer_norm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*transformer/layer_0/output_layer_norm/beta
?
>transformer/layer_0/output_layer_norm/beta/Read/ReadVariableOpReadVariableOp*transformer/layer_0/output_layer_norm/beta*
_output_shapes
:*
dtype0
?
pooler_transform/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_namepooler_transform/kernel
?
+pooler_transform/kernel/Read/ReadVariableOpReadVariableOppooler_transform/kernel*
_output_shapes

:*
dtype0
?
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
4
NoOpNoOp^Variable_1/Assign^Variable_2/Assign
?e
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?d
value?dB?d B?d
?
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
do_lower_case
tokenizer_type
tokenizer_file
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
 
 
 
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	variables
regularization_losses
trainable_variables
	keras_api
FD
VARIABLE_VALUEVariable(do_lower_case/.ATTRIBUTES/VARIABLE_VALUE
 
 
?
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
23
 
?
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
?
5layer_regularization_losses
6non_trainable_variables
	variables
7layer_metrics

8layers
	regularization_losses
9metrics

trainable_variables
 
 
b

embeddings
:	variables
;regularization_losses
<trainable_variables
=	keras_api
 
|

embeddings
_position_embeddings
>	variables
?regularization_losses
@trainable_variables
A	keras_api
b
 
embeddings
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
R
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
q
Jaxis
	!gamma
"beta
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
R
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
 
R
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
?
W_attention_layer
X_attention_output_dense
Y_attention_dropout
Z_attention_layer_norm
[_intermediate_dense
"\_intermediate_activation_layer
]_output_dense
^_output_dropout
__output_layer_norm
`	variables
aregularization_losses
btrainable_variables
c	keras_api
R
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
h

3kernel
4bias
h	variables
iregularization_losses
jtrainable_variables
k	keras_api
?
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
 
?
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
?
llayer_regularization_losses
mnon_trainable_variables
	variables
nlayer_metrics

olayers
regularization_losses
pmetrics
trainable_variables
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
 

0
 

0
1
2
3
 

0
 

0
?
qlayer_regularization_losses
rnon_trainable_variables
:	variables
slayer_metrics

tlayers
;regularization_losses
umetrics
<trainable_variables

0
 

0
?
vlayer_regularization_losses
wnon_trainable_variables
>	variables
xlayer_metrics

ylayers
?regularization_losses
zmetrics
@trainable_variables

 0
 

 0
?
{layer_regularization_losses
|non_trainable_variables
B	variables
}layer_metrics

~layers
Cregularization_losses
metrics
Dtrainable_variables
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
F	variables
?layer_metrics
?layers
Gregularization_losses
?metrics
Htrainable_variables
 

!0
"1
 

!0
"1
?
 ?layer_regularization_losses
?non_trainable_variables
K	variables
?layer_metrics
?layers
Lregularization_losses
?metrics
Mtrainable_variables
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
O	variables
?layer_metrics
?layers
Pregularization_losses
?metrics
Qtrainable_variables
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
S	variables
?layer_metrics
?layers
Tregularization_losses
?metrics
Utrainable_variables
?
?_query_dense
?
_key_dense
?_value_dense
?_masked_softmax
?_dropout_layer
X_output_dense
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

)kernel
*bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
v
	?axis
	+gamma
,beta
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?

-kernel
-_kernel
.bias
	._bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?

/kernel
/_kernel
0bias
	0_bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
v
	?axis
	1gamma
2beta
?	variables
?regularization_losses
?trainable_variables
?	keras_api
v
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
 
v
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215
?
 ?layer_regularization_losses
?non_trainable_variables
`	variables
?layer_metrics
?layers
aregularization_losses
?metrics
btrainable_variables
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
d	variables
?layer_metrics
?layers
eregularization_losses
?metrics
ftrainable_variables

30
41
 

30
41
?
 ?layer_regularization_losses
?non_trainable_variables
h	variables
?layer_metrics
?layers
iregularization_losses
?metrics
jtrainable_variables
 
 
 
^
0
1
2
3
4
5
6
7
8
9
10
11
12
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
?
?partial_output_shape
?full_output_shape

#kernel
$bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

%kernel
&bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

'kernel
(bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
q
?_mask_expansion_axes
?	variables
?regularization_losses
?trainable_variables
?	keras_api
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
8
#0
$1
%2
&3
'4
(5
)6
*7
 
8
#0
$1
%2
&3
'4
(5
)6
*7
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 

)0
*1
 

)0
*1
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 

+0
,1
 

+0
,1
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables

-0
.1
 

-0
.1
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables

/0
01
 

/0
01
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 

10
21
 

10
21
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 
 
?
W0
X1
Y2
Z3
[4
\5
]6
^7
_8
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
#0
$1
 

#0
$1
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 

%0
&1
 

%0
&1
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 

'0
(1
 

'0
(1
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 
 
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
 
 
 
/
?0
?1
?2
?3
?4
X5
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
?
serving_default_input_maskPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?
serving_default_input_type_idsPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?
serving_default_input_word_idsPlaceholder*0
_output_shapes
:??????????????????*
dtype0*%
shape:??????????????????
?

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
GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_3051
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOp.word_embeddings/embeddings/Read/ReadVariableOp1position_embedding/embeddings/Read/ReadVariableOp.type_embeddings/embeddings/Read/ReadVariableOp/embeddings/layer_norm/gamma/Read/ReadVariableOp.embeddings/layer_norm/beta/Read/ReadVariableOpCtransformer/layer_0/self_attention/query/kernel/Read/ReadVariableOpAtransformer/layer_0/self_attention/query/bias/Read/ReadVariableOpAtransformer/layer_0/self_attention/key/kernel/Read/ReadVariableOp?transformer/layer_0/self_attention/key/bias/Read/ReadVariableOpCtransformer/layer_0/self_attention/value/kernel/Read/ReadVariableOpAtransformer/layer_0/self_attention/value/bias/Read/ReadVariableOpNtransformer/layer_0/self_attention/attention_output/kernel/Read/ReadVariableOpLtransformer/layer_0/self_attention/attention_output/bias/Read/ReadVariableOpGtransformer/layer_0/self_attention_layer_norm/gamma/Read/ReadVariableOpFtransformer/layer_0/self_attention_layer_norm/beta/Read/ReadVariableOp;transformer/layer_0/intermediate/kernel/Read/ReadVariableOp9transformer/layer_0/intermediate/bias/Read/ReadVariableOp5transformer/layer_0/output/kernel/Read/ReadVariableOp3transformer/layer_0/output/bias/Read/ReadVariableOp?transformer/layer_0/output_layer_norm/gamma/Read/ReadVariableOp>transformer/layer_0/output_layer_norm/beta/Read/ReadVariableOp+pooler_transform/kernel/Read/ReadVariableOp)pooler_transform/bias/Read/ReadVariableOpConst*%
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
GPU 2J 8? *&
f!R
__inference__traced_save_4852
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariableword_embeddings/embeddingsposition_embedding/embeddingstype_embeddings/embeddingsembeddings/layer_norm/gammaembeddings/layer_norm/beta/transformer/layer_0/self_attention/query/kernel-transformer/layer_0/self_attention/query/bias-transformer/layer_0/self_attention/key/kernel+transformer/layer_0/self_attention/key/bias/transformer/layer_0/self_attention/value/kernel-transformer/layer_0/self_attention/value/bias:transformer/layer_0/self_attention/attention_output/kernel8transformer/layer_0/self_attention/attention_output/bias3transformer/layer_0/self_attention_layer_norm/gamma2transformer/layer_0/self_attention_layer_norm/beta'transformer/layer_0/intermediate/kernel%transformer/layer_0/intermediate/bias!transformer/layer_0/output/kerneltransformer/layer_0/output/bias+transformer/layer_0/output_layer_norm/gamma*transformer/layer_0/output_layer_norm/betapooler_transform/kernelpooler_transform/bias*$
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
GPU 2J 8? *)
f$R"
 __inference__traced_restore_4934??"
?
?
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_1754

inputs)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2$
"moments/variance/reduction_indices?
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
 *̼?+2
batchnorm/add/y?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add}
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1?
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
a
(__inference_dropout_1_layer_call_fn_4339

inputs
identity??StatefulPartitionedCall?
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
GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_17822
StatefulPartitionedCall?
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
?	
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_4716

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1?
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2?
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
?@
?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2252
input_word_ids

input_mask
input_type_ids
word_embeddings_1646
position_embedding_1681
type_embeddings_1711
embeddings_layer_norm_1765
embeddings_layer_norm_1767
transformer_layer_0_2159
transformer_layer_0_2161
transformer_layer_0_2163
transformer_layer_0_2165
transformer_layer_0_2167
transformer_layer_0_2169
transformer_layer_0_2171
transformer_layer_0_2173
transformer_layer_0_2175
transformer_layer_0_2177
transformer_layer_0_2179
transformer_layer_0_2181
transformer_layer_0_2183
transformer_layer_0_2185
transformer_layer_0_2187
transformer_layer_0_2189
pooler_transform_2245
pooler_transform_2247
identity

identity_1??!dropout_1/StatefulPartitionedCall?-embeddings/layer_norm/StatefulPartitionedCall?(pooler_transform/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?+transformer/layer_0/StatefulPartitionedCall?'type_embeddings/StatefulPartitionedCall?'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_word_idsword_embeddings_1646*
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
GPU 2J 8? *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_16372)
'word_embeddings/StatefulPartitionedCall?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_1681*
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
GPU 2J 8? *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_16722,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_type_idstype_embeddings_1711*
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
GPU 2J 8? *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_17022)
'type_embeddings/StatefulPartitionedCall?
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
GPU 2J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_17222
add_1/PartitionedCall?
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0embeddings_layer_norm_1765embeddings_layer_norm_1767*
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
GPU 2J 8? *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_17542/
-embeddings/layer_norm/StatefulPartitionedCall?
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
GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_17822#
!dropout_1/StatefulPartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_18372'
%self_attention_mask_1/PartitionedCall?
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0.self_attention_mask_1/PartitionedCall:output:0transformer_layer_0_2159transformer_layer_0_2161transformer_layer_0_2163transformer_layer_0_2165transformer_layer_0_2167transformer_layer_0_2169transformer_layer_0_2171transformer_layer_0_2173transformer_layer_0_2175transformer_layer_0_2177transformer_layer_0_2179transformer_layer_0_2181transformer_layer_0_2183transformer_layer_0_2185transformer_layer_0_2187transformer_layer_0_2189*
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
GPU 2J 8? *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_19742-
+transformer/layer_0/StatefulPartitionedCall?
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
GPU 2J 8? *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_22012
lambda_1/PartitionedCall?
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0pooler_transform_2245pooler_transform_2247*
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
GPU 2J 8? *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_22342*
(pooler_transform/StatefulPartitionedCall?
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2F
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
?	
?
J__inference_pooler_transform_layer_call_and_return_conditional_losses_2234

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_position_embedding_layer_call_and_return_conditional_losses_4239

inputs
readvariableop_resource
identity??ReadVariableOpD
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
strided_slice/stack_2?
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
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
strided_slice_2/stack_1/1?
strided_slice_2/stack_1Packstrided_slice_1:output:0"strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
BroadcastTo/shape/2?
BroadcastTo/shapePackstrided_slice:output:0strided_slice_1:output:0BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2
BroadcastTo/shape?
BroadcastToBroadcastTostrided_slice_2:output:0BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
BroadcastTo?
IdentityIdentityBroadcastTo:output:0^ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????????????:2 
ReadVariableOpReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
y
?__inference_add_1_layer_call_and_return_conditional_losses_4279
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
?
C
'__inference_lambda_1_layer_call_fn_4726

inputs
identity?
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
GPU 2J 8? *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_22102
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
?
?
I__inference_word_embeddings_layer_call_and_return_conditional_losses_4209

inputs
gather_resource

identity_1??Gatherq
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
Reshape?
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
concat/axis?
concatConcatV2Shape:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat?
	Reshape_1ReshapeIdentity:output:0concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?

Identity_1IdentityReshape_1:output:0^Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :??????????????????:2
GatherGather:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
w
?__inference_add_1_layer_call_and_return_conditional_losses_1722

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
?
?
4__inference_transformer_encoder_1_layer_call_fn_2552
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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_25012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
?
?
I__inference_type_embeddings_layer_call_and_return_conditional_losses_4264

inputs"
matmul_readvariableop_resource
identity??MatMul/ReadVariableOpq
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
 *  ??2
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
one_hot/depth?
one_hotOneHotReshape:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2	
one_hot?
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
concat/axis?
concatConcatV2Shape:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat?
	Reshape_1ReshapeMatMul:product:0concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
?
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_4308

inputs)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2$
"moments/variance/reduction_indices?
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
 *̼?+2
batchnorm/add/y?
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add}
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_1?
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:??????????????????::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?	
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_2201

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1?
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2?
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
?
?
4__inference_transformer_encoder_1_layer_call_fn_2434
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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_23832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
?
?
A__inference_model_1_layer_call_and_return_conditional_losses_2833

inputs
inputs_1
inputs_2
transformer_encoder_1_2783
transformer_encoder_1_2785
transformer_encoder_1_2787
transformer_encoder_1_2789
transformer_encoder_1_2791
transformer_encoder_1_2793
transformer_encoder_1_2795
transformer_encoder_1_2797
transformer_encoder_1_2799
transformer_encoder_1_2801
transformer_encoder_1_2803
transformer_encoder_1_2805
transformer_encoder_1_2807
transformer_encoder_1_2809
transformer_encoder_1_2811
transformer_encoder_1_2813
transformer_encoder_1_2815
transformer_encoder_1_2817
transformer_encoder_1_2819
transformer_encoder_1_2821
transformer_encoder_1_2823
transformer_encoder_1_2825
transformer_encoder_1_2827
identity

identity_1??-transformer_encoder_1/StatefulPartitionedCall?
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2transformer_encoder_1_2783transformer_encoder_1_2785transformer_encoder_1_2787transformer_encoder_1_2789transformer_encoder_1_2791transformer_encoder_1_2793transformer_encoder_1_2795transformer_encoder_1_2797transformer_encoder_1_2799transformer_encoder_1_2801transformer_encoder_1_2803transformer_encoder_1_2805transformer_encoder_1_2807transformer_encoder_1_2809transformer_encoder_1_2811transformer_encoder_1_2813transformer_encoder_1_2815transformer_encoder_1_2817transformer_encoder_1_2819transformer_encoder_1_2821transformer_encoder_1_2823transformer_encoder_1_2825transformer_encoder_1_2827*%
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
GPU 2J 8? *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_23832/
-transformer_encoder_1/StatefulPartitionedCall?
IdentityIdentity6transformer_encoder_1/StatefulPartitionedCall:output:1.^transformer_encoder_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity6transformer_encoder_1/StatefulPartitionedCall:output:0.^transformer_encoder_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
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
?
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_4329

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast?
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
?
?
4__inference_transformer_encoder_1_layer_call_fn_4140
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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_23832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
?
?
A__inference_model_1_layer_call_and_return_conditional_losses_2773
input_word_ids

input_mask
input_type_ids
transformer_encoder_1_2723
transformer_encoder_1_2725
transformer_encoder_1_2727
transformer_encoder_1_2729
transformer_encoder_1_2731
transformer_encoder_1_2733
transformer_encoder_1_2735
transformer_encoder_1_2737
transformer_encoder_1_2739
transformer_encoder_1_2741
transformer_encoder_1_2743
transformer_encoder_1_2745
transformer_encoder_1_2747
transformer_encoder_1_2749
transformer_encoder_1_2751
transformer_encoder_1_2753
transformer_encoder_1_2755
transformer_encoder_1_2757
transformer_encoder_1_2759
transformer_encoder_1_2761
transformer_encoder_1_2763
transformer_encoder_1_2765
transformer_encoder_1_2767
identity

identity_1??-transformer_encoder_1/StatefulPartitionedCall?	
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idstransformer_encoder_1_2723transformer_encoder_1_2725transformer_encoder_1_2727transformer_encoder_1_2729transformer_encoder_1_2731transformer_encoder_1_2733transformer_encoder_1_2735transformer_encoder_1_2737transformer_encoder_1_2739transformer_encoder_1_2741transformer_encoder_1_2743transformer_encoder_1_2745transformer_encoder_1_2747transformer_encoder_1_2749transformer_encoder_1_2751transformer_encoder_1_2753transformer_encoder_1_2755transformer_encoder_1_2757transformer_encoder_1_2759transformer_encoder_1_2761transformer_encoder_1_2763transformer_encoder_1_2765transformer_encoder_1_2767*%
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
GPU 2J 8? *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_25012/
-transformer_encoder_1/StatefulPartitionedCall?
IdentityIdentity6transformer_encoder_1/StatefulPartitionedCall:output:1.^transformer_encoder_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity6transformer_encoder_1/StatefulPartitionedCall:output:0.^transformer_encoder_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
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
?
?
A__inference_model_1_layer_call_and_return_conditional_losses_2718
input_word_ids

input_mask
input_type_ids
transformer_encoder_1_2668
transformer_encoder_1_2670
transformer_encoder_1_2672
transformer_encoder_1_2674
transformer_encoder_1_2676
transformer_encoder_1_2678
transformer_encoder_1_2680
transformer_encoder_1_2682
transformer_encoder_1_2684
transformer_encoder_1_2686
transformer_encoder_1_2688
transformer_encoder_1_2690
transformer_encoder_1_2692
transformer_encoder_1_2694
transformer_encoder_1_2696
transformer_encoder_1_2698
transformer_encoder_1_2700
transformer_encoder_1_2702
transformer_encoder_1_2704
transformer_encoder_1_2706
transformer_encoder_1_2708
transformer_encoder_1_2710
transformer_encoder_1_2712
identity

identity_1??-transformer_encoder_1/StatefulPartitionedCall?	
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idstransformer_encoder_1_2668transformer_encoder_1_2670transformer_encoder_1_2672transformer_encoder_1_2674transformer_encoder_1_2676transformer_encoder_1_2678transformer_encoder_1_2680transformer_encoder_1_2682transformer_encoder_1_2684transformer_encoder_1_2686transformer_encoder_1_2688transformer_encoder_1_2690transformer_encoder_1_2692transformer_encoder_1_2694transformer_encoder_1_2696transformer_encoder_1_2698transformer_encoder_1_2700transformer_encoder_1_2702transformer_encoder_1_2704transformer_encoder_1_2706transformer_encoder_1_2708transformer_encoder_1_2710transformer_encoder_1_2712*%
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
GPU 2J 8? *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_23832/
-transformer_encoder_1/StatefulPartitionedCall?
IdentityIdentity6transformer_encoder_1/StatefulPartitionedCall:output:1.^transformer_encoder_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity6transformer_encoder_1/StatefulPartitionedCall:output:0.^transformer_encoder_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
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
?>
?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2501

inputs
inputs_1
inputs_2
word_embeddings_2443
position_embedding_2446
type_embeddings_2449
embeddings_layer_norm_2453
embeddings_layer_norm_2455
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
transformer_layer_0_2484
transformer_layer_0_2486
transformer_layer_0_2488
transformer_layer_0_2490
pooler_transform_2494
pooler_transform_2496
identity

identity_1??-embeddings/layer_norm/StatefulPartitionedCall?(pooler_transform/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?+transformer/layer_0/StatefulPartitionedCall?'type_embeddings/StatefulPartitionedCall?'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputsword_embeddings_2443*
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
GPU 2J 8? *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_16372)
'word_embeddings/StatefulPartitionedCall?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_2446*
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
GPU 2J 8? *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_16722,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputs_2type_embeddings_2449*
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
GPU 2J 8? *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_17022)
'type_embeddings/StatefulPartitionedCall?
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
GPU 2J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_17222
add_1/PartitionedCall?
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0embeddings_layer_norm_2453embeddings_layer_norm_2455*
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
GPU 2J 8? *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_17542/
-embeddings/layer_norm/StatefulPartitionedCall?
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
GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_17872
dropout_1/PartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_18372'
%self_attention_mask_1/PartitionedCall?
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0.self_attention_mask_1/PartitionedCall:output:0transformer_layer_0_2460transformer_layer_0_2462transformer_layer_0_2464transformer_layer_0_2466transformer_layer_0_2468transformer_layer_0_2470transformer_layer_0_2472transformer_layer_0_2474transformer_layer_0_2476transformer_layer_0_2478transformer_layer_0_2480transformer_layer_0_2482transformer_layer_0_2484transformer_layer_0_2486transformer_layer_0_2488transformer_layer_0_2490*
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
GPU 2J 8? *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_20812-
+transformer/layer_0/StatefulPartitionedCall?
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
GPU 2J 8? *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_22102
lambda_1/PartitionedCall?
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0pooler_transform_2494pooler_transform_2496*
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
GPU 2J 8? *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_22342*
(pooler_transform/StatefulPartitionedCall?
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
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
?
?
2__inference_transformer/layer_0_layer_call_fn_4698
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
identity??StatefulPartitionedCall?
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
GPU 2J 8? *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_20812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????????????:'???????????????????????????::::::::::::::::22
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
?
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_1787

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
??
?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2383

inputs
inputs_1
inputs_2
word_embeddings_2325
position_embedding_2328
type_embeddings_2331
embeddings_layer_norm_2335
embeddings_layer_norm_2337
transformer_layer_0_2342
transformer_layer_0_2344
transformer_layer_0_2346
transformer_layer_0_2348
transformer_layer_0_2350
transformer_layer_0_2352
transformer_layer_0_2354
transformer_layer_0_2356
transformer_layer_0_2358
transformer_layer_0_2360
transformer_layer_0_2362
transformer_layer_0_2364
transformer_layer_0_2366
transformer_layer_0_2368
transformer_layer_0_2370
transformer_layer_0_2372
pooler_transform_2376
pooler_transform_2378
identity

identity_1??!dropout_1/StatefulPartitionedCall?-embeddings/layer_norm/StatefulPartitionedCall?(pooler_transform/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?+transformer/layer_0/StatefulPartitionedCall?'type_embeddings/StatefulPartitionedCall?'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputsword_embeddings_2325*
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
GPU 2J 8? *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_16372)
'word_embeddings/StatefulPartitionedCall?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_2328*
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
GPU 2J 8? *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_16722,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputs_2type_embeddings_2331*
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
GPU 2J 8? *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_17022)
'type_embeddings/StatefulPartitionedCall?
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
GPU 2J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_17222
add_1/PartitionedCall?
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0embeddings_layer_norm_2335embeddings_layer_norm_2337*
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
GPU 2J 8? *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_17542/
-embeddings/layer_norm/StatefulPartitionedCall?
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
GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_17822#
!dropout_1/StatefulPartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_18372'
%self_attention_mask_1/PartitionedCall?
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0.self_attention_mask_1/PartitionedCall:output:0transformer_layer_0_2342transformer_layer_0_2344transformer_layer_0_2346transformer_layer_0_2348transformer_layer_0_2350transformer_layer_0_2352transformer_layer_0_2354transformer_layer_0_2356transformer_layer_0_2358transformer_layer_0_2360transformer_layer_0_2362transformer_layer_0_2364transformer_layer_0_2366transformer_layer_0_2368transformer_layer_0_2370transformer_layer_0_2372*
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
GPU 2J 8? *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_19742-
+transformer/layer_0/StatefulPartitionedCall?
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
GPU 2J 8? *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_22012
lambda_1/PartitionedCall?
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0pooler_transform_2376pooler_transform_2378*
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
GPU 2J 8? *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_22342*
(pooler_transform/StatefulPartitionedCall?
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2F
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
??
?
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4515
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
identity??intermediate/add/ReadVariableOp?)intermediate/einsum/Einsum/ReadVariableOp?output/add/ReadVariableOp?#output/einsum/Einsum/ReadVariableOp?*output_layer_norm/batchnorm/ReadVariableOp?.output_layer_norm/batchnorm/mul/ReadVariableOp?2self_attention/attention_output/add/ReadVariableOp?<self_attention/attention_output/einsum/Einsum/ReadVariableOp?%self_attention/key/add/ReadVariableOp?/self_attention/key/einsum/Einsum/ReadVariableOp?'self_attention/query/add/ReadVariableOp?1self_attention/query/einsum/Einsum/ReadVariableOp?'self_attention/value/add/ReadVariableOp?1self_attention/value/einsum/Einsum/ReadVariableOp?2self_attention_layer_norm/batchnorm/ReadVariableOp?6self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
1self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/query/einsum/Einsum/ReadVariableOp?
"self_attention/query/einsum/EinsumEinsuminputs_09self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/query/einsum/Einsum?
'self_attention/query/add/ReadVariableOpReadVariableOp0self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/query/add/ReadVariableOp?
self_attention/query/addAddV2+self_attention/query/einsum/Einsum:output:0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/query/add?
/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp8self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype021
/self_attention/key/einsum/Einsum/ReadVariableOp?
 self_attention/key/einsum/EinsumEinsuminputs_07self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2"
 self_attention/key/einsum/Einsum?
%self_attention/key/add/ReadVariableOpReadVariableOp.self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02'
%self_attention/key/add/ReadVariableOp?
self_attention/key/addAddV2)self_attention/key/einsum/Einsum:output:0-self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/key/add?
1self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/value/einsum/Einsum/ReadVariableOp?
"self_attention/value/einsum/EinsumEinsuminputs_09self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/value/einsum/Einsum?
'self_attention/value/add/ReadVariableOpReadVariableOp0self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/value/add/ReadVariableOp?
self_attention/value/addAddV2+self_attention/value/einsum/Einsum:output:0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/value/add?
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
 *??>2
self_attention/Mul/y?
self_attention/MulMul%self_attention/einsum/Einsum:output:0self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
self_attention/Mul?
,self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2.
,self_attention/masked_softmax/ExpandDims/dim?
(self_attention/masked_softmax/ExpandDims
ExpandDimsinputs_15self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2*
(self_attention/masked_softmax/ExpandDims?
#self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#self_attention/masked_softmax/sub/x?
!self_attention/masked_softmax/subSub,self_attention/masked_softmax/sub/x:output:01self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/sub?
#self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2%
#self_attention/masked_softmax/mul/y?
!self_attention/masked_softmax/mulMul%self_attention/masked_softmax/sub:z:0,self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/mul?
!self_attention/masked_softmax/addAddV2self_attention/Mul:z:0%self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/add?
%self_attention/masked_softmax/SoftmaxSoftmax%self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2'
%self_attention/masked_softmax/Softmax?
$self_attention/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2&
$self_attention/dropout/dropout/Const?
"self_attention/dropout/dropout/MulMul/self_attention/masked_softmax/Softmax:softmax:0-self_attention/dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2$
"self_attention/dropout/dropout/Mul?
$self_attention/dropout/dropout/ShapeShape/self_attention/masked_softmax/Softmax:softmax:0*
T0*
_output_shapes
:2&
$self_attention/dropout/dropout/Shape?
;self_attention/dropout/dropout/random_uniform/RandomUniformRandomUniform-self_attention/dropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed???)2=
;self_attention/dropout/dropout/random_uniform/RandomUniform?
-self_attention/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-self_attention/dropout/dropout/GreaterEqual/y?
+self_attention/dropout/dropout/GreaterEqualGreaterEqualDself_attention/dropout/dropout/random_uniform/RandomUniform:output:06self_attention/dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2-
+self_attention/dropout/dropout/GreaterEqual?
#self_attention/dropout/dropout/CastCast/self_attention/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/dropout/dropout/Cast?
$self_attention/dropout/dropout/Mul_1Mul&self_attention/dropout/dropout/Mul:z:0'self_attention/dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2&
$self_attention/dropout/dropout/Mul_1?
self_attention/einsum_1/EinsumEinsum(self_attention/dropout/dropout/Mul_1:z:0self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2 
self_attention/einsum_1/Einsum?
<self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpEself_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02>
<self_attention/attention_output/einsum/Einsum/ReadVariableOp?
-self_attention/attention_output/einsum/EinsumEinsum'self_attention/einsum_1/Einsum:output:0Dself_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2/
-self_attention/attention_output/einsum/Einsum?
2self_attention/attention_output/add/ReadVariableOpReadVariableOp;self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention/attention_output/add/ReadVariableOp?
#self_attention/attention_output/addAddV26self_attention/attention_output/einsum/Einsum:output:0:self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#self_attention/attention_output/addw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul'self_attention/attention_output/add:z:0 dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape'self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed220
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Mul_1y
addAddV2inputs_0dropout_1/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add?
8self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8self_attention_layer_norm/moments/mean/reduction_indices?
&self_attention_layer_norm/moments/meanMeanadd:z:0Aself_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&self_attention_layer_norm/moments/mean?
.self_attention_layer_norm/moments/StopGradientStopGradient/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????20
.self_attention_layer_norm/moments/StopGradient?
3self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferenceadd:z:07self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????25
3self_attention_layer_norm/moments/SquaredDifference?
<self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2>
<self_attention_layer_norm/moments/variance/reduction_indices?
*self_attention_layer_norm/moments/varianceMean7self_attention_layer_norm/moments/SquaredDifference:z:0Eself_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2,
*self_attention_layer_norm/moments/variance?
)self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2+
)self_attention_layer_norm/batchnorm/add/y?
'self_attention_layer_norm/batchnorm/addAddV23self_attention_layer_norm/moments/variance:output:02self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/add?
)self_attention_layer_norm/batchnorm/RsqrtRsqrt+self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/Rsqrt?
6self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp?self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype028
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
'self_attention_layer_norm/batchnorm/mulMul-self_attention_layer_norm/batchnorm/Rsqrt:y:0>self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/mul?
)self_attention_layer_norm/batchnorm/mul_1Muladd:z:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_1?
)self_attention_layer_norm/batchnorm/mul_2Mul/self_attention_layer_norm/moments/mean:output:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_2?
2self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOp;self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention_layer_norm/batchnorm/ReadVariableOp?
'self_attention_layer_norm/batchnorm/subSub:self_attention_layer_norm/batchnorm/ReadVariableOp:value:0-self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/sub?
)self_attention_layer_norm/batchnorm/add_1AddV2-self_attention_layer_norm/batchnorm/mul_1:z:0+self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/add_1?
)intermediate/einsum/Einsum/ReadVariableOpReadVariableOp2intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02+
)intermediate/einsum/Einsum/ReadVariableOp?
intermediate/einsum/EinsumEinsum-self_attention_layer_norm/batchnorm/add_1:z:01intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2
intermediate/einsum/Einsum?
intermediate/add/ReadVariableOpReadVariableOp(intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02!
intermediate/add/ReadVariableOp?
intermediate/addAddV2#intermediate/einsum/Einsum:output:0'intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2
intermediate/addi
activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
activation/Pow/y?
activation/PowPowintermediate/add:z:0activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/Powi
activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2
activation/mul/x?
activation/mulMulactivation/mul/x:output:0activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul?
activation/addAddV2intermediate/add:z:0activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/addm
activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2
activation/mul_1/x?
activation/mul_1Mulactivation/mul_1/x:output:0activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_1
activation/TanhTanhactivation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/Tanhm
activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
activation/add_1/x?
activation/add_1AddV2activation/add_1/x:output:0activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/add_1m
activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
activation/mul_2/x?
activation/mul_2Mulactivation/mul_2/x:output:0activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_2?
activation/mul_3Mulintermediate/add:z:0activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_3?
#output/einsum/Einsum/ReadVariableOpReadVariableOp,output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02%
#output/einsum/Einsum/ReadVariableOp?
output/einsum/EinsumEinsumactivation/mul_3:z:0+output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2
output/einsum/Einsum?
output/add/ReadVariableOpReadVariableOp"output_add_readvariableop_resource*
_output_shapes
:*
dtype02
output/add/ReadVariableOp?

output/addAddV2output/einsum/Einsum:output:0!output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2

output/addw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMuloutput/add:z:0 dropout_2/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_2/dropout/Mulp
dropout_2/dropout/ShapeShapeoutput/add:z:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed220
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_2/dropout/Mul_1?
add_1AddV2dropout_2/dropout/Mul_1:z:0-self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add_1?
0output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:22
0output_layer_norm/moments/mean/reduction_indices?
output_layer_norm/moments/meanMean	add_1:z:09output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2 
output_layer_norm/moments/mean?
&output_layer_norm/moments/StopGradientStopGradient'output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&output_layer_norm/moments/StopGradient?
+output_layer_norm/moments/SquaredDifferenceSquaredDifference	add_1:z:0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+output_layer_norm/moments/SquaredDifference?
4output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4output_layer_norm/moments/variance/reduction_indices?
"output_layer_norm/moments/varianceMean/output_layer_norm/moments/SquaredDifference:z:0=output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"output_layer_norm/moments/variance?
!output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2#
!output_layer_norm/batchnorm/add/y?
output_layer_norm/batchnorm/addAddV2+output_layer_norm/moments/variance:output:0*output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/add?
!output_layer_norm/batchnorm/RsqrtRsqrt#output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/Rsqrt?
.output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp7output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype020
.output_layer_norm/batchnorm/mul/ReadVariableOp?
output_layer_norm/batchnorm/mulMul%output_layer_norm/batchnorm/Rsqrt:y:06output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/mul?
!output_layer_norm/batchnorm/mul_1Mul	add_1:z:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_1?
!output_layer_norm/batchnorm/mul_2Mul'output_layer_norm/moments/mean:output:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_2?
*output_layer_norm/batchnorm/ReadVariableOpReadVariableOp3output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02,
*output_layer_norm/batchnorm/ReadVariableOp?
output_layer_norm/batchnorm/subSub2output_layer_norm/batchnorm/ReadVariableOp:value:0%output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/sub?
!output_layer_norm/batchnorm/add_1AddV2%output_layer_norm/batchnorm/mul_1:z:0#output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/add_1?
IdentityIdentity%output_layer_norm/batchnorm/add_1:z:0 ^intermediate/add/ReadVariableOp*^intermediate/einsum/Einsum/ReadVariableOp^output/add/ReadVariableOp$^output/einsum/Einsum/ReadVariableOp+^output_layer_norm/batchnorm/ReadVariableOp/^output_layer_norm/batchnorm/mul/ReadVariableOp3^self_attention/attention_output/add/ReadVariableOp=^self_attention/attention_output/einsum/Einsum/ReadVariableOp&^self_attention/key/add/ReadVariableOp0^self_attention/key/einsum/Einsum/ReadVariableOp(^self_attention/query/add/ReadVariableOp2^self_attention/query/einsum/Einsum/ReadVariableOp(^self_attention/value/add/ReadVariableOp2^self_attention/value/einsum/Einsum/ReadVariableOp3^self_attention_layer_norm/batchnorm/ReadVariableOp7^self_attention_layer_norm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????????????:'???????????????????????????::::::::::::::::2B
intermediate/add/ReadVariableOpintermediate/add/ReadVariableOp2V
)intermediate/einsum/Einsum/ReadVariableOp)intermediate/einsum/Einsum/ReadVariableOp26
output/add/ReadVariableOpoutput/add/ReadVariableOp2J
#output/einsum/Einsum/ReadVariableOp#output/einsum/Einsum/ReadVariableOp2X
*output_layer_norm/batchnorm/ReadVariableOp*output_layer_norm/batchnorm/ReadVariableOp2`
.output_layer_norm/batchnorm/mul/ReadVariableOp.output_layer_norm/batchnorm/mul/ReadVariableOp2h
2self_attention/attention_output/add/ReadVariableOp2self_attention/attention_output/add/ReadVariableOp2|
<self_attention/attention_output/einsum/Einsum/ReadVariableOp<self_attention/attention_output/einsum/Einsum/ReadVariableOp2N
%self_attention/key/add/ReadVariableOp%self_attention/key/add/ReadVariableOp2b
/self_attention/key/einsum/Einsum/ReadVariableOp/self_attention/key/einsum/Einsum/ReadVariableOp2R
'self_attention/query/add/ReadVariableOp'self_attention/query/add/ReadVariableOp2f
1self_attention/query/einsum/Einsum/ReadVariableOp1self_attention/query/einsum/Einsum/ReadVariableOp2R
'self_attention/value/add/ReadVariableOp'self_attention/value/add/ReadVariableOp2f
1self_attention/value/einsum/Einsum/ReadVariableOp1self_attention/value/einsum/Einsum/ReadVariableOp2h
2self_attention_layer_norm/batchnorm/ReadVariableOp2self_attention_layer_norm/batchnorm/ReadVariableOp2p
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp6self_attention_layer_norm/batchnorm/mul/ReadVariableOp:^ Z
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
??
?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_3868
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

identity_1??.embeddings/layer_norm/batchnorm/ReadVariableOp?2embeddings/layer_norm/batchnorm/mul/ReadVariableOp?'pooler_transform/BiasAdd/ReadVariableOp?&pooler_transform/MatMul/ReadVariableOp?!position_embedding/ReadVariableOp?3transformer/layer_0/intermediate/add/ReadVariableOp?=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?-transformer/layer_0/output/add/ReadVariableOp?7transformer/layer_0/output/einsum/Einsum/ReadVariableOp?>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOp?Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?9transformer/layer_0/self_attention/key/add/ReadVariableOp?Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?;transformer/layer_0/self_attention/query/add/ReadVariableOp?Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?;transformer/layer_0/self_attention/value/add/ReadVariableOp?Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?%type_embeddings/MatMul/ReadVariableOp?word_embeddings/Gather?
word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
word_embeddings/Reshape/shape?
word_embeddings/ReshapeReshapeinputs_0&word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2
word_embeddings/Reshape?
word_embeddings/GatherResourceGatherword_embeddings_gather_resource word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02
word_embeddings/Gather?
word_embeddings/IdentityIdentityword_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????2
word_embeddings/Identityf
word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2
word_embeddings/Shape?
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
word_embeddings/concat/axis?
word_embeddings/concatConcatV2word_embeddings/Shape:output:0(word_embeddings/concat/values_1:output:0$word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2
word_embeddings/concat?
word_embeddings/Reshape_1Reshape!word_embeddings/Identity:output:0word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
word_embeddings/Reshape_1?
position_embedding/ShapeShape"word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:2
position_embedding/Shape?
&position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&position_embedding/strided_slice/stack?
(position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice/stack_1?
(position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice/stack_2?
 position_embedding/strided_sliceStridedSlice!position_embedding/Shape:output:0/position_embedding/strided_slice/stack:output:01position_embedding/strided_slice/stack_1:output:01position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 position_embedding/strided_slice?
(position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice_1/stack?
*position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*position_embedding/strided_slice_1/stack_1?
*position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*position_embedding/strided_slice_1/stack_2?
"position_embedding/strided_slice_1StridedSlice!position_embedding/Shape:output:01position_embedding/strided_slice_1/stack:output:03position_embedding/strided_slice_1/stack_1:output:03position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"position_embedding/strided_slice_1?
!position_embedding/ReadVariableOpReadVariableOp*position_embedding_readvariableop_resource*
_output_shapes

:*
dtype02#
!position_embedding/ReadVariableOp?
(position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(position_embedding/strided_slice_2/stack?
,position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2.
,position_embedding/strided_slice_2/stack_1/1?
*position_embedding/strided_slice_2/stack_1Pack+position_embedding/strided_slice_1:output:05position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2,
*position_embedding/strided_slice_2/stack_1?
*position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*position_embedding/strided_slice_2/stack_2?
"position_embedding/strided_slice_2StridedSlice)position_embedding/ReadVariableOp:value:01position_embedding/strided_slice_2/stack:output:03position_embedding/strided_slice_2/stack_1:output:03position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2$
"position_embedding/strided_slice_2?
&position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&position_embedding/BroadcastTo/shape/2?
$position_embedding/BroadcastTo/shapePack)position_embedding/strided_slice:output:0+position_embedding/strided_slice_1:output:0/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$position_embedding/BroadcastTo/shape?
position_embedding/BroadcastToBroadcastTo+position_embedding/strided_slice_2:output:0-position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2 
position_embedding/BroadcastTo?
type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
type_embeddings/Reshape/shape?
type_embeddings/ReshapeReshapeinputs_2&type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2
type_embeddings/Reshape?
 type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 type_embeddings/one_hot/on_value?
!type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!type_embeddings/one_hot/off_value?
type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
type_embeddings/one_hot/depth?
type_embeddings/one_hotOneHot type_embeddings/Reshape:output:0&type_embeddings/one_hot/depth:output:0)type_embeddings/one_hot/on_value:output:0*type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2
type_embeddings/one_hot?
%type_embeddings/MatMul/ReadVariableOpReadVariableOp.type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%type_embeddings/MatMul/ReadVariableOp?
type_embeddings/MatMulMatMul type_embeddings/one_hot:output:0-type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
type_embeddings/MatMulf
type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2
type_embeddings/Shape?
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
type_embeddings/concat/axis?
type_embeddings/concatConcatV2type_embeddings/Shape:output:0(type_embeddings/concat/values_1:output:0$type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2
type_embeddings/concat?
type_embeddings/Reshape_1Reshape type_embeddings/MatMul:product:0type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
type_embeddings/Reshape_1?
	add_1/addAddV2"word_embeddings/Reshape_1:output:0'position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2
	add_1/add?
add_1/add_1AddV2add_1/add:z:0"type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2
add_1/add_1?
4embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4embeddings/layer_norm/moments/mean/reduction_indices?
"embeddings/layer_norm/moments/meanMeanadd_1/add_1:z:0=embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"embeddings/layer_norm/moments/mean?
*embeddings/layer_norm/moments/StopGradientStopGradient+embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2,
*embeddings/layer_norm/moments/StopGradient?
/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifferenceadd_1/add_1:z:03embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????21
/embeddings/layer_norm/moments/SquaredDifference?
8embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8embeddings/layer_norm/moments/variance/reduction_indices?
&embeddings/layer_norm/moments/varianceMean3embeddings/layer_norm/moments/SquaredDifference:z:0Aembeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&embeddings/layer_norm/moments/variance?
%embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2'
%embeddings/layer_norm/batchnorm/add/y?
#embeddings/layer_norm/batchnorm/addAddV2/embeddings/layer_norm/moments/variance:output:0.embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/add?
%embeddings/layer_norm/batchnorm/RsqrtRsqrt'embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/Rsqrt?
2embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp;embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2embeddings/layer_norm/batchnorm/mul/ReadVariableOp?
#embeddings/layer_norm/batchnorm/mulMul)embeddings/layer_norm/batchnorm/Rsqrt:y:0:embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/mul?
%embeddings/layer_norm/batchnorm/mul_1Muladd_1/add_1:z:0'embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/mul_1?
%embeddings/layer_norm/batchnorm/mul_2Mul+embeddings/layer_norm/moments/mean:output:0'embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/mul_2?
.embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOp7embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.embeddings/layer_norm/batchnorm/ReadVariableOp?
#embeddings/layer_norm/batchnorm/subSub6embeddings/layer_norm/batchnorm/ReadVariableOp:value:0)embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/sub?
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
 *?8??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul)embeddings/layer_norm/batchnorm/add_1:z:0 dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape)embeddings/layer_norm/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)20
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Mul_1?
self_attention_mask_1/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
self_attention_mask_1/Shape?
)self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)self_attention_mask_1/strided_slice/stack?
+self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice/stack_1?
+self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice/stack_2?
#self_attention_mask_1/strided_sliceStridedSlice$self_attention_mask_1/Shape:output:02self_attention_mask_1/strided_slice/stack:output:04self_attention_mask_1/strided_slice/stack_1:output:04self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask_1/strided_slice?
+self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice_1/stack?
-self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_1/stack_1?
-self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_1/stack_2?
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
self_attention_mask_1/Shape_1?
+self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+self_attention_mask_1/strided_slice_2/stack?
-self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_2/stack_1?
-self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_2/stack_2?
%self_attention_mask_1/strided_slice_2StridedSlice&self_attention_mask_1/Shape_1:output:04self_attention_mask_1/strided_slice_2/stack:output:06self_attention_mask_1/strided_slice_2/stack_1:output:06self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_2?
+self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice_3/stack?
-self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_3/stack_1?
-self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_3/stack_2?
%self_attention_mask_1/strided_slice_3StridedSlice&self_attention_mask_1/Shape_1:output:04self_attention_mask_1/strided_slice_3/stack:output:06self_attention_mask_1/strided_slice_3/stack_1:output:06self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_3?
%self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%self_attention_mask_1/Reshape/shape/1?
#self_attention_mask_1/Reshape/shapePack,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/Reshape/shape/1:output:0.self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2%
#self_attention_mask_1/Reshape/shape?
self_attention_mask_1/ReshapeReshapeinputs_1,self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/Reshape?
self_attention_mask_1/CastCast&self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/Cast?
self_attention_mask_1/ones/mulMul,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2 
self_attention_mask_1/ones/mul?
"self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"self_attention_mask_1/ones/mul_1/y?
 self_attention_mask_1/ones/mul_1Mul"self_attention_mask_1/ones/mul:z:0+self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2"
 self_attention_mask_1/ones/mul_1?
!self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!self_attention_mask_1/ones/Less/y?
self_attention_mask_1/ones/LessLess$self_attention_mask_1/ones/mul_1:z:0*self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
self_attention_mask_1/ones/Less?
#self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#self_attention_mask_1/ones/packed/2?
!self_attention_mask_1/ones/packedPack,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/strided_slice_1:output:0,self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2#
!self_attention_mask_1/ones/packed?
 self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 self_attention_mask_1/ones/Const?
self_attention_mask_1/onesFill*self_attention_mask_1/ones/packed:output:0)self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/ones?
self_attention_mask_1/mulMul#self_attention_mask_1/ones:output:0self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
self_attention_mask_1/mul?
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
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
,transformer/layer_0/self_attention/query/add?
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpLtransformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02E
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?
4transformer/layer_0/self_attention/key/einsum/EinsumEinsumdropout_1/dropout/Mul_1:z:0Ktransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde26
4transformer/layer_0/self_attention/key/einsum/Einsum?
9transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpBtransformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02;
9transformer/layer_0/self_attention/key/add/ReadVariableOp?
*transformer/layer_0/self_attention/key/addAddV2=transformer/layer_0/self_attention/key/einsum/Einsum:output:0Atransformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2,
*transformer/layer_0/self_attention/key/add?
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?
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
,transformer/layer_0/self_attention/value/add?
0transformer/layer_0/self_attention/einsum/EinsumEinsum.transformer/layer_0/self_attention/key/add:z:00transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe22
0transformer/layer_0/self_attention/einsum/Einsum?
(transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2*
(transformer/layer_0/self_attention/Mul/y?
&transformer/layer_0/self_attention/MulMul9transformer/layer_0/self_attention/einsum/Einsum:output:01transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2(
&transformer/layer_0/self_attention/Mul?
@transformer/layer_0/self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2B
@transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim?
<transformer/layer_0/self_attention/masked_softmax/ExpandDims
ExpandDimsself_attention_mask_1/mul:z:0Itransformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<transformer/layer_0/self_attention/masked_softmax/ExpandDims?
7transformer/layer_0/self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7transformer/layer_0/self_attention/masked_softmax/sub/x?
5transformer/layer_0/self_attention/masked_softmax/subSub@transformer/layer_0/self_attention/masked_softmax/sub/x:output:0Etransformer/layer_0/self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????27
5transformer/layer_0/self_attention/masked_softmax/sub?
7transformer/layer_0/self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?29
7transformer/layer_0/self_attention/masked_softmax/mul/y?
5transformer/layer_0/self_attention/masked_softmax/mulMul9transformer/layer_0/self_attention/masked_softmax/sub:z:0@transformer/layer_0/self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????27
5transformer/layer_0/self_attention/masked_softmax/mul?
5transformer/layer_0/self_attention/masked_softmax/addAddV2*transformer/layer_0/self_attention/Mul:z:09transformer/layer_0/self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????27
5transformer/layer_0/self_attention/masked_softmax/add?
9transformer/layer_0/self_attention/masked_softmax/SoftmaxSoftmax9transformer/layer_0/self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2;
9transformer/layer_0/self_attention/masked_softmax/Softmax?
8transformer/layer_0/self_attention/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2:
8transformer/layer_0/self_attention/dropout/dropout/Const?
6transformer/layer_0/self_attention/dropout/dropout/MulMulCtransformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0Atransformer/layer_0/self_attention/dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????28
6transformer/layer_0/self_attention/dropout/dropout/Mul?
8transformer/layer_0/self_attention/dropout/dropout/ShapeShapeCtransformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0*
T0*
_output_shapes
:2:
8transformer/layer_0/self_attention/dropout/dropout/Shape?
Otransformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniformRandomUniformAtransformer/layer_0/self_attention/dropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed???)*
seed22Q
Otransformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniform?
Atransformer/layer_0/self_attention/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2C
Atransformer/layer_0/self_attention/dropout/dropout/GreaterEqual/y?
?transformer/layer_0/self_attention/dropout/dropout/GreaterEqualGreaterEqualXtransformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniform:output:0Jtransformer/layer_0/self_attention/dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2A
?transformer/layer_0/self_attention/dropout/dropout/GreaterEqual?
7transformer/layer_0/self_attention/dropout/dropout/CastCastCtransformer/layer_0/self_attention/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????29
7transformer/layer_0/self_attention/dropout/dropout/Cast?
8transformer/layer_0/self_attention/dropout/dropout/Mul_1Mul:transformer/layer_0/self_attention/dropout/dropout/Mul:z:0;transformer/layer_0/self_attention/dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2:
8transformer/layer_0/self_attention/dropout/dropout/Mul_1?
2transformer/layer_0/self_attention/einsum_1/EinsumEinsum<transformer/layer_0/self_attention/dropout/dropout/Mul_1:z:00transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd24
2transformer/layer_0/self_attention/einsum_1/Einsum?
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpYtransformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02R
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?
Atransformer/layer_0/self_attention/attention_output/einsum/EinsumEinsum;transformer/layer_0/self_attention/einsum_1/Einsum:output:0Xtransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2C
Atransformer/layer_0/self_attention/attention_output/einsum/Einsum?
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpOtransformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
7transformer/layer_0/self_attention/attention_output/addAddV2Jtransformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0Ntransformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer/layer_0/self_attention/attention_output/add?
+transformer/layer_0/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2-
+transformer/layer_0/dropout_1/dropout/Const?
)transformer/layer_0/dropout_1/dropout/MulMul;transformer/layer_0/self_attention/attention_output/add:z:04transformer/layer_0/dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2+
)transformer/layer_0/dropout_1/dropout/Mul?
+transformer/layer_0/dropout_1/dropout/ShapeShape;transformer/layer_0/self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2-
+transformer/layer_0/dropout_1/dropout/Shape?
Btransformer/layer_0/dropout_1/dropout/random_uniform/RandomUniformRandomUniform4transformer/layer_0/dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed22D
Btransformer/layer_0/dropout_1/dropout/random_uniform/RandomUniform?
4transformer/layer_0/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=26
4transformer/layer_0/dropout_1/dropout/GreaterEqual/y?
2transformer/layer_0/dropout_1/dropout/GreaterEqualGreaterEqualKtransformer/layer_0/dropout_1/dropout/random_uniform/RandomUniform:output:0=transformer/layer_0/dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????24
2transformer/layer_0/dropout_1/dropout/GreaterEqual?
*transformer/layer_0/dropout_1/dropout/CastCast6transformer/layer_0/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2,
*transformer/layer_0/dropout_1/dropout/Cast?
+transformer/layer_0/dropout_1/dropout/Mul_1Mul-transformer/layer_0/dropout_1/dropout/Mul:z:0.transformer/layer_0/dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2-
+transformer/layer_0/dropout_1/dropout/Mul_1?
transformer/layer_0/addAddV2dropout_1/dropout/Mul_1:z:0/transformer/layer_0/dropout_1/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
transformer/layer_0/add?
Ltransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices?
:transformer/layer_0/self_attention_layer_norm/moments/meanMeantransformer/layer_0/add:z:0Utransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2<
:transformer/layer_0/self_attention_layer_norm/moments/mean?
Btransformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientCtransformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Btransformer/layer_0/self_attention_layer_norm/moments/StopGradient?
Gtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferencetransformer/layer_0/add:z:0Ktransformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifference?
Ptransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Ptransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices?
>transformer/layer_0/self_attention_layer_norm/moments/varianceMeanKtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0Ytransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2@
>transformer/layer_0/self_attention_layer_norm/moments/variance?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add/y?
;transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2Gtransformer/layer_0/self_attention_layer_norm/moments/variance:output:0Ftransformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/add?
=transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrt?transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt?
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpStransformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02L
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
;transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulAtransformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0Rtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Multransformer/layer_0/add:z:0?transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulCtransformer/layer_0/self_attention_layer_norm/moments/mean:output:0?transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2?
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpOtransformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?
;transformer/layer_0/self_attention_layer_norm/batchnorm/subSubNtransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Atransformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/sub?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Atransformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0?transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add_1?
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOpFtransformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02?
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?
.transformer/layer_0/intermediate/einsum/EinsumEinsumAtransformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0Etransformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd20
.transformer/layer_0/intermediate/einsum/Einsum?
3transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOp<transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype025
3transformer/layer_0/intermediate/add/ReadVariableOp?
$transformer/layer_0/intermediate/addAddV27transformer/layer_0/intermediate/einsum/Einsum:output:0;transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/intermediate/add?
$transformer/layer_0/activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2&
$transformer/layer_0/activation/Pow/y?
"transformer/layer_0/activation/PowPow(transformer/layer_0/intermediate/add:z:0-transformer/layer_0/activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2$
"transformer/layer_0/activation/Pow?
$transformer/layer_0/activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2&
$transformer/layer_0/activation/mul/x?
"transformer/layer_0/activation/mulMul-transformer/layer_0/activation/mul/x:output:0&transformer/layer_0/activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2$
"transformer/layer_0/activation/mul?
"transformer/layer_0/activation/addAddV2(transformer/layer_0/intermediate/add:z:0&transformer/layer_0/activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2$
"transformer/layer_0/activation/add?
&transformer/layer_0/activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2(
&transformer/layer_0/activation/mul_1/x?
$transformer/layer_0/activation/mul_1Mul/transformer/layer_0/activation/mul_1/x:output:0&transformer/layer_0/activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation/mul_1?
#transformer/layer_0/activation/TanhTanh(transformer/layer_0/activation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2%
#transformer/layer_0/activation/Tanh?
&transformer/layer_0/activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&transformer/layer_0/activation/add_1/x?
$transformer/layer_0/activation/add_1AddV2/transformer/layer_0/activation/add_1/x:output:0'transformer/layer_0/activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation/add_1?
&transformer/layer_0/activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&transformer/layer_0/activation/mul_2/x?
$transformer/layer_0/activation/mul_2Mul/transformer/layer_0/activation/mul_2/x:output:0(transformer/layer_0/activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation/mul_2?
$transformer/layer_0/activation/mul_3Mul(transformer/layer_0/intermediate/add:z:0(transformer/layer_0/activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation/mul_3?
7transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOp@transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype029
7transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
(transformer/layer_0/output/einsum/EinsumEinsum(transformer/layer_0/activation/mul_3:z:0?transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2*
(transformer/layer_0/output/einsum/Einsum?
-transformer/layer_0/output/add/ReadVariableOpReadVariableOp6transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02/
-transformer/layer_0/output/add/ReadVariableOp?
transformer/layer_0/output/addAddV21transformer/layer_0/output/einsum/Einsum:output:05transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2 
transformer/layer_0/output/add?
+transformer/layer_0/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2-
+transformer/layer_0/dropout_2/dropout/Const?
)transformer/layer_0/dropout_2/dropout/MulMul"transformer/layer_0/output/add:z:04transformer/layer_0/dropout_2/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2+
)transformer/layer_0/dropout_2/dropout/Mul?
+transformer/layer_0/dropout_2/dropout/ShapeShape"transformer/layer_0/output/add:z:0*
T0*
_output_shapes
:2-
+transformer/layer_0/dropout_2/dropout/Shape?
Btransformer/layer_0/dropout_2/dropout/random_uniform/RandomUniformRandomUniform4transformer/layer_0/dropout_2/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed22D
Btransformer/layer_0/dropout_2/dropout/random_uniform/RandomUniform?
4transformer/layer_0/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=26
4transformer/layer_0/dropout_2/dropout/GreaterEqual/y?
2transformer/layer_0/dropout_2/dropout/GreaterEqualGreaterEqualKtransformer/layer_0/dropout_2/dropout/random_uniform/RandomUniform:output:0=transformer/layer_0/dropout_2/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????24
2transformer/layer_0/dropout_2/dropout/GreaterEqual?
*transformer/layer_0/dropout_2/dropout/CastCast6transformer/layer_0/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2,
*transformer/layer_0/dropout_2/dropout/Cast?
+transformer/layer_0/dropout_2/dropout/Mul_1Mul-transformer/layer_0/dropout_2/dropout/Mul:z:0.transformer/layer_0/dropout_2/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2-
+transformer/layer_0/dropout_2/dropout/Mul_1?
transformer/layer_0/add_1AddV2/transformer/layer_0/dropout_2/dropout/Mul_1:z:0Atransformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
transformer/layer_0/add_1?
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
2transformer/layer_0/output_layer_norm/moments/mean?
:transformer/layer_0/output_layer_norm/moments/StopGradientStopGradient;transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2<
:transformer/layer_0/output_layer_norm/moments/StopGradient?
?transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifferencetransformer/layer_0/add_1:z:0Ctransformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer/layer_0/output_layer_norm/moments/SquaredDifference?
Htransformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer/layer_0/output_layer_norm/moments/variance/reduction_indices?
6transformer/layer_0/output_layer_norm/moments/varianceMeanCtransformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0Qtransformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(28
6transformer/layer_0/output_layer_norm/moments/variance?
5transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+27
5transformer/layer_0/output_layer_norm/batchnorm/add/y?
3transformer/layer_0/output_layer_norm/batchnorm/addAddV2?transformer/layer_0/output_layer_norm/moments/variance:output:0>transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/add?
5transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrt7transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02D
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?
3transformer/layer_0/output_layer_norm/batchnorm/mulMul9transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0Jtransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/mul?
5transformer/layer_0/output_layer_norm/batchnorm/mul_1Multransformer/layer_0/add_1:z:07transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/mul_1?
5transformer/layer_0/output_layer_norm/batchnorm/mul_2Mul;transformer/layer_0/output_layer_norm/moments/mean:output:07transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/mul_2?
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOpGtransformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02@
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?
3transformer/layer_0/output_layer_norm/batchnorm/subSubFtransformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:09transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/sub?
5transformer/layer_0/output_layer_norm/batchnorm/add_1AddV29transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:07transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/add_1?
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda_1/strided_slice/stack?
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2 
lambda_1/strided_slice/stack_1?
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2 
lambda_1/strided_slice/stack_2?
lambda_1/strided_sliceStridedSlice9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
lambda_1/strided_slice?
lambda_1/SqueezeSqueezelambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
lambda_1/Squeeze?
&pooler_transform/MatMul/ReadVariableOpReadVariableOp/pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&pooler_transform/MatMul/ReadVariableOp?
pooler_transform/MatMulMatMullambda_1/Squeeze:output:0.pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
pooler_transform/MatMul?
'pooler_transform/BiasAdd/ReadVariableOpReadVariableOp0pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'pooler_transform/BiasAdd/ReadVariableOp?
pooler_transform/BiasAddBiasAdd!pooler_transform/MatMul:product:0/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
pooler_transform/BiasAdd?
pooler_transform/TanhTanh!pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
pooler_transform/Tanh?
IdentityIdentity9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0/^embeddings/layer_norm/batchnorm/ReadVariableOp3^embeddings/layer_norm/batchnorm/mul/ReadVariableOp(^pooler_transform/BiasAdd/ReadVariableOp'^pooler_transform/MatMul/ReadVariableOp"^position_embedding/ReadVariableOp4^transformer/layer_0/intermediate/add/ReadVariableOp>^transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp.^transformer/layer_0/output/add/ReadVariableOp8^transformer/layer_0/output/einsum/Einsum/ReadVariableOp?^transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpC^transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpG^transformer/layer_0/self_attention/attention_output/add/ReadVariableOpQ^transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:^transformer/layer_0/self_attention/key/add/ReadVariableOpD^transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp<^transformer/layer_0/self_attention/query/add/ReadVariableOpF^transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp<^transformer/layer_0/self_attention/value/add/ReadVariableOpF^transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpG^transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpK^transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp&^type_embeddings/MatMul/ReadVariableOp^word_embeddings/Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identitypooler_transform/Tanh:y:0/^embeddings/layer_norm/batchnorm/ReadVariableOp3^embeddings/layer_norm/batchnorm/mul/ReadVariableOp(^pooler_transform/BiasAdd/ReadVariableOp'^pooler_transform/MatMul/ReadVariableOp"^position_embedding/ReadVariableOp4^transformer/layer_0/intermediate/add/ReadVariableOp>^transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp.^transformer/layer_0/output/add/ReadVariableOp8^transformer/layer_0/output/einsum/Einsum/ReadVariableOp?^transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpC^transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpG^transformer/layer_0/self_attention/attention_output/add/ReadVariableOpQ^transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:^transformer/layer_0/self_attention/key/add/ReadVariableOpD^transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp<^transformer/layer_0/self_attention/query/add/ReadVariableOpF^transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp<^transformer/layer_0/self_attention/value/add/ReadVariableOpF^transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpG^transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpK^transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp&^type_embeddings/MatMul/ReadVariableOp^word_embeddings/Gather*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2`
.embeddings/layer_norm/batchnorm/ReadVariableOp.embeddings/layer_norm/batchnorm/ReadVariableOp2h
2embeddings/layer_norm/batchnorm/mul/ReadVariableOp2embeddings/layer_norm/batchnorm/mul/ReadVariableOp2R
'pooler_transform/BiasAdd/ReadVariableOp'pooler_transform/BiasAdd/ReadVariableOp2P
&pooler_transform/MatMul/ReadVariableOp&pooler_transform/MatMul/ReadVariableOp2F
!position_embedding/ReadVariableOp!position_embedding/ReadVariableOp2j
3transformer/layer_0/intermediate/add/ReadVariableOp3transformer/layer_0/intermediate/add/ReadVariableOp2~
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp2^
-transformer/layer_0/output/add/ReadVariableOp-transformer/layer_0/output/add/ReadVariableOp2r
7transformer/layer_0/output/einsum/Einsum/ReadVariableOp7transformer/layer_0/output/einsum/Einsum/ReadVariableOp2?
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp2?
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpBtransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp2?
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOpFtransformer/layer_0/self_attention/attention_output/add/ReadVariableOp2?
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpPtransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp2v
9transformer/layer_0/self_attention/key/add/ReadVariableOp9transformer/layer_0/self_attention/key/add/ReadVariableOp2?
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpCtransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp2z
;transformer/layer_0/self_attention/query/add/ReadVariableOp;transformer/layer_0/self_attention/query/add/ReadVariableOp2?
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpEtransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp2z
;transformer/layer_0/self_attention/value/add/ReadVariableOp;transformer/layer_0/self_attention/value/add/ReadVariableOp2?
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpEtransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp2?
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpFtransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp2?
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpJtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp2N
%type_embeddings/MatMul/ReadVariableOp%type_embeddings/MatMul/ReadVariableOp20
word_embeddings/Gatherword_embeddings/Gather:Z V
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
?
t
.__inference_type_embeddings_layer_call_fn_4271

inputs
unknown
identity??StatefulPartitionedCall?
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
GPU 2J 8? *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_17022
StatefulPartitionedCall?
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
?
?
A__inference_model_1_layer_call_and_return_conditional_losses_2943

inputs
inputs_1
inputs_2
transformer_encoder_1_2893
transformer_encoder_1_2895
transformer_encoder_1_2897
transformer_encoder_1_2899
transformer_encoder_1_2901
transformer_encoder_1_2903
transformer_encoder_1_2905
transformer_encoder_1_2907
transformer_encoder_1_2909
transformer_encoder_1_2911
transformer_encoder_1_2913
transformer_encoder_1_2915
transformer_encoder_1_2917
transformer_encoder_1_2919
transformer_encoder_1_2921
transformer_encoder_1_2923
transformer_encoder_1_2925
transformer_encoder_1_2927
transformer_encoder_1_2929
transformer_encoder_1_2931
transformer_encoder_1_2933
transformer_encoder_1_2935
transformer_encoder_1_2937
identity

identity_1??-transformer_encoder_1/StatefulPartitionedCall?
-transformer_encoder_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2transformer_encoder_1_2893transformer_encoder_1_2895transformer_encoder_1_2897transformer_encoder_1_2899transformer_encoder_1_2901transformer_encoder_1_2903transformer_encoder_1_2905transformer_encoder_1_2907transformer_encoder_1_2909transformer_encoder_1_2911transformer_encoder_1_2913transformer_encoder_1_2915transformer_encoder_1_2917transformer_encoder_1_2919transformer_encoder_1_2921transformer_encoder_1_2923transformer_encoder_1_2925transformer_encoder_1_2927transformer_encoder_1_2929transformer_encoder_1_2931transformer_encoder_1_2933transformer_encoder_1_2935transformer_encoder_1_2937*%
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
GPU 2J 8? *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_25012/
-transformer_encoder_1/StatefulPartitionedCall?
IdentityIdentity6transformer_encoder_1/StatefulPartitionedCall:output:1.^transformer_encoder_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity6transformer_encoder_1/StatefulPartitionedCall:output:0.^transformer_encoder_1/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
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
?
?
&__inference_model_1_layer_call_fn_3568
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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_28332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
??
?
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_2081

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
identity??intermediate/add/ReadVariableOp?)intermediate/einsum/Einsum/ReadVariableOp?output/add/ReadVariableOp?#output/einsum/Einsum/ReadVariableOp?*output_layer_norm/batchnorm/ReadVariableOp?.output_layer_norm/batchnorm/mul/ReadVariableOp?2self_attention/attention_output/add/ReadVariableOp?<self_attention/attention_output/einsum/Einsum/ReadVariableOp?%self_attention/key/add/ReadVariableOp?/self_attention/key/einsum/Einsum/ReadVariableOp?'self_attention/query/add/ReadVariableOp?1self_attention/query/einsum/Einsum/ReadVariableOp?'self_attention/value/add/ReadVariableOp?1self_attention/value/einsum/Einsum/ReadVariableOp?2self_attention_layer_norm/batchnorm/ReadVariableOp?6self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
1self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/query/einsum/Einsum/ReadVariableOp?
"self_attention/query/einsum/EinsumEinsuminputs9self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/query/einsum/Einsum?
'self_attention/query/add/ReadVariableOpReadVariableOp0self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/query/add/ReadVariableOp?
self_attention/query/addAddV2+self_attention/query/einsum/Einsum:output:0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/query/add?
/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp8self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype021
/self_attention/key/einsum/Einsum/ReadVariableOp?
 self_attention/key/einsum/EinsumEinsuminputs7self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2"
 self_attention/key/einsum/Einsum?
%self_attention/key/add/ReadVariableOpReadVariableOp.self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02'
%self_attention/key/add/ReadVariableOp?
self_attention/key/addAddV2)self_attention/key/einsum/Einsum:output:0-self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/key/add?
1self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/value/einsum/Einsum/ReadVariableOp?
"self_attention/value/einsum/EinsumEinsuminputs9self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/value/einsum/Einsum?
'self_attention/value/add/ReadVariableOpReadVariableOp0self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/value/add/ReadVariableOp?
self_attention/value/addAddV2+self_attention/value/einsum/Einsum:output:0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/value/add?
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
 *??>2
self_attention/Mul/y?
self_attention/MulMul%self_attention/einsum/Einsum:output:0self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
self_attention/Mul?
,self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2.
,self_attention/masked_softmax/ExpandDims/dim?
(self_attention/masked_softmax/ExpandDims
ExpandDimsinputs_15self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2*
(self_attention/masked_softmax/ExpandDims?
#self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#self_attention/masked_softmax/sub/x?
!self_attention/masked_softmax/subSub,self_attention/masked_softmax/sub/x:output:01self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/sub?
#self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2%
#self_attention/masked_softmax/mul/y?
!self_attention/masked_softmax/mulMul%self_attention/masked_softmax/sub:z:0,self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/mul?
!self_attention/masked_softmax/addAddV2self_attention/Mul:z:0%self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/add?
%self_attention/masked_softmax/SoftmaxSoftmax%self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2'
%self_attention/masked_softmax/Softmax?
self_attention/dropout/IdentityIdentity/self_attention/masked_softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2!
self_attention/dropout/Identity?
self_attention/einsum_1/EinsumEinsum(self_attention/dropout/Identity:output:0self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2 
self_attention/einsum_1/Einsum?
<self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpEself_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02>
<self_attention/attention_output/einsum/Einsum/ReadVariableOp?
-self_attention/attention_output/einsum/EinsumEinsum'self_attention/einsum_1/Einsum:output:0Dself_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2/
-self_attention/attention_output/einsum/Einsum?
2self_attention/attention_output/add/ReadVariableOpReadVariableOp;self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention/attention_output/add/ReadVariableOp?
#self_attention/attention_output/addAddV26self_attention/attention_output/einsum/Einsum:output:0:self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#self_attention/attention_output/add?
dropout_1/IdentityIdentity'self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/Identityw
addAddV2inputsdropout_1/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2
add?
8self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8self_attention_layer_norm/moments/mean/reduction_indices?
&self_attention_layer_norm/moments/meanMeanadd:z:0Aself_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&self_attention_layer_norm/moments/mean?
.self_attention_layer_norm/moments/StopGradientStopGradient/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????20
.self_attention_layer_norm/moments/StopGradient?
3self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferenceadd:z:07self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????25
3self_attention_layer_norm/moments/SquaredDifference?
<self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2>
<self_attention_layer_norm/moments/variance/reduction_indices?
*self_attention_layer_norm/moments/varianceMean7self_attention_layer_norm/moments/SquaredDifference:z:0Eself_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2,
*self_attention_layer_norm/moments/variance?
)self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2+
)self_attention_layer_norm/batchnorm/add/y?
'self_attention_layer_norm/batchnorm/addAddV23self_attention_layer_norm/moments/variance:output:02self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/add?
)self_attention_layer_norm/batchnorm/RsqrtRsqrt+self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/Rsqrt?
6self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp?self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype028
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
'self_attention_layer_norm/batchnorm/mulMul-self_attention_layer_norm/batchnorm/Rsqrt:y:0>self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/mul?
)self_attention_layer_norm/batchnorm/mul_1Muladd:z:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_1?
)self_attention_layer_norm/batchnorm/mul_2Mul/self_attention_layer_norm/moments/mean:output:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_2?
2self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOp;self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention_layer_norm/batchnorm/ReadVariableOp?
'self_attention_layer_norm/batchnorm/subSub:self_attention_layer_norm/batchnorm/ReadVariableOp:value:0-self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/sub?
)self_attention_layer_norm/batchnorm/add_1AddV2-self_attention_layer_norm/batchnorm/mul_1:z:0+self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/add_1?
)intermediate/einsum/Einsum/ReadVariableOpReadVariableOp2intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02+
)intermediate/einsum/Einsum/ReadVariableOp?
intermediate/einsum/EinsumEinsum-self_attention_layer_norm/batchnorm/add_1:z:01intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2
intermediate/einsum/Einsum?
intermediate/add/ReadVariableOpReadVariableOp(intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02!
intermediate/add/ReadVariableOp?
intermediate/addAddV2#intermediate/einsum/Einsum:output:0'intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2
intermediate/addi
activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
activation/Pow/y?
activation/PowPowintermediate/add:z:0activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/Powi
activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2
activation/mul/x?
activation/mulMulactivation/mul/x:output:0activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul?
activation/addAddV2intermediate/add:z:0activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/addm
activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2
activation/mul_1/x?
activation/mul_1Mulactivation/mul_1/x:output:0activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_1
activation/TanhTanhactivation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/Tanhm
activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
activation/add_1/x?
activation/add_1AddV2activation/add_1/x:output:0activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/add_1m
activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
activation/mul_2/x?
activation/mul_2Mulactivation/mul_2/x:output:0activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_2?
activation/mul_3Mulintermediate/add:z:0activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_3?
#output/einsum/Einsum/ReadVariableOpReadVariableOp,output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02%
#output/einsum/Einsum/ReadVariableOp?
output/einsum/EinsumEinsumactivation/mul_3:z:0+output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2
output/einsum/Einsum?
output/add/ReadVariableOpReadVariableOp"output_add_readvariableop_resource*
_output_shapes
:*
dtype02
output/add/ReadVariableOp?

output/addAddV2output/einsum/Einsum:output:0!output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2

output/add?
dropout_2/IdentityIdentityoutput/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_2/Identity?
add_1AddV2dropout_2/Identity:output:0-self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add_1?
0output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:22
0output_layer_norm/moments/mean/reduction_indices?
output_layer_norm/moments/meanMean	add_1:z:09output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2 
output_layer_norm/moments/mean?
&output_layer_norm/moments/StopGradientStopGradient'output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&output_layer_norm/moments/StopGradient?
+output_layer_norm/moments/SquaredDifferenceSquaredDifference	add_1:z:0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+output_layer_norm/moments/SquaredDifference?
4output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4output_layer_norm/moments/variance/reduction_indices?
"output_layer_norm/moments/varianceMean/output_layer_norm/moments/SquaredDifference:z:0=output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"output_layer_norm/moments/variance?
!output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2#
!output_layer_norm/batchnorm/add/y?
output_layer_norm/batchnorm/addAddV2+output_layer_norm/moments/variance:output:0*output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/add?
!output_layer_norm/batchnorm/RsqrtRsqrt#output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/Rsqrt?
.output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp7output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype020
.output_layer_norm/batchnorm/mul/ReadVariableOp?
output_layer_norm/batchnorm/mulMul%output_layer_norm/batchnorm/Rsqrt:y:06output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/mul?
!output_layer_norm/batchnorm/mul_1Mul	add_1:z:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_1?
!output_layer_norm/batchnorm/mul_2Mul'output_layer_norm/moments/mean:output:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_2?
*output_layer_norm/batchnorm/ReadVariableOpReadVariableOp3output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02,
*output_layer_norm/batchnorm/ReadVariableOp?
output_layer_norm/batchnorm/subSub2output_layer_norm/batchnorm/ReadVariableOp:value:0%output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/sub?
!output_layer_norm/batchnorm/add_1AddV2%output_layer_norm/batchnorm/mul_1:z:0#output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/add_1?
IdentityIdentity%output_layer_norm/batchnorm/add_1:z:0 ^intermediate/add/ReadVariableOp*^intermediate/einsum/Einsum/ReadVariableOp^output/add/ReadVariableOp$^output/einsum/Einsum/ReadVariableOp+^output_layer_norm/batchnorm/ReadVariableOp/^output_layer_norm/batchnorm/mul/ReadVariableOp3^self_attention/attention_output/add/ReadVariableOp=^self_attention/attention_output/einsum/Einsum/ReadVariableOp&^self_attention/key/add/ReadVariableOp0^self_attention/key/einsum/Einsum/ReadVariableOp(^self_attention/query/add/ReadVariableOp2^self_attention/query/einsum/Einsum/ReadVariableOp(^self_attention/value/add/ReadVariableOp2^self_attention/value/einsum/Einsum/ReadVariableOp3^self_attention_layer_norm/batchnorm/ReadVariableOp7^self_attention_layer_norm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????????????:'???????????????????????????::::::::::::::::2B
intermediate/add/ReadVariableOpintermediate/add/ReadVariableOp2V
)intermediate/einsum/Einsum/ReadVariableOp)intermediate/einsum/Einsum/ReadVariableOp26
output/add/ReadVariableOpoutput/add/ReadVariableOp2J
#output/einsum/Einsum/ReadVariableOp#output/einsum/Einsum/ReadVariableOp2X
*output_layer_norm/batchnorm/ReadVariableOp*output_layer_norm/batchnorm/ReadVariableOp2`
.output_layer_norm/batchnorm/mul/ReadVariableOp.output_layer_norm/batchnorm/mul/ReadVariableOp2h
2self_attention/attention_output/add/ReadVariableOp2self_attention/attention_output/add/ReadVariableOp2|
<self_attention/attention_output/einsum/Einsum/ReadVariableOp<self_attention/attention_output/einsum/Einsum/ReadVariableOp2N
%self_attention/key/add/ReadVariableOp%self_attention/key/add/ReadVariableOp2b
/self_attention/key/einsum/Einsum/ReadVariableOp/self_attention/key/einsum/Einsum/ReadVariableOp2R
'self_attention/query/add/ReadVariableOp'self_attention/query/add/ReadVariableOp2f
1self_attention/query/einsum/Einsum/ReadVariableOp1self_attention/query/einsum/Einsum/ReadVariableOp2R
'self_attention/value/add/ReadVariableOp'self_attention/value/add/ReadVariableOp2f
1self_attention/value/einsum/Einsum/ReadVariableOp1self_attention/value/einsum/Einsum/ReadVariableOp2h
2self_attention_layer_norm/batchnorm/ReadVariableOp2self_attention_layer_norm/batchnorm/ReadVariableOp2p
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp6self_attention_layer_norm/batchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_3051

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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *(
f#R!
__inference__wrapped_model_16172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
??
?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4085
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

identity_1??.embeddings/layer_norm/batchnorm/ReadVariableOp?2embeddings/layer_norm/batchnorm/mul/ReadVariableOp?'pooler_transform/BiasAdd/ReadVariableOp?&pooler_transform/MatMul/ReadVariableOp?!position_embedding/ReadVariableOp?3transformer/layer_0/intermediate/add/ReadVariableOp?=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?-transformer/layer_0/output/add/ReadVariableOp?7transformer/layer_0/output/einsum/Einsum/ReadVariableOp?>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOp?Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?9transformer/layer_0/self_attention/key/add/ReadVariableOp?Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?;transformer/layer_0/self_attention/query/add/ReadVariableOp?Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?;transformer/layer_0/self_attention/value/add/ReadVariableOp?Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?%type_embeddings/MatMul/ReadVariableOp?word_embeddings/Gather?
word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
word_embeddings/Reshape/shape?
word_embeddings/ReshapeReshapeinputs_0&word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2
word_embeddings/Reshape?
word_embeddings/GatherResourceGatherword_embeddings_gather_resource word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02
word_embeddings/Gather?
word_embeddings/IdentityIdentityword_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????2
word_embeddings/Identityf
word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2
word_embeddings/Shape?
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
word_embeddings/concat/axis?
word_embeddings/concatConcatV2word_embeddings/Shape:output:0(word_embeddings/concat/values_1:output:0$word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2
word_embeddings/concat?
word_embeddings/Reshape_1Reshape!word_embeddings/Identity:output:0word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
word_embeddings/Reshape_1?
position_embedding/ShapeShape"word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:2
position_embedding/Shape?
&position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&position_embedding/strided_slice/stack?
(position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice/stack_1?
(position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice/stack_2?
 position_embedding/strided_sliceStridedSlice!position_embedding/Shape:output:0/position_embedding/strided_slice/stack:output:01position_embedding/strided_slice/stack_1:output:01position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 position_embedding/strided_slice?
(position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2*
(position_embedding/strided_slice_1/stack?
*position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*position_embedding/strided_slice_1/stack_1?
*position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*position_embedding/strided_slice_1/stack_2?
"position_embedding/strided_slice_1StridedSlice!position_embedding/Shape:output:01position_embedding/strided_slice_1/stack:output:03position_embedding/strided_slice_1/stack_1:output:03position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"position_embedding/strided_slice_1?
!position_embedding/ReadVariableOpReadVariableOp*position_embedding_readvariableop_resource*
_output_shapes

:*
dtype02#
!position_embedding/ReadVariableOp?
(position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(position_embedding/strided_slice_2/stack?
,position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2.
,position_embedding/strided_slice_2/stack_1/1?
*position_embedding/strided_slice_2/stack_1Pack+position_embedding/strided_slice_1:output:05position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2,
*position_embedding/strided_slice_2/stack_1?
*position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*position_embedding/strided_slice_2/stack_2?
"position_embedding/strided_slice_2StridedSlice)position_embedding/ReadVariableOp:value:01position_embedding/strided_slice_2/stack:output:03position_embedding/strided_slice_2/stack_1:output:03position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2$
"position_embedding/strided_slice_2?
&position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2(
&position_embedding/BroadcastTo/shape/2?
$position_embedding/BroadcastTo/shapePack)position_embedding/strided_slice:output:0+position_embedding/strided_slice_1:output:0/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2&
$position_embedding/BroadcastTo/shape?
position_embedding/BroadcastToBroadcastTo+position_embedding/strided_slice_2:output:0-position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2 
position_embedding/BroadcastTo?
type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
type_embeddings/Reshape/shape?
type_embeddings/ReshapeReshapeinputs_2&type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2
type_embeddings/Reshape?
 type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 type_embeddings/one_hot/on_value?
!type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!type_embeddings/one_hot/off_value?
type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2
type_embeddings/one_hot/depth?
type_embeddings/one_hotOneHot type_embeddings/Reshape:output:0&type_embeddings/one_hot/depth:output:0)type_embeddings/one_hot/on_value:output:0*type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2
type_embeddings/one_hot?
%type_embeddings/MatMul/ReadVariableOpReadVariableOp.type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%type_embeddings/MatMul/ReadVariableOp?
type_embeddings/MatMulMatMul type_embeddings/one_hot:output:0-type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
type_embeddings/MatMulf
type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2
type_embeddings/Shape?
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
type_embeddings/concat/axis?
type_embeddings/concatConcatV2type_embeddings/Shape:output:0(type_embeddings/concat/values_1:output:0$type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2
type_embeddings/concat?
type_embeddings/Reshape_1Reshape type_embeddings/MatMul:product:0type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
type_embeddings/Reshape_1?
	add_1/addAddV2"word_embeddings/Reshape_1:output:0'position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2
	add_1/add?
add_1/add_1AddV2add_1/add:z:0"type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2
add_1/add_1?
4embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4embeddings/layer_norm/moments/mean/reduction_indices?
"embeddings/layer_norm/moments/meanMeanadd_1/add_1:z:0=embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"embeddings/layer_norm/moments/mean?
*embeddings/layer_norm/moments/StopGradientStopGradient+embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2,
*embeddings/layer_norm/moments/StopGradient?
/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifferenceadd_1/add_1:z:03embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????21
/embeddings/layer_norm/moments/SquaredDifference?
8embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8embeddings/layer_norm/moments/variance/reduction_indices?
&embeddings/layer_norm/moments/varianceMean3embeddings/layer_norm/moments/SquaredDifference:z:0Aembeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&embeddings/layer_norm/moments/variance?
%embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2'
%embeddings/layer_norm/batchnorm/add/y?
#embeddings/layer_norm/batchnorm/addAddV2/embeddings/layer_norm/moments/variance:output:0.embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/add?
%embeddings/layer_norm/batchnorm/RsqrtRsqrt'embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/Rsqrt?
2embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp;embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype024
2embeddings/layer_norm/batchnorm/mul/ReadVariableOp?
#embeddings/layer_norm/batchnorm/mulMul)embeddings/layer_norm/batchnorm/Rsqrt:y:0:embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/mul?
%embeddings/layer_norm/batchnorm/mul_1Muladd_1/add_1:z:0'embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/mul_1?
%embeddings/layer_norm/batchnorm/mul_2Mul+embeddings/layer_norm/moments/mean:output:0'embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/mul_2?
.embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOp7embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype020
.embeddings/layer_norm/batchnorm/ReadVariableOp?
#embeddings/layer_norm/batchnorm/subSub6embeddings/layer_norm/batchnorm/ReadVariableOp:value:0)embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2%
#embeddings/layer_norm/batchnorm/sub?
%embeddings/layer_norm/batchnorm/add_1AddV2)embeddings/layer_norm/batchnorm/mul_1:z:0'embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2'
%embeddings/layer_norm/batchnorm/add_1?
dropout_1/IdentityIdentity)embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/Identity?
self_attention_mask_1/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:2
self_attention_mask_1/Shape?
)self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)self_attention_mask_1/strided_slice/stack?
+self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice/stack_1?
+self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice/stack_2?
#self_attention_mask_1/strided_sliceStridedSlice$self_attention_mask_1/Shape:output:02self_attention_mask_1/strided_slice/stack:output:04self_attention_mask_1/strided_slice/stack_1:output:04self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask_1/strided_slice?
+self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice_1/stack?
-self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_1/stack_1?
-self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_1/stack_2?
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
self_attention_mask_1/Shape_1?
+self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+self_attention_mask_1/strided_slice_2/stack?
-self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_2/stack_1?
-self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_2/stack_2?
%self_attention_mask_1/strided_slice_2StridedSlice&self_attention_mask_1/Shape_1:output:04self_attention_mask_1/strided_slice_2/stack:output:06self_attention_mask_1/strided_slice_2/stack_1:output:06self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_2?
+self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask_1/strided_slice_3/stack?
-self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_3/stack_1?
-self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-self_attention_mask_1/strided_slice_3/stack_2?
%self_attention_mask_1/strided_slice_3StridedSlice&self_attention_mask_1/Shape_1:output:04self_attention_mask_1/strided_slice_3/stack:output:06self_attention_mask_1/strided_slice_3/stack_1:output:06self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%self_attention_mask_1/strided_slice_3?
%self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2'
%self_attention_mask_1/Reshape/shape/1?
#self_attention_mask_1/Reshape/shapePack,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/Reshape/shape/1:output:0.self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2%
#self_attention_mask_1/Reshape/shape?
self_attention_mask_1/ReshapeReshapeinputs_1,self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/Reshape?
self_attention_mask_1/CastCast&self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/Cast?
self_attention_mask_1/ones/mulMul,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2 
self_attention_mask_1/ones/mul?
"self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"self_attention_mask_1/ones/mul_1/y?
 self_attention_mask_1/ones/mul_1Mul"self_attention_mask_1/ones/mul:z:0+self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2"
 self_attention_mask_1/ones/mul_1?
!self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!self_attention_mask_1/ones/Less/y?
self_attention_mask_1/ones/LessLess$self_attention_mask_1/ones/mul_1:z:0*self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2!
self_attention_mask_1/ones/Less?
#self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2%
#self_attention_mask_1/ones/packed/2?
!self_attention_mask_1/ones/packedPack,self_attention_mask_1/strided_slice:output:0.self_attention_mask_1/strided_slice_1:output:0,self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2#
!self_attention_mask_1/ones/packed?
 self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 self_attention_mask_1/ones/Const?
self_attention_mask_1/onesFill*self_attention_mask_1/ones/packed:output:0)self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask_1/ones?
self_attention_mask_1/mulMul#self_attention_mask_1/ones:output:0self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
self_attention_mask_1/mul?
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
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
,transformer/layer_0/self_attention/query/add?
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpLtransformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02E
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?
4transformer/layer_0/self_attention/key/einsum/EinsumEinsumdropout_1/Identity:output:0Ktransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde26
4transformer/layer_0/self_attention/key/einsum/Einsum?
9transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpBtransformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02;
9transformer/layer_0/self_attention/key/add/ReadVariableOp?
*transformer/layer_0/self_attention/key/addAddV2=transformer/layer_0/self_attention/key/einsum/Einsum:output:0Atransformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2,
*transformer/layer_0/self_attention/key/add?
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?
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
,transformer/layer_0/self_attention/value/add?
0transformer/layer_0/self_attention/einsum/EinsumEinsum.transformer/layer_0/self_attention/key/add:z:00transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe22
0transformer/layer_0/self_attention/einsum/Einsum?
(transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2*
(transformer/layer_0/self_attention/Mul/y?
&transformer/layer_0/self_attention/MulMul9transformer/layer_0/self_attention/einsum/Einsum:output:01transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2(
&transformer/layer_0/self_attention/Mul?
@transformer/layer_0/self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2B
@transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim?
<transformer/layer_0/self_attention/masked_softmax/ExpandDims
ExpandDimsself_attention_mask_1/mul:z:0Itransformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<transformer/layer_0/self_attention/masked_softmax/ExpandDims?
7transformer/layer_0/self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??29
7transformer/layer_0/self_attention/masked_softmax/sub/x?
5transformer/layer_0/self_attention/masked_softmax/subSub@transformer/layer_0/self_attention/masked_softmax/sub/x:output:0Etransformer/layer_0/self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????27
5transformer/layer_0/self_attention/masked_softmax/sub?
7transformer/layer_0/self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?29
7transformer/layer_0/self_attention/masked_softmax/mul/y?
5transformer/layer_0/self_attention/masked_softmax/mulMul9transformer/layer_0/self_attention/masked_softmax/sub:z:0@transformer/layer_0/self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????27
5transformer/layer_0/self_attention/masked_softmax/mul?
5transformer/layer_0/self_attention/masked_softmax/addAddV2*transformer/layer_0/self_attention/Mul:z:09transformer/layer_0/self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????27
5transformer/layer_0/self_attention/masked_softmax/add?
9transformer/layer_0/self_attention/masked_softmax/SoftmaxSoftmax9transformer/layer_0/self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2;
9transformer/layer_0/self_attention/masked_softmax/Softmax?
3transformer/layer_0/self_attention/dropout/IdentityIdentityCtransformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????25
3transformer/layer_0/self_attention/dropout/Identity?
2transformer/layer_0/self_attention/einsum_1/EinsumEinsum<transformer/layer_0/self_attention/dropout/Identity:output:00transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd24
2transformer/layer_0/self_attention/einsum_1/Einsum?
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpYtransformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02R
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?
Atransformer/layer_0/self_attention/attention_output/einsum/EinsumEinsum;transformer/layer_0/self_attention/einsum_1/Einsum:output:0Xtransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2C
Atransformer/layer_0/self_attention/attention_output/einsum/Einsum?
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpOtransformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
7transformer/layer_0/self_attention/attention_output/addAddV2Jtransformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0Ntransformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer/layer_0/self_attention/attention_output/add?
&transformer/layer_0/dropout_1/IdentityIdentity;transformer/layer_0/self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2(
&transformer/layer_0/dropout_1/Identity?
transformer/layer_0/addAddV2dropout_1/Identity:output:0/transformer/layer_0/dropout_1/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2
transformer/layer_0/add?
Ltransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices?
:transformer/layer_0/self_attention_layer_norm/moments/meanMeantransformer/layer_0/add:z:0Utransformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2<
:transformer/layer_0/self_attention_layer_norm/moments/mean?
Btransformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientCtransformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2D
Btransformer/layer_0/self_attention_layer_norm/moments/StopGradient?
Gtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferencetransformer/layer_0/add:z:0Ktransformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifference?
Ptransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2R
Ptransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices?
>transformer/layer_0/self_attention_layer_norm/moments/varianceMeanKtransformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0Ytransformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2@
>transformer/layer_0/self_attention_layer_norm/moments/variance?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add/y?
;transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2Gtransformer/layer_0/self_attention_layer_norm/moments/variance:output:0Ftransformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/add?
=transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrt?transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt?
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpStransformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02L
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
;transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulAtransformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0Rtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Multransformer/layer_0/add:z:0?transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulCtransformer/layer_0/self_attention_layer_norm/moments/mean:output:0?transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2?
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpOtransformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?
;transformer/layer_0/self_attention_layer_norm/batchnorm/subSubNtransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Atransformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer/layer_0/self_attention_layer_norm/batchnorm/sub?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Atransformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0?transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer/layer_0/self_attention_layer_norm/batchnorm/add_1?
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOpFtransformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02?
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?
.transformer/layer_0/intermediate/einsum/EinsumEinsumAtransformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0Etransformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd20
.transformer/layer_0/intermediate/einsum/Einsum?
3transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOp<transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype025
3transformer/layer_0/intermediate/add/ReadVariableOp?
$transformer/layer_0/intermediate/addAddV27transformer/layer_0/intermediate/einsum/Einsum:output:0;transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/intermediate/add?
$transformer/layer_0/activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2&
$transformer/layer_0/activation/Pow/y?
"transformer/layer_0/activation/PowPow(transformer/layer_0/intermediate/add:z:0-transformer/layer_0/activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2$
"transformer/layer_0/activation/Pow?
$transformer/layer_0/activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2&
$transformer/layer_0/activation/mul/x?
"transformer/layer_0/activation/mulMul-transformer/layer_0/activation/mul/x:output:0&transformer/layer_0/activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2$
"transformer/layer_0/activation/mul?
"transformer/layer_0/activation/addAddV2(transformer/layer_0/intermediate/add:z:0&transformer/layer_0/activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2$
"transformer/layer_0/activation/add?
&transformer/layer_0/activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2(
&transformer/layer_0/activation/mul_1/x?
$transformer/layer_0/activation/mul_1Mul/transformer/layer_0/activation/mul_1/x:output:0&transformer/layer_0/activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation/mul_1?
#transformer/layer_0/activation/TanhTanh(transformer/layer_0/activation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2%
#transformer/layer_0/activation/Tanh?
&transformer/layer_0/activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&transformer/layer_0/activation/add_1/x?
$transformer/layer_0/activation/add_1AddV2/transformer/layer_0/activation/add_1/x:output:0'transformer/layer_0/activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation/add_1?
&transformer/layer_0/activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&transformer/layer_0/activation/mul_2/x?
$transformer/layer_0/activation/mul_2Mul/transformer/layer_0/activation/mul_2/x:output:0(transformer/layer_0/activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation/mul_2?
$transformer/layer_0/activation/mul_3Mul(transformer/layer_0/intermediate/add:z:0(transformer/layer_0/activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2&
$transformer/layer_0/activation/mul_3?
7transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOp@transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype029
7transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
(transformer/layer_0/output/einsum/EinsumEinsum(transformer/layer_0/activation/mul_3:z:0?transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2*
(transformer/layer_0/output/einsum/Einsum?
-transformer/layer_0/output/add/ReadVariableOpReadVariableOp6transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02/
-transformer/layer_0/output/add/ReadVariableOp?
transformer/layer_0/output/addAddV21transformer/layer_0/output/einsum/Einsum:output:05transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2 
transformer/layer_0/output/add?
&transformer/layer_0/dropout_2/IdentityIdentity"transformer/layer_0/output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2(
&transformer/layer_0/dropout_2/Identity?
transformer/layer_0/add_1AddV2/transformer/layer_0/dropout_2/Identity:output:0Atransformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
transformer/layer_0/add_1?
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
2transformer/layer_0/output_layer_norm/moments/mean?
:transformer/layer_0/output_layer_norm/moments/StopGradientStopGradient;transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2<
:transformer/layer_0/output_layer_norm/moments/StopGradient?
?transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifferencetransformer/layer_0/add_1:z:0Ctransformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer/layer_0/output_layer_norm/moments/SquaredDifference?
Htransformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer/layer_0/output_layer_norm/moments/variance/reduction_indices?
6transformer/layer_0/output_layer_norm/moments/varianceMeanCtransformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0Qtransformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(28
6transformer/layer_0/output_layer_norm/moments/variance?
5transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+27
5transformer/layer_0/output_layer_norm/batchnorm/add/y?
3transformer/layer_0/output_layer_norm/batchnorm/addAddV2?transformer/layer_0/output_layer_norm/moments/variance:output:0>transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/add?
5transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrt7transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02D
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?
3transformer/layer_0/output_layer_norm/batchnorm/mulMul9transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0Jtransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/mul?
5transformer/layer_0/output_layer_norm/batchnorm/mul_1Multransformer/layer_0/add_1:z:07transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/mul_1?
5transformer/layer_0/output_layer_norm/batchnorm/mul_2Mul;transformer/layer_0/output_layer_norm/moments/mean:output:07transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/mul_2?
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOpGtransformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02@
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?
3transformer/layer_0/output_layer_norm/batchnorm/subSubFtransformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:09transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer/layer_0/output_layer_norm/batchnorm/sub?
5transformer/layer_0/output_layer_norm/batchnorm/add_1AddV29transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:07transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????27
5transformer/layer_0/output_layer_norm/batchnorm/add_1?
lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda_1/strided_slice/stack?
lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2 
lambda_1/strided_slice/stack_1?
lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2 
lambda_1/strided_slice/stack_2?
lambda_1/strided_sliceStridedSlice9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0%lambda_1/strided_slice/stack:output:0'lambda_1/strided_slice/stack_1:output:0'lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
lambda_1/strided_slice?
lambda_1/SqueezeSqueezelambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
lambda_1/Squeeze?
&pooler_transform/MatMul/ReadVariableOpReadVariableOp/pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&pooler_transform/MatMul/ReadVariableOp?
pooler_transform/MatMulMatMullambda_1/Squeeze:output:0.pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
pooler_transform/MatMul?
'pooler_transform/BiasAdd/ReadVariableOpReadVariableOp0pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'pooler_transform/BiasAdd/ReadVariableOp?
pooler_transform/BiasAddBiasAdd!pooler_transform/MatMul:product:0/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
pooler_transform/BiasAdd?
pooler_transform/TanhTanh!pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
pooler_transform/Tanh?
IdentityIdentity9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0/^embeddings/layer_norm/batchnorm/ReadVariableOp3^embeddings/layer_norm/batchnorm/mul/ReadVariableOp(^pooler_transform/BiasAdd/ReadVariableOp'^pooler_transform/MatMul/ReadVariableOp"^position_embedding/ReadVariableOp4^transformer/layer_0/intermediate/add/ReadVariableOp>^transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp.^transformer/layer_0/output/add/ReadVariableOp8^transformer/layer_0/output/einsum/Einsum/ReadVariableOp?^transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpC^transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpG^transformer/layer_0/self_attention/attention_output/add/ReadVariableOpQ^transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:^transformer/layer_0/self_attention/key/add/ReadVariableOpD^transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp<^transformer/layer_0/self_attention/query/add/ReadVariableOpF^transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp<^transformer/layer_0/self_attention/value/add/ReadVariableOpF^transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpG^transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpK^transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp&^type_embeddings/MatMul/ReadVariableOp^word_embeddings/Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identitypooler_transform/Tanh:y:0/^embeddings/layer_norm/batchnorm/ReadVariableOp3^embeddings/layer_norm/batchnorm/mul/ReadVariableOp(^pooler_transform/BiasAdd/ReadVariableOp'^pooler_transform/MatMul/ReadVariableOp"^position_embedding/ReadVariableOp4^transformer/layer_0/intermediate/add/ReadVariableOp>^transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp.^transformer/layer_0/output/add/ReadVariableOp8^transformer/layer_0/output/einsum/Einsum/ReadVariableOp?^transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpC^transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpG^transformer/layer_0/self_attention/attention_output/add/ReadVariableOpQ^transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:^transformer/layer_0/self_attention/key/add/ReadVariableOpD^transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp<^transformer/layer_0/self_attention/query/add/ReadVariableOpF^transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp<^transformer/layer_0/self_attention/value/add/ReadVariableOpF^transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpG^transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpK^transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp&^type_embeddings/MatMul/ReadVariableOp^word_embeddings/Gather*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2`
.embeddings/layer_norm/batchnorm/ReadVariableOp.embeddings/layer_norm/batchnorm/ReadVariableOp2h
2embeddings/layer_norm/batchnorm/mul/ReadVariableOp2embeddings/layer_norm/batchnorm/mul/ReadVariableOp2R
'pooler_transform/BiasAdd/ReadVariableOp'pooler_transform/BiasAdd/ReadVariableOp2P
&pooler_transform/MatMul/ReadVariableOp&pooler_transform/MatMul/ReadVariableOp2F
!position_embedding/ReadVariableOp!position_embedding/ReadVariableOp2j
3transformer/layer_0/intermediate/add/ReadVariableOp3transformer/layer_0/intermediate/add/ReadVariableOp2~
=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp=transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp2^
-transformer/layer_0/output/add/ReadVariableOp-transformer/layer_0/output/add/ReadVariableOp2r
7transformer/layer_0/output/einsum/Einsum/ReadVariableOp7transformer/layer_0/output/einsum/Einsum/ReadVariableOp2?
>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp>transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp2?
Btransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpBtransformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp2?
Ftransformer/layer_0/self_attention/attention_output/add/ReadVariableOpFtransformer/layer_0/self_attention/attention_output/add/ReadVariableOp2?
Ptransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpPtransformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp2v
9transformer/layer_0/self_attention/key/add/ReadVariableOp9transformer/layer_0/self_attention/key/add/ReadVariableOp2?
Ctransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpCtransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp2z
;transformer/layer_0/self_attention/query/add/ReadVariableOp;transformer/layer_0/self_attention/query/add/ReadVariableOp2?
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpEtransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp2z
;transformer/layer_0/self_attention/value/add/ReadVariableOp;transformer/layer_0/self_attention/value/add/ReadVariableOp2?
Etransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpEtransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp2?
Ftransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpFtransformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp2?
Jtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpJtransformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp2N
%type_embeddings/MatMul/ReadVariableOp%type_embeddings/MatMul/ReadVariableOp20
word_embeddings/Gatherword_embeddings/Gather:Z V
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
?	
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_2210

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1?
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2?
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
?
?
4__inference_embeddings/layer_norm_layer_call_fn_4317

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_17542
StatefulPartitionedCall?
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
??
? 
A__inference_model_1_layer_call_and_return_conditional_losses_3513
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

identity_1??Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp?Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp?<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp?7transformer_encoder_1/position_embedding/ReadVariableOp?Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp?Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp?Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp?Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp?[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp?[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp?,transformer_encoder_1/word_embeddings/Gather?
3transformer_encoder_1/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3transformer_encoder_1/word_embeddings/Reshape/shape?
-transformer_encoder_1/word_embeddings/ReshapeReshapeinputs_0<transformer_encoder_1/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2/
-transformer_encoder_1/word_embeddings/Reshape?
,transformer_encoder_1/word_embeddings/GatherResourceGather5transformer_encoder_1_word_embeddings_gather_resource6transformer_encoder_1/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02.
,transformer_encoder_1/word_embeddings/Gather?
.transformer_encoder_1/word_embeddings/IdentityIdentity5transformer_encoder_1/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????20
.transformer_encoder_1/word_embeddings/Identity?
+transformer_encoder_1/word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2-
+transformer_encoder_1/word_embeddings/Shape?
5transformer_encoder_1/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:27
5transformer_encoder_1/word_embeddings/concat/values_1?
1transformer_encoder_1/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1transformer_encoder_1/word_embeddings/concat/axis?
,transformer_encoder_1/word_embeddings/concatConcatV24transformer_encoder_1/word_embeddings/Shape:output:0>transformer_encoder_1/word_embeddings/concat/values_1:output:0:transformer_encoder_1/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2.
,transformer_encoder_1/word_embeddings/concat?
/transformer_encoder_1/word_embeddings/Reshape_1Reshape7transformer_encoder_1/word_embeddings/Identity:output:05transformer_encoder_1/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/word_embeddings/Reshape_1?
.transformer_encoder_1/position_embedding/ShapeShape8transformer_encoder_1/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:20
.transformer_encoder_1/position_embedding/Shape?
<transformer_encoder_1/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<transformer_encoder_1/position_embedding/strided_slice/stack?
>transformer_encoder_1/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice/stack_1?
>transformer_encoder_1/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice/stack_2?
6transformer_encoder_1/position_embedding/strided_sliceStridedSlice7transformer_encoder_1/position_embedding/Shape:output:0Etransformer_encoder_1/position_embedding/strided_slice/stack:output:0Gtransformer_encoder_1/position_embedding/strided_slice/stack_1:output:0Gtransformer_encoder_1/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6transformer_encoder_1/position_embedding/strided_slice?
>transformer_encoder_1/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice_1/stack?
@transformer_encoder_1/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@transformer_encoder_1/position_embedding/strided_slice_1/stack_1?
@transformer_encoder_1/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@transformer_encoder_1/position_embedding/strided_slice_1/stack_2?
8transformer_encoder_1/position_embedding/strided_slice_1StridedSlice7transformer_encoder_1/position_embedding/Shape:output:0Gtransformer_encoder_1/position_embedding/strided_slice_1/stack:output:0Itransformer_encoder_1/position_embedding/strided_slice_1/stack_1:output:0Itransformer_encoder_1/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8transformer_encoder_1/position_embedding/strided_slice_1?
7transformer_encoder_1/position_embedding/ReadVariableOpReadVariableOp@transformer_encoder_1_position_embedding_readvariableop_resource*
_output_shapes

:*
dtype029
7transformer_encoder_1/position_embedding/ReadVariableOp?
>transformer_encoder_1/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>transformer_encoder_1/position_embedding/strided_slice_2/stack?
Btransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1?
@transformer_encoder_1/position_embedding/strided_slice_2/stack_1PackAtransformer_encoder_1/position_embedding/strided_slice_1:output:0Ktransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2B
@transformer_encoder_1/position_embedding/strided_slice_2/stack_1?
@transformer_encoder_1/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@transformer_encoder_1/position_embedding/strided_slice_2/stack_2?
8transformer_encoder_1/position_embedding/strided_slice_2StridedSlice?transformer_encoder_1/position_embedding/ReadVariableOp:value:0Gtransformer_encoder_1/position_embedding/strided_slice_2/stack:output:0Itransformer_encoder_1/position_embedding/strided_slice_2/stack_1:output:0Itransformer_encoder_1/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2:
8transformer_encoder_1/position_embedding/strided_slice_2?
<transformer_encoder_1/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<transformer_encoder_1/position_embedding/BroadcastTo/shape/2?
:transformer_encoder_1/position_embedding/BroadcastTo/shapePack?transformer_encoder_1/position_embedding/strided_slice:output:0Atransformer_encoder_1/position_embedding/strided_slice_1:output:0Etransformer_encoder_1/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2<
:transformer_encoder_1/position_embedding/BroadcastTo/shape?
4transformer_encoder_1/position_embedding/BroadcastToBroadcastToAtransformer_encoder_1/position_embedding/strided_slice_2:output:0Ctransformer_encoder_1/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/position_embedding/BroadcastTo?
3transformer_encoder_1/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3transformer_encoder_1/type_embeddings/Reshape/shape?
-transformer_encoder_1/type_embeddings/ReshapeReshapeinputs_2<transformer_encoder_1/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2/
-transformer_encoder_1/type_embeddings/Reshape?
6transformer_encoder_1/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6transformer_encoder_1/type_embeddings/one_hot/on_value?
7transformer_encoder_1/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7transformer_encoder_1/type_embeddings/one_hot/off_value?
3transformer_encoder_1/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :25
3transformer_encoder_1/type_embeddings/one_hot/depth?
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
;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp?
,transformer_encoder_1/type_embeddings/MatMulMatMul6transformer_encoder_1/type_embeddings/one_hot:output:0Ctransformer_encoder_1/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,transformer_encoder_1/type_embeddings/MatMul?
+transformer_encoder_1/type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2-
+transformer_encoder_1/type_embeddings/Shape?
5transformer_encoder_1/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:27
5transformer_encoder_1/type_embeddings/concat/values_1?
1transformer_encoder_1/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1transformer_encoder_1/type_embeddings/concat/axis?
,transformer_encoder_1/type_embeddings/concatConcatV24transformer_encoder_1/type_embeddings/Shape:output:0>transformer_encoder_1/type_embeddings/concat/values_1:output:0:transformer_encoder_1/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2.
,transformer_encoder_1/type_embeddings/concat?
/transformer_encoder_1/type_embeddings/Reshape_1Reshape6transformer_encoder_1/type_embeddings/MatMul:product:05transformer_encoder_1/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/type_embeddings/Reshape_1?
transformer_encoder_1/add_1/addAddV28transformer_encoder_1/word_embeddings/Reshape_1:output:0=transformer_encoder_1/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2!
transformer_encoder_1/add_1/add?
!transformer_encoder_1/add_1/add_1AddV2#transformer_encoder_1/add_1/add:z:08transformer_encoder_1/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2#
!transformer_encoder_1/add_1/add_1?
Jtransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jtransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices?
8transformer_encoder_1/embeddings/layer_norm/moments/meanMean%transformer_encoder_1/add_1/add_1:z:0Stransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2:
8transformer_encoder_1/embeddings/layer_norm/moments/mean?
@transformer_encoder_1/embeddings/layer_norm/moments/StopGradientStopGradientAtransformer_encoder_1/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2B
@transformer_encoder_1/embeddings/layer_norm/moments/StopGradient?
Etransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference%transformer_encoder_1/add_1/add_1:z:0Itransformer_encoder_1/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2G
Etransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference?
Ntransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2P
Ntransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices?
<transformer_encoder_1/embeddings/layer_norm/moments/varianceMeanItransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference:z:0Wtransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2>
<transformer_encoder_1/embeddings/layer_norm/moments/variance?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add/y?
9transformer_encoder_1/embeddings/layer_norm/batchnorm/addAddV2Etransformer_encoder_1/embeddings/layer_norm/moments/variance:output:0Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/add?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/RsqrtRsqrt=transformer_encoder_1/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt?
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02J
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?
9transformer_encoder_1/embeddings/layer_norm/batchnorm/mulMul?transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt:y:0Ptransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/mul?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1Mul%transformer_encoder_1/add_1/add_1:z:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2MulAtransformer_encoder_1/embeddings/layer_norm/moments/mean:output:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2?
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02F
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp?
9transformer_encoder_1/embeddings/layer_norm/batchnorm/subSubLtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0?transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/sub?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1AddV2?transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1:z:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1?
(transformer_encoder_1/dropout_1/IdentityIdentity?transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2*
(transformer_encoder_1/dropout_1/Identity?
1transformer_encoder_1/self_attention_mask_1/ShapeShape1transformer_encoder_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:23
1transformer_encoder_1/self_attention_mask_1/Shape?
?transformer_encoder_1/self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?transformer_encoder_1/self_attention_mask_1/strided_slice/stack?
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1?
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2?
9transformer_encoder_1/self_attention_mask_1/strided_sliceStridedSlice:transformer_encoder_1/self_attention_mask_1/Shape:output:0Htransformer_encoder_1/self_attention_mask_1/strided_slice/stack:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9transformer_encoder_1/self_attention_mask_1/strided_slice?
Atransformer_encoder_1/self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2?
;transformer_encoder_1/self_attention_mask_1/strided_slice_1StridedSlice:transformer_encoder_1/self_attention_mask_1/Shape:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_1?
3transformer_encoder_1/self_attention_mask_1/Shape_1Shapeinputs_1*
T0*
_output_shapes
:25
3transformer_encoder_1/self_attention_mask_1/Shape_1?
Atransformer_encoder_1/self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2?
;transformer_encoder_1/self_attention_mask_1/strided_slice_2StridedSlice<transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_2?
Atransformer_encoder_1/self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2?
;transformer_encoder_1/self_attention_mask_1/strided_slice_3StridedSlice<transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_3?
;transformer_encoder_1/self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;transformer_encoder_1/self_attention_mask_1/Reshape/shape/1?
9transformer_encoder_1/self_attention_mask_1/Reshape/shapePackBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/Reshape/shape/1:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2;
9transformer_encoder_1/self_attention_mask_1/Reshape/shape?
3transformer_encoder_1/self_attention_mask_1/ReshapeReshapeinputs_1Btransformer_encoder_1/self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer_encoder_1/self_attention_mask_1/Reshape?
0transformer_encoder_1/self_attention_mask_1/CastCast<transformer_encoder_1/self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????22
0transformer_encoder_1/self_attention_mask_1/Cast?
4transformer_encoder_1/self_attention_mask_1/ones/mulMulBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 26
4transformer_encoder_1/self_attention_mask_1/ones/mul?
8transformer_encoder_1/self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2:
8transformer_encoder_1/self_attention_mask_1/ones/mul_1/y?
6transformer_encoder_1/self_attention_mask_1/ones/mul_1Mul8transformer_encoder_1/self_attention_mask_1/ones/mul:z:0Atransformer_encoder_1/self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 28
6transformer_encoder_1/self_attention_mask_1/ones/mul_1?
7transformer_encoder_1/self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?29
7transformer_encoder_1/self_attention_mask_1/ones/Less/y?
5transformer_encoder_1/self_attention_mask_1/ones/LessLess:transformer_encoder_1/self_attention_mask_1/ones/mul_1:z:0@transformer_encoder_1/self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 27
5transformer_encoder_1/self_attention_mask_1/ones/Less?
9transformer_encoder_1/self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2;
9transformer_encoder_1/self_attention_mask_1/ones/packed/2?
7transformer_encoder_1/self_attention_mask_1/ones/packedPackBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0Btransformer_encoder_1/self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:29
7transformer_encoder_1/self_attention_mask_1/ones/packed?
6transformer_encoder_1/self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6transformer_encoder_1/self_attention_mask_1/ones/Const?
0transformer_encoder_1/self_attention_mask_1/onesFill@transformer_encoder_1/self_attention_mask_1/ones/packed:output:0?transformer_encoder_1/self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????22
0transformer_encoder_1/self_attention_mask_1/ones?
/transformer_encoder_1/self_attention_mask_1/mulMul9transformer_encoder_1/self_attention_mask_1/ones:output:04transformer_encoder_1/self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????21
/transformer_encoder_1/self_attention_mask_1/mul?
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpdtransformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02]
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
Ltransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/Identity:output:0ctransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum?
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpZtransformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02S
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp?
Btransformer_encoder_1/transformer/layer_0/self_attention/query/addAddV2Utransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum:output:0Ytransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2D
Btransformer_encoder_1/transformer/layer_0/self_attention/query/add?
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpbtransformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02[
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?
Jtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/Identity:output:0atransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2L
Jtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum?
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpXtransformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02Q
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp?
@transformer_encoder_1/transformer/layer_0/self_attention/key/addAddV2Stransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum:output:0Wtransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2B
@transformer_encoder_1/transformer/layer_0/self_attention/key/add?
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpdtransformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02]
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?
Ltransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/Identity:output:0ctransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum?
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpZtransformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02S
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp?
Btransformer_encoder_1/transformer/layer_0/self_attention/value/addAddV2Utransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum:output:0Ytransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2D
Btransformer_encoder_1/transformer/layer_0/self_attention/value/add?
Ftransformer_encoder_1/transformer/layer_0/self_attention/einsum/EinsumEinsumDtransformer_encoder_1/transformer/layer_0/self_attention/key/add:z:0Ftransformer_encoder_1/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2H
Ftransformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum?
>transformer_encoder_1/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2@
>transformer_encoder_1/transformer/layer_0/self_attention/Mul/y?
<transformer_encoder_1/transformer/layer_0/self_attention/MulMulOtransformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum:output:0Gtransformer_encoder_1/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<transformer_encoder_1/transformer/layer_0/self_attention/Mul?
Vtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2X
Vtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim?
Rtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims
ExpandDims3transformer_encoder_1/self_attention_mask_1/mul:z:0_transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims?
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/x?
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/subSubVtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/x:output:0[transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2M
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub?
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/y?
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mulMulOtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub:z:0Vtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2M
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul?
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/addAddV2@transformer_encoder_1/transformer/layer_0/self_attention/Mul:z:0Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2M
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/add?
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/SoftmaxSoftmaxOtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2Q
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/Softmax?
Itransformer_encoder_1/transformer/layer_0/self_attention/dropout/IdentityIdentityYtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2K
Itransformer_encoder_1/transformer/layer_0/self_attention/dropout/Identity?
Htransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/EinsumEinsumRtransformer_encoder_1/transformer/layer_0/self_attention/dropout/Identity:output:0Ftransformer_encoder_1/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2J
Htransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum?
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpotransformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02h
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?
Wtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsumQtransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum:output:0ntransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2Y
Wtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum?
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpetransformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02^
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
Mtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/addAddV2`transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0dtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add?
<transformer_encoder_1/transformer/layer_0/dropout_1/IdentityIdentityQtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2>
<transformer_encoder_1/transformer/layer_0/dropout_1/Identity?
-transformer_encoder_1/transformer/layer_0/addAddV21transformer_encoder_1/dropout_1/Identity:output:0Etransformer_encoder_1/transformer/layer_0/dropout_1/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder_1/transformer/layer_0/add?
btransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2d
btransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices?
Ptransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/meanMean1transformer_encoder_1/transformer/layer_0/add:z:0ktransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2R
Ptransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean?
Xtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientYtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient?
]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference1transformer_encoder_1/transformer/layer_0/add:z:0atransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2_
]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference?
ftransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2h
ftransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices?
Ttransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/varianceMeanatransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0otransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2V
Ttransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y?
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrtUtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt?
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpitransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02b
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulWtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0htransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul1transformer_encoder_1/transformer/layer_0/add:z:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulYtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2?
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpetransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02^
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/subSubdtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1?
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp\transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02U
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?
Dtransformer_encoder_1/transformer/layer_0/intermediate/einsum/EinsumEinsumWtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0[transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2F
Dtransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum?
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOpRtransformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02K
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp?
:transformer_encoder_1/transformer/layer_0/intermediate/addAddV2Mtransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum:output:0Qtransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/intermediate/add?
:transformer_encoder_1/transformer/layer_0/activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2<
:transformer_encoder_1/transformer/layer_0/activation/Pow/y?
8transformer_encoder_1/transformer/layer_0/activation/PowPow>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Ctransformer_encoder_1/transformer/layer_0/activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder_1/transformer/layer_0/activation/Pow?
:transformer_encoder_1/transformer/layer_0/activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2<
:transformer_encoder_1/transformer/layer_0/activation/mul/x?
8transformer_encoder_1/transformer/layer_0/activation/mulMulCtransformer_encoder_1/transformer/layer_0/activation/mul/x:output:0<transformer_encoder_1/transformer/layer_0/activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder_1/transformer/layer_0/activation/mul?
8transformer_encoder_1/transformer/layer_0/activation/addAddV2>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0<transformer_encoder_1/transformer/layer_0/activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder_1/transformer/layer_0/activation/add?
<transformer_encoder_1/transformer/layer_0/activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2>
<transformer_encoder_1/transformer/layer_0/activation/mul_1/x?
:transformer_encoder_1/transformer/layer_0/activation/mul_1MulEtransformer_encoder_1/transformer/layer_0/activation/mul_1/x:output:0<transformer_encoder_1/transformer/layer_0/activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation/mul_1?
9transformer_encoder_1/transformer/layer_0/activation/TanhTanh>transformer_encoder_1/transformer/layer_0/activation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2;
9transformer_encoder_1/transformer/layer_0/activation/Tanh?
<transformer_encoder_1/transformer/layer_0/activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2>
<transformer_encoder_1/transformer/layer_0/activation/add_1/x?
:transformer_encoder_1/transformer/layer_0/activation/add_1AddV2Etransformer_encoder_1/transformer/layer_0/activation/add_1/x:output:0=transformer_encoder_1/transformer/layer_0/activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation/add_1?
<transformer_encoder_1/transformer/layer_0/activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2>
<transformer_encoder_1/transformer/layer_0/activation/mul_2/x?
:transformer_encoder_1/transformer/layer_0/activation/mul_2MulEtransformer_encoder_1/transformer/layer_0/activation/mul_2/x:output:0>transformer_encoder_1/transformer/layer_0/activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation/mul_2?
:transformer_encoder_1/transformer/layer_0/activation/mul_3Mul>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0>transformer_encoder_1/transformer/layer_0/activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation/mul_3?
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02O
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
>transformer_encoder_1/transformer/layer_0/output/einsum/EinsumEinsum>transformer_encoder_1/transformer/layer_0/activation/mul_3:z:0Utransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2@
>transformer_encoder_1/transformer/layer_0/output/einsum/Einsum?
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpReadVariableOpLtransformer_encoder_1_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02E
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp?
4transformer_encoder_1/transformer/layer_0/output/addAddV2Gtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum:output:0Ktransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/transformer/layer_0/output/add?
<transformer_encoder_1/transformer/layer_0/dropout_2/IdentityIdentity8transformer_encoder_1/transformer/layer_0/output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2>
<transformer_encoder_1/transformer/layer_0/dropout_2/Identity?
/transformer_encoder_1/transformer/layer_0/add_1AddV2Etransformer_encoder_1/transformer/layer_0/dropout_2/Identity:output:0Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/transformer/layer_0/add_1?
Ztransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2\
Ztransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices?
Htransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanMean3transformer_encoder_1/transformer/layer_0/add_1:z:0ctransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2J
Htransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean?
Ptransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradientQtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2R
Ptransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient?
Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference3transformer_encoder_1/transformer/layer_0/add_1:z:0Ytransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2W
Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference?
^transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2`
^transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices?
Ltransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceMeanYtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0gtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2N
Ltransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y?
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/addAddV2Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance:output:0Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtMtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpatransformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02Z
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mulMulOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0`transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul3transformer_encoder_1/transformer/layer_0/add_1:z:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2MulQtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2?
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOp]transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02V
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/subSub\transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0Otransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2Otransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1?
2transformer_encoder_1/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            24
2transformer_encoder_1/lambda_1/strided_slice/stack?
4transformer_encoder_1/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           26
4transformer_encoder_1/lambda_1/strided_slice/stack_1?
4transformer_encoder_1/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         26
4transformer_encoder_1/lambda_1/strided_slice/stack_2?
,transformer_encoder_1/lambda_1/strided_sliceStridedSliceOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0;transformer_encoder_1/lambda_1/strided_slice/stack:output:0=transformer_encoder_1/lambda_1/strided_slice/stack_1:output:0=transformer_encoder_1/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2.
,transformer_encoder_1/lambda_1/strided_slice?
&transformer_encoder_1/lambda_1/SqueezeSqueeze5transformer_encoder_1/lambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2(
&transformer_encoder_1/lambda_1/Squeeze?
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOpReadVariableOpEtransformer_encoder_1_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp?
-transformer_encoder_1/pooler_transform/MatMulMatMul/transformer_encoder_1/lambda_1/Squeeze:output:0Dtransformer_encoder_1/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2/
-transformer_encoder_1/pooler_transform/MatMul?
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpFtransformer_encoder_1_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp?
.transformer_encoder_1/pooler_transform/BiasAddBiasAdd7transformer_encoder_1/pooler_transform/MatMul:product:0Etransformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.transformer_encoder_1/pooler_transform/BiasAdd?
+transformer_encoder_1/pooler_transform/TanhTanh7transformer_encoder_1/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2-
+transformer_encoder_1/pooler_transform/Tanh?
IdentityIdentity/transformer_encoder_1/pooler_transform/Tanh:y:0E^transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpI^transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp>^transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp=^transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp8^transformer_encoder_1/position_embedding/ReadVariableOpJ^transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpT^transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpD^transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpN^transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpU^transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpY^transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp]^transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpg^transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpP^transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpZ^transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpR^transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp\^transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpR^transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp\^transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp]^transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpa^transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp<^transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp-^transformer_encoder_1/word_embeddings/Gather*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0E^transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpI^transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp>^transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp=^transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp8^transformer_encoder_1/position_embedding/ReadVariableOpJ^transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpT^transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpD^transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpN^transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpU^transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpY^transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp]^transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpg^transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpP^transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpZ^transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpR^transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp\^transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpR^transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp\^transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp]^transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpa^transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp<^transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp-^transformer_encoder_1/word_embeddings/Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2?
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpDtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp2?
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpHtransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp2~
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp2|
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp2r
7transformer_encoder_1/position_embedding/ReadVariableOp7transformer_encoder_1/position_embedding/ReadVariableOp2?
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpItransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp2?
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpStransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp2?
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpCtransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp2?
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpMtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp2?
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpTtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp2?
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpXtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp2?
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp2?
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpOtransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp2?
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpYtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp2?
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpQtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp2?
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp2?
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpQtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp2?
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp2?
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp2?
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp2z
;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp2\
,transformer_encoder_1/word_embeddings/Gather,transformer_encoder_1/word_embeddings/Gather:Z V
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
?
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_4334

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
?
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_1782

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Const?
dropout/MulMulinputsdropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/Cast?
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
?
?
2__inference_transformer/layer_0_layer_call_fn_4660
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
identity??StatefulPartitionedCall?
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
GPU 2J 8? *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_20812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????????????:'???????????????????????????::::::::::::::::22
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
?
D
(__inference_dropout_1_layer_call_fn_4344

inputs
identity?
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
GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_17872
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
??
?"
__inference__wrapped_model_1617
input_word_ids

input_mask
input_type_idsA
=model_1_transformer_encoder_1_word_embeddings_gather_resourceL
Hmodel_1_transformer_encoder_1_position_embedding_readvariableop_resourceP
Lmodel_1_transformer_encoder_1_type_embeddings_matmul_readvariableop_resource]
Ymodel_1_transformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resourceY
Umodel_1_transformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resourcep
lmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resourcef
bmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resourcen
jmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resourced
`model_1_transformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resourcep
lmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resourcef
bmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resource{
wmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourceq
mmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resourceu
qmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourceq
mmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resourceh
dmodel_1_transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource^
Zmodel_1_transformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resourceb
^model_1_transformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resourceX
Tmodel_1_transformer_encoder_1_transformer_layer_0_output_add_readvariableop_resourcem
imodel_1_transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resourcei
emodel_1_transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resourceQ
Mmodel_1_transformer_encoder_1_pooler_transform_matmul_readvariableop_resourceR
Nmodel_1_transformer_encoder_1_pooler_transform_biasadd_readvariableop_resource
identity

identity_1??Lmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp?Pmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?Emodel_1/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp?Dmodel_1/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp??model_1/transformer_encoder_1/position_embedding/ReadVariableOp?Qmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp?[model_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?Kmodel_1/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp?Umodel_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?\model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?`model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?Wmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp?amodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp?cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp?cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?hmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?Cmodel_1/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp?4model_1/transformer_encoder_1/word_embeddings/Gather?
;model_1/transformer_encoder_1/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2=
;model_1/transformer_encoder_1/word_embeddings/Reshape/shape?
5model_1/transformer_encoder_1/word_embeddings/ReshapeReshapeinput_word_idsDmodel_1/transformer_encoder_1/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????27
5model_1/transformer_encoder_1/word_embeddings/Reshape?
4model_1/transformer_encoder_1/word_embeddings/GatherResourceGather=model_1_transformer_encoder_1_word_embeddings_gather_resource>model_1/transformer_encoder_1/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype026
4model_1/transformer_encoder_1/word_embeddings/Gather?
6model_1/transformer_encoder_1/word_embeddings/IdentityIdentity=model_1/transformer_encoder_1/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????28
6model_1/transformer_encoder_1/word_embeddings/Identity?
3model_1/transformer_encoder_1/word_embeddings/ShapeShapeinput_word_ids*
T0*
_output_shapes
:25
3model_1/transformer_encoder_1/word_embeddings/Shape?
=model_1/transformer_encoder_1/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_1/transformer_encoder_1/word_embeddings/concat/values_1?
9model_1/transformer_encoder_1/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9model_1/transformer_encoder_1/word_embeddings/concat/axis?
4model_1/transformer_encoder_1/word_embeddings/concatConcatV2<model_1/transformer_encoder_1/word_embeddings/Shape:output:0Fmodel_1/transformer_encoder_1/word_embeddings/concat/values_1:output:0Bmodel_1/transformer_encoder_1/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:26
4model_1/transformer_encoder_1/word_embeddings/concat?
7model_1/transformer_encoder_1/word_embeddings/Reshape_1Reshape?model_1/transformer_encoder_1/word_embeddings/Identity:output:0=model_1/transformer_encoder_1/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????29
7model_1/transformer_encoder_1/word_embeddings/Reshape_1?
6model_1/transformer_encoder_1/position_embedding/ShapeShape@model_1/transformer_encoder_1/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:28
6model_1/transformer_encoder_1/position_embedding/Shape?
Dmodel_1/transformer_encoder_1/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dmodel_1/transformer_encoder_1/position_embedding/strided_slice/stack?
Fmodel_1/transformer_encoder_1/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fmodel_1/transformer_encoder_1/position_embedding/strided_slice/stack_1?
Fmodel_1/transformer_encoder_1/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fmodel_1/transformer_encoder_1/position_embedding/strided_slice/stack_2?
>model_1/transformer_encoder_1/position_embedding/strided_sliceStridedSlice?model_1/transformer_encoder_1/position_embedding/Shape:output:0Mmodel_1/transformer_encoder_1/position_embedding/strided_slice/stack:output:0Omodel_1/transformer_encoder_1/position_embedding/strided_slice/stack_1:output:0Omodel_1/transformer_encoder_1/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2@
>model_1/transformer_encoder_1/position_embedding/strided_slice?
Fmodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fmodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stack?
Hmodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hmodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stack_1?
Hmodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hmodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stack_2?
@model_1/transformer_encoder_1/position_embedding/strided_slice_1StridedSlice?model_1/transformer_encoder_1/position_embedding/Shape:output:0Omodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stack:output:0Qmodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stack_1:output:0Qmodel_1/transformer_encoder_1/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@model_1/transformer_encoder_1/position_embedding/strided_slice_1?
?model_1/transformer_encoder_1/position_embedding/ReadVariableOpReadVariableOpHmodel_1_transformer_encoder_1_position_embedding_readvariableop_resource*
_output_shapes

:*
dtype02A
?model_1/transformer_encoder_1/position_embedding/ReadVariableOp?
Fmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2H
Fmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack?
Jmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2L
Jmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_1/1?
Hmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_1PackImodel_1/transformer_encoder_1/position_embedding/strided_slice_1:output:0Smodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2J
Hmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_1?
Hmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2J
Hmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_2?
@model_1/transformer_encoder_1/position_embedding/strided_slice_2StridedSliceGmodel_1/transformer_encoder_1/position_embedding/ReadVariableOp:value:0Omodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack:output:0Qmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_1:output:0Qmodel_1/transformer_encoder_1/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2B
@model_1/transformer_encoder_1/position_embedding/strided_slice_2?
Dmodel_1/transformer_encoder_1/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2F
Dmodel_1/transformer_encoder_1/position_embedding/BroadcastTo/shape/2?
Bmodel_1/transformer_encoder_1/position_embedding/BroadcastTo/shapePackGmodel_1/transformer_encoder_1/position_embedding/strided_slice:output:0Imodel_1/transformer_encoder_1/position_embedding/strided_slice_1:output:0Mmodel_1/transformer_encoder_1/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2D
Bmodel_1/transformer_encoder_1/position_embedding/BroadcastTo/shape?
<model_1/transformer_encoder_1/position_embedding/BroadcastToBroadcastToImodel_1/transformer_encoder_1/position_embedding/strided_slice_2:output:0Kmodel_1/transformer_encoder_1/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2>
<model_1/transformer_encoder_1/position_embedding/BroadcastTo?
;model_1/transformer_encoder_1/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2=
;model_1/transformer_encoder_1/type_embeddings/Reshape/shape?
5model_1/transformer_encoder_1/type_embeddings/ReshapeReshapeinput_type_idsDmodel_1/transformer_encoder_1/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????27
5model_1/transformer_encoder_1/type_embeddings/Reshape?
>model_1/transformer_encoder_1/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2@
>model_1/transformer_encoder_1/type_embeddings/one_hot/on_value?
?model_1/transformer_encoder_1/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2A
?model_1/transformer_encoder_1/type_embeddings/one_hot/off_value?
;model_1/transformer_encoder_1/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :2=
;model_1/transformer_encoder_1/type_embeddings/one_hot/depth?
5model_1/transformer_encoder_1/type_embeddings/one_hotOneHot>model_1/transformer_encoder_1/type_embeddings/Reshape:output:0Dmodel_1/transformer_encoder_1/type_embeddings/one_hot/depth:output:0Gmodel_1/transformer_encoder_1/type_embeddings/one_hot/on_value:output:0Hmodel_1/transformer_encoder_1/type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????27
5model_1/transformer_encoder_1/type_embeddings/one_hot?
Cmodel_1/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOpReadVariableOpLmodel_1_transformer_encoder_1_type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02E
Cmodel_1/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp?
4model_1/transformer_encoder_1/type_embeddings/MatMulMatMul>model_1/transformer_encoder_1/type_embeddings/one_hot:output:0Kmodel_1/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????26
4model_1/transformer_encoder_1/type_embeddings/MatMul?
3model_1/transformer_encoder_1/type_embeddings/ShapeShapeinput_type_ids*
T0*
_output_shapes
:25
3model_1/transformer_encoder_1/type_embeddings/Shape?
=model_1/transformer_encoder_1/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=model_1/transformer_encoder_1/type_embeddings/concat/values_1?
9model_1/transformer_encoder_1/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2;
9model_1/transformer_encoder_1/type_embeddings/concat/axis?
4model_1/transformer_encoder_1/type_embeddings/concatConcatV2<model_1/transformer_encoder_1/type_embeddings/Shape:output:0Fmodel_1/transformer_encoder_1/type_embeddings/concat/values_1:output:0Bmodel_1/transformer_encoder_1/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:26
4model_1/transformer_encoder_1/type_embeddings/concat?
7model_1/transformer_encoder_1/type_embeddings/Reshape_1Reshape>model_1/transformer_encoder_1/type_embeddings/MatMul:product:0=model_1/transformer_encoder_1/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????29
7model_1/transformer_encoder_1/type_embeddings/Reshape_1?
'model_1/transformer_encoder_1/add_1/addAddV2@model_1/transformer_encoder_1/word_embeddings/Reshape_1:output:0Emodel_1/transformer_encoder_1/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'model_1/transformer_encoder_1/add_1/add?
)model_1/transformer_encoder_1/add_1/add_1AddV2+model_1/transformer_encoder_1/add_1/add:z:0@model_1/transformer_encoder_1/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2+
)model_1/transformer_encoder_1/add_1/add_1?
Rmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2T
Rmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices?
@model_1/transformer_encoder_1/embeddings/layer_norm/moments/meanMean-model_1/transformer_encoder_1/add_1/add_1:z:0[model_1/transformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2B
@model_1/transformer_encoder_1/embeddings/layer_norm/moments/mean?
Hmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/StopGradientStopGradientImodel_1/transformer_encoder_1/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2J
Hmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/StopGradient?
Mmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference-model_1/transformer_encoder_1/add_1/add_1:z:0Qmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2O
Mmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference?
Vmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2X
Vmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices?
Dmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/varianceMeanQmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference:z:0_model_1/transformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2F
Dmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/variance?
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2E
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/add/y?
Amodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/addAddV2Mmodel_1/transformer_encoder_1/embeddings/layer_norm/moments/variance:output:0Lmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2C
Amodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/add?
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/RsqrtRsqrtEmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2E
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt?
Pmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpYmodel_1_transformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02R
Pmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?
Amodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mulMulGmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt:y:0Xmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2C
Amodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul?
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1Mul-model_1/transformer_encoder_1/add_1/add_1:z:0Emodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2E
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1?
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2MulImodel_1/transformer_encoder_1/embeddings/layer_norm/moments/mean:output:0Emodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2E
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2?
Lmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpUmodel_1_transformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02N
Lmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp?
Amodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/subSubTmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0Gmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2C
Amodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/sub?
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1AddV2Gmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1:z:0Emodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2E
Cmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1?
0model_1/transformer_encoder_1/dropout_1/IdentityIdentityGmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????22
0model_1/transformer_encoder_1/dropout_1/Identity?
9model_1/transformer_encoder_1/self_attention_mask_1/ShapeShape9model_1/transformer_encoder_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:2;
9model_1/transformer_encoder_1/self_attention_mask_1/Shape?
Gmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stack?
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_1?
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_2?
Amodel_1/transformer_encoder_1/self_attention_mask_1/strided_sliceStridedSliceBmodel_1/transformer_encoder_1/self_attention_mask_1/Shape:output:0Pmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stack:output:0Rmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_1:output:0Rmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Amodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice?
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack?
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1?
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2?
Cmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1StridedSliceBmodel_1/transformer_encoder_1/self_attention_mask_1/Shape:output:0Rmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack:output:0Tmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1:output:0Tmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1?
;model_1/transformer_encoder_1/self_attention_mask_1/Shape_1Shape
input_mask*
T0*
_output_shapes
:2=
;model_1/transformer_encoder_1/self_attention_mask_1/Shape_1?
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2K
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack?
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1?
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2?
Cmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2StridedSliceDmodel_1/transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Rmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack:output:0Tmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1:output:0Tmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_2?
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Imodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack?
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1?
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2?
Cmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3StridedSliceDmodel_1/transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Rmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack:output:0Tmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1:output:0Tmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3?
Cmodel_1/transformer_encoder_1/self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2E
Cmodel_1/transformer_encoder_1/self_attention_mask_1/Reshape/shape/1?
Amodel_1/transformer_encoder_1/self_attention_mask_1/Reshape/shapePackJmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice:output:0Lmodel_1/transformer_encoder_1/self_attention_mask_1/Reshape/shape/1:output:0Lmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2C
Amodel_1/transformer_encoder_1/self_attention_mask_1/Reshape/shape?
;model_1/transformer_encoder_1/self_attention_mask_1/ReshapeReshape
input_maskJmodel_1/transformer_encoder_1/self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2=
;model_1/transformer_encoder_1/self_attention_mask_1/Reshape?
8model_1/transformer_encoder_1/self_attention_mask_1/CastCastDmodel_1/transformer_encoder_1/self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2:
8model_1/transformer_encoder_1/self_attention_mask_1/Cast?
<model_1/transformer_encoder_1/self_attention_mask_1/ones/mulMulJmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice:output:0Lmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 2>
<model_1/transformer_encoder_1/self_attention_mask_1/ones/mul?
@model_1/transformer_encoder_1/self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2B
@model_1/transformer_encoder_1/self_attention_mask_1/ones/mul_1/y?
>model_1/transformer_encoder_1/self_attention_mask_1/ones/mul_1Mul@model_1/transformer_encoder_1/self_attention_mask_1/ones/mul:z:0Imodel_1/transformer_encoder_1/self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2@
>model_1/transformer_encoder_1/self_attention_mask_1/ones/mul_1?
?model_1/transformer_encoder_1/self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2A
?model_1/transformer_encoder_1/self_attention_mask_1/ones/Less/y?
=model_1/transformer_encoder_1/self_attention_mask_1/ones/LessLessBmodel_1/transformer_encoder_1/self_attention_mask_1/ones/mul_1:z:0Hmodel_1/transformer_encoder_1/self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 2?
=model_1/transformer_encoder_1/self_attention_mask_1/ones/Less?
Amodel_1/transformer_encoder_1/self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2C
Amodel_1/transformer_encoder_1/self_attention_mask_1/ones/packed/2?
?model_1/transformer_encoder_1/self_attention_mask_1/ones/packedPackJmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice:output:0Lmodel_1/transformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0Jmodel_1/transformer_encoder_1/self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2A
?model_1/transformer_encoder_1/self_attention_mask_1/ones/packed?
>model_1/transformer_encoder_1/self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2@
>model_1/transformer_encoder_1/self_attention_mask_1/ones/Const?
8model_1/transformer_encoder_1/self_attention_mask_1/onesFillHmodel_1/transformer_encoder_1/self_attention_mask_1/ones/packed:output:0Gmodel_1/transformer_encoder_1/self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2:
8model_1/transformer_encoder_1/self_attention_mask_1/ones?
7model_1/transformer_encoder_1/self_attention_mask_1/mulMulAmodel_1/transformer_encoder_1/self_attention_mask_1/ones:output:0<model_1/transformer_encoder_1/self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????29
7model_1/transformer_encoder_1/self_attention_mask_1/mul?
cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOplmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02e
cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
Tmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/EinsumEinsum9model_1/transformer_encoder_1/dropout_1/Identity:output:0kmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2V
Tmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum?
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpbmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02[
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp?
Jmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/addAddV2]model_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum:output:0amodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2L
Jmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add?
amodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpjmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02c
amodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?
Rmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/EinsumEinsum9model_1/transformer_encoder_1/dropout_1/Identity:output:0imodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2T
Rmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum?
Wmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOp`model_1_transformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02Y
Wmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp?
Hmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/addAddV2[model_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum:output:0_model_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2J
Hmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add?
cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOplmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02e
cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?
Tmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/EinsumEinsum9model_1/transformer_encoder_1/dropout_1/Identity:output:0kmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2V
Tmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum?
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpbmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02[
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp?
Jmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/addAddV2]model_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum:output:0amodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2L
Jmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add?
Nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/einsum/EinsumEinsumLmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add:z:0Nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2P
Nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum?
Fmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2H
Fmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/Mul/y?
Dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/MulMulWmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum:output:0Omodel_1/transformer_encoder_1/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2F
Dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/Mul?
^model_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2`
^model_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim?
Zmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims
ExpandDims;model_1/transformer_encoder_1/self_attention_mask_1/mul:z:0gmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2\
Zmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims?
Umodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2W
Umodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/x?
Smodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/subSub^model_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/x:output:0cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2U
Smodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub?
Umodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2W
Umodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/y?
Smodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mulMulWmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub:z:0^model_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2U
Smodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul?
Smodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/addAddV2Hmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/Mul:z:0Wmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2U
Smodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/add?
Wmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/SoftmaxSoftmaxWmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2Y
Wmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/Softmax?
Qmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/dropout/IdentityIdentityamodel_1/transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2S
Qmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/dropout/Identity?
Pmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/einsum_1/EinsumEinsumZmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/dropout/Identity:output:0Nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2R
Pmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum?
nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpwmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02p
nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?
_model_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsumYmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum:output:0vmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2a
_model_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum?
dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpmmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02f
dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
Umodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/addAddV2hmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0lmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2W
Umodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add?
Dmodel_1/transformer_encoder_1/transformer/layer_0/dropout_1/IdentityIdentityYmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2F
Dmodel_1/transformer_encoder_1/transformer/layer_0/dropout_1/Identity?
5model_1/transformer_encoder_1/transformer/layer_0/addAddV29model_1/transformer_encoder_1/dropout_1/Identity:output:0Mmodel_1/transformer_encoder_1/transformer/layer_0/dropout_1/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????27
5model_1/transformer_encoder_1/transformer/layer_0/add?
jmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2l
jmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices?
Xmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/meanMean9model_1/transformer_encoder_1/transformer/layer_0/add:z:0smodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2Z
Xmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean?
`model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientamodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2b
`model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient?
emodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference9model_1/transformer_encoder_1/transformer/layer_0/add:z:0imodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2g
emodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference?
nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2p
nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices?
\model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/varianceMeanimodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0wmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2^
\model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance?
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2]
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y?
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2emodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2[
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add?
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrt]model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2]
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt?
hmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpqmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02j
hmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMul_model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0pmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2[
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul9model_1/transformer_encoder_1/transformer/layer_0/add:z:0]model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2]
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1?
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2Mulamodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0]model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2]
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2?
dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpmmodel_1_transformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02f
dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/subSublmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0_model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2[
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub?
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2_model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0]model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2]
[model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1?
[model_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOpdmodel_1_transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02]
[model_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?
Lmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/EinsumEinsum_model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0cmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2N
Lmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum?
Qmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOpZmodel_1_transformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02S
Qmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp?
Bmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/addAddV2Umodel_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum:output:0Ymodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2D
Bmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add?
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2D
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/Pow/y?
@model_1/transformer_encoder_1/transformer/layer_0/activation/PowPowFmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Kmodel_1/transformer_encoder_1/transformer/layer_0/activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2B
@model_1/transformer_encoder_1/transformer/layer_0/activation/Pow?
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2D
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul/x?
@model_1/transformer_encoder_1/transformer/layer_0/activation/mulMulKmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul/x:output:0Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2B
@model_1/transformer_encoder_1/transformer/layer_0/activation/mul?
@model_1/transformer_encoder_1/transformer/layer_0/activation/addAddV2Fmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2B
@model_1/transformer_encoder_1/transformer/layer_0/activation/add?
Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2F
Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_1/x?
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_1MulMmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_1/x:output:0Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2D
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_1?
Amodel_1/transformer_encoder_1/transformer/layer_0/activation/TanhTanhFmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2C
Amodel_1/transformer_encoder_1/transformer/layer_0/activation/Tanh?
Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2F
Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/add_1/x?
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/add_1AddV2Mmodel_1/transformer_encoder_1/transformer/layer_0/activation/add_1/x:output:0Emodel_1/transformer_encoder_1/transformer/layer_0/activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2D
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/add_1?
Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2F
Dmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_2/x?
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_2MulMmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_2/x:output:0Fmodel_1/transformer_encoder_1/transformer/layer_0/activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2D
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_2?
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_3MulFmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Fmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2D
Bmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_3?
Umodel_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOp^model_1_transformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02W
Umodel_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
Fmodel_1/transformer_encoder_1/transformer/layer_0/output/einsum/EinsumEinsumFmodel_1/transformer_encoder_1/transformer/layer_0/activation/mul_3:z:0]model_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2H
Fmodel_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum?
Kmodel_1/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpReadVariableOpTmodel_1_transformer_encoder_1_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02M
Kmodel_1/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp?
<model_1/transformer_encoder_1/transformer/layer_0/output/addAddV2Omodel_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum:output:0Smodel_1/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2>
<model_1/transformer_encoder_1/transformer/layer_0/output/add?
Dmodel_1/transformer_encoder_1/transformer/layer_0/dropout_2/IdentityIdentity@model_1/transformer_encoder_1/transformer/layer_0/output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2F
Dmodel_1/transformer_encoder_1/transformer/layer_0/dropout_2/Identity?
7model_1/transformer_encoder_1/transformer/layer_0/add_1AddV2Mmodel_1/transformer_encoder_1/transformer/layer_0/dropout_2/Identity:output:0_model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????29
7model_1/transformer_encoder_1/transformer/layer_0/add_1?
bmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2d
bmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices?
Pmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanMean;model_1/transformer_encoder_1/transformer/layer_0/add_1:z:0kmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2R
Pmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean?
Xmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradientYmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient?
]model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference;model_1/transformer_encoder_1/transformer/layer_0/add_1:z:0amodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2_
]model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference?
fmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2h
fmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices?
Tmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceMeanamodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0omodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2V
Tmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance?
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2U
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y?
Qmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/addAddV2]model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance:output:0\model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2S
Qmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add?
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtUmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
`model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpimodel_1_transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02b
`model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?
Qmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mulMulWmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0hmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2S
Qmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul?
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul;model_1/transformer_encoder_1/transformer/layer_0/add_1:z:0Umodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1?
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2MulYmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0Umodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2?
\model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOpemodel_1_transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02^
\model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?
Qmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/subSubdmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0Wmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub?
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2Wmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Umodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Smodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1?
:model_1/transformer_encoder_1/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2<
:model_1/transformer_encoder_1/lambda_1/strided_slice/stack?
<model_1/transformer_encoder_1/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2>
<model_1/transformer_encoder_1/lambda_1/strided_slice/stack_1?
<model_1/transformer_encoder_1/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2>
<model_1/transformer_encoder_1/lambda_1/strided_slice/stack_2?
4model_1/transformer_encoder_1/lambda_1/strided_sliceStridedSliceWmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0Cmodel_1/transformer_encoder_1/lambda_1/strided_slice/stack:output:0Emodel_1/transformer_encoder_1/lambda_1/strided_slice/stack_1:output:0Emodel_1/transformer_encoder_1/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask26
4model_1/transformer_encoder_1/lambda_1/strided_slice?
.model_1/transformer_encoder_1/lambda_1/SqueezeSqueeze=model_1/transformer_encoder_1/lambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
20
.model_1/transformer_encoder_1/lambda_1/Squeeze?
Dmodel_1/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOpReadVariableOpMmodel_1_transformer_encoder_1_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02F
Dmodel_1/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp?
5model_1/transformer_encoder_1/pooler_transform/MatMulMatMul7model_1/transformer_encoder_1/lambda_1/Squeeze:output:0Lmodel_1/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????27
5model_1/transformer_encoder_1/pooler_transform/MatMul?
Emodel_1/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpNmodel_1_transformer_encoder_1_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02G
Emodel_1/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp?
6model_1/transformer_encoder_1/pooler_transform/BiasAddBiasAdd?model_1/transformer_encoder_1/pooler_transform/MatMul:product:0Mmodel_1/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????28
6model_1/transformer_encoder_1/pooler_transform/BiasAdd?
3model_1/transformer_encoder_1/pooler_transform/TanhTanh?model_1/transformer_encoder_1/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????25
3model_1/transformer_encoder_1/pooler_transform/Tanh?
IdentityIdentity7model_1/transformer_encoder_1/pooler_transform/Tanh:y:0M^model_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpQ^model_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpF^model_1/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpE^model_1/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp@^model_1/transformer_encoder_1/position_embedding/ReadVariableOpR^model_1/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp\^model_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpL^model_1/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpV^model_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp]^model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpa^model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpe^model_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpo^model_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpX^model_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpb^model_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpZ^model_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpd^model_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpZ^model_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpd^model_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpe^model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpi^model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpD^model_1/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp5^model_1/transformer_encoder_1/word_embeddings/Gather*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityWmodel_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0M^model_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpQ^model_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpF^model_1/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpE^model_1/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp@^model_1/transformer_encoder_1/position_embedding/ReadVariableOpR^model_1/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp\^model_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpL^model_1/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpV^model_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp]^model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpa^model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpe^model_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpo^model_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpX^model_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpb^model_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpZ^model_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpd^model_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpZ^model_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpd^model_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpe^model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpi^model_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpD^model_1/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp5^model_1/transformer_encoder_1/word_embeddings/Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2?
Lmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpLmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp2?
Pmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpPmodel_1/transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp2?
Emodel_1/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpEmodel_1/transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp2?
Dmodel_1/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOpDmodel_1/transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp2?
?model_1/transformer_encoder_1/position_embedding/ReadVariableOp?model_1/transformer_encoder_1/position_embedding/ReadVariableOp2?
Qmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpQmodel_1/transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp2?
[model_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp[model_1/transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp2?
Kmodel_1/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpKmodel_1/transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp2?
Umodel_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpUmodel_1/transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp2?
\model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp\model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp2?
`model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp`model_1/transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp2?
dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpdmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp2?
nmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpnmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Wmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpWmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp2?
amodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpamodel_1/transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp2?
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpYmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp2?
cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpcmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp2?
Ymodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpYmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp2?
cmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpcmodel_1/transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp2?
dmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpdmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp2?
hmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOphmodel_1/transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp2?
Cmodel_1/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOpCmodel_1/transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp2l
4model_1/transformer_encoder_1/word_embeddings/Gather4model_1/transformer_encoder_1/word_embeddings/Gather:` \
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
?
?
&__inference_model_1_layer_call_fn_3623
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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_29432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
?
?
&__inference_model_1_layer_call_fn_2994
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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_29432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
??
?
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4622
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
identity??intermediate/add/ReadVariableOp?)intermediate/einsum/Einsum/ReadVariableOp?output/add/ReadVariableOp?#output/einsum/Einsum/ReadVariableOp?*output_layer_norm/batchnorm/ReadVariableOp?.output_layer_norm/batchnorm/mul/ReadVariableOp?2self_attention/attention_output/add/ReadVariableOp?<self_attention/attention_output/einsum/Einsum/ReadVariableOp?%self_attention/key/add/ReadVariableOp?/self_attention/key/einsum/Einsum/ReadVariableOp?'self_attention/query/add/ReadVariableOp?1self_attention/query/einsum/Einsum/ReadVariableOp?'self_attention/value/add/ReadVariableOp?1self_attention/value/einsum/Einsum/ReadVariableOp?2self_attention_layer_norm/batchnorm/ReadVariableOp?6self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
1self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/query/einsum/Einsum/ReadVariableOp?
"self_attention/query/einsum/EinsumEinsuminputs_09self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/query/einsum/Einsum?
'self_attention/query/add/ReadVariableOpReadVariableOp0self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/query/add/ReadVariableOp?
self_attention/query/addAddV2+self_attention/query/einsum/Einsum:output:0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/query/add?
/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp8self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype021
/self_attention/key/einsum/Einsum/ReadVariableOp?
 self_attention/key/einsum/EinsumEinsuminputs_07self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2"
 self_attention/key/einsum/Einsum?
%self_attention/key/add/ReadVariableOpReadVariableOp.self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02'
%self_attention/key/add/ReadVariableOp?
self_attention/key/addAddV2)self_attention/key/einsum/Einsum:output:0-self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/key/add?
1self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/value/einsum/Einsum/ReadVariableOp?
"self_attention/value/einsum/EinsumEinsuminputs_09self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/value/einsum/Einsum?
'self_attention/value/add/ReadVariableOpReadVariableOp0self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/value/add/ReadVariableOp?
self_attention/value/addAddV2+self_attention/value/einsum/Einsum:output:0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/value/add?
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
 *??>2
self_attention/Mul/y?
self_attention/MulMul%self_attention/einsum/Einsum:output:0self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
self_attention/Mul?
,self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2.
,self_attention/masked_softmax/ExpandDims/dim?
(self_attention/masked_softmax/ExpandDims
ExpandDimsinputs_15self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2*
(self_attention/masked_softmax/ExpandDims?
#self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#self_attention/masked_softmax/sub/x?
!self_attention/masked_softmax/subSub,self_attention/masked_softmax/sub/x:output:01self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/sub?
#self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2%
#self_attention/masked_softmax/mul/y?
!self_attention/masked_softmax/mulMul%self_attention/masked_softmax/sub:z:0,self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/mul?
!self_attention/masked_softmax/addAddV2self_attention/Mul:z:0%self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/add?
%self_attention/masked_softmax/SoftmaxSoftmax%self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2'
%self_attention/masked_softmax/Softmax?
self_attention/dropout/IdentityIdentity/self_attention/masked_softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2!
self_attention/dropout/Identity?
self_attention/einsum_1/EinsumEinsum(self_attention/dropout/Identity:output:0self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2 
self_attention/einsum_1/Einsum?
<self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpEself_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02>
<self_attention/attention_output/einsum/Einsum/ReadVariableOp?
-self_attention/attention_output/einsum/EinsumEinsum'self_attention/einsum_1/Einsum:output:0Dself_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2/
-self_attention/attention_output/einsum/Einsum?
2self_attention/attention_output/add/ReadVariableOpReadVariableOp;self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention/attention_output/add/ReadVariableOp?
#self_attention/attention_output/addAddV26self_attention/attention_output/einsum/Einsum:output:0:self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#self_attention/attention_output/add?
dropout_1/IdentityIdentity'self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/Identityy
addAddV2inputs_0dropout_1/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2
add?
8self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8self_attention_layer_norm/moments/mean/reduction_indices?
&self_attention_layer_norm/moments/meanMeanadd:z:0Aself_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&self_attention_layer_norm/moments/mean?
.self_attention_layer_norm/moments/StopGradientStopGradient/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????20
.self_attention_layer_norm/moments/StopGradient?
3self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferenceadd:z:07self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????25
3self_attention_layer_norm/moments/SquaredDifference?
<self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2>
<self_attention_layer_norm/moments/variance/reduction_indices?
*self_attention_layer_norm/moments/varianceMean7self_attention_layer_norm/moments/SquaredDifference:z:0Eself_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2,
*self_attention_layer_norm/moments/variance?
)self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2+
)self_attention_layer_norm/batchnorm/add/y?
'self_attention_layer_norm/batchnorm/addAddV23self_attention_layer_norm/moments/variance:output:02self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/add?
)self_attention_layer_norm/batchnorm/RsqrtRsqrt+self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/Rsqrt?
6self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp?self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype028
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
'self_attention_layer_norm/batchnorm/mulMul-self_attention_layer_norm/batchnorm/Rsqrt:y:0>self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/mul?
)self_attention_layer_norm/batchnorm/mul_1Muladd:z:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_1?
)self_attention_layer_norm/batchnorm/mul_2Mul/self_attention_layer_norm/moments/mean:output:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_2?
2self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOp;self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention_layer_norm/batchnorm/ReadVariableOp?
'self_attention_layer_norm/batchnorm/subSub:self_attention_layer_norm/batchnorm/ReadVariableOp:value:0-self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/sub?
)self_attention_layer_norm/batchnorm/add_1AddV2-self_attention_layer_norm/batchnorm/mul_1:z:0+self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/add_1?
)intermediate/einsum/Einsum/ReadVariableOpReadVariableOp2intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02+
)intermediate/einsum/Einsum/ReadVariableOp?
intermediate/einsum/EinsumEinsum-self_attention_layer_norm/batchnorm/add_1:z:01intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2
intermediate/einsum/Einsum?
intermediate/add/ReadVariableOpReadVariableOp(intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02!
intermediate/add/ReadVariableOp?
intermediate/addAddV2#intermediate/einsum/Einsum:output:0'intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2
intermediate/addi
activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
activation/Pow/y?
activation/PowPowintermediate/add:z:0activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/Powi
activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2
activation/mul/x?
activation/mulMulactivation/mul/x:output:0activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul?
activation/addAddV2intermediate/add:z:0activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/addm
activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2
activation/mul_1/x?
activation/mul_1Mulactivation/mul_1/x:output:0activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_1
activation/TanhTanhactivation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/Tanhm
activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
activation/add_1/x?
activation/add_1AddV2activation/add_1/x:output:0activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/add_1m
activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
activation/mul_2/x?
activation/mul_2Mulactivation/mul_2/x:output:0activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_2?
activation/mul_3Mulintermediate/add:z:0activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_3?
#output/einsum/Einsum/ReadVariableOpReadVariableOp,output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02%
#output/einsum/Einsum/ReadVariableOp?
output/einsum/EinsumEinsumactivation/mul_3:z:0+output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2
output/einsum/Einsum?
output/add/ReadVariableOpReadVariableOp"output_add_readvariableop_resource*
_output_shapes
:*
dtype02
output/add/ReadVariableOp?

output/addAddV2output/einsum/Einsum:output:0!output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2

output/add?
dropout_2/IdentityIdentityoutput/add:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_2/Identity?
add_1AddV2dropout_2/Identity:output:0-self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add_1?
0output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:22
0output_layer_norm/moments/mean/reduction_indices?
output_layer_norm/moments/meanMean	add_1:z:09output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2 
output_layer_norm/moments/mean?
&output_layer_norm/moments/StopGradientStopGradient'output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&output_layer_norm/moments/StopGradient?
+output_layer_norm/moments/SquaredDifferenceSquaredDifference	add_1:z:0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+output_layer_norm/moments/SquaredDifference?
4output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4output_layer_norm/moments/variance/reduction_indices?
"output_layer_norm/moments/varianceMean/output_layer_norm/moments/SquaredDifference:z:0=output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"output_layer_norm/moments/variance?
!output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2#
!output_layer_norm/batchnorm/add/y?
output_layer_norm/batchnorm/addAddV2+output_layer_norm/moments/variance:output:0*output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/add?
!output_layer_norm/batchnorm/RsqrtRsqrt#output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/Rsqrt?
.output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp7output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype020
.output_layer_norm/batchnorm/mul/ReadVariableOp?
output_layer_norm/batchnorm/mulMul%output_layer_norm/batchnorm/Rsqrt:y:06output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/mul?
!output_layer_norm/batchnorm/mul_1Mul	add_1:z:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_1?
!output_layer_norm/batchnorm/mul_2Mul'output_layer_norm/moments/mean:output:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_2?
*output_layer_norm/batchnorm/ReadVariableOpReadVariableOp3output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02,
*output_layer_norm/batchnorm/ReadVariableOp?
output_layer_norm/batchnorm/subSub2output_layer_norm/batchnorm/ReadVariableOp:value:0%output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/sub?
!output_layer_norm/batchnorm/add_1AddV2%output_layer_norm/batchnorm/mul_1:z:0#output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/add_1?
IdentityIdentity%output_layer_norm/batchnorm/add_1:z:0 ^intermediate/add/ReadVariableOp*^intermediate/einsum/Einsum/ReadVariableOp^output/add/ReadVariableOp$^output/einsum/Einsum/ReadVariableOp+^output_layer_norm/batchnorm/ReadVariableOp/^output_layer_norm/batchnorm/mul/ReadVariableOp3^self_attention/attention_output/add/ReadVariableOp=^self_attention/attention_output/einsum/Einsum/ReadVariableOp&^self_attention/key/add/ReadVariableOp0^self_attention/key/einsum/Einsum/ReadVariableOp(^self_attention/query/add/ReadVariableOp2^self_attention/query/einsum/Einsum/ReadVariableOp(^self_attention/value/add/ReadVariableOp2^self_attention/value/einsum/Einsum/ReadVariableOp3^self_attention_layer_norm/batchnorm/ReadVariableOp7^self_attention_layer_norm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????????????:'???????????????????????????::::::::::::::::2B
intermediate/add/ReadVariableOpintermediate/add/ReadVariableOp2V
)intermediate/einsum/Einsum/ReadVariableOp)intermediate/einsum/Einsum/ReadVariableOp26
output/add/ReadVariableOpoutput/add/ReadVariableOp2J
#output/einsum/Einsum/ReadVariableOp#output/einsum/Einsum/ReadVariableOp2X
*output_layer_norm/batchnorm/ReadVariableOp*output_layer_norm/batchnorm/ReadVariableOp2`
.output_layer_norm/batchnorm/mul/ReadVariableOp.output_layer_norm/batchnorm/mul/ReadVariableOp2h
2self_attention/attention_output/add/ReadVariableOp2self_attention/attention_output/add/ReadVariableOp2|
<self_attention/attention_output/einsum/Einsum/ReadVariableOp<self_attention/attention_output/einsum/Einsum/ReadVariableOp2N
%self_attention/key/add/ReadVariableOp%self_attention/key/add/ReadVariableOp2b
/self_attention/key/einsum/Einsum/ReadVariableOp/self_attention/key/einsum/Einsum/ReadVariableOp2R
'self_attention/query/add/ReadVariableOp'self_attention/query/add/ReadVariableOp2f
1self_attention/query/einsum/Einsum/ReadVariableOp1self_attention/query/einsum/Einsum/ReadVariableOp2R
'self_attention/value/add/ReadVariableOp'self_attention/value/add/ReadVariableOp2f
1self_attention/value/einsum/Einsum/ReadVariableOp1self_attention/value/einsum/Einsum/ReadVariableOp2h
2self_attention_layer_norm/batchnorm/ReadVariableOp2self_attention_layer_norm/batchnorm/ReadVariableOp2p
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp6self_attention_layer_norm/batchnorm/mul/ReadVariableOp:^ Z
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
?
^
$__inference_add_1_layer_call_fn_4286
inputs_0
inputs_1
inputs_2
identity?
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
GPU 2J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_17222
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
?
w
1__inference_position_embedding_layer_call_fn_4246

inputs
unknown
identity??StatefulPartitionedCall?
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
GPU 2J 8? *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_16722
StatefulPartitionedCall?
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
?
?
I__inference_word_embeddings_layer_call_and_return_conditional_losses_1637

inputs
gather_resource

identity_1??Gatherq
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
Reshape?
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
concat/axis?
concatConcatV2Shape:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat?
	Reshape_1ReshapeIdentity:output:0concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?

Identity_1IdentityReshape_1:output:0^Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"!

identity_1Identity_1:output:0*3
_input_shapes"
 :??????????????????:2
GatherGather:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
C
'__inference_lambda_1_layer_call_fn_4721

inputs
identity?
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
GPU 2J 8? *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_22012
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
?=
?
__inference__traced_save_4852
file_prefix'
#savev2_variable_read_readvariableop
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

identity_1??MergeV2Checkpoints?
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
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B(do_lower_case/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop5savev2_word_embeddings_embeddings_read_readvariableop8savev2_position_embedding_embeddings_read_readvariableop5savev2_type_embeddings_embeddings_read_readvariableop6savev2_embeddings_layer_norm_gamma_read_readvariableop5savev2_embeddings_layer_norm_beta_read_readvariableopJsavev2_transformer_layer_0_self_attention_query_kernel_read_readvariableopHsavev2_transformer_layer_0_self_attention_query_bias_read_readvariableopHsavev2_transformer_layer_0_self_attention_key_kernel_read_readvariableopFsavev2_transformer_layer_0_self_attention_key_bias_read_readvariableopJsavev2_transformer_layer_0_self_attention_value_kernel_read_readvariableopHsavev2_transformer_layer_0_self_attention_value_bias_read_readvariableopUsavev2_transformer_layer_0_self_attention_attention_output_kernel_read_readvariableopSsavev2_transformer_layer_0_self_attention_attention_output_bias_read_readvariableopNsavev2_transformer_layer_0_self_attention_layer_norm_gamma_read_readvariableopMsavev2_transformer_layer_0_self_attention_layer_norm_beta_read_readvariableopBsavev2_transformer_layer_0_intermediate_kernel_read_readvariableop@savev2_transformer_layer_0_intermediate_bias_read_readvariableop<savev2_transformer_layer_0_output_kernel_read_readvariableop:savev2_transformer_layer_0_output_bias_read_readvariableopFsavev2_transformer_layer_0_output_layer_norm_gamma_read_readvariableopEsavev2_transformer_layer_0_output_layer_norm_beta_read_readvariableop2savev2_pooler_transform_kernel_read_readvariableop0savev2_pooler_transform_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2
2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : :
??::::::::::::::: : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :&"
 
_output_shapes
:
??:$ 

_output_shapes

::$ 

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
?$
y
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_1837

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
strided_slice/stack_2?
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
strided_slice_1/stack_2?
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
strided_slice_2/stack_2?
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
strided_slice_3/stack_2?
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
Reshape/shape/1?
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
B :?2
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
ones/packed/2?
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
 *  ??2

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
?	
^
B__inference_lambda_1_layer_call_and_return_conditional_losses_4707

inputs
identity
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack?
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1?
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2?
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
?%
{
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_4381
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
strided_slice/stack_2?
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
strided_slice_1/stack_2?
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
strided_slice_2/stack_2?
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
strided_slice_3/stack_2?
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
Reshape/shape/1?
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
B :?2
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
ones/packed/2?
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
 *  ??2

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
?
`
4__inference_self_attention_mask_1_layer_call_fn_4387
inputs_0
inputs_1
identity?
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
GPU 2J 8? *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_18372
PartitionedCall?
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
?
?
4__inference_transformer_encoder_1_layer_call_fn_4195
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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_25012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
?>
?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2315
input_word_ids

input_mask
input_type_ids
word_embeddings_2257
position_embedding_2260
type_embeddings_2263
embeddings_layer_norm_2267
embeddings_layer_norm_2269
transformer_layer_0_2274
transformer_layer_0_2276
transformer_layer_0_2278
transformer_layer_0_2280
transformer_layer_0_2282
transformer_layer_0_2284
transformer_layer_0_2286
transformer_layer_0_2288
transformer_layer_0_2290
transformer_layer_0_2292
transformer_layer_0_2294
transformer_layer_0_2296
transformer_layer_0_2298
transformer_layer_0_2300
transformer_layer_0_2302
transformer_layer_0_2304
pooler_transform_2308
pooler_transform_2310
identity

identity_1??-embeddings/layer_norm/StatefulPartitionedCall?(pooler_transform/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?+transformer/layer_0/StatefulPartitionedCall?'type_embeddings/StatefulPartitionedCall?'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_word_idsword_embeddings_2257*
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
GPU 2J 8? *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_16372)
'word_embeddings/StatefulPartitionedCall?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_2260*
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
GPU 2J 8? *U
fPRN
L__inference_position_embedding_layer_call_and_return_conditional_losses_16722,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_type_idstype_embeddings_2263*
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
GPU 2J 8? *R
fMRK
I__inference_type_embeddings_layer_call_and_return_conditional_losses_17022)
'type_embeddings/StatefulPartitionedCall?
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
GPU 2J 8? *H
fCRA
?__inference_add_1_layer_call_and_return_conditional_losses_17222
add_1/PartitionedCall?
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0embeddings_layer_norm_2267embeddings_layer_norm_2269*
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
GPU 2J 8? *X
fSRQ
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_17542/
-embeddings/layer_norm/StatefulPartitionedCall?
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
GPU 2J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_17872
dropout_1/PartitionedCall?
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
GPU 2J 8? *X
fSRQ
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_18372'
%self_attention_mask_1/PartitionedCall?
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0.self_attention_mask_1/PartitionedCall:output:0transformer_layer_0_2274transformer_layer_0_2276transformer_layer_0_2278transformer_layer_0_2280transformer_layer_0_2282transformer_layer_0_2284transformer_layer_0_2286transformer_layer_0_2288transformer_layer_0_2290transformer_layer_0_2292transformer_layer_0_2294transformer_layer_0_2296transformer_layer_0_2298transformer_layer_0_2300transformer_layer_0_2302transformer_layer_0_2304*
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
GPU 2J 8? *V
fQRO
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_20812-
+transformer/layer_0/StatefulPartitionedCall?
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
GPU 2J 8? *K
fFRD
B__inference_lambda_1_layer_call_and_return_conditional_losses_22102
lambda_1/PartitionedCall?
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0pooler_transform_2308pooler_transform_2310*
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
GPU 2J 8? *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_22342*
(pooler_transform/StatefulPartitionedCall?
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2^
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
?
?
I__inference_type_embeddings_layer_call_and_return_conditional_losses_1702

inputs"
matmul_readvariableop_resource
identity??MatMul/ReadVariableOpq
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
 *  ??2
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
one_hot/depth?
one_hotOneHotReshape:output:0one_hot/depth:output:0one_hot/on_value:output:0one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2	
one_hot?
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
concat/axis?
concatConcatV2Shape:output:0concat/values_1:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat?
	Reshape_1ReshapeMatMul:product:0concat:output:0*
T0*4
_output_shapes"
 :??????????????????2
	Reshape_1?
IdentityIdentityReshape_1:output:0^MatMul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?j
?
 __inference__traced_restore_4934
file_prefix
assignvariableop_variable1
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
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B(do_lower_case/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
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

Identity?
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0
2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp-assignvariableop_1_word_embeddings_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp0assignvariableop_2_position_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp-assignvariableop_3_type_embeddings_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_embeddings_layer_norm_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_embeddings_layer_norm_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpBassignvariableop_6_transformer_layer_0_self_attention_query_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp@assignvariableop_7_transformer_layer_0_self_attention_query_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp@assignvariableop_8_transformer_layer_0_self_attention_key_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp>assignvariableop_9_transformer_layer_0_self_attention_key_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpCassignvariableop_10_transformer_layer_0_self_attention_value_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpAassignvariableop_11_transformer_layer_0_self_attention_value_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpNassignvariableop_12_transformer_layer_0_self_attention_attention_output_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpLassignvariableop_13_transformer_layer_0_self_attention_attention_output_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpGassignvariableop_14_transformer_layer_0_self_attention_layer_norm_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpFassignvariableop_15_transformer_layer_0_self_attention_layer_norm_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp;assignvariableop_16_transformer_layer_0_intermediate_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp9assignvariableop_17_transformer_layer_0_intermediate_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp5assignvariableop_18_transformer_layer_0_output_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp3assignvariableop_19_transformer_layer_0_output_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp?assignvariableop_20_transformer_layer_0_output_layer_norm_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp>assignvariableop_21_transformer_layer_0_output_layer_norm_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_pooler_transform_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_pooler_transform_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24?
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
?	
?
J__inference_pooler_transform_layer_call_and_return_conditional_losses_4737

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Tanh?
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_model_1_layer_call_fn_2884
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

identity_1??StatefulPartitionedCall?
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
GPU 2J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_28332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::22
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
?
?
L__inference_position_embedding_layer_call_and_return_conditional_losses_1672

inputs
readvariableop_resource
identity??ReadVariableOpD
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
strided_slice/stack_2?
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes

:*
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
strided_slice_2/stack_1/1?
strided_slice_2/stack_1Packstrided_slice_1:output:0"strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2
strided_slice_2/stack_1?
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2?
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
BroadcastTo/shape/2?
BroadcastTo/shapePackstrided_slice:output:0strided_slice_1:output:0BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2
BroadcastTo/shape?
BroadcastToBroadcastTostrided_slice_2:output:0BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
BroadcastTo?
IdentityIdentityBroadcastTo:output:0^ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????????????:2 
ReadVariableOpReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
t
.__inference_word_embeddings_layer_call_fn_4216

inputs
unknown
identity??StatefulPartitionedCall?
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
GPU 2J 8? *R
fMRK
I__inference_word_embeddings_layer_call_and_return_conditional_losses_16372
StatefulPartitionedCall?
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
?
?
/__inference_pooler_transform_layer_call_fn_4746

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
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
GPU 2J 8? *S
fNRL
J__inference_pooler_transform_layer_call_and_return_conditional_losses_22342
StatefulPartitionedCall?
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
??
?
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_1974

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
identity??intermediate/add/ReadVariableOp?)intermediate/einsum/Einsum/ReadVariableOp?output/add/ReadVariableOp?#output/einsum/Einsum/ReadVariableOp?*output_layer_norm/batchnorm/ReadVariableOp?.output_layer_norm/batchnorm/mul/ReadVariableOp?2self_attention/attention_output/add/ReadVariableOp?<self_attention/attention_output/einsum/Einsum/ReadVariableOp?%self_attention/key/add/ReadVariableOp?/self_attention/key/einsum/Einsum/ReadVariableOp?'self_attention/query/add/ReadVariableOp?1self_attention/query/einsum/Einsum/ReadVariableOp?'self_attention/value/add/ReadVariableOp?1self_attention/value/einsum/Einsum/ReadVariableOp?2self_attention_layer_norm/batchnorm/ReadVariableOp?6self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
1self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/query/einsum/Einsum/ReadVariableOp?
"self_attention/query/einsum/EinsumEinsuminputs9self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/query/einsum/Einsum?
'self_attention/query/add/ReadVariableOpReadVariableOp0self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/query/add/ReadVariableOp?
self_attention/query/addAddV2+self_attention/query/einsum/Einsum:output:0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/query/add?
/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp8self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype021
/self_attention/key/einsum/Einsum/ReadVariableOp?
 self_attention/key/einsum/EinsumEinsuminputs7self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2"
 self_attention/key/einsum/Einsum?
%self_attention/key/add/ReadVariableOpReadVariableOp.self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02'
%self_attention/key/add/ReadVariableOp?
self_attention/key/addAddV2)self_attention/key/einsum/Einsum:output:0-self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/key/add?
1self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp:self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype023
1self_attention/value/einsum/Einsum/ReadVariableOp?
"self_attention/value/einsum/EinsumEinsuminputs9self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2$
"self_attention/value/einsum/Einsum?
'self_attention/value/add/ReadVariableOpReadVariableOp0self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02)
'self_attention/value/add/ReadVariableOp?
self_attention/value/addAddV2+self_attention/value/einsum/Einsum:output:0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2
self_attention/value/add?
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
 *??>2
self_attention/Mul/y?
self_attention/MulMul%self_attention/einsum/Einsum:output:0self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
self_attention/Mul?
,self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2.
,self_attention/masked_softmax/ExpandDims/dim?
(self_attention/masked_softmax/ExpandDims
ExpandDimsinputs_15self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2*
(self_attention/masked_softmax/ExpandDims?
#self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#self_attention/masked_softmax/sub/x?
!self_attention/masked_softmax/subSub,self_attention/masked_softmax/sub/x:output:01self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/sub?
#self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2%
#self_attention/masked_softmax/mul/y?
!self_attention/masked_softmax/mulMul%self_attention/masked_softmax/sub:z:0,self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/mul?
!self_attention/masked_softmax/addAddV2self_attention/Mul:z:0%self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2#
!self_attention/masked_softmax/add?
%self_attention/masked_softmax/SoftmaxSoftmax%self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2'
%self_attention/masked_softmax/Softmax?
$self_attention/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2&
$self_attention/dropout/dropout/Const?
"self_attention/dropout/dropout/MulMul/self_attention/masked_softmax/Softmax:softmax:0-self_attention/dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2$
"self_attention/dropout/dropout/Mul?
$self_attention/dropout/dropout/ShapeShape/self_attention/masked_softmax/Softmax:softmax:0*
T0*
_output_shapes
:2&
$self_attention/dropout/dropout/Shape?
;self_attention/dropout/dropout/random_uniform/RandomUniformRandomUniform-self_attention/dropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed???)2=
;self_attention/dropout/dropout/random_uniform/RandomUniform?
-self_attention/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2/
-self_attention/dropout/dropout/GreaterEqual/y?
+self_attention/dropout/dropout/GreaterEqualGreaterEqualDself_attention/dropout/dropout/random_uniform/RandomUniform:output:06self_attention/dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2-
+self_attention/dropout/dropout/GreaterEqual?
#self_attention/dropout/dropout/CastCast/self_attention/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2%
#self_attention/dropout/dropout/Cast?
$self_attention/dropout/dropout/Mul_1Mul&self_attention/dropout/dropout/Mul:z:0'self_attention/dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2&
$self_attention/dropout/dropout/Mul_1?
self_attention/einsum_1/EinsumEinsum(self_attention/dropout/dropout/Mul_1:z:0self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2 
self_attention/einsum_1/Einsum?
<self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpEself_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02>
<self_attention/attention_output/einsum/Einsum/ReadVariableOp?
-self_attention/attention_output/einsum/EinsumEinsum'self_attention/einsum_1/Einsum:output:0Dself_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2/
-self_attention/attention_output/einsum/Einsum?
2self_attention/attention_output/add/ReadVariableOpReadVariableOp;self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention/attention_output/add/ReadVariableOp?
#self_attention/attention_output/addAddV26self_attention/attention_output/einsum/Einsum:output:0:self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2%
#self_attention/attention_output/addw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMul'self_attention/attention_output/add:z:0 dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Mul?
dropout_1/dropout/ShapeShape'self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed220
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_1/dropout/Mul_1w
addAddV2inputsdropout_1/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add?
8self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8self_attention_layer_norm/moments/mean/reduction_indices?
&self_attention_layer_norm/moments/meanMeanadd:z:0Aself_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2(
&self_attention_layer_norm/moments/mean?
.self_attention_layer_norm/moments/StopGradientStopGradient/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????20
.self_attention_layer_norm/moments/StopGradient?
3self_attention_layer_norm/moments/SquaredDifferenceSquaredDifferenceadd:z:07self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????25
3self_attention_layer_norm/moments/SquaredDifference?
<self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2>
<self_attention_layer_norm/moments/variance/reduction_indices?
*self_attention_layer_norm/moments/varianceMean7self_attention_layer_norm/moments/SquaredDifference:z:0Eself_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2,
*self_attention_layer_norm/moments/variance?
)self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2+
)self_attention_layer_norm/batchnorm/add/y?
'self_attention_layer_norm/batchnorm/addAddV23self_attention_layer_norm/moments/variance:output:02self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/add?
)self_attention_layer_norm/batchnorm/RsqrtRsqrt+self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/Rsqrt?
6self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp?self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype028
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
'self_attention_layer_norm/batchnorm/mulMul-self_attention_layer_norm/batchnorm/Rsqrt:y:0>self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/mul?
)self_attention_layer_norm/batchnorm/mul_1Muladd:z:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_1?
)self_attention_layer_norm/batchnorm/mul_2Mul/self_attention_layer_norm/moments/mean:output:0+self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/mul_2?
2self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOp;self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype024
2self_attention_layer_norm/batchnorm/ReadVariableOp?
'self_attention_layer_norm/batchnorm/subSub:self_attention_layer_norm/batchnorm/ReadVariableOp:value:0-self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2)
'self_attention_layer_norm/batchnorm/sub?
)self_attention_layer_norm/batchnorm/add_1AddV2-self_attention_layer_norm/batchnorm/mul_1:z:0+self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2+
)self_attention_layer_norm/batchnorm/add_1?
)intermediate/einsum/Einsum/ReadVariableOpReadVariableOp2intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02+
)intermediate/einsum/Einsum/ReadVariableOp?
intermediate/einsum/EinsumEinsum-self_attention_layer_norm/batchnorm/add_1:z:01intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2
intermediate/einsum/Einsum?
intermediate/add/ReadVariableOpReadVariableOp(intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02!
intermediate/add/ReadVariableOp?
intermediate/addAddV2#intermediate/einsum/Einsum:output:0'intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2
intermediate/addi
activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2
activation/Pow/y?
activation/PowPowintermediate/add:z:0activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/Powi
activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2
activation/mul/x?
activation/mulMulactivation/mul/x:output:0activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul?
activation/addAddV2intermediate/add:z:0activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/addm
activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2
activation/mul_1/x?
activation/mul_1Mulactivation/mul_1/x:output:0activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_1
activation/TanhTanhactivation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/Tanhm
activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
activation/add_1/x?
activation/add_1AddV2activation/add_1/x:output:0activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/add_1m
activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
activation/mul_2/x?
activation/mul_2Mulactivation/mul_2/x:output:0activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_2?
activation/mul_3Mulintermediate/add:z:0activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2
activation/mul_3?
#output/einsum/Einsum/ReadVariableOpReadVariableOp,output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02%
#output/einsum/Einsum/ReadVariableOp?
output/einsum/EinsumEinsumactivation/mul_3:z:0+output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2
output/einsum/Einsum?
output/add/ReadVariableOpReadVariableOp"output_add_readvariableop_resource*
_output_shapes
:*
dtype02
output/add/ReadVariableOp?

output/addAddV2output/einsum/Einsum:output:0!output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2

output/addw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMuloutput/add:z:0 dropout_2/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_2/dropout/Mulp
dropout_2/dropout/ShapeShapeoutput/add:z:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed220
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout_2/dropout/Mul_1?
add_1AddV2dropout_2/dropout/Mul_1:z:0-self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
add_1?
0output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:22
0output_layer_norm/moments/mean/reduction_indices?
output_layer_norm/moments/meanMean	add_1:z:09output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2 
output_layer_norm/moments/mean?
&output_layer_norm/moments/StopGradientStopGradient'output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2(
&output_layer_norm/moments/StopGradient?
+output_layer_norm/moments/SquaredDifferenceSquaredDifference	add_1:z:0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+output_layer_norm/moments/SquaredDifference?
4output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4output_layer_norm/moments/variance/reduction_indices?
"output_layer_norm/moments/varianceMean/output_layer_norm/moments/SquaredDifference:z:0=output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2$
"output_layer_norm/moments/variance?
!output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2#
!output_layer_norm/batchnorm/add/y?
output_layer_norm/batchnorm/addAddV2+output_layer_norm/moments/variance:output:0*output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/add?
!output_layer_norm/batchnorm/RsqrtRsqrt#output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/Rsqrt?
.output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp7output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype020
.output_layer_norm/batchnorm/mul/ReadVariableOp?
output_layer_norm/batchnorm/mulMul%output_layer_norm/batchnorm/Rsqrt:y:06output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/mul?
!output_layer_norm/batchnorm/mul_1Mul	add_1:z:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_1?
!output_layer_norm/batchnorm/mul_2Mul'output_layer_norm/moments/mean:output:0#output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/mul_2?
*output_layer_norm/batchnorm/ReadVariableOpReadVariableOp3output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02,
*output_layer_norm/batchnorm/ReadVariableOp?
output_layer_norm/batchnorm/subSub2output_layer_norm/batchnorm/ReadVariableOp:value:0%output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2!
output_layer_norm/batchnorm/sub?
!output_layer_norm/batchnorm/add_1AddV2%output_layer_norm/batchnorm/mul_1:z:0#output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2#
!output_layer_norm/batchnorm/add_1?
IdentityIdentity%output_layer_norm/batchnorm/add_1:z:0 ^intermediate/add/ReadVariableOp*^intermediate/einsum/Einsum/ReadVariableOp^output/add/ReadVariableOp$^output/einsum/Einsum/ReadVariableOp+^output_layer_norm/batchnorm/ReadVariableOp/^output_layer_norm/batchnorm/mul/ReadVariableOp3^self_attention/attention_output/add/ReadVariableOp=^self_attention/attention_output/einsum/Einsum/ReadVariableOp&^self_attention/key/add/ReadVariableOp0^self_attention/key/einsum/Einsum/ReadVariableOp(^self_attention/query/add/ReadVariableOp2^self_attention/query/einsum/Einsum/ReadVariableOp(^self_attention/value/add/ReadVariableOp2^self_attention/value/einsum/Einsum/ReadVariableOp3^self_attention_layer_norm/batchnorm/ReadVariableOp7^self_attention_layer_norm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:??????????????????:'???????????????????????????::::::::::::::::2B
intermediate/add/ReadVariableOpintermediate/add/ReadVariableOp2V
)intermediate/einsum/Einsum/ReadVariableOp)intermediate/einsum/Einsum/ReadVariableOp26
output/add/ReadVariableOpoutput/add/ReadVariableOp2J
#output/einsum/Einsum/ReadVariableOp#output/einsum/Einsum/ReadVariableOp2X
*output_layer_norm/batchnorm/ReadVariableOp*output_layer_norm/batchnorm/ReadVariableOp2`
.output_layer_norm/batchnorm/mul/ReadVariableOp.output_layer_norm/batchnorm/mul/ReadVariableOp2h
2self_attention/attention_output/add/ReadVariableOp2self_attention/attention_output/add/ReadVariableOp2|
<self_attention/attention_output/einsum/Einsum/ReadVariableOp<self_attention/attention_output/einsum/Einsum/ReadVariableOp2N
%self_attention/key/add/ReadVariableOp%self_attention/key/add/ReadVariableOp2b
/self_attention/key/einsum/Einsum/ReadVariableOp/self_attention/key/einsum/Einsum/ReadVariableOp2R
'self_attention/query/add/ReadVariableOp'self_attention/query/add/ReadVariableOp2f
1self_attention/query/einsum/Einsum/ReadVariableOp1self_attention/query/einsum/Einsum/ReadVariableOp2R
'self_attention/value/add/ReadVariableOp'self_attention/value/add/ReadVariableOp2f
1self_attention/value/einsum/Einsum/ReadVariableOp1self_attention/value/einsum/Einsum/ReadVariableOp2h
2self_attention_layer_norm/batchnorm/ReadVariableOp2self_attention_layer_norm/batchnorm/ReadVariableOp2p
6self_attention_layer_norm/batchnorm/mul/ReadVariableOp6self_attention_layer_norm/batchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs:ea
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
??
? 
A__inference_model_1_layer_call_and_return_conditional_losses_3296
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

identity_1??Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp?Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp?<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp?7transformer_encoder_1/position_embedding/ReadVariableOp?Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp?Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp?Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp?Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp?[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp?[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp?,transformer_encoder_1/word_embeddings/Gather?
3transformer_encoder_1/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3transformer_encoder_1/word_embeddings/Reshape/shape?
-transformer_encoder_1/word_embeddings/ReshapeReshapeinputs_0<transformer_encoder_1/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2/
-transformer_encoder_1/word_embeddings/Reshape?
,transformer_encoder_1/word_embeddings/GatherResourceGather5transformer_encoder_1_word_embeddings_gather_resource6transformer_encoder_1/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02.
,transformer_encoder_1/word_embeddings/Gather?
.transformer_encoder_1/word_embeddings/IdentityIdentity5transformer_encoder_1/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????20
.transformer_encoder_1/word_embeddings/Identity?
+transformer_encoder_1/word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2-
+transformer_encoder_1/word_embeddings/Shape?
5transformer_encoder_1/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:27
5transformer_encoder_1/word_embeddings/concat/values_1?
1transformer_encoder_1/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1transformer_encoder_1/word_embeddings/concat/axis?
,transformer_encoder_1/word_embeddings/concatConcatV24transformer_encoder_1/word_embeddings/Shape:output:0>transformer_encoder_1/word_embeddings/concat/values_1:output:0:transformer_encoder_1/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2.
,transformer_encoder_1/word_embeddings/concat?
/transformer_encoder_1/word_embeddings/Reshape_1Reshape7transformer_encoder_1/word_embeddings/Identity:output:05transformer_encoder_1/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/word_embeddings/Reshape_1?
.transformer_encoder_1/position_embedding/ShapeShape8transformer_encoder_1/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:20
.transformer_encoder_1/position_embedding/Shape?
<transformer_encoder_1/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<transformer_encoder_1/position_embedding/strided_slice/stack?
>transformer_encoder_1/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice/stack_1?
>transformer_encoder_1/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice/stack_2?
6transformer_encoder_1/position_embedding/strided_sliceStridedSlice7transformer_encoder_1/position_embedding/Shape:output:0Etransformer_encoder_1/position_embedding/strided_slice/stack:output:0Gtransformer_encoder_1/position_embedding/strided_slice/stack_1:output:0Gtransformer_encoder_1/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6transformer_encoder_1/position_embedding/strided_slice?
>transformer_encoder_1/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder_1/position_embedding/strided_slice_1/stack?
@transformer_encoder_1/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@transformer_encoder_1/position_embedding/strided_slice_1/stack_1?
@transformer_encoder_1/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@transformer_encoder_1/position_embedding/strided_slice_1/stack_2?
8transformer_encoder_1/position_embedding/strided_slice_1StridedSlice7transformer_encoder_1/position_embedding/Shape:output:0Gtransformer_encoder_1/position_embedding/strided_slice_1/stack:output:0Itransformer_encoder_1/position_embedding/strided_slice_1/stack_1:output:0Itransformer_encoder_1/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8transformer_encoder_1/position_embedding/strided_slice_1?
7transformer_encoder_1/position_embedding/ReadVariableOpReadVariableOp@transformer_encoder_1_position_embedding_readvariableop_resource*
_output_shapes

:*
dtype029
7transformer_encoder_1/position_embedding/ReadVariableOp?
>transformer_encoder_1/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2@
>transformer_encoder_1/position_embedding/strided_slice_2/stack?
Btransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1?
@transformer_encoder_1/position_embedding/strided_slice_2/stack_1PackAtransformer_encoder_1/position_embedding/strided_slice_1:output:0Ktransformer_encoder_1/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2B
@transformer_encoder_1/position_embedding/strided_slice_2/stack_1?
@transformer_encoder_1/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2B
@transformer_encoder_1/position_embedding/strided_slice_2/stack_2?
8transformer_encoder_1/position_embedding/strided_slice_2StridedSlice?transformer_encoder_1/position_embedding/ReadVariableOp:value:0Gtransformer_encoder_1/position_embedding/strided_slice_2/stack:output:0Itransformer_encoder_1/position_embedding/strided_slice_2/stack_1:output:0Itransformer_encoder_1/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2:
8transformer_encoder_1/position_embedding/strided_slice_2?
<transformer_encoder_1/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2>
<transformer_encoder_1/position_embedding/BroadcastTo/shape/2?
:transformer_encoder_1/position_embedding/BroadcastTo/shapePack?transformer_encoder_1/position_embedding/strided_slice:output:0Atransformer_encoder_1/position_embedding/strided_slice_1:output:0Etransformer_encoder_1/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2<
:transformer_encoder_1/position_embedding/BroadcastTo/shape?
4transformer_encoder_1/position_embedding/BroadcastToBroadcastToAtransformer_encoder_1/position_embedding/strided_slice_2:output:0Ctransformer_encoder_1/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/position_embedding/BroadcastTo?
3transformer_encoder_1/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3transformer_encoder_1/type_embeddings/Reshape/shape?
-transformer_encoder_1/type_embeddings/ReshapeReshapeinputs_2<transformer_encoder_1/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2/
-transformer_encoder_1/type_embeddings/Reshape?
6transformer_encoder_1/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6transformer_encoder_1/type_embeddings/one_hot/on_value?
7transformer_encoder_1/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7transformer_encoder_1/type_embeddings/one_hot/off_value?
3transformer_encoder_1/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :25
3transformer_encoder_1/type_embeddings/one_hot/depth?
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
;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp?
,transformer_encoder_1/type_embeddings/MatMulMatMul6transformer_encoder_1/type_embeddings/one_hot:output:0Ctransformer_encoder_1/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,transformer_encoder_1/type_embeddings/MatMul?
+transformer_encoder_1/type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2-
+transformer_encoder_1/type_embeddings/Shape?
5transformer_encoder_1/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:27
5transformer_encoder_1/type_embeddings/concat/values_1?
1transformer_encoder_1/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1transformer_encoder_1/type_embeddings/concat/axis?
,transformer_encoder_1/type_embeddings/concatConcatV24transformer_encoder_1/type_embeddings/Shape:output:0>transformer_encoder_1/type_embeddings/concat/values_1:output:0:transformer_encoder_1/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2.
,transformer_encoder_1/type_embeddings/concat?
/transformer_encoder_1/type_embeddings/Reshape_1Reshape6transformer_encoder_1/type_embeddings/MatMul:product:05transformer_encoder_1/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/type_embeddings/Reshape_1?
transformer_encoder_1/add_1/addAddV28transformer_encoder_1/word_embeddings/Reshape_1:output:0=transformer_encoder_1/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2!
transformer_encoder_1/add_1/add?
!transformer_encoder_1/add_1/add_1AddV2#transformer_encoder_1/add_1/add:z:08transformer_encoder_1/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2#
!transformer_encoder_1/add_1/add_1?
Jtransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2L
Jtransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices?
8transformer_encoder_1/embeddings/layer_norm/moments/meanMean%transformer_encoder_1/add_1/add_1:z:0Stransformer_encoder_1/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2:
8transformer_encoder_1/embeddings/layer_norm/moments/mean?
@transformer_encoder_1/embeddings/layer_norm/moments/StopGradientStopGradientAtransformer_encoder_1/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2B
@transformer_encoder_1/embeddings/layer_norm/moments/StopGradient?
Etransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference%transformer_encoder_1/add_1/add_1:z:0Itransformer_encoder_1/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2G
Etransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference?
Ntransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2P
Ntransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices?
<transformer_encoder_1/embeddings/layer_norm/moments/varianceMeanItransformer_encoder_1/embeddings/layer_norm/moments/SquaredDifference:z:0Wtransformer_encoder_1/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2>
<transformer_encoder_1/embeddings/layer_norm/moments/variance?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add/y?
9transformer_encoder_1/embeddings/layer_norm/batchnorm/addAddV2Etransformer_encoder_1/embeddings/layer_norm/moments/variance:output:0Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/add?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/RsqrtRsqrt=transformer_encoder_1/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt?
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02J
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?
9transformer_encoder_1/embeddings/layer_norm/batchnorm/mulMul?transformer_encoder_1/embeddings/layer_norm/batchnorm/Rsqrt:y:0Ptransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/mul?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1Mul%transformer_encoder_1/add_1/add_1:z:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2MulAtransformer_encoder_1/embeddings/layer_norm/moments/mean:output:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2?
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02F
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp?
9transformer_encoder_1/embeddings/layer_norm/batchnorm/subSubLtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0?transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder_1/embeddings/layer_norm/batchnorm/sub?
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1AddV2?transformer_encoder_1/embeddings/layer_norm/batchnorm/mul_1:z:0=transformer_encoder_1/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2=
;transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1?
-transformer_encoder_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2/
-transformer_encoder_1/dropout_1/dropout/Const?
+transformer_encoder_1/dropout_1/dropout/MulMul?transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1:z:06transformer_encoder_1/dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+transformer_encoder_1/dropout_1/dropout/Mul?
-transformer_encoder_1/dropout_1/dropout/ShapeShape?transformer_encoder_1/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*
_output_shapes
:2/
-transformer_encoder_1/dropout_1/dropout/Shape?
Dtransformer_encoder_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform6transformer_encoder_1/dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)2F
Dtransformer_encoder_1/dropout_1/dropout/random_uniform/RandomUniform?
6transformer_encoder_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=28
6transformer_encoder_1/dropout_1/dropout/GreaterEqual/y?
4transformer_encoder_1/dropout_1/dropout/GreaterEqualGreaterEqualMtransformer_encoder_1/dropout_1/dropout/random_uniform/RandomUniform:output:0?transformer_encoder_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/dropout_1/dropout/GreaterEqual?
,transformer_encoder_1/dropout_1/dropout/CastCast8transformer_encoder_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2.
,transformer_encoder_1/dropout_1/dropout/Cast?
-transformer_encoder_1/dropout_1/dropout/Mul_1Mul/transformer_encoder_1/dropout_1/dropout/Mul:z:00transformer_encoder_1/dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder_1/dropout_1/dropout/Mul_1?
1transformer_encoder_1/self_attention_mask_1/ShapeShape1transformer_encoder_1/dropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:23
1transformer_encoder_1/self_attention_mask_1/Shape?
?transformer_encoder_1/self_attention_mask_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?transformer_encoder_1/self_attention_mask_1/strided_slice/stack?
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1?
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2?
9transformer_encoder_1/self_attention_mask_1/strided_sliceStridedSlice:transformer_encoder_1/self_attention_mask_1/Shape:output:0Htransformer_encoder_1/self_attention_mask_1/strided_slice/stack:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice/stack_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9transformer_encoder_1/self_attention_mask_1/strided_slice?
Atransformer_encoder_1/self_attention_mask_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2?
;transformer_encoder_1/self_attention_mask_1/strided_slice_1StridedSlice:transformer_encoder_1/self_attention_mask_1/Shape:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_1?
3transformer_encoder_1/self_attention_mask_1/Shape_1Shapeinputs_1*
T0*
_output_shapes
:25
3transformer_encoder_1/self_attention_mask_1/Shape_1?
Atransformer_encoder_1/self_attention_mask_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2?
;transformer_encoder_1/self_attention_mask_1/strided_slice_2StridedSlice<transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_2?
Atransformer_encoder_1/self_attention_mask_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2C
Atransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1?
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Ctransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2?
;transformer_encoder_1/self_attention_mask_1/strided_slice_3StridedSlice<transformer_encoder_1/self_attention_mask_1/Shape_1:output:0Jtransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_1:output:0Ltransformer_encoder_1/self_attention_mask_1/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;transformer_encoder_1/self_attention_mask_1/strided_slice_3?
;transformer_encoder_1/self_attention_mask_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2=
;transformer_encoder_1/self_attention_mask_1/Reshape/shape/1?
9transformer_encoder_1/self_attention_mask_1/Reshape/shapePackBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/Reshape/shape/1:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2;
9transformer_encoder_1/self_attention_mask_1/Reshape/shape?
3transformer_encoder_1/self_attention_mask_1/ReshapeReshapeinputs_1Btransformer_encoder_1/self_attention_mask_1/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????25
3transformer_encoder_1/self_attention_mask_1/Reshape?
0transformer_encoder_1/self_attention_mask_1/CastCast<transformer_encoder_1/self_attention_mask_1/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????22
0transformer_encoder_1/self_attention_mask_1/Cast?
4transformer_encoder_1/self_attention_mask_1/ones/mulMulBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0*
T0*
_output_shapes
: 26
4transformer_encoder_1/self_attention_mask_1/ones/mul?
8transformer_encoder_1/self_attention_mask_1/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2:
8transformer_encoder_1/self_attention_mask_1/ones/mul_1/y?
6transformer_encoder_1/self_attention_mask_1/ones/mul_1Mul8transformer_encoder_1/self_attention_mask_1/ones/mul:z:0Atransformer_encoder_1/self_attention_mask_1/ones/mul_1/y:output:0*
T0*
_output_shapes
: 28
6transformer_encoder_1/self_attention_mask_1/ones/mul_1?
7transformer_encoder_1/self_attention_mask_1/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?29
7transformer_encoder_1/self_attention_mask_1/ones/Less/y?
5transformer_encoder_1/self_attention_mask_1/ones/LessLess:transformer_encoder_1/self_attention_mask_1/ones/mul_1:z:0@transformer_encoder_1/self_attention_mask_1/ones/Less/y:output:0*
T0*
_output_shapes
: 27
5transformer_encoder_1/self_attention_mask_1/ones/Less?
9transformer_encoder_1/self_attention_mask_1/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2;
9transformer_encoder_1/self_attention_mask_1/ones/packed/2?
7transformer_encoder_1/self_attention_mask_1/ones/packedPackBtransformer_encoder_1/self_attention_mask_1/strided_slice:output:0Dtransformer_encoder_1/self_attention_mask_1/strided_slice_1:output:0Btransformer_encoder_1/self_attention_mask_1/ones/packed/2:output:0*
N*
T0*
_output_shapes
:29
7transformer_encoder_1/self_attention_mask_1/ones/packed?
6transformer_encoder_1/self_attention_mask_1/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??28
6transformer_encoder_1/self_attention_mask_1/ones/Const?
0transformer_encoder_1/self_attention_mask_1/onesFill@transformer_encoder_1/self_attention_mask_1/ones/packed:output:0?transformer_encoder_1/self_attention_mask_1/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????22
0transformer_encoder_1/self_attention_mask_1/ones?
/transformer_encoder_1/self_attention_mask_1/mulMul9transformer_encoder_1/self_attention_mask_1/ones:output:04transformer_encoder_1/self_attention_mask_1/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????21
/transformer_encoder_1/self_attention_mask_1/mul?
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpdtransformer_encoder_1_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02]
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
Ltransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/dropout/Mul_1:z:0ctransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum?
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpZtransformer_encoder_1_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02S
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp?
Btransformer_encoder_1/transformer/layer_0/self_attention/query/addAddV2Utransformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum:output:0Ytransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2D
Btransformer_encoder_1/transformer/layer_0/self_attention/query/add?
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpbtransformer_encoder_1_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02[
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?
Jtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/dropout/Mul_1:z:0atransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2L
Jtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum?
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpXtransformer_encoder_1_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02Q
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp?
@transformer_encoder_1/transformer/layer_0/self_attention/key/addAddV2Stransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum:output:0Wtransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2B
@transformer_encoder_1/transformer/layer_0/self_attention/key/add?
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpdtransformer_encoder_1_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02]
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?
Ltransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/EinsumEinsum1transformer_encoder_1/dropout_1/dropout/Mul_1:z:0ctransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum?
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpZtransformer_encoder_1_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02S
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp?
Btransformer_encoder_1/transformer/layer_0/self_attention/value/addAddV2Utransformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum:output:0Ytransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2D
Btransformer_encoder_1/transformer/layer_0/self_attention/value/add?
Ftransformer_encoder_1/transformer/layer_0/self_attention/einsum/EinsumEinsumDtransformer_encoder_1/transformer/layer_0/self_attention/key/add:z:0Ftransformer_encoder_1/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2H
Ftransformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum?
>transformer_encoder_1/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2@
>transformer_encoder_1/transformer/layer_0/self_attention/Mul/y?
<transformer_encoder_1/transformer/layer_0/self_attention/MulMulOtransformer_encoder_1/transformer/layer_0/self_attention/einsum/Einsum:output:0Gtransformer_encoder_1/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2>
<transformer_encoder_1/transformer/layer_0/self_attention/Mul?
Vtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2X
Vtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim?
Rtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims
ExpandDims3transformer_encoder_1/self_attention_mask_1/mul:z:0_transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2T
Rtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims?
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/x?
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/subSubVtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub/x:output:0[transformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2M
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub?
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/y?
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mulMulOtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/sub:z:0Vtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2M
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul?
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/addAddV2@transformer_encoder_1/transformer/layer_0/self_attention/Mul:z:0Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2M
Ktransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/add?
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/SoftmaxSoftmaxOtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2Q
Otransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/Softmax?
Ntransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2P
Ntransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Const?
Ltransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/MulMulYtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0Wtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2N
Ltransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Mul?
Ntransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/ShapeShapeYtransformer_encoder_1/transformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0*
T0*
_output_shapes
:2P
Ntransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Shape?
etransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniformRandomUniformWtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed???)*
seed22g
etransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniform?
Wtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2Y
Wtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual/y?
Utransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/GreaterEqualGreaterEqualntransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniform:output:0`transformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2W
Utransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual?
Mtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/CastCastYtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Cast?
Ntransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Mul_1MulPtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Mul:z:0Qtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2P
Ntransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Mul_1?
Htransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/EinsumEinsumRtransformer_encoder_1/transformer/layer_0/self_attention/dropout/dropout/Mul_1:z:0Ftransformer_encoder_1/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2J
Htransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum?
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpotransformer_encoder_1_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02h
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?
Wtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsumQtransformer_encoder_1/transformer/layer_0/self_attention/einsum_1/Einsum:output:0ntransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2Y
Wtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum?
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpetransformer_encoder_1_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02^
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
Mtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/addAddV2`transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0dtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2O
Mtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add?
Atransformer_encoder_1/transformer/layer_0/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2C
Atransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Const?
?transformer_encoder_1/transformer/layer_0/dropout_1/dropout/MulMulQtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add:z:0Jtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer_encoder_1/transformer/layer_0/dropout_1/dropout/Mul?
Atransformer_encoder_1/transformer/layer_0/dropout_1/dropout/ShapeShapeQtransformer_encoder_1/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2C
Atransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Shape?
Xtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/random_uniform/RandomUniformRandomUniformJtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed22Z
Xtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/random_uniform/RandomUniform?
Jtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2L
Jtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/GreaterEqual/y?
Htransformer_encoder_1/transformer/layer_0/dropout_1/dropout/GreaterEqualGreaterEqualatransformer_encoder_1/transformer/layer_0/dropout_1/dropout/random_uniform/RandomUniform:output:0Stransformer_encoder_1/transformer/layer_0/dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2J
Htransformer_encoder_1/transformer/layer_0/dropout_1/dropout/GreaterEqual?
@transformer_encoder_1/transformer/layer_0/dropout_1/dropout/CastCastLtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2B
@transformer_encoder_1/transformer/layer_0/dropout_1/dropout/Cast?
Atransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Mul_1MulCtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Mul:z:0Dtransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2C
Atransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Mul_1?
-transformer_encoder_1/transformer/layer_0/addAddV21transformer_encoder_1/dropout_1/dropout/Mul_1:z:0Etransformer_encoder_1/transformer/layer_0/dropout_1/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder_1/transformer/layer_0/add?
btransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2d
btransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices?
Ptransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/meanMean1transformer_encoder_1/transformer/layer_0/add:z:0ktransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2R
Ptransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean?
Xtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientYtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2Z
Xtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient?
]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference1transformer_encoder_1/transformer/layer_0/add:z:0atransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2_
]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference?
ftransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2h
ftransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices?
Ttransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/varianceMeanatransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0otransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2V
Ttransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y?
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2]transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrtUtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt?
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpitransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02b
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulWtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0htransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul1transformer_encoder_1/transformer/layer_0/add:z:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulYtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2?
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpetransformer_encoder_1_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02^
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/subSubdtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub?
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0Utransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1?
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp\transformer_encoder_1_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02U
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?
Dtransformer_encoder_1/transformer/layer_0/intermediate/einsum/EinsumEinsumWtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0[transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2F
Dtransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum?
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOpRtransformer_encoder_1_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02K
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp?
:transformer_encoder_1/transformer/layer_0/intermediate/addAddV2Mtransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum:output:0Qtransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/intermediate/add?
:transformer_encoder_1/transformer/layer_0/activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2<
:transformer_encoder_1/transformer/layer_0/activation/Pow/y?
8transformer_encoder_1/transformer/layer_0/activation/PowPow>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0Ctransformer_encoder_1/transformer/layer_0/activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder_1/transformer/layer_0/activation/Pow?
:transformer_encoder_1/transformer/layer_0/activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2<
:transformer_encoder_1/transformer/layer_0/activation/mul/x?
8transformer_encoder_1/transformer/layer_0/activation/mulMulCtransformer_encoder_1/transformer/layer_0/activation/mul/x:output:0<transformer_encoder_1/transformer/layer_0/activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder_1/transformer/layer_0/activation/mul?
8transformer_encoder_1/transformer/layer_0/activation/addAddV2>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0<transformer_encoder_1/transformer/layer_0/activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder_1/transformer/layer_0/activation/add?
<transformer_encoder_1/transformer/layer_0/activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2>
<transformer_encoder_1/transformer/layer_0/activation/mul_1/x?
:transformer_encoder_1/transformer/layer_0/activation/mul_1MulEtransformer_encoder_1/transformer/layer_0/activation/mul_1/x:output:0<transformer_encoder_1/transformer/layer_0/activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation/mul_1?
9transformer_encoder_1/transformer/layer_0/activation/TanhTanh>transformer_encoder_1/transformer/layer_0/activation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2;
9transformer_encoder_1/transformer/layer_0/activation/Tanh?
<transformer_encoder_1/transformer/layer_0/activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2>
<transformer_encoder_1/transformer/layer_0/activation/add_1/x?
:transformer_encoder_1/transformer/layer_0/activation/add_1AddV2Etransformer_encoder_1/transformer/layer_0/activation/add_1/x:output:0=transformer_encoder_1/transformer/layer_0/activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation/add_1?
<transformer_encoder_1/transformer/layer_0/activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2>
<transformer_encoder_1/transformer/layer_0/activation/mul_2/x?
:transformer_encoder_1/transformer/layer_0/activation/mul_2MulEtransformer_encoder_1/transformer/layer_0/activation/mul_2/x:output:0>transformer_encoder_1/transformer/layer_0/activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation/mul_2?
:transformer_encoder_1/transformer/layer_0/activation/mul_3Mul>transformer_encoder_1/transformer/layer_0/intermediate/add:z:0>transformer_encoder_1/transformer/layer_0/activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2<
:transformer_encoder_1/transformer/layer_0/activation/mul_3?
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_1_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02O
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
>transformer_encoder_1/transformer/layer_0/output/einsum/EinsumEinsum>transformer_encoder_1/transformer/layer_0/activation/mul_3:z:0Utransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2@
>transformer_encoder_1/transformer/layer_0/output/einsum/Einsum?
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpReadVariableOpLtransformer_encoder_1_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02E
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp?
4transformer_encoder_1/transformer/layer_0/output/addAddV2Gtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum:output:0Ktransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????26
4transformer_encoder_1/transformer/layer_0/output/add?
Atransformer_encoder_1/transformer/layer_0/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2C
Atransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Const?
?transformer_encoder_1/transformer/layer_0/dropout_2/dropout/MulMul8transformer_encoder_1/transformer/layer_0/output/add:z:0Jtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer_encoder_1/transformer/layer_0/dropout_2/dropout/Mul?
Atransformer_encoder_1/transformer/layer_0/dropout_2/dropout/ShapeShape8transformer_encoder_1/transformer/layer_0/output/add:z:0*
T0*
_output_shapes
:2C
Atransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Shape?
Xtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/random_uniform/RandomUniformRandomUniformJtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed22Z
Xtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/random_uniform/RandomUniform?
Jtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2L
Jtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/GreaterEqual/y?
Htransformer_encoder_1/transformer/layer_0/dropout_2/dropout/GreaterEqualGreaterEqualatransformer_encoder_1/transformer/layer_0/dropout_2/dropout/random_uniform/RandomUniform:output:0Stransformer_encoder_1/transformer/layer_0/dropout_2/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2J
Htransformer_encoder_1/transformer/layer_0/dropout_2/dropout/GreaterEqual?
@transformer_encoder_1/transformer/layer_0/dropout_2/dropout/CastCastLtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2B
@transformer_encoder_1/transformer/layer_0/dropout_2/dropout/Cast?
Atransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Mul_1MulCtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Mul:z:0Dtransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2C
Atransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Mul_1?
/transformer_encoder_1/transformer/layer_0/add_1AddV2Etransformer_encoder_1/transformer/layer_0/dropout_2/dropout/Mul_1:z:0Wtransformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder_1/transformer/layer_0/add_1?
Ztransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2\
Ztransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices?
Htransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/meanMean3transformer_encoder_1/transformer/layer_0/add_1:z:0ctransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2J
Htransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean?
Ptransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradientQtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2R
Ptransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient?
Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference3transformer_encoder_1/transformer/layer_0/add_1:z:0Ytransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2W
Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference?
^transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2`
^transformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices?
Ltransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/varianceMeanYtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0gtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2N
Ltransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y?
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/addAddV2Utransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/variance:output:0Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtMtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpatransformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02Z
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mulMulOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0`transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul3transformer_encoder_1/transformer/layer_0/add_1:z:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2MulQtransformer_encoder_1/transformer/layer_0/output_layer_norm/moments/mean:output:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2?
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOp]transformer_encoder_1_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02V
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/subSub\transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0Otransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub?
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2Otransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Mtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1?
2transformer_encoder_1/lambda_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            24
2transformer_encoder_1/lambda_1/strided_slice/stack?
4transformer_encoder_1/lambda_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           26
4transformer_encoder_1/lambda_1/strided_slice/stack_1?
4transformer_encoder_1/lambda_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         26
4transformer_encoder_1/lambda_1/strided_slice/stack_2?
,transformer_encoder_1/lambda_1/strided_sliceStridedSliceOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0;transformer_encoder_1/lambda_1/strided_slice/stack:output:0=transformer_encoder_1/lambda_1/strided_slice/stack_1:output:0=transformer_encoder_1/lambda_1/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2.
,transformer_encoder_1/lambda_1/strided_slice?
&transformer_encoder_1/lambda_1/SqueezeSqueeze5transformer_encoder_1/lambda_1/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2(
&transformer_encoder_1/lambda_1/Squeeze?
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOpReadVariableOpEtransformer_encoder_1_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02>
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp?
-transformer_encoder_1/pooler_transform/MatMulMatMul/transformer_encoder_1/lambda_1/Squeeze:output:0Dtransformer_encoder_1/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2/
-transformer_encoder_1/pooler_transform/MatMul?
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpFtransformer_encoder_1_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp?
.transformer_encoder_1/pooler_transform/BiasAddBiasAdd7transformer_encoder_1/pooler_transform/MatMul:product:0Etransformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????20
.transformer_encoder_1/pooler_transform/BiasAdd?
+transformer_encoder_1/pooler_transform/TanhTanh7transformer_encoder_1/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2-
+transformer_encoder_1/pooler_transform/Tanh?
IdentityIdentity/transformer_encoder_1/pooler_transform/Tanh:y:0E^transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpI^transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp>^transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp=^transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp8^transformer_encoder_1/position_embedding/ReadVariableOpJ^transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpT^transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpD^transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpN^transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpU^transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpY^transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp]^transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpg^transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpP^transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpZ^transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpR^transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp\^transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpR^transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp\^transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp]^transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpa^transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp<^transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp-^transformer_encoder_1/word_embeddings/Gather*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityOtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0E^transformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpI^transformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp>^transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp=^transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp8^transformer_encoder_1/position_embedding/ReadVariableOpJ^transformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpT^transformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpD^transformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpN^transformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpU^transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpY^transformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp]^transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpg^transformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpP^transformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpZ^transformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpR^transformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp\^transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpR^transformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp\^transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp]^transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpa^transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp<^transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp-^transformer_encoder_1/word_embeddings/Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2?
Dtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOpDtransformer_encoder_1/embeddings/layer_norm/batchnorm/ReadVariableOp2?
Htransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOpHtransformer_encoder_1/embeddings/layer_norm/batchnorm/mul/ReadVariableOp2~
=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp=transformer_encoder_1/pooler_transform/BiasAdd/ReadVariableOp2|
<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp<transformer_encoder_1/pooler_transform/MatMul/ReadVariableOp2r
7transformer_encoder_1/position_embedding/ReadVariableOp7transformer_encoder_1/position_embedding/ReadVariableOp2?
Itransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOpItransformer_encoder_1/transformer/layer_0/intermediate/add/ReadVariableOp2?
Stransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpStransformer_encoder_1/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp2?
Ctransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOpCtransformer_encoder_1/transformer/layer_0/output/add/ReadVariableOp2?
Mtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOpMtransformer_encoder_1/transformer/layer_0/output/einsum/Einsum/ReadVariableOp2?
Ttransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpTtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp2?
Xtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpXtransformer_encoder_1/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp2?
\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp\transformer_encoder_1/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp2?
ftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpftransformer_encoder_1/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Otransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOpOtransformer_encoder_1/transformer/layer_0/self_attention/key/add/ReadVariableOp2?
Ytransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpYtransformer_encoder_1/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp2?
Qtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOpQtransformer_encoder_1/transformer/layer_0/self_attention/query/add/ReadVariableOp2?
[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp[transformer_encoder_1/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp2?
Qtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOpQtransformer_encoder_1/transformer/layer_0/self_attention/value/add/ReadVariableOp2?
[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp[transformer_encoder_1/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp2?
\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp\transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp2?
`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp`transformer_encoder_1/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp2z
;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp;transformer_encoder_1/type_embeddings/MatMul/ReadVariableOp2\
,transformer_encoder_1/word_embeddings/Gather,transformer_encoder_1/word_embeddings/Gather:Z V
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
inputs/2"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
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
StatefulPartitionedCall:1??????????????????tensorflow/serving/predict20

asset_path_initializer:0__tokenizer_type__2+

asset_path_initializer_1:0spbpe.model:ױ
?#
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
do_lower_case
tokenizer_type
tokenizer_file
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"? 
_tf_keras_network? {"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}, "name": "input_word_ids", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}, "name": "input_mask", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}, "name": "input_type_ids", "inbound_nodes": []}, {"class_name": "Text>TransformerEncoder", "config": {"vocab_size": 30000, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 16, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "name": "transformer_encoder_1", "inbound_nodes": [[["input_word_ids", 0, 0, {}], ["input_mask", 0, 0, {}], ["input_type_ids", 0, 0, {}]]]}], "input_layers": [["input_word_ids", 0, 0], ["input_mask", 0, 0], ["input_type_ids", 0, 0]], "output_layers": [["transformer_encoder_1", 1, 1], ["transformer_encoder_1", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}, "name": "input_word_ids", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}, "name": "input_mask", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}, "name": "input_type_ids", "inbound_nodes": []}, {"class_name": "Text>TransformerEncoder", "config": {"vocab_size": 30000, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 16, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "name": "transformer_encoder_1", "inbound_nodes": [[["input_word_ids", 0, 0, {}], ["input_mask", 0, 0, {}], ["input_type_ids", 0, 0, {}]]]}], "input_layers": [["input_word_ids", 0, 0], ["input_mask", 0, 0], ["input_type_ids", 0, 0]], "output_layers": [["transformer_encoder_1", 1, 1], ["transformer_encoder_1", 1, 0]]}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_word_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_mask", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_type_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}}
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	variables
regularization_losses
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_network?{"class_name": "Text>TransformerEncoder", "name": "transformer_encoder_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"vocab_size": 30000, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 16, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "TransformerEncoder", "config": {"vocab_size": 30000, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 16, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}}}
:
 2Variable
* 
*
?
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
23"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422"
trackable_list_wrapper
?
5layer_regularization_losses
6non_trainable_variables
	variables
7layer_metrics

8layers
	regularization_losses
9metrics

trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_word_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}}
?

embeddings
:	variables
;regularization_losses
<trainable_variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>OnDeviceEmbedding", "name": "word_embeddings", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "word_embeddings", "trainable": true, "dtype": "float32", "vocab_size": 30000, "embedding_width": 16, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "__passive_serialization__": true}, "use_one_hot": false}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_type_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}}
?

embeddings
_position_embeddings
>	variables
?regularization_losses
@trainable_variables
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>PositionEmbedding", "name": "position_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "position_embedding", "trainable": true, "dtype": "float32", "max_sequence_length": 16, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "use_dynamic_slicing": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
 
embeddings
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>OnDeviceEmbedding", "name": "type_embeddings", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "type_embeddings", "trainable": true, "dtype": "float32", "vocab_size": 16, "embedding_width": 16, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "__passive_serialization__": true}, "use_one_hot": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
?
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Add", "name": "add_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add_1", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}]}
?
Jaxis
	!gamma
"beta
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "embeddings/layer_norm", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "embeddings/layer_norm", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-12, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
O	variables
Pregularization_losses
Qtrainable_variables
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_mask", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}}
?
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>SelfAttentionMask", "name": "self_attention_mask_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "self_attention_mask_1", "trainable": true, "dtype": "float32"}}
?

W_attention_layer
X_attention_output_dense
Y_attention_dropout
Z_attention_layer_norm
[_intermediate_dense
"\_intermediate_activation_layer
]_output_dense
^_output_dropout
__output_layer_norm
`	variables
aregularization_losses
btrainable_variables
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>Transformer", "name": "transformer/layer_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "transformer/layer_0", "trainable": true, "dtype": "float32", "num_attention_heads": 2, "intermediate_size": 32, "intermediate_activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "output_range": null, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, null]}]}
?
d	variables
eregularization_losses
ftrainable_variables
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Lambda", "name": "lambda_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda_1", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAABTAAAAcyQAAAB0AGoBfABkAGQAhQJkAWQChQJkAGQAhQJmAxkAZAJk\nA40CUwApBE7pAAAAAOkBAAAAKQHaBGF4aXMpAtoCdGbaB3NxdWVlemUpAdoBeKkAcgcAAAD6ZC9o\nb21lL3h3bGkvcmVwby9saWJlcnQtdGYyX3RydW5rL3RmLW1vZGVscy9zcmMvb2ZmaWNpYWwvbmxw\nL21vZGVsaW5nL25ldHdvcmtzL3RyYW5zZm9ybWVyX2VuY29kZXIucHnaCDxsYW1iZGE+yAAAAPMA\nAAAA\n", null, null]}, "function_type": "lambda", "module": "official.nlp.modeling.networks.transformer_encoder", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
?

3kernel
4bias
h	variables
iregularization_losses
jtrainable_variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "pooler_transform", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pooler_transform", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422"
trackable_list_wrapper
?
llayer_regularization_losses
mnon_trainable_variables
	variables
nlayer_metrics

olayers
regularization_losses
pmetrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,
??2word_embeddings/embeddings
/:-2position_embedding/embeddings
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
 "
trackable_list_wrapper
'
0"
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
qlayer_regularization_losses
rnon_trainable_variables
:	variables
slayer_metrics

tlayers
;regularization_losses
umetrics
<trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
vlayer_regularization_losses
wnon_trainable_variables
>	variables
xlayer_metrics

ylayers
?regularization_losses
zmetrics
@trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
?
{layer_regularization_losses
|non_trainable_variables
B	variables
}layer_metrics

~layers
Cregularization_losses
metrics
Dtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
F	variables
?layer_metrics
?layers
Gregularization_losses
?metrics
Htrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
K	variables
?layer_metrics
?layers
Lregularization_losses
?metrics
Mtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
O	variables
?layer_metrics
?layers
Pregularization_losses
?metrics
Qtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
S	variables
?layer_metrics
?layers
Tregularization_losses
?metrics
Utrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

?_query_dense
?
_key_dense
?_value_dense
?_masked_softmax
?_dropout_layer
X_output_dense
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>MultiHeadAttention", "name": "self_attention", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "self_attention", "trainable": true, "dtype": "float32", "num_heads": 2, "key_size": 8, "value_size": 8, "dropout": 0.1, "use_bias": true, "output_shape": null, "attention_axes": {"class_name": "__tuple__", "items": [1]}, "return_attention_scores": false, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}]}
?
?partial_output_shape
?full_output_shape

)kernel
*bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 16], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 2, 8]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
	?axis
	+gamma
,beta
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "self_attention_layer_norm", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "self_attention_layer_norm", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-12, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?

-kernel
-_kernel
.bias
	._bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>DenseEinsum", "name": "intermediate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "intermediate", "trainable": true, "dtype": "float32", "output_shape": {"class_name": "__tuple__", "items": [32]}, "num_summed_dimensions": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "Text>gelu"}}
?

/kernel
/_kernel
0bias
	0_bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>DenseEinsum", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "output_shape": {"class_name": "__tuple__", "items": [16]}, "num_summed_dimensions": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 32]}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
	?axis
	1gamma
2beta
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "output_layer_norm", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output_layer_norm", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-12, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215"
trackable_list_wrapper
 "
trackable_list_wrapper
?
#0
$1
%2
&3
'4
(5
)6
*7
+8
,9
-10
.11
/12
013
114
215"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
`	variables
?layer_metrics
?layers
aregularization_losses
?metrics
btrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
d	variables
?layer_metrics
?layers
eregularization_losses
?metrics
ftrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
h	variables
?layer_metrics
?layers
iregularization_losses
?metrics
jtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
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
?
?partial_output_shape
?full_output_shape

#kernel
$bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "query", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "query", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 8], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
?partial_output_shape
?full_output_shape

%kernel
&bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "key", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "key", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 8], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
?partial_output_shape
?full_output_shape

'kernel
(bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 8], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
?_mask_expansion_axes
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>MaskedSoftmax", "name": "masked_softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "masked_softmax", "trainable": true, "dtype": "float32", "mask_expansion_axes": [1], "normalization_axes": {"class_name": "__tuple__", "items": [3]}}}
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
X
#0
$1
%2
&3
'4
(5
)6
*7"
trackable_list_wrapper
 "
trackable_list_wrapper
X
#0
$1
%2
&3
'4
(5
)6
*7"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
_
W0
X1
Y2
Z3
[4
\5
]6
^7
_8"
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
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
 ?layer_regularization_losses
?non_trainable_variables
?	variables
?layer_metrics
?layers
?regularization_losses
?metrics
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
O
?0
?1
?2
?3
?4
X5"
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
?2?
__inference__wrapped_model_1617?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
?2?
&__inference_model_1_layer_call_fn_3568
&__inference_model_1_layer_call_fn_3623
&__inference_model_1_layer_call_fn_2884
&__inference_model_1_layer_call_fn_2994?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_model_1_layer_call_and_return_conditional_losses_3296
A__inference_model_1_layer_call_and_return_conditional_losses_3513
A__inference_model_1_layer_call_and_return_conditional_losses_2773
A__inference_model_1_layer_call_and_return_conditional_losses_2718?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_transformer_encoder_1_layer_call_fn_4195
4__inference_transformer_encoder_1_layer_call_fn_2434
4__inference_transformer_encoder_1_layer_call_fn_4140
4__inference_transformer_encoder_1_layer_call_fn_2552?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_3868
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4085
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2252
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2315?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference_signature_wrapper_3051
input_maskinput_type_idsinput_word_ids"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_word_embeddings_layer_call_fn_4216?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_word_embeddings_layer_call_and_return_conditional_losses_4209?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_position_embedding_layer_call_fn_4246?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_position_embedding_layer_call_and_return_conditional_losses_4239?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_type_embeddings_layer_call_fn_4271?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_type_embeddings_layer_call_and_return_conditional_losses_4264?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_add_1_layer_call_fn_4286?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_add_1_layer_call_and_return_conditional_losses_4279?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
4__inference_embeddings/layer_norm_layer_call_fn_4317?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_4308?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dropout_1_layer_call_fn_4339
(__inference_dropout_1_layer_call_fn_4344?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_dropout_1_layer_call_and_return_conditional_losses_4334
C__inference_dropout_1_layer_call_and_return_conditional_losses_4329?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
4__inference_self_attention_mask_1_layer_call_fn_4387?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_4381?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
2__inference_transformer/layer_0_layer_call_fn_4698
2__inference_transformer/layer_0_layer_call_fn_4660?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4622
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4515?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_lambda_1_layer_call_fn_4721
'__inference_lambda_1_layer_call_fn_4726?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_lambda_1_layer_call_and_return_conditional_losses_4716
B__inference_lambda_1_layer_call_and_return_conditional_losses_4707?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
/__inference_pooler_transform_layer_call_fn_4746?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_pooler_transform_layer_call_and_return_conditional_losses_4737?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec;
args3?0
jself
jinputs
jattention_mask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec;
args3?0
jself
jinputs
jattention_mask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jscores
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jscores
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
__inference__wrapped_model_1617? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
? "???
H
transformer_encoder_1/?,
transformer_encoder_1?????????
Y
transformer_encoder_1_1>?;
transformer_encoder_1_1???????????????????
?__inference_add_1_layer_call_and_return_conditional_losses_4279????
???
???
/?,
inputs/0??????????????????
/?,
inputs/1??????????????????
/?,
inputs/2??????????????????
? "2?/
(?%
0??????????????????
? ?
$__inference_add_1_layer_call_fn_4286????
???
???
/?,
inputs/0??????????????????
/?,
inputs/1??????????????????
/?,
inputs/2??????????????????
? "%?"???????????????????
C__inference_dropout_1_layer_call_and_return_conditional_losses_4329v@?=
6?3
-?*
inputs??????????????????
p
? "2?/
(?%
0??????????????????
? ?
C__inference_dropout_1_layer_call_and_return_conditional_losses_4334v@?=
6?3
-?*
inputs??????????????????
p 
? "2?/
(?%
0??????????????????
? ?
(__inference_dropout_1_layer_call_fn_4339i@?=
6?3
-?*
inputs??????????????????
p
? "%?"???????????????????
(__inference_dropout_1_layer_call_fn_4344i@?=
6?3
-?*
inputs??????????????????
p 
? "%?"???????????????????
O__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_4308v!"<?9
2?/
-?*
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
4__inference_embeddings/layer_norm_layer_call_fn_4317i!"<?9
2?/
-?*
inputs??????????????????
? "%?"???????????????????
B__inference_lambda_1_layer_call_and_return_conditional_losses_4707mD?A
:?7
-?*
inputs??????????????????

 
p
? "%?"
?
0?????????
? ?
B__inference_lambda_1_layer_call_and_return_conditional_losses_4716mD?A
:?7
-?*
inputs??????????????????

 
p 
? "%?"
?
0?????????
? ?
'__inference_lambda_1_layer_call_fn_4721`D?A
:?7
-?*
inputs??????????????????

 
p
? "???????????
'__inference_lambda_1_layer_call_fn_4726`D?A
:?7
-?*
inputs??????????????????

 
p 
? "???????????
A__inference_model_1_layer_call_and_return_conditional_losses_2718? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
p

 
? "X?U
N?K
?
0/0?????????
*?'
0/1??????????????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_2773? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
p 

 
? "X?U
N?K
?
0/0?????????
*?'
0/1??????????????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_3296? !"#$%&'()*+,-./01234???
???
???
+?(
inputs/0??????????????????
+?(
inputs/1??????????????????
+?(
inputs/2??????????????????
p

 
? "X?U
N?K
?
0/0?????????
*?'
0/1??????????????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_3513? !"#$%&'()*+,-./01234???
???
???
+?(
inputs/0??????????????????
+?(
inputs/1??????????????????
+?(
inputs/2??????????????????
p 

 
? "X?U
N?K
?
0/0?????????
*?'
0/1??????????????????
? ?
&__inference_model_1_layer_call_fn_2884? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
p

 
? "J?G
?
0?????????
(?%
1???????????????????
&__inference_model_1_layer_call_fn_2994? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
p 

 
? "J?G
?
0?????????
(?%
1???????????????????
&__inference_model_1_layer_call_fn_3568? !"#$%&'()*+,-./01234???
???
???
+?(
inputs/0??????????????????
+?(
inputs/1??????????????????
+?(
inputs/2??????????????????
p

 
? "J?G
?
0?????????
(?%
1???????????????????
&__inference_model_1_layer_call_fn_3623? !"#$%&'()*+,-./01234???
???
???
+?(
inputs/0??????????????????
+?(
inputs/1??????????????????
+?(
inputs/2??????????????????
p 

 
? "J?G
?
0?????????
(?%
1???????????????????
J__inference_pooler_transform_layer_call_and_return_conditional_losses_4737\34/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
/__inference_pooler_transform_layer_call_fn_4746O34/?,
%?"
 ?
inputs?????????
? "???????????
L__inference_position_embedding_layer_call_and_return_conditional_losses_4239u<?9
2?/
-?*
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
1__inference_position_embedding_layer_call_fn_4246h<?9
2?/
-?*
inputs??????????????????
? "%?"???????????????????
O__inference_self_attention_mask_1_layer_call_and_return_conditional_losses_4381?p?m
f?c
a?^
/?,
inputs/0??????????????????
+?(
inputs/1??????????????????
? ";?8
1?.
0'???????????????????????????
? ?
4__inference_self_attention_mask_1_layer_call_fn_4387?p?m
f?c
a?^
/?,
inputs/0??????????????????
+?(
inputs/1??????????????????
? ".?+'????????????????????????????
"__inference_signature_wrapper_3051? !"#$%&'()*+,-./01234???
? 
???
;

input_mask-?*

input_mask??????????????????
C
input_type_ids1?.
input_type_ids??????????????????
C
input_word_ids1?.
input_word_ids??????????????????"???
H
transformer_encoder_1/?,
transformer_encoder_1?????????
Y
transformer_encoder_1_1>?;
transformer_encoder_1_1???????????????????
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4515?#$%&'()*+,-./012??~
w?t
n?k
/?,
inputs/0??????????????????
8?5
inputs/1'???????????????????????????
p
? "2?/
(?%
0??????????????????
? ?
M__inference_transformer/layer_0_layer_call_and_return_conditional_losses_4622?#$%&'()*+,-./012??~
w?t
n?k
/?,
inputs/0??????????????????
8?5
inputs/1'???????????????????????????
p 
? "2?/
(?%
0??????????????????
? ?
2__inference_transformer/layer_0_layer_call_fn_4660?#$%&'()*+,-./012??~
w?t
n?k
/?,
inputs/0??????????????????
8?5
inputs/1'???????????????????????????
p
? "%?"???????????????????
2__inference_transformer/layer_0_layer_call_fn_4698?#$%&'()*+,-./012??~
w?t
n?k
/?,
inputs/0??????????????????
8?5
inputs/1'???????????????????????????
p 
? "%?"???????????????????
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2252? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
p

 
? "X?U
N?K
*?'
0/0??????????????????
?
0/1?????????
? ?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_2315? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
p 

 
? "X?U
N?K
*?'
0/0??????????????????
?
0/1?????????
? ?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_3868? !"#$%&'()*+,-./01234???
???
???
+?(
inputs/0??????????????????
+?(
inputs/1??????????????????
+?(
inputs/2??????????????????
p

 
? "X?U
N?K
*?'
0/0??????????????????
?
0/1?????????
? ?
O__inference_transformer_encoder_1_layer_call_and_return_conditional_losses_4085? !"#$%&'()*+,-./01234???
???
???
+?(
inputs/0??????????????????
+?(
inputs/1??????????????????
+?(
inputs/2??????????????????
p 

 
? "X?U
N?K
*?'
0/0??????????????????
?
0/1?????????
? ?
4__inference_transformer_encoder_1_layer_call_fn_2434? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
p

 
? "J?G
(?%
0??????????????????
?
1??????????
4__inference_transformer_encoder_1_layer_call_fn_2552? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
p 

 
? "J?G
(?%
0??????????????????
?
1??????????
4__inference_transformer_encoder_1_layer_call_fn_4140? !"#$%&'()*+,-./01234???
???
???
+?(
inputs/0??????????????????
+?(
inputs/1??????????????????
+?(
inputs/2??????????????????
p

 
? "J?G
(?%
0??????????????????
?
1??????????
4__inference_transformer_encoder_1_layer_call_fn_4195? !"#$%&'()*+,-./01234???
???
???
+?(
inputs/0??????????????????
+?(
inputs/1??????????????????
+?(
inputs/2??????????????????
p 

 
? "J?G
(?%
0??????????????????
?
1??????????
I__inference_type_embeddings_layer_call_and_return_conditional_losses_4264q 8?5
.?+
)?&
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
.__inference_type_embeddings_layer_call_fn_4271d 8?5
.?+
)?&
inputs??????????????????
? "%?"???????????????????
I__inference_word_embeddings_layer_call_and_return_conditional_losses_4209q8?5
.?+
)?&
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
.__inference_word_embeddings_layer_call_fn_4216d8?5
.?+
)?&
inputs??????????????????
? "%?"??????????????????