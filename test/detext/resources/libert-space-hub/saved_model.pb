??(
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
?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??#
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
dtype0*
shape
:d*+
shared_nameword_embeddings/embeddings
?
.word_embeddings/embeddings/Read/ReadVariableOpReadVariableOpword_embeddings/embeddings*
_output_shapes

:d*
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
regularization_losses
		variables
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
regularization_losses
	variables
trainable_variables
	keras_api
FD
VARIABLE_VALUEVariable(do_lower_case/.ATTRIBUTES/VARIABLE_VALUE
 
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
5non_trainable_variables
regularization_losses

6layers
		variables
7layer_metrics
8metrics
9layer_regularization_losses

trainable_variables
 
 
b

embeddings
:regularization_losses
;	variables
<trainable_variables
=	keras_api
 
|

embeddings
_position_embeddings
>regularization_losses
?	variables
@trainable_variables
A	keras_api
b
 
embeddings
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
R
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
q
Jaxis
	!gamma
"beta
Kregularization_losses
L	variables
Mtrainable_variables
N	keras_api
R
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
 
R
Sregularization_losses
T	variables
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
`regularization_losses
a	variables
btrainable_variables
c	keras_api
R
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
h

3kernel
4bias
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
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
lnon_trainable_variables
regularization_losses

mlayers
	variables
nlayer_metrics
ometrics
player_regularization_losses
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

0

0
1
2
3
 
 
 
 

0

0
?
qnon_trainable_variables
:regularization_losses

rlayers
;	variables
slayer_metrics
tmetrics
ulayer_regularization_losses
<trainable_variables
 

0

0
?
vnon_trainable_variables
>regularization_losses

wlayers
?	variables
xlayer_metrics
ymetrics
zlayer_regularization_losses
@trainable_variables
 

 0

 0
?
{non_trainable_variables
Bregularization_losses

|layers
C	variables
}layer_metrics
~metrics
layer_regularization_losses
Dtrainable_variables
 
 
 
?
?non_trainable_variables
Fregularization_losses
?layers
G	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Htrainable_variables
 
 

!0
"1

!0
"1
?
?non_trainable_variables
Kregularization_losses
?layers
L	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Mtrainable_variables
 
 
 
?
?non_trainable_variables
Oregularization_losses
?layers
P	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Qtrainable_variables
 
 
 
?
?non_trainable_variables
Sregularization_losses
?layers
T	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Utrainable_variables
?
?_query_dense
?
_key_dense
?_value_dense
?_masked_softmax
?_dropout_layer
X_output_dense
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

)kernel
*bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
v
	?axis
	+gamma
,beta
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?

-kernel
-_kernel
.bias
	._bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?

/kernel
/_kernel
0bias
	0_bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
v
	?axis
	1gamma
2beta
?regularization_losses
?	variables
?trainable_variables
?	keras_api
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
?non_trainable_variables
`regularization_losses
?layers
a	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
btrainable_variables
 
 
 
?
?non_trainable_variables
dregularization_losses
?layers
e	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
ftrainable_variables
 

30
41

30
41
?
?non_trainable_variables
hregularization_losses
?layers
i	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
jtrainable_variables
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
 
 
?
?partial_output_shape
?full_output_shape

#kernel
$bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

%kernel
&bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
?partial_output_shape
?full_output_shape

'kernel
(bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
q
?_mask_expansion_axes
?regularization_losses
?	variables
?trainable_variables
?	keras_api
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
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
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 
 

)0
*1

)0
*1
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 
 
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 

+0
,1

+0
,1
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 

-0
.1

-0
.1
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 
 
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 

/0
01

/0
01
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 
 
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 

10
21

10
21
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
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
 
 
 

#0
$1

#0
$1
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 
 

%0
&1

%0
&1
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 
 

'0
(1

'0
(1
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 
 
 
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
 
 
 
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
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
GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_11812
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
GPU 2J 8? *'
f"R 
__inference__traced_save_13613
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_13695Ѧ"
?
?
J__inference_type_embeddings_layer_call_and_return_conditional_losses_10463

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
??
?
@__inference_model_layer_call_and_return_conditional_losses_12057
inputs_0
inputs_1
inputs_27
3transformer_encoder_word_embeddings_gather_resourceB
>transformer_encoder_position_embedding_readvariableop_resourceF
Btransformer_encoder_type_embeddings_matmul_readvariableop_resourceS
Otransformer_encoder_embeddings_layer_norm_batchnorm_mul_readvariableop_resourceO
Ktransformer_encoder_embeddings_layer_norm_batchnorm_readvariableop_resourcef
btransformer_encoder_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource\
Xtransformer_encoder_transformer_layer_0_self_attention_query_add_readvariableop_resourced
`transformer_encoder_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resourceZ
Vtransformer_encoder_transformer_layer_0_self_attention_key_add_readvariableop_resourcef
btransformer_encoder_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource\
Xtransformer_encoder_transformer_layer_0_self_attention_value_add_readvariableop_resourceq
mtransformer_encoder_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourceg
ctransformer_encoder_transformer_layer_0_self_attention_attention_output_add_readvariableop_resourcek
gtransformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourceg
ctransformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource^
Ztransformer_encoder_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resourceT
Ptransformer_encoder_transformer_layer_0_intermediate_add_readvariableop_resourceX
Ttransformer_encoder_transformer_layer_0_output_einsum_einsum_readvariableop_resourceN
Jtransformer_encoder_transformer_layer_0_output_add_readvariableop_resourcec
_transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource_
[transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resourceG
Ctransformer_encoder_pooler_transform_matmul_readvariableop_resourceH
Dtransformer_encoder_pooler_transform_biasadd_readvariableop_resource
identity

identity_1??Btransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp?Ftransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp?:transformer_encoder/pooler_transform/MatMul/ReadVariableOp?5transformer_encoder/position_embedding/ReadVariableOp?Gtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp?Qtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?Atransformer_encoder/transformer/layer_0/output/add/ReadVariableOp?Ktransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?Vtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?Ztransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?dtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?Mtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp?Wtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?Otransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp?Ytransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?Otransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp?Ytransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?9transformer_encoder/type_embeddings/MatMul/ReadVariableOp?*transformer_encoder/word_embeddings/Gather?
1transformer_encoder/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????23
1transformer_encoder/word_embeddings/Reshape/shape?
+transformer_encoder/word_embeddings/ReshapeReshapeinputs_0:transformer_encoder/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2-
+transformer_encoder/word_embeddings/Reshape?
*transformer_encoder/word_embeddings/GatherResourceGather3transformer_encoder_word_embeddings_gather_resource4transformer_encoder/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02,
*transformer_encoder/word_embeddings/Gather?
,transformer_encoder/word_embeddings/IdentityIdentity3transformer_encoder/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????2.
,transformer_encoder/word_embeddings/Identity?
)transformer_encoder/word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2+
)transformer_encoder/word_embeddings/Shape?
3transformer_encoder/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:25
3transformer_encoder/word_embeddings/concat/values_1?
/transformer_encoder/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/transformer_encoder/word_embeddings/concat/axis?
*transformer_encoder/word_embeddings/concatConcatV22transformer_encoder/word_embeddings/Shape:output:0<transformer_encoder/word_embeddings/concat/values_1:output:08transformer_encoder/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*transformer_encoder/word_embeddings/concat?
-transformer_encoder/word_embeddings/Reshape_1Reshape5transformer_encoder/word_embeddings/Identity:output:03transformer_encoder/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder/word_embeddings/Reshape_1?
,transformer_encoder/position_embedding/ShapeShape6transformer_encoder/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:2.
,transformer_encoder/position_embedding/Shape?
:transformer_encoder/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_encoder/position_embedding/strided_slice/stack?
<transformer_encoder/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<transformer_encoder/position_embedding/strided_slice/stack_1?
<transformer_encoder/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<transformer_encoder/position_embedding/strided_slice/stack_2?
4transformer_encoder/position_embedding/strided_sliceStridedSlice5transformer_encoder/position_embedding/Shape:output:0Ctransformer_encoder/position_embedding/strided_slice/stack:output:0Etransformer_encoder/position_embedding/strided_slice/stack_1:output:0Etransformer_encoder/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4transformer_encoder/position_embedding/strided_slice?
<transformer_encoder/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<transformer_encoder/position_embedding/strided_slice_1/stack?
>transformer_encoder/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder/position_embedding/strided_slice_1/stack_1?
>transformer_encoder/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder/position_embedding/strided_slice_1/stack_2?
6transformer_encoder/position_embedding/strided_slice_1StridedSlice5transformer_encoder/position_embedding/Shape:output:0Etransformer_encoder/position_embedding/strided_slice_1/stack:output:0Gtransformer_encoder/position_embedding/strided_slice_1/stack_1:output:0Gtransformer_encoder/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6transformer_encoder/position_embedding/strided_slice_1?
5transformer_encoder/position_embedding/ReadVariableOpReadVariableOp>transformer_encoder_position_embedding_readvariableop_resource*
_output_shapes

:*
dtype027
5transformer_encoder/position_embedding/ReadVariableOp?
<transformer_encoder/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<transformer_encoder/position_embedding/strided_slice_2/stack?
@transformer_encoder/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_encoder/position_embedding/strided_slice_2/stack_1/1?
>transformer_encoder/position_embedding/strided_slice_2/stack_1Pack?transformer_encoder/position_embedding/strided_slice_1:output:0Itransformer_encoder/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2@
>transformer_encoder/position_embedding/strided_slice_2/stack_1?
>transformer_encoder/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>transformer_encoder/position_embedding/strided_slice_2/stack_2?
6transformer_encoder/position_embedding/strided_slice_2StridedSlice=transformer_encoder/position_embedding/ReadVariableOp:value:0Etransformer_encoder/position_embedding/strided_slice_2/stack:output:0Gtransformer_encoder/position_embedding/strided_slice_2/stack_1:output:0Gtransformer_encoder/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask28
6transformer_encoder/position_embedding/strided_slice_2?
:transformer_encoder/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2<
:transformer_encoder/position_embedding/BroadcastTo/shape/2?
8transformer_encoder/position_embedding/BroadcastTo/shapePack=transformer_encoder/position_embedding/strided_slice:output:0?transformer_encoder/position_embedding/strided_slice_1:output:0Ctransformer_encoder/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2:
8transformer_encoder/position_embedding/BroadcastTo/shape?
2transformer_encoder/position_embedding/BroadcastToBroadcastTo?transformer_encoder/position_embedding/strided_slice_2:output:0Atransformer_encoder/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????24
2transformer_encoder/position_embedding/BroadcastTo?
1transformer_encoder/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????23
1transformer_encoder/type_embeddings/Reshape/shape?
+transformer_encoder/type_embeddings/ReshapeReshapeinputs_2:transformer_encoder/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2-
+transformer_encoder/type_embeddings/Reshape?
4transformer_encoder/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4transformer_encoder/type_embeddings/one_hot/on_value?
5transformer_encoder/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5transformer_encoder/type_embeddings/one_hot/off_value?
1transformer_encoder/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :23
1transformer_encoder/type_embeddings/one_hot/depth?
+transformer_encoder/type_embeddings/one_hotOneHot4transformer_encoder/type_embeddings/Reshape:output:0:transformer_encoder/type_embeddings/one_hot/depth:output:0=transformer_encoder/type_embeddings/one_hot/on_value:output:0>transformer_encoder/type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2-
+transformer_encoder/type_embeddings/one_hot?
9transformer_encoder/type_embeddings/MatMul/ReadVariableOpReadVariableOpBtransformer_encoder_type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02;
9transformer_encoder/type_embeddings/MatMul/ReadVariableOp?
*transformer_encoder/type_embeddings/MatMulMatMul4transformer_encoder/type_embeddings/one_hot:output:0Atransformer_encoder/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2,
*transformer_encoder/type_embeddings/MatMul?
)transformer_encoder/type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2+
)transformer_encoder/type_embeddings/Shape?
3transformer_encoder/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:25
3transformer_encoder/type_embeddings/concat/values_1?
/transformer_encoder/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/transformer_encoder/type_embeddings/concat/axis?
*transformer_encoder/type_embeddings/concatConcatV22transformer_encoder/type_embeddings/Shape:output:0<transformer_encoder/type_embeddings/concat/values_1:output:08transformer_encoder/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*transformer_encoder/type_embeddings/concat?
-transformer_encoder/type_embeddings/Reshape_1Reshape4transformer_encoder/type_embeddings/MatMul:product:03transformer_encoder/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder/type_embeddings/Reshape_1?
transformer_encoder/add/addAddV26transformer_encoder/word_embeddings/Reshape_1:output:0;transformer_encoder/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2
transformer_encoder/add/add?
transformer_encoder/add/add_1AddV2transformer_encoder/add/add:z:06transformer_encoder/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2
transformer_encoder/add/add_1?
Htransformer_encoder/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_encoder/embeddings/layer_norm/moments/mean/reduction_indices?
6transformer_encoder/embeddings/layer_norm/moments/meanMean!transformer_encoder/add/add_1:z:0Qtransformer_encoder/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(28
6transformer_encoder/embeddings/layer_norm/moments/mean?
>transformer_encoder/embeddings/layer_norm/moments/StopGradientStopGradient?transformer_encoder/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2@
>transformer_encoder/embeddings/layer_norm/moments/StopGradient?
Ctransformer_encoder/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference!transformer_encoder/add/add_1:z:0Gtransformer_encoder/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2E
Ctransformer_encoder/embeddings/layer_norm/moments/SquaredDifference?
Ltransformer_encoder/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_encoder/embeddings/layer_norm/moments/variance/reduction_indices?
:transformer_encoder/embeddings/layer_norm/moments/varianceMeanGtransformer_encoder/embeddings/layer_norm/moments/SquaredDifference:z:0Utransformer_encoder/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2<
:transformer_encoder/embeddings/layer_norm/moments/variance?
9transformer_encoder/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2;
9transformer_encoder/embeddings/layer_norm/batchnorm/add/y?
7transformer_encoder/embeddings/layer_norm/batchnorm/addAddV2Ctransformer_encoder/embeddings/layer_norm/moments/variance:output:0Btransformer_encoder/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer_encoder/embeddings/layer_norm/batchnorm/add?
9transformer_encoder/embeddings/layer_norm/batchnorm/RsqrtRsqrt;transformer_encoder/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder/embeddings/layer_norm/batchnorm/Rsqrt?
Ftransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?
7transformer_encoder/embeddings/layer_norm/batchnorm/mulMul=transformer_encoder/embeddings/layer_norm/batchnorm/Rsqrt:y:0Ntransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer_encoder/embeddings/layer_norm/batchnorm/mul?
9transformer_encoder/embeddings/layer_norm/batchnorm/mul_1Mul!transformer_encoder/add/add_1:z:0;transformer_encoder/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder/embeddings/layer_norm/batchnorm/mul_1?
9transformer_encoder/embeddings/layer_norm/batchnorm/mul_2Mul?transformer_encoder/embeddings/layer_norm/moments/mean:output:0;transformer_encoder/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder/embeddings/layer_norm/batchnorm/mul_2?
Btransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02D
Btransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp?
7transformer_encoder/embeddings/layer_norm/batchnorm/subSubJtransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0=transformer_encoder/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer_encoder/embeddings/layer_norm/batchnorm/sub?
9transformer_encoder/embeddings/layer_norm/batchnorm/add_1AddV2=transformer_encoder/embeddings/layer_norm/batchnorm/mul_1:z:0;transformer_encoder/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder/embeddings/layer_norm/batchnorm/add_1?
)transformer_encoder/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2+
)transformer_encoder/dropout/dropout/Const?
'transformer_encoder/dropout/dropout/MulMul=transformer_encoder/embeddings/layer_norm/batchnorm/add_1:z:02transformer_encoder/dropout/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2)
'transformer_encoder/dropout/dropout/Mul?
)transformer_encoder/dropout/dropout/ShapeShape=transformer_encoder/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*
_output_shapes
:2+
)transformer_encoder/dropout/dropout/Shape?
@transformer_encoder/dropout/dropout/random_uniform/RandomUniformRandomUniform2transformer_encoder/dropout/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)2B
@transformer_encoder/dropout/dropout/random_uniform/RandomUniform?
2transformer_encoder/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=24
2transformer_encoder/dropout/dropout/GreaterEqual/y?
0transformer_encoder/dropout/dropout/GreaterEqualGreaterEqualItransformer_encoder/dropout/dropout/random_uniform/RandomUniform:output:0;transformer_encoder/dropout/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????22
0transformer_encoder/dropout/dropout/GreaterEqual?
(transformer_encoder/dropout/dropout/CastCast4transformer_encoder/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2*
(transformer_encoder/dropout/dropout/Cast?
)transformer_encoder/dropout/dropout/Mul_1Mul+transformer_encoder/dropout/dropout/Mul:z:0,transformer_encoder/dropout/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2+
)transformer_encoder/dropout/dropout/Mul_1?
-transformer_encoder/self_attention_mask/ShapeShape-transformer_encoder/dropout/dropout/Mul_1:z:0*
T0*
_output_shapes
:2/
-transformer_encoder/self_attention_mask/Shape?
;transformer_encoder/self_attention_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_encoder/self_attention_mask/strided_slice/stack?
=transformer_encoder/self_attention_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=transformer_encoder/self_attention_mask/strided_slice/stack_1?
=transformer_encoder/self_attention_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=transformer_encoder/self_attention_mask/strided_slice/stack_2?
5transformer_encoder/self_attention_mask/strided_sliceStridedSlice6transformer_encoder/self_attention_mask/Shape:output:0Dtransformer_encoder/self_attention_mask/strided_slice/stack:output:0Ftransformer_encoder/self_attention_mask/strided_slice/stack_1:output:0Ftransformer_encoder/self_attention_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5transformer_encoder/self_attention_mask/strided_slice?
=transformer_encoder/self_attention_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=transformer_encoder/self_attention_mask/strided_slice_1/stack?
?transformer_encoder/self_attention_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_1/stack_1?
?transformer_encoder/self_attention_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_1/stack_2?
7transformer_encoder/self_attention_mask/strided_slice_1StridedSlice6transformer_encoder/self_attention_mask/Shape:output:0Ftransformer_encoder/self_attention_mask/strided_slice_1/stack:output:0Htransformer_encoder/self_attention_mask/strided_slice_1/stack_1:output:0Htransformer_encoder/self_attention_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7transformer_encoder/self_attention_mask/strided_slice_1?
/transformer_encoder/self_attention_mask/Shape_1Shapeinputs_1*
T0*
_output_shapes
:21
/transformer_encoder/self_attention_mask/Shape_1?
=transformer_encoder/self_attention_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=transformer_encoder/self_attention_mask/strided_slice_2/stack?
?transformer_encoder/self_attention_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_2/stack_1?
?transformer_encoder/self_attention_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_2/stack_2?
7transformer_encoder/self_attention_mask/strided_slice_2StridedSlice8transformer_encoder/self_attention_mask/Shape_1:output:0Ftransformer_encoder/self_attention_mask/strided_slice_2/stack:output:0Htransformer_encoder/self_attention_mask/strided_slice_2/stack_1:output:0Htransformer_encoder/self_attention_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7transformer_encoder/self_attention_mask/strided_slice_2?
=transformer_encoder/self_attention_mask/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=transformer_encoder/self_attention_mask/strided_slice_3/stack?
?transformer_encoder/self_attention_mask/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_3/stack_1?
?transformer_encoder/self_attention_mask/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_3/stack_2?
7transformer_encoder/self_attention_mask/strided_slice_3StridedSlice8transformer_encoder/self_attention_mask/Shape_1:output:0Ftransformer_encoder/self_attention_mask/strided_slice_3/stack:output:0Htransformer_encoder/self_attention_mask/strided_slice_3/stack_1:output:0Htransformer_encoder/self_attention_mask/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7transformer_encoder/self_attention_mask/strided_slice_3?
7transformer_encoder/self_attention_mask/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :29
7transformer_encoder/self_attention_mask/Reshape/shape/1?
5transformer_encoder/self_attention_mask/Reshape/shapePack>transformer_encoder/self_attention_mask/strided_slice:output:0@transformer_encoder/self_attention_mask/Reshape/shape/1:output:0@transformer_encoder/self_attention_mask/strided_slice_3:output:0*
N*
T0*
_output_shapes
:27
5transformer_encoder/self_attention_mask/Reshape/shape?
/transformer_encoder/self_attention_mask/ReshapeReshapeinputs_1>transformer_encoder/self_attention_mask/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder/self_attention_mask/Reshape?
,transformer_encoder/self_attention_mask/CastCast8transformer_encoder/self_attention_mask/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2.
,transformer_encoder/self_attention_mask/Cast?
0transformer_encoder/self_attention_mask/ones/mulMul>transformer_encoder/self_attention_mask/strided_slice:output:0@transformer_encoder/self_attention_mask/strided_slice_1:output:0*
T0*
_output_shapes
: 22
0transformer_encoder/self_attention_mask/ones/mul?
4transformer_encoder/self_attention_mask/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :26
4transformer_encoder/self_attention_mask/ones/mul_1/y?
2transformer_encoder/self_attention_mask/ones/mul_1Mul4transformer_encoder/self_attention_mask/ones/mul:z:0=transformer_encoder/self_attention_mask/ones/mul_1/y:output:0*
T0*
_output_shapes
: 24
2transformer_encoder/self_attention_mask/ones/mul_1?
3transformer_encoder/self_attention_mask/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3transformer_encoder/self_attention_mask/ones/Less/y?
1transformer_encoder/self_attention_mask/ones/LessLess6transformer_encoder/self_attention_mask/ones/mul_1:z:0<transformer_encoder/self_attention_mask/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1transformer_encoder/self_attention_mask/ones/Less?
5transformer_encoder/self_attention_mask/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :27
5transformer_encoder/self_attention_mask/ones/packed/2?
3transformer_encoder/self_attention_mask/ones/packedPack>transformer_encoder/self_attention_mask/strided_slice:output:0@transformer_encoder/self_attention_mask/strided_slice_1:output:0>transformer_encoder/self_attention_mask/ones/packed/2:output:0*
N*
T0*
_output_shapes
:25
3transformer_encoder/self_attention_mask/ones/packed?
2transformer_encoder/self_attention_mask/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2transformer_encoder/self_attention_mask/ones/Const?
,transformer_encoder/self_attention_mask/onesFill<transformer_encoder/self_attention_mask/ones/packed:output:0;transformer_encoder/self_attention_mask/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2.
,transformer_encoder/self_attention_mask/ones?
+transformer_encoder/self_attention_mask/mulMul5transformer_encoder/self_attention_mask/ones:output:00transformer_encoder/self_attention_mask/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2-
+transformer_encoder/self_attention_mask/mul?
Ytransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpbtransformer_encoder_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02[
Ytransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
Jtransformer_encoder/transformer/layer_0/self_attention/query/einsum/EinsumEinsum-transformer_encoder/dropout/dropout/Mul_1:z:0atransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2L
Jtransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum?
Otransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpXtransformer_encoder_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02Q
Otransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp?
@transformer_encoder/transformer/layer_0/self_attention/query/addAddV2Stransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum:output:0Wtransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2B
@transformer_encoder/transformer/layer_0/self_attention/query/add?
Wtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp`transformer_encoder_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02Y
Wtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?
Htransformer_encoder/transformer/layer_0/self_attention/key/einsum/EinsumEinsum-transformer_encoder/dropout/dropout/Mul_1:z:0_transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2J
Htransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum?
Mtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpVtransformer_encoder_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02O
Mtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp?
>transformer_encoder/transformer/layer_0/self_attention/key/addAddV2Qtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum:output:0Utransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2@
>transformer_encoder/transformer/layer_0/self_attention/key/add?
Ytransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpbtransformer_encoder_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02[
Ytransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?
Jtransformer_encoder/transformer/layer_0/self_attention/value/einsum/EinsumEinsum-transformer_encoder/dropout/dropout/Mul_1:z:0atransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2L
Jtransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum?
Otransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpXtransformer_encoder_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02Q
Otransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp?
@transformer_encoder/transformer/layer_0/self_attention/value/addAddV2Stransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum:output:0Wtransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2B
@transformer_encoder/transformer/layer_0/self_attention/value/add?
Dtransformer_encoder/transformer/layer_0/self_attention/einsum/EinsumEinsumBtransformer_encoder/transformer/layer_0/self_attention/key/add:z:0Dtransformer_encoder/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2F
Dtransformer_encoder/transformer/layer_0/self_attention/einsum/Einsum?
<transformer_encoder/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2>
<transformer_encoder/transformer/layer_0/self_attention/Mul/y?
:transformer_encoder/transformer/layer_0/self_attention/MulMulMtransformer_encoder/transformer/layer_0/self_attention/einsum/Einsum:output:0Etransformer_encoder/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2<
:transformer_encoder/transformer/layer_0/self_attention/Mul?
Ttransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2V
Ttransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim?
Ptransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims
ExpandDims/transformer_encoder/self_attention_mask/mul:z:0]transformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2R
Ptransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims?
Ktransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2M
Ktransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/x?
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/subSubTtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/x:output:0Ytransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2K
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub?
Ktransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2M
Ktransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/y?
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mulMulMtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub:z:0Ttransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2K
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul?
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/addAddV2>transformer_encoder/transformer/layer_0/self_attention/Mul:z:0Mtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2K
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/add?
Mtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/SoftmaxSoftmaxMtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/Softmax?
Ltransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2N
Ltransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Const?
Jtransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/MulMulWtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0Utransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Const:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2L
Jtransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Mul?
Ltransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/ShapeShapeWtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0*
T0*
_output_shapes
:2N
Ltransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Shape?
ctransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniformRandomUniformUtransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+???????????????????????????*
dtype0*
seed???)*
seed22e
ctransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniform?
Utransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2W
Utransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual/y?
Stransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/GreaterEqualGreaterEqualltransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/random_uniform/RandomUniform:output:0^transformer_encoder/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2U
Stransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual?
Ktransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/CastCastWtransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+???????????????????????????2M
Ktransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Cast?
Ltransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Mul_1MulNtransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Mul:z:0Otransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Cast:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2N
Ltransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Mul_1?
Ftransformer_encoder/transformer/layer_0/self_attention/einsum_1/EinsumEinsumPtransformer_encoder/transformer/layer_0/self_attention/dropout/dropout/Mul_1:z:0Dtransformer_encoder/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2H
Ftransformer_encoder/transformer/layer_0/self_attention/einsum_1/Einsum?
dtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpmtransformer_encoder_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02f
dtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?
Utransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsumOtransformer_encoder/transformer/layer_0/self_attention/einsum_1/Einsum:output:0ltransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2W
Utransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum?
Ztransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpctransformer_encoder_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02\
Ztransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
Ktransformer_encoder/transformer/layer_0/self_attention/attention_output/addAddV2^transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0btransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder/transformer/layer_0/self_attention/attention_output/add?
?transformer_encoder/transformer/layer_0/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2A
?transformer_encoder/transformer/layer_0/dropout_1/dropout/Const?
=transformer_encoder/transformer/layer_0/dropout_1/dropout/MulMulOtransformer_encoder/transformer/layer_0/self_attention/attention_output/add:z:0Htransformer_encoder/transformer/layer_0/dropout_1/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer_encoder/transformer/layer_0/dropout_1/dropout/Mul?
?transformer_encoder/transformer/layer_0/dropout_1/dropout/ShapeShapeOtransformer_encoder/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*
_output_shapes
:2A
?transformer_encoder/transformer/layer_0/dropout_1/dropout/Shape?
Vtransformer_encoder/transformer/layer_0/dropout_1/dropout/random_uniform/RandomUniformRandomUniformHtransformer_encoder/transformer/layer_0/dropout_1/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed22X
Vtransformer_encoder/transformer/layer_0/dropout_1/dropout/random_uniform/RandomUniform?
Htransformer_encoder/transformer/layer_0/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2J
Htransformer_encoder/transformer/layer_0/dropout_1/dropout/GreaterEqual/y?
Ftransformer_encoder/transformer/layer_0/dropout_1/dropout/GreaterEqualGreaterEqual_transformer_encoder/transformer/layer_0/dropout_1/dropout/random_uniform/RandomUniform:output:0Qtransformer_encoder/transformer/layer_0/dropout_1/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2H
Ftransformer_encoder/transformer/layer_0/dropout_1/dropout/GreaterEqual?
>transformer_encoder/transformer/layer_0/dropout_1/dropout/CastCastJtransformer_encoder/transformer/layer_0/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2@
>transformer_encoder/transformer/layer_0/dropout_1/dropout/Cast?
?transformer_encoder/transformer/layer_0/dropout_1/dropout/Mul_1MulAtransformer_encoder/transformer/layer_0/dropout_1/dropout/Mul:z:0Btransformer_encoder/transformer/layer_0/dropout_1/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer_encoder/transformer/layer_0/dropout_1/dropout/Mul_1?
+transformer_encoder/transformer/layer_0/addAddV2-transformer_encoder/dropout/dropout/Mul_1:z:0Ctransformer_encoder/transformer/layer_0/dropout_1/dropout/Mul_1:z:0*
T0*4
_output_shapes"
 :??????????????????2-
+transformer_encoder/transformer/layer_0/add?
`transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2b
`transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices?
Ntransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/meanMean/transformer_encoder/transformer/layer_0/add:z:0itransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2P
Ntransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean?
Vtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientWtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2X
Vtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradient?
[transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference/transformer_encoder/transformer/layer_0/add:z:0_transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2]
[transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference?
dtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2f
dtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices?
Rtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/varianceMean_transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0mtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2T
Rtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y?
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2[transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2Q
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrtStransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt?
^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpgtransformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02`
^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulUtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0ftransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2Q
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul/transformer_encoder/transformer/layer_0/add:z:0Stransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulWtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0Stransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2?
Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpctransformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02\
Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/subSubbtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Utransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2Q
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/sub?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Utransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0Stransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1?
Qtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOpZtransformer_encoder_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02S
Qtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?
Btransformer_encoder/transformer/layer_0/intermediate/einsum/EinsumEinsumUtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0Ytransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2D
Btransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum?
Gtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOpPtransformer_encoder_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02I
Gtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp?
8transformer_encoder/transformer/layer_0/intermediate/addAddV2Ktransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum:output:0Otransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/intermediate/add?
8transformer_encoder/transformer/layer_0/activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2:
8transformer_encoder/transformer/layer_0/activation/Pow/y?
6transformer_encoder/transformer/layer_0/activation/PowPow<transformer_encoder/transformer/layer_0/intermediate/add:z:0Atransformer_encoder/transformer/layer_0/activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 28
6transformer_encoder/transformer/layer_0/activation/Pow?
8transformer_encoder/transformer/layer_0/activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2:
8transformer_encoder/transformer/layer_0/activation/mul/x?
6transformer_encoder/transformer/layer_0/activation/mulMulAtransformer_encoder/transformer/layer_0/activation/mul/x:output:0:transformer_encoder/transformer/layer_0/activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 28
6transformer_encoder/transformer/layer_0/activation/mul?
6transformer_encoder/transformer/layer_0/activation/addAddV2<transformer_encoder/transformer/layer_0/intermediate/add:z:0:transformer_encoder/transformer/layer_0/activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 28
6transformer_encoder/transformer/layer_0/activation/add?
:transformer_encoder/transformer/layer_0/activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2<
:transformer_encoder/transformer/layer_0/activation/mul_1/x?
8transformer_encoder/transformer/layer_0/activation/mul_1MulCtransformer_encoder/transformer/layer_0/activation/mul_1/x:output:0:transformer_encoder/transformer/layer_0/activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/activation/mul_1?
7transformer_encoder/transformer/layer_0/activation/TanhTanh<transformer_encoder/transformer/layer_0/activation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 29
7transformer_encoder/transformer/layer_0/activation/Tanh?
:transformer_encoder/transformer/layer_0/activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2<
:transformer_encoder/transformer/layer_0/activation/add_1/x?
8transformer_encoder/transformer/layer_0/activation/add_1AddV2Ctransformer_encoder/transformer/layer_0/activation/add_1/x:output:0;transformer_encoder/transformer/layer_0/activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/activation/add_1?
:transformer_encoder/transformer/layer_0/activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2<
:transformer_encoder/transformer/layer_0/activation/mul_2/x?
8transformer_encoder/transformer/layer_0/activation/mul_2MulCtransformer_encoder/transformer/layer_0/activation/mul_2/x:output:0<transformer_encoder/transformer/layer_0/activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/activation/mul_2?
8transformer_encoder/transformer/layer_0/activation/mul_3Mul<transformer_encoder/transformer/layer_0/intermediate/add:z:0<transformer_encoder/transformer/layer_0/activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/activation/mul_3?
Ktransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02M
Ktransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
<transformer_encoder/transformer/layer_0/output/einsum/EinsumEinsum<transformer_encoder/transformer/layer_0/activation/mul_3:z:0Stransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2>
<transformer_encoder/transformer/layer_0/output/einsum/Einsum?
Atransformer_encoder/transformer/layer_0/output/add/ReadVariableOpReadVariableOpJtransformer_encoder_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02C
Atransformer_encoder/transformer/layer_0/output/add/ReadVariableOp?
2transformer_encoder/transformer/layer_0/output/addAddV2Etransformer_encoder/transformer/layer_0/output/einsum/Einsum:output:0Itransformer_encoder/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????24
2transformer_encoder/transformer/layer_0/output/add?
?transformer_encoder/transformer/layer_0/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2A
?transformer_encoder/transformer/layer_0/dropout_2/dropout/Const?
=transformer_encoder/transformer/layer_0/dropout_2/dropout/MulMul6transformer_encoder/transformer/layer_0/output/add:z:0Htransformer_encoder/transformer/layer_0/dropout_2/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2?
=transformer_encoder/transformer/layer_0/dropout_2/dropout/Mul?
?transformer_encoder/transformer/layer_0/dropout_2/dropout/ShapeShape6transformer_encoder/transformer/layer_0/output/add:z:0*
T0*
_output_shapes
:2A
?transformer_encoder/transformer/layer_0/dropout_2/dropout/Shape?
Vtransformer_encoder/transformer/layer_0/dropout_2/dropout/random_uniform/RandomUniformRandomUniformHtransformer_encoder/transformer/layer_0/dropout_2/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)*
seed22X
Vtransformer_encoder/transformer/layer_0/dropout_2/dropout/random_uniform/RandomUniform?
Htransformer_encoder/transformer/layer_0/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2J
Htransformer_encoder/transformer/layer_0/dropout_2/dropout/GreaterEqual/y?
Ftransformer_encoder/transformer/layer_0/dropout_2/dropout/GreaterEqualGreaterEqual_transformer_encoder/transformer/layer_0/dropout_2/dropout/random_uniform/RandomUniform:output:0Qtransformer_encoder/transformer/layer_0/dropout_2/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2H
Ftransformer_encoder/transformer/layer_0/dropout_2/dropout/GreaterEqual?
>transformer_encoder/transformer/layer_0/dropout_2/dropout/CastCastJtransformer_encoder/transformer/layer_0/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2@
>transformer_encoder/transformer/layer_0/dropout_2/dropout/Cast?
?transformer_encoder/transformer/layer_0/dropout_2/dropout/Mul_1MulAtransformer_encoder/transformer/layer_0/dropout_2/dropout/Mul:z:0Btransformer_encoder/transformer/layer_0/dropout_2/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2A
?transformer_encoder/transformer/layer_0/dropout_2/dropout/Mul_1?
-transformer_encoder/transformer/layer_0/add_1AddV2Ctransformer_encoder/transformer/layer_0/dropout_2/dropout/Mul_1:z:0Utransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder/transformer/layer_0/add_1?
Xtransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xtransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices?
Ftransformer_encoder/transformer/layer_0/output_layer_norm/moments/meanMean1transformer_encoder/transformer/layer_0/add_1:z:0atransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2H
Ftransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean?
Ntransformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradientOtransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2P
Ntransformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradient?
Stransformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference1transformer_encoder/transformer/layer_0/add_1:z:0Wtransformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifference?
\transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2^
\transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices?
Jtransformer_encoder/transformer/layer_0/output_layer_norm/moments/varianceMeanWtransformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0etransformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2L
Jtransformer_encoder/transformer/layer_0/output_layer_norm/moments/variance?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/y?
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/addAddV2Stransformer_encoder/transformer/layer_0/output_layer_norm/moments/variance:output:0Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtKtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
Vtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp_transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02X
Vtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mulMulMtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul1transformer_encoder/transformer/layer_0/add_1:z:0Ktransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2MulOtransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean:output:0Ktransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2?
Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOp[transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02T
Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/subSubZtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0Mtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/sub?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2Mtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Ktransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1?
.transformer_encoder/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            20
.transformer_encoder/lambda/strided_slice/stack?
0transformer_encoder/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           22
0transformer_encoder/lambda/strided_slice/stack_1?
0transformer_encoder/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         22
0transformer_encoder/lambda/strided_slice/stack_2?
(transformer_encoder/lambda/strided_sliceStridedSliceMtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:07transformer_encoder/lambda/strided_slice/stack:output:09transformer_encoder/lambda/strided_slice/stack_1:output:09transformer_encoder/lambda/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2*
(transformer_encoder/lambda/strided_slice?
"transformer_encoder/lambda/SqueezeSqueeze1transformer_encoder/lambda/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2$
"transformer_encoder/lambda/Squeeze?
:transformer_encoder/pooler_transform/MatMul/ReadVariableOpReadVariableOpCtransformer_encoder_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02<
:transformer_encoder/pooler_transform/MatMul/ReadVariableOp?
+transformer_encoder/pooler_transform/MatMulMatMul+transformer_encoder/lambda/Squeeze:output:0Btransformer_encoder/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+transformer_encoder/pooler_transform/MatMul?
;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpDtransformer_encoder_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02=
;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp?
,transformer_encoder/pooler_transform/BiasAddBiasAdd5transformer_encoder/pooler_transform/MatMul:product:0Ctransformer_encoder/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,transformer_encoder/pooler_transform/BiasAdd?
)transformer_encoder/pooler_transform/TanhTanh5transformer_encoder/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2+
)transformer_encoder/pooler_transform/Tanh?
IdentityIdentity-transformer_encoder/pooler_transform/Tanh:y:0C^transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpG^transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp<^transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp;^transformer_encoder/pooler_transform/MatMul/ReadVariableOp6^transformer_encoder/position_embedding/ReadVariableOpH^transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpR^transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpB^transformer_encoder/transformer/layer_0/output/add/ReadVariableOpL^transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpS^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpW^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp[^transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpe^transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpN^transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpX^transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpP^transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpZ^transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpP^transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpZ^transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp[^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp_^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:^transformer_encoder/type_embeddings/MatMul/ReadVariableOp+^transformer_encoder/word_embeddings/Gather*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityMtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0C^transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpG^transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp<^transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp;^transformer_encoder/pooler_transform/MatMul/ReadVariableOp6^transformer_encoder/position_embedding/ReadVariableOpH^transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpR^transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpB^transformer_encoder/transformer/layer_0/output/add/ReadVariableOpL^transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpS^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpW^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp[^transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpe^transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpN^transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpX^transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpP^transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpZ^transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpP^transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpZ^transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp[^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp_^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:^transformer_encoder/type_embeddings/MatMul/ReadVariableOp+^transformer_encoder/word_embeddings/Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2?
Btransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpBtransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp2?
Ftransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOpFtransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp2z
;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp2x
:transformer_encoder/pooler_transform/MatMul/ReadVariableOp:transformer_encoder/pooler_transform/MatMul/ReadVariableOp2n
5transformer_encoder/position_embedding/ReadVariableOp5transformer_encoder/position_embedding/ReadVariableOp2?
Gtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpGtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp2?
Qtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpQtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp2?
Atransformer_encoder/transformer/layer_0/output/add/ReadVariableOpAtransformer_encoder/transformer/layer_0/output/add/ReadVariableOp2?
Ktransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpKtransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp2?
Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpRtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp2?
Vtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpVtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp2?
Ztransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpZtransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp2?
dtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpdtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Mtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpMtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp2?
Wtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpWtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp2?
Otransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpOtransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp2?
Ytransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpYtransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp2?
Otransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpOtransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp2?
Ytransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpYtransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp2?
Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpZtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp2?
^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp2v
9transformer_encoder/type_embeddings/MatMul/ReadVariableOp9transformer_encoder/type_embeddings/MatMul/ReadVariableOp2X
*transformer_encoder/word_embeddings/Gather*transformer_encoder/word_embeddings/Gather:Z V
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
?
J__inference_word_embeddings_layer_call_and_return_conditional_losses_10398

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
?>
?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_11262

inputs
inputs_1
inputs_2
word_embeddings_11204
position_embedding_11207
type_embeddings_11210
embeddings_layer_norm_11214
embeddings_layer_norm_11216
transformer_layer_0_11221
transformer_layer_0_11223
transformer_layer_0_11225
transformer_layer_0_11227
transformer_layer_0_11229
transformer_layer_0_11231
transformer_layer_0_11233
transformer_layer_0_11235
transformer_layer_0_11237
transformer_layer_0_11239
transformer_layer_0_11241
transformer_layer_0_11243
transformer_layer_0_11245
transformer_layer_0_11247
transformer_layer_0_11249
transformer_layer_0_11251
pooler_transform_11255
pooler_transform_11257
identity

identity_1??-embeddings/layer_norm/StatefulPartitionedCall?(pooler_transform/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?+transformer/layer_0/StatefulPartitionedCall?'type_embeddings/StatefulPartitionedCall?'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputsword_embeddings_11204*
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
GPU 2J 8? *S
fNRL
J__inference_word_embeddings_layer_call_and_return_conditional_losses_103982)
'word_embeddings/StatefulPartitionedCall?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_11207*
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
GPU 2J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_104332,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputs_2type_embeddings_11210*
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
GPU 2J 8? *S
fNRL
J__inference_type_embeddings_layer_call_and_return_conditional_losses_104632)
'type_embeddings/StatefulPartitionedCall?
add/PartitionedCallPartitionedCall0word_embeddings/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:00type_embeddings/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_104832
add/PartitionedCall?
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0embeddings_layer_norm_11214embeddings_layer_norm_11216*
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
GPU 2J 8? *Y
fTRR
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_105152/
-embeddings/layer_norm/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall6embeddings/layer_norm/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_105482
dropout/PartitionedCall?
#self_attention_mask/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0inputs_1*
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
GPU 2J 8? *W
fRRP
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_105982%
#self_attention_mask/PartitionedCall?
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0,self_attention_mask/PartitionedCall:output:0transformer_layer_0_11221transformer_layer_0_11223transformer_layer_0_11225transformer_layer_0_11227transformer_layer_0_11229transformer_layer_0_11231transformer_layer_0_11233transformer_layer_0_11235transformer_layer_0_11237transformer_layer_0_11239transformer_layer_0_11241transformer_layer_0_11243transformer_layer_0_11245transformer_layer_0_11247transformer_layer_0_11249transformer_layer_0_11251*
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
GPU 2J 8? *W
fRRP
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_108422-
+transformer/layer_0/StatefulPartitionedCall?
lambda/PartitionedCallPartitionedCall4transformer/layer_0/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_109712
lambda/PartitionedCall?
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0pooler_transform_11255pooler_transform_11257*
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
GPU 2J 8? *T
fORM
K__inference_pooler_transform_layer_call_and_return_conditional_losses_109952*
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
?
?
M__inference_position_embedding_layer_call_and_return_conditional_losses_13000

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
?
?
J__inference_type_embeddings_layer_call_and_return_conditional_losses_13025

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
?	
?
K__inference_pooler_transform_layer_call_and_return_conditional_losses_13498

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
?
?
3__inference_transformer_encoder_layer_call_fn_11195
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
GPU 2J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_111442
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
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_10548

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
?
?
@__inference_model_layer_call_and_return_conditional_losses_11479
input_word_ids

input_mask
input_type_ids
transformer_encoder_11429
transformer_encoder_11431
transformer_encoder_11433
transformer_encoder_11435
transformer_encoder_11437
transformer_encoder_11439
transformer_encoder_11441
transformer_encoder_11443
transformer_encoder_11445
transformer_encoder_11447
transformer_encoder_11449
transformer_encoder_11451
transformer_encoder_11453
transformer_encoder_11455
transformer_encoder_11457
transformer_encoder_11459
transformer_encoder_11461
transformer_encoder_11463
transformer_encoder_11465
transformer_encoder_11467
transformer_encoder_11469
transformer_encoder_11471
transformer_encoder_11473
identity

identity_1??+transformer_encoder/StatefulPartitionedCall?
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idstransformer_encoder_11429transformer_encoder_11431transformer_encoder_11433transformer_encoder_11435transformer_encoder_11437transformer_encoder_11439transformer_encoder_11441transformer_encoder_11443transformer_encoder_11445transformer_encoder_11447transformer_encoder_11449transformer_encoder_11451transformer_encoder_11453transformer_encoder_11455transformer_encoder_11457transformer_encoder_11459transformer_encoder_11461transformer_encoder_11463transformer_encoder_11465transformer_encoder_11467transformer_encoder_11469transformer_encoder_11471transformer_encoder_11473*%
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
GPU 2J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_111442-
+transformer_encoder/StatefulPartitionedCall?
IdentityIdentity4transformer_encoder/StatefulPartitionedCall:output:1,^transformer_encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity4transformer_encoder/StatefulPartitionedCall:output:0,^transformer_encoder/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:` \
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
??
?!
 __inference__wrapped_model_10378
input_word_ids

input_mask
input_type_ids=
9model_transformer_encoder_word_embeddings_gather_resourceH
Dmodel_transformer_encoder_position_embedding_readvariableop_resourceL
Hmodel_transformer_encoder_type_embeddings_matmul_readvariableop_resourceY
Umodel_transformer_encoder_embeddings_layer_norm_batchnorm_mul_readvariableop_resourceU
Qmodel_transformer_encoder_embeddings_layer_norm_batchnorm_readvariableop_resourcel
hmodel_transformer_encoder_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resourceb
^model_transformer_encoder_transformer_layer_0_self_attention_query_add_readvariableop_resourcej
fmodel_transformer_encoder_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource`
\model_transformer_encoder_transformer_layer_0_self_attention_key_add_readvariableop_resourcel
hmodel_transformer_encoder_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resourceb
^model_transformer_encoder_transformer_layer_0_self_attention_value_add_readvariableop_resourcew
smodel_transformer_encoder_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourcem
imodel_transformer_encoder_transformer_layer_0_self_attention_attention_output_add_readvariableop_resourceq
mmodel_transformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourcem
imodel_transformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resourced
`model_transformer_encoder_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resourceZ
Vmodel_transformer_encoder_transformer_layer_0_intermediate_add_readvariableop_resource^
Zmodel_transformer_encoder_transformer_layer_0_output_einsum_einsum_readvariableop_resourceT
Pmodel_transformer_encoder_transformer_layer_0_output_add_readvariableop_resourcei
emodel_transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resourcee
amodel_transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resourceM
Imodel_transformer_encoder_pooler_transform_matmul_readvariableop_resourceN
Jmodel_transformer_encoder_pooler_transform_biasadd_readvariableop_resource
identity

identity_1??Hmodel/transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp?Lmodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?Amodel/transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp?@model/transformer_encoder/pooler_transform/MatMul/ReadVariableOp?;model/transformer_encoder/position_embedding/ReadVariableOp?Mmodel/transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp?Wmodel/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?Gmodel/transformer_encoder/transformer/layer_0/output/add/ReadVariableOp?Qmodel/transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?Xmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?\model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?`model/transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?jmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?Smodel/transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp?]model/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?Umodel/transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp?_model/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?Umodel/transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp?_model/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?`model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?dmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp??model/transformer_encoder/type_embeddings/MatMul/ReadVariableOp?0model/transformer_encoder/word_embeddings/Gather?
7model/transformer_encoder/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????29
7model/transformer_encoder/word_embeddings/Reshape/shape?
1model/transformer_encoder/word_embeddings/ReshapeReshapeinput_word_ids@model/transformer_encoder/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????23
1model/transformer_encoder/word_embeddings/Reshape?
0model/transformer_encoder/word_embeddings/GatherResourceGather9model_transformer_encoder_word_embeddings_gather_resource:model/transformer_encoder/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype022
0model/transformer_encoder/word_embeddings/Gather?
2model/transformer_encoder/word_embeddings/IdentityIdentity9model/transformer_encoder/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????24
2model/transformer_encoder/word_embeddings/Identity?
/model/transformer_encoder/word_embeddings/ShapeShapeinput_word_ids*
T0*
_output_shapes
:21
/model/transformer_encoder/word_embeddings/Shape?
9model/transformer_encoder/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model/transformer_encoder/word_embeddings/concat/values_1?
5model/transformer_encoder/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5model/transformer_encoder/word_embeddings/concat/axis?
0model/transformer_encoder/word_embeddings/concatConcatV28model/transformer_encoder/word_embeddings/Shape:output:0Bmodel/transformer_encoder/word_embeddings/concat/values_1:output:0>model/transformer_encoder/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0model/transformer_encoder/word_embeddings/concat?
3model/transformer_encoder/word_embeddings/Reshape_1Reshape;model/transformer_encoder/word_embeddings/Identity:output:09model/transformer_encoder/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????25
3model/transformer_encoder/word_embeddings/Reshape_1?
2model/transformer_encoder/position_embedding/ShapeShape<model/transformer_encoder/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:24
2model/transformer_encoder/position_embedding/Shape?
@model/transformer_encoder/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2B
@model/transformer_encoder/position_embedding/strided_slice/stack?
Bmodel/transformer_encoder/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2D
Bmodel/transformer_encoder/position_embedding/strided_slice/stack_1?
Bmodel/transformer_encoder/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2D
Bmodel/transformer_encoder/position_embedding/strided_slice/stack_2?
:model/transformer_encoder/position_embedding/strided_sliceStridedSlice;model/transformer_encoder/position_embedding/Shape:output:0Imodel/transformer_encoder/position_embedding/strided_slice/stack:output:0Kmodel/transformer_encoder/position_embedding/strided_slice/stack_1:output:0Kmodel/transformer_encoder/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2<
:model/transformer_encoder/position_embedding/strided_slice?
Bmodel/transformer_encoder/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2D
Bmodel/transformer_encoder/position_embedding/strided_slice_1/stack?
Dmodel/transformer_encoder/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2F
Dmodel/transformer_encoder/position_embedding/strided_slice_1/stack_1?
Dmodel/transformer_encoder/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2F
Dmodel/transformer_encoder/position_embedding/strided_slice_1/stack_2?
<model/transformer_encoder/position_embedding/strided_slice_1StridedSlice;model/transformer_encoder/position_embedding/Shape:output:0Kmodel/transformer_encoder/position_embedding/strided_slice_1/stack:output:0Mmodel/transformer_encoder/position_embedding/strided_slice_1/stack_1:output:0Mmodel/transformer_encoder/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2>
<model/transformer_encoder/position_embedding/strided_slice_1?
;model/transformer_encoder/position_embedding/ReadVariableOpReadVariableOpDmodel_transformer_encoder_position_embedding_readvariableop_resource*
_output_shapes

:*
dtype02=
;model/transformer_encoder/position_embedding/ReadVariableOp?
Bmodel/transformer_encoder/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2D
Bmodel/transformer_encoder/position_embedding/strided_slice_2/stack?
Fmodel/transformer_encoder/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel/transformer_encoder/position_embedding/strided_slice_2/stack_1/1?
Dmodel/transformer_encoder/position_embedding/strided_slice_2/stack_1PackEmodel/transformer_encoder/position_embedding/strided_slice_1:output:0Omodel/transformer_encoder/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2F
Dmodel/transformer_encoder/position_embedding/strided_slice_2/stack_1?
Dmodel/transformer_encoder/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2F
Dmodel/transformer_encoder/position_embedding/strided_slice_2/stack_2?
<model/transformer_encoder/position_embedding/strided_slice_2StridedSliceCmodel/transformer_encoder/position_embedding/ReadVariableOp:value:0Kmodel/transformer_encoder/position_embedding/strided_slice_2/stack:output:0Mmodel/transformer_encoder/position_embedding/strided_slice_2/stack_1:output:0Mmodel/transformer_encoder/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask2>
<model/transformer_encoder/position_embedding/strided_slice_2?
@model/transformer_encoder/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2B
@model/transformer_encoder/position_embedding/BroadcastTo/shape/2?
>model/transformer_encoder/position_embedding/BroadcastTo/shapePackCmodel/transformer_encoder/position_embedding/strided_slice:output:0Emodel/transformer_encoder/position_embedding/strided_slice_1:output:0Imodel/transformer_encoder/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2@
>model/transformer_encoder/position_embedding/BroadcastTo/shape?
8model/transformer_encoder/position_embedding/BroadcastToBroadcastToEmodel/transformer_encoder/position_embedding/strided_slice_2:output:0Gmodel/transformer_encoder/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2:
8model/transformer_encoder/position_embedding/BroadcastTo?
7model/transformer_encoder/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????29
7model/transformer_encoder/type_embeddings/Reshape/shape?
1model/transformer_encoder/type_embeddings/ReshapeReshapeinput_type_ids@model/transformer_encoder/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????23
1model/transformer_encoder/type_embeddings/Reshape?
:model/transformer_encoder/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2<
:model/transformer_encoder/type_embeddings/one_hot/on_value?
;model/transformer_encoder/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2=
;model/transformer_encoder/type_embeddings/one_hot/off_value?
7model/transformer_encoder/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :29
7model/transformer_encoder/type_embeddings/one_hot/depth?
1model/transformer_encoder/type_embeddings/one_hotOneHot:model/transformer_encoder/type_embeddings/Reshape:output:0@model/transformer_encoder/type_embeddings/one_hot/depth:output:0Cmodel/transformer_encoder/type_embeddings/one_hot/on_value:output:0Dmodel/transformer_encoder/type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????23
1model/transformer_encoder/type_embeddings/one_hot?
?model/transformer_encoder/type_embeddings/MatMul/ReadVariableOpReadVariableOpHmodel_transformer_encoder_type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02A
?model/transformer_encoder/type_embeddings/MatMul/ReadVariableOp?
0model/transformer_encoder/type_embeddings/MatMulMatMul:model/transformer_encoder/type_embeddings/one_hot:output:0Gmodel/transformer_encoder/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
0model/transformer_encoder/type_embeddings/MatMul?
/model/transformer_encoder/type_embeddings/ShapeShapeinput_type_ids*
T0*
_output_shapes
:21
/model/transformer_encoder/type_embeddings/Shape?
9model/transformer_encoder/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9model/transformer_encoder/type_embeddings/concat/values_1?
5model/transformer_encoder/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 27
5model/transformer_encoder/type_embeddings/concat/axis?
0model/transformer_encoder/type_embeddings/concatConcatV28model/transformer_encoder/type_embeddings/Shape:output:0Bmodel/transformer_encoder/type_embeddings/concat/values_1:output:0>model/transformer_encoder/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:22
0model/transformer_encoder/type_embeddings/concat?
3model/transformer_encoder/type_embeddings/Reshape_1Reshape:model/transformer_encoder/type_embeddings/MatMul:product:09model/transformer_encoder/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????25
3model/transformer_encoder/type_embeddings/Reshape_1?
!model/transformer_encoder/add/addAddV2<model/transformer_encoder/word_embeddings/Reshape_1:output:0Amodel/transformer_encoder/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2#
!model/transformer_encoder/add/add?
#model/transformer_encoder/add/add_1AddV2%model/transformer_encoder/add/add:z:0<model/transformer_encoder/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2%
#model/transformer_encoder/add/add_1?
Nmodel/transformer_encoder/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2P
Nmodel/transformer_encoder/embeddings/layer_norm/moments/mean/reduction_indices?
<model/transformer_encoder/embeddings/layer_norm/moments/meanMean'model/transformer_encoder/add/add_1:z:0Wmodel/transformer_encoder/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2>
<model/transformer_encoder/embeddings/layer_norm/moments/mean?
Dmodel/transformer_encoder/embeddings/layer_norm/moments/StopGradientStopGradientEmodel/transformer_encoder/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2F
Dmodel/transformer_encoder/embeddings/layer_norm/moments/StopGradient?
Imodel/transformer_encoder/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference'model/transformer_encoder/add/add_1:z:0Mmodel/transformer_encoder/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2K
Imodel/transformer_encoder/embeddings/layer_norm/moments/SquaredDifference?
Rmodel/transformer_encoder/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2T
Rmodel/transformer_encoder/embeddings/layer_norm/moments/variance/reduction_indices?
@model/transformer_encoder/embeddings/layer_norm/moments/varianceMeanMmodel/transformer_encoder/embeddings/layer_norm/moments/SquaredDifference:z:0[model/transformer_encoder/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2B
@model/transformer_encoder/embeddings/layer_norm/moments/variance?
?model/transformer_encoder/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2A
?model/transformer_encoder/embeddings/layer_norm/batchnorm/add/y?
=model/transformer_encoder/embeddings/layer_norm/batchnorm/addAddV2Imodel/transformer_encoder/embeddings/layer_norm/moments/variance:output:0Hmodel/transformer_encoder/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2?
=model/transformer_encoder/embeddings/layer_norm/batchnorm/add?
?model/transformer_encoder/embeddings/layer_norm/batchnorm/RsqrtRsqrtAmodel/transformer_encoder/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2A
?model/transformer_encoder/embeddings/layer_norm/batchnorm/Rsqrt?
Lmodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_transformer_encoder_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02N
Lmodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?
=model/transformer_encoder/embeddings/layer_norm/batchnorm/mulMulCmodel/transformer_encoder/embeddings/layer_norm/batchnorm/Rsqrt:y:0Tmodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2?
=model/transformer_encoder/embeddings/layer_norm/batchnorm/mul?
?model/transformer_encoder/embeddings/layer_norm/batchnorm/mul_1Mul'model/transformer_encoder/add/add_1:z:0Amodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2A
?model/transformer_encoder/embeddings/layer_norm/batchnorm/mul_1?
?model/transformer_encoder/embeddings/layer_norm/batchnorm/mul_2MulEmodel/transformer_encoder/embeddings/layer_norm/moments/mean:output:0Amodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2A
?model/transformer_encoder/embeddings/layer_norm/batchnorm/mul_2?
Hmodel/transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpQmodel_transformer_encoder_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02J
Hmodel/transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp?
=model/transformer_encoder/embeddings/layer_norm/batchnorm/subSubPmodel/transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0Cmodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2?
=model/transformer_encoder/embeddings/layer_norm/batchnorm/sub?
?model/transformer_encoder/embeddings/layer_norm/batchnorm/add_1AddV2Cmodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul_1:z:0Amodel/transformer_encoder/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2A
?model/transformer_encoder/embeddings/layer_norm/batchnorm/add_1?
*model/transformer_encoder/dropout/IdentityIdentityCmodel/transformer_encoder/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2,
*model/transformer_encoder/dropout/Identity?
3model/transformer_encoder/self_attention_mask/ShapeShape3model/transformer_encoder/dropout/Identity:output:0*
T0*
_output_shapes
:25
3model/transformer_encoder/self_attention_mask/Shape?
Amodel/transformer_encoder/self_attention_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2C
Amodel/transformer_encoder/self_attention_mask/strided_slice/stack?
Cmodel/transformer_encoder/self_attention_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2E
Cmodel/transformer_encoder/self_attention_mask/strided_slice/stack_1?
Cmodel/transformer_encoder/self_attention_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2E
Cmodel/transformer_encoder/self_attention_mask/strided_slice/stack_2?
;model/transformer_encoder/self_attention_mask/strided_sliceStridedSlice<model/transformer_encoder/self_attention_mask/Shape:output:0Jmodel/transformer_encoder/self_attention_mask/strided_slice/stack:output:0Lmodel/transformer_encoder/self_attention_mask/strided_slice/stack_1:output:0Lmodel/transformer_encoder/self_attention_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2=
;model/transformer_encoder/self_attention_mask/strided_slice?
Cmodel/transformer_encoder/self_attention_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2E
Cmodel/transformer_encoder/self_attention_mask/strided_slice_1/stack?
Emodel/transformer_encoder/self_attention_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Emodel/transformer_encoder/self_attention_mask/strided_slice_1/stack_1?
Emodel/transformer_encoder/self_attention_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Emodel/transformer_encoder/self_attention_mask/strided_slice_1/stack_2?
=model/transformer_encoder/self_attention_mask/strided_slice_1StridedSlice<model/transformer_encoder/self_attention_mask/Shape:output:0Lmodel/transformer_encoder/self_attention_mask/strided_slice_1/stack:output:0Nmodel/transformer_encoder/self_attention_mask/strided_slice_1/stack_1:output:0Nmodel/transformer_encoder/self_attention_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=model/transformer_encoder/self_attention_mask/strided_slice_1?
5model/transformer_encoder/self_attention_mask/Shape_1Shape
input_mask*
T0*
_output_shapes
:27
5model/transformer_encoder/self_attention_mask/Shape_1?
Cmodel/transformer_encoder/self_attention_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Cmodel/transformer_encoder/self_attention_mask/strided_slice_2/stack?
Emodel/transformer_encoder/self_attention_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Emodel/transformer_encoder/self_attention_mask/strided_slice_2/stack_1?
Emodel/transformer_encoder/self_attention_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Emodel/transformer_encoder/self_attention_mask/strided_slice_2/stack_2?
=model/transformer_encoder/self_attention_mask/strided_slice_2StridedSlice>model/transformer_encoder/self_attention_mask/Shape_1:output:0Lmodel/transformer_encoder/self_attention_mask/strided_slice_2/stack:output:0Nmodel/transformer_encoder/self_attention_mask/strided_slice_2/stack_1:output:0Nmodel/transformer_encoder/self_attention_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=model/transformer_encoder/self_attention_mask/strided_slice_2?
Cmodel/transformer_encoder/self_attention_mask/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2E
Cmodel/transformer_encoder/self_attention_mask/strided_slice_3/stack?
Emodel/transformer_encoder/self_attention_mask/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Emodel/transformer_encoder/self_attention_mask/strided_slice_3/stack_1?
Emodel/transformer_encoder/self_attention_mask/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Emodel/transformer_encoder/self_attention_mask/strided_slice_3/stack_2?
=model/transformer_encoder/self_attention_mask/strided_slice_3StridedSlice>model/transformer_encoder/self_attention_mask/Shape_1:output:0Lmodel/transformer_encoder/self_attention_mask/strided_slice_3/stack:output:0Nmodel/transformer_encoder/self_attention_mask/strided_slice_3/stack_1:output:0Nmodel/transformer_encoder/self_attention_mask/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=model/transformer_encoder/self_attention_mask/strided_slice_3?
=model/transformer_encoder/self_attention_mask/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2?
=model/transformer_encoder/self_attention_mask/Reshape/shape/1?
;model/transformer_encoder/self_attention_mask/Reshape/shapePackDmodel/transformer_encoder/self_attention_mask/strided_slice:output:0Fmodel/transformer_encoder/self_attention_mask/Reshape/shape/1:output:0Fmodel/transformer_encoder/self_attention_mask/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2=
;model/transformer_encoder/self_attention_mask/Reshape/shape?
5model/transformer_encoder/self_attention_mask/ReshapeReshape
input_maskDmodel/transformer_encoder/self_attention_mask/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????27
5model/transformer_encoder/self_attention_mask/Reshape?
2model/transformer_encoder/self_attention_mask/CastCast>model/transformer_encoder/self_attention_mask/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????24
2model/transformer_encoder/self_attention_mask/Cast?
6model/transformer_encoder/self_attention_mask/ones/mulMulDmodel/transformer_encoder/self_attention_mask/strided_slice:output:0Fmodel/transformer_encoder/self_attention_mask/strided_slice_1:output:0*
T0*
_output_shapes
: 28
6model/transformer_encoder/self_attention_mask/ones/mul?
:model/transformer_encoder/self_attention_mask/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2<
:model/transformer_encoder/self_attention_mask/ones/mul_1/y?
8model/transformer_encoder/self_attention_mask/ones/mul_1Mul:model/transformer_encoder/self_attention_mask/ones/mul:z:0Cmodel/transformer_encoder/self_attention_mask/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2:
8model/transformer_encoder/self_attention_mask/ones/mul_1?
9model/transformer_encoder/self_attention_mask/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2;
9model/transformer_encoder/self_attention_mask/ones/Less/y?
7model/transformer_encoder/self_attention_mask/ones/LessLess<model/transformer_encoder/self_attention_mask/ones/mul_1:z:0Bmodel/transformer_encoder/self_attention_mask/ones/Less/y:output:0*
T0*
_output_shapes
: 29
7model/transformer_encoder/self_attention_mask/ones/Less?
;model/transformer_encoder/self_attention_mask/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2=
;model/transformer_encoder/self_attention_mask/ones/packed/2?
9model/transformer_encoder/self_attention_mask/ones/packedPackDmodel/transformer_encoder/self_attention_mask/strided_slice:output:0Fmodel/transformer_encoder/self_attention_mask/strided_slice_1:output:0Dmodel/transformer_encoder/self_attention_mask/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2;
9model/transformer_encoder/self_attention_mask/ones/packed?
8model/transformer_encoder/self_attention_mask/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2:
8model/transformer_encoder/self_attention_mask/ones/Const?
2model/transformer_encoder/self_attention_mask/onesFillBmodel/transformer_encoder/self_attention_mask/ones/packed:output:0Amodel/transformer_encoder/self_attention_mask/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????24
2model/transformer_encoder/self_attention_mask/ones?
1model/transformer_encoder/self_attention_mask/mulMul;model/transformer_encoder/self_attention_mask/ones:output:06model/transformer_encoder/self_attention_mask/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????23
1model/transformer_encoder/self_attention_mask/mul?
_model/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOphmodel_transformer_encoder_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02a
_model/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
Pmodel/transformer_encoder/transformer/layer_0/self_attention/query/einsum/EinsumEinsum3model/transformer_encoder/dropout/Identity:output:0gmodel/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2R
Pmodel/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum?
Umodel/transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOp^model_transformer_encoder_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02W
Umodel/transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp?
Fmodel/transformer_encoder/transformer/layer_0/self_attention/query/addAddV2Ymodel/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum:output:0]model/transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2H
Fmodel/transformer_encoder/transformer/layer_0/self_attention/query/add?
]model/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpfmodel_transformer_encoder_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02_
]model/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?
Nmodel/transformer_encoder/transformer/layer_0/self_attention/key/einsum/EinsumEinsum3model/transformer_encoder/dropout/Identity:output:0emodel/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2P
Nmodel/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum?
Smodel/transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOp\model_transformer_encoder_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02U
Smodel/transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp?
Dmodel/transformer_encoder/transformer/layer_0/self_attention/key/addAddV2Wmodel/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum:output:0[model/transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2F
Dmodel/transformer_encoder/transformer/layer_0/self_attention/key/add?
_model/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOphmodel_transformer_encoder_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02a
_model/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?
Pmodel/transformer_encoder/transformer/layer_0/self_attention/value/einsum/EinsumEinsum3model/transformer_encoder/dropout/Identity:output:0gmodel/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2R
Pmodel/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum?
Umodel/transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOp^model_transformer_encoder_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02W
Umodel/transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp?
Fmodel/transformer_encoder/transformer/layer_0/self_attention/value/addAddV2Ymodel/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum:output:0]model/transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2H
Fmodel/transformer_encoder/transformer/layer_0/self_attention/value/add?
Jmodel/transformer_encoder/transformer/layer_0/self_attention/einsum/EinsumEinsumHmodel/transformer_encoder/transformer/layer_0/self_attention/key/add:z:0Jmodel/transformer_encoder/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2L
Jmodel/transformer_encoder/transformer/layer_0/self_attention/einsum/Einsum?
Bmodel/transformer_encoder/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2D
Bmodel/transformer_encoder/transformer/layer_0/self_attention/Mul/y?
@model/transformer_encoder/transformer/layer_0/self_attention/MulMulSmodel/transformer_encoder/transformer/layer_0/self_attention/einsum/Einsum:output:0Kmodel/transformer_encoder/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2B
@model/transformer_encoder/transformer/layer_0/self_attention/Mul?
Zmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2\
Zmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim?
Vmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims
ExpandDims5model/transformer_encoder/self_attention_mask/mul:z:0cmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2X
Vmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims?
Qmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2S
Qmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/x?
Omodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/subSubZmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/x:output:0_model/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2Q
Omodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub?
Qmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2S
Qmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/y?
Omodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/mulMulSmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub:z:0Zmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2Q
Omodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul?
Omodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/addAddV2Dmodel/transformer_encoder/transformer/layer_0/self_attention/Mul:z:0Smodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2Q
Omodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/add?
Smodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/SoftmaxSoftmaxSmodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2U
Smodel/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/Softmax?
Mmodel/transformer_encoder/transformer/layer_0/self_attention/dropout/IdentityIdentity]model/transformer_encoder/transformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mmodel/transformer_encoder/transformer/layer_0/self_attention/dropout/Identity?
Lmodel/transformer_encoder/transformer/layer_0/self_attention/einsum_1/EinsumEinsumVmodel/transformer_encoder/transformer/layer_0/self_attention/dropout/Identity:output:0Jmodel/transformer_encoder/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2N
Lmodel/transformer_encoder/transformer/layer_0/self_attention/einsum_1/Einsum?
jmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpsmodel_transformer_encoder_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02l
jmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?
[model/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsumUmodel/transformer_encoder/transformer/layer_0/self_attention/einsum_1/Einsum:output:0rmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2]
[model/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum?
`model/transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpimodel_transformer_encoder_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02b
`model/transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
Qmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/addAddV2dmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0hmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2S
Qmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/add?
@model/transformer_encoder/transformer/layer_0/dropout_1/IdentityIdentityUmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2B
@model/transformer_encoder/transformer/layer_0/dropout_1/Identity?
1model/transformer_encoder/transformer/layer_0/addAddV23model/transformer_encoder/dropout/Identity:output:0Imodel/transformer_encoder/transformer/layer_0/dropout_1/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????23
1model/transformer_encoder/transformer/layer_0/add?
fmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2h
fmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices?
Tmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/meanMean5model/transformer_encoder/transformer/layer_0/add:z:0omodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2V
Tmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean?
\model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradient]model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2^
\model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradient?
amodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference5model/transformer_encoder/transformer/layer_0/add:z:0emodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2c
amodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference?
jmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2l
jmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices?
Xmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/varianceMeanemodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0smodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2Z
Xmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance?
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2Y
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y?
Umodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2amodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0`model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2W
Umodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add?
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrtYmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2Y
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt?
dmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpmmodel_transformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02f
dmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
Umodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMul[model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0lmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2W
Umodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul5model/transformer_encoder/transformer/layer_0/add:z:0Ymodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2Y
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1?
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2Mul]model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0Ymodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2Y
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2?
`model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpimodel_transformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02b
`model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?
Umodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/subSubhmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0[model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2W
Umodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/sub?
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2[model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0Ymodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2Y
Wmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1?
Wmodel/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOp`model_transformer_encoder_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02Y
Wmodel/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?
Hmodel/transformer_encoder/transformer/layer_0/intermediate/einsum/EinsumEinsum[model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0_model/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2J
Hmodel/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum?
Mmodel/transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOpVmodel_transformer_encoder_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02O
Mmodel/transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp?
>model/transformer_encoder/transformer/layer_0/intermediate/addAddV2Qmodel/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum:output:0Umodel/transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2@
>model/transformer_encoder/transformer/layer_0/intermediate/add?
>model/transformer_encoder/transformer/layer_0/activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2@
>model/transformer_encoder/transformer/layer_0/activation/Pow/y?
<model/transformer_encoder/transformer/layer_0/activation/PowPowBmodel/transformer_encoder/transformer/layer_0/intermediate/add:z:0Gmodel/transformer_encoder/transformer/layer_0/activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<model/transformer_encoder/transformer/layer_0/activation/Pow?
>model/transformer_encoder/transformer/layer_0/activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2@
>model/transformer_encoder/transformer/layer_0/activation/mul/x?
<model/transformer_encoder/transformer/layer_0/activation/mulMulGmodel/transformer_encoder/transformer/layer_0/activation/mul/x:output:0@model/transformer_encoder/transformer/layer_0/activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<model/transformer_encoder/transformer/layer_0/activation/mul?
<model/transformer_encoder/transformer/layer_0/activation/addAddV2Bmodel/transformer_encoder/transformer/layer_0/intermediate/add:z:0@model/transformer_encoder/transformer/layer_0/activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 2>
<model/transformer_encoder/transformer/layer_0/activation/add?
@model/transformer_encoder/transformer/layer_0/activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2B
@model/transformer_encoder/transformer/layer_0/activation/mul_1/x?
>model/transformer_encoder/transformer/layer_0/activation/mul_1MulImodel/transformer_encoder/transformer/layer_0/activation/mul_1/x:output:0@model/transformer_encoder/transformer/layer_0/activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2@
>model/transformer_encoder/transformer/layer_0/activation/mul_1?
=model/transformer_encoder/transformer/layer_0/activation/TanhTanhBmodel/transformer_encoder/transformer/layer_0/activation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2?
=model/transformer_encoder/transformer/layer_0/activation/Tanh?
@model/transformer_encoder/transformer/layer_0/activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2B
@model/transformer_encoder/transformer/layer_0/activation/add_1/x?
>model/transformer_encoder/transformer/layer_0/activation/add_1AddV2Imodel/transformer_encoder/transformer/layer_0/activation/add_1/x:output:0Amodel/transformer_encoder/transformer/layer_0/activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2@
>model/transformer_encoder/transformer/layer_0/activation/add_1?
@model/transformer_encoder/transformer/layer_0/activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2B
@model/transformer_encoder/transformer/layer_0/activation/mul_2/x?
>model/transformer_encoder/transformer/layer_0/activation/mul_2MulImodel/transformer_encoder/transformer/layer_0/activation/mul_2/x:output:0Bmodel/transformer_encoder/transformer/layer_0/activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2@
>model/transformer_encoder/transformer/layer_0/activation/mul_2?
>model/transformer_encoder/transformer/layer_0/activation/mul_3MulBmodel/transformer_encoder/transformer/layer_0/intermediate/add:z:0Bmodel/transformer_encoder/transformer/layer_0/activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2@
>model/transformer_encoder/transformer/layer_0/activation/mul_3?
Qmodel/transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_encoder_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02S
Qmodel/transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
Bmodel/transformer_encoder/transformer/layer_0/output/einsum/EinsumEinsumBmodel/transformer_encoder/transformer/layer_0/activation/mul_3:z:0Ymodel/transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2D
Bmodel/transformer_encoder/transformer/layer_0/output/einsum/Einsum?
Gmodel/transformer_encoder/transformer/layer_0/output/add/ReadVariableOpReadVariableOpPmodel_transformer_encoder_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02I
Gmodel/transformer_encoder/transformer/layer_0/output/add/ReadVariableOp?
8model/transformer_encoder/transformer/layer_0/output/addAddV2Kmodel/transformer_encoder/transformer/layer_0/output/einsum/Einsum:output:0Omodel/transformer_encoder/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2:
8model/transformer_encoder/transformer/layer_0/output/add?
@model/transformer_encoder/transformer/layer_0/dropout_2/IdentityIdentity<model/transformer_encoder/transformer/layer_0/output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2B
@model/transformer_encoder/transformer/layer_0/dropout_2/Identity?
3model/transformer_encoder/transformer/layer_0/add_1AddV2Imodel/transformer_encoder/transformer/layer_0/dropout_2/Identity:output:0[model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????25
3model/transformer_encoder/transformer/layer_0/add_1?
^model/transformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2`
^model/transformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices?
Lmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/meanMean7model/transformer_encoder/transformer/layer_0/add_1:z:0gmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2N
Lmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/mean?
Tmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradientUmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2V
Tmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradient?
Ymodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference7model/transformer_encoder/transformer/layer_0/add_1:z:0]model/transformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2[
Ymodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifference?
bmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2d
bmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices?
Pmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/varianceMean]model/transformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0kmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2R
Pmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance?
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2Q
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/y?
Mmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/addAddV2Ymodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance:output:0Xmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2O
Mmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add?
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtQmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2Q
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
\model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpemodel_transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02^
\model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?
Mmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mulMulSmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0dmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2O
Mmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul?
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul7model/transformer_encoder/transformer/layer_0/add_1:z:0Qmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2Q
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1?
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2MulUmodel/transformer_encoder/transformer/layer_0/output_layer_norm/moments/mean:output:0Qmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2Q
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2?
Xmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOpamodel_transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02Z
Xmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?
Mmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/subSub`model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0Smodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2O
Mmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/sub?
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2Smodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Qmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2Q
Omodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1?
4model/transformer_encoder/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            26
4model/transformer_encoder/lambda/strided_slice/stack?
6model/transformer_encoder/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           28
6model/transformer_encoder/lambda/strided_slice/stack_1?
6model/transformer_encoder/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         28
6model/transformer_encoder/lambda/strided_slice/stack_2?
.model/transformer_encoder/lambda/strided_sliceStridedSliceSmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0=model/transformer_encoder/lambda/strided_slice/stack:output:0?model/transformer_encoder/lambda/strided_slice/stack_1:output:0?model/transformer_encoder/lambda/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask20
.model/transformer_encoder/lambda/strided_slice?
(model/transformer_encoder/lambda/SqueezeSqueeze7model/transformer_encoder/lambda/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2*
(model/transformer_encoder/lambda/Squeeze?
@model/transformer_encoder/pooler_transform/MatMul/ReadVariableOpReadVariableOpImodel_transformer_encoder_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02B
@model/transformer_encoder/pooler_transform/MatMul/ReadVariableOp?
1model/transformer_encoder/pooler_transform/MatMulMatMul1model/transformer_encoder/lambda/Squeeze:output:0Hmodel/transformer_encoder/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????23
1model/transformer_encoder/pooler_transform/MatMul?
Amodel/transformer_encoder/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpJmodel_transformer_encoder_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02C
Amodel/transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp?
2model/transformer_encoder/pooler_transform/BiasAddBiasAdd;model/transformer_encoder/pooler_transform/MatMul:product:0Imodel/transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????24
2model/transformer_encoder/pooler_transform/BiasAdd?
/model/transformer_encoder/pooler_transform/TanhTanh;model/transformer_encoder/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????21
/model/transformer_encoder/pooler_transform/Tanh?
IdentityIdentity3model/transformer_encoder/pooler_transform/Tanh:y:0I^model/transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpM^model/transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOpB^model/transformer_encoder/pooler_transform/BiasAdd/ReadVariableOpA^model/transformer_encoder/pooler_transform/MatMul/ReadVariableOp<^model/transformer_encoder/position_embedding/ReadVariableOpN^model/transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpX^model/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpH^model/transformer_encoder/transformer/layer_0/output/add/ReadVariableOpR^model/transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpY^model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp]^model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpa^model/transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpk^model/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpT^model/transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp^^model/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpV^model/transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp`^model/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpV^model/transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp`^model/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpa^model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpe^model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp@^model/transformer_encoder/type_embeddings/MatMul/ReadVariableOp1^model/transformer_encoder/word_embeddings/Gather*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentitySmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0I^model/transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpM^model/transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOpB^model/transformer_encoder/pooler_transform/BiasAdd/ReadVariableOpA^model/transformer_encoder/pooler_transform/MatMul/ReadVariableOp<^model/transformer_encoder/position_embedding/ReadVariableOpN^model/transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpX^model/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpH^model/transformer_encoder/transformer/layer_0/output/add/ReadVariableOpR^model/transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpY^model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp]^model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpa^model/transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpk^model/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpT^model/transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp^^model/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpV^model/transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp`^model/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpV^model/transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp`^model/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpa^model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpe^model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp@^model/transformer_encoder/type_embeddings/MatMul/ReadVariableOp1^model/transformer_encoder/word_embeddings/Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2?
Hmodel/transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpHmodel/transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp2?
Lmodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOpLmodel/transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp2?
Amodel/transformer_encoder/pooler_transform/BiasAdd/ReadVariableOpAmodel/transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp2?
@model/transformer_encoder/pooler_transform/MatMul/ReadVariableOp@model/transformer_encoder/pooler_transform/MatMul/ReadVariableOp2z
;model/transformer_encoder/position_embedding/ReadVariableOp;model/transformer_encoder/position_embedding/ReadVariableOp2?
Mmodel/transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpMmodel/transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp2?
Wmodel/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpWmodel/transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp2?
Gmodel/transformer_encoder/transformer/layer_0/output/add/ReadVariableOpGmodel/transformer_encoder/transformer/layer_0/output/add/ReadVariableOp2?
Qmodel/transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpQmodel/transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp2?
Xmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpXmodel/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp2?
\model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp\model/transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp2?
`model/transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp`model/transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp2?
jmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpjmodel/transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Smodel/transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpSmodel/transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp2?
]model/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp]model/transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp2?
Umodel/transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpUmodel/transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp2?
_model/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp_model/transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp2?
Umodel/transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpUmodel/transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp2?
_model/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp_model/transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp2?
`model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp`model/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp2?
dmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpdmodel/transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp2?
?model/transformer_encoder/type_embeddings/MatMul/ReadVariableOp?model/transformer_encoder/type_embeddings/MatMul/ReadVariableOp2d
0model/transformer_encoder/word_embeddings/Gather0model/transformer_encoder/word_embeddings/Gather:` \
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
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_10842

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
?	
?
K__inference_pooler_transform_layer_call_and_return_conditional_losses_10995

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
3__inference_transformer_encoder_layer_call_fn_12901
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
GPU 2J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_111442
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
??
?
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_13276
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
?
C
'__inference_dropout_layer_call_fn_13105

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
GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_105482
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
?
?
@__inference_model_layer_call_and_return_conditional_losses_11534
input_word_ids

input_mask
input_type_ids
transformer_encoder_11484
transformer_encoder_11486
transformer_encoder_11488
transformer_encoder_11490
transformer_encoder_11492
transformer_encoder_11494
transformer_encoder_11496
transformer_encoder_11498
transformer_encoder_11500
transformer_encoder_11502
transformer_encoder_11504
transformer_encoder_11506
transformer_encoder_11508
transformer_encoder_11510
transformer_encoder_11512
transformer_encoder_11514
transformer_encoder_11516
transformer_encoder_11518
transformer_encoder_11520
transformer_encoder_11522
transformer_encoder_11524
transformer_encoder_11526
transformer_encoder_11528
identity

identity_1??+transformer_encoder/StatefulPartitionedCall?
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCallinput_word_ids
input_maskinput_type_idstransformer_encoder_11484transformer_encoder_11486transformer_encoder_11488transformer_encoder_11490transformer_encoder_11492transformer_encoder_11494transformer_encoder_11496transformer_encoder_11498transformer_encoder_11500transformer_encoder_11502transformer_encoder_11504transformer_encoder_11506transformer_encoder_11508transformer_encoder_11510transformer_encoder_11512transformer_encoder_11514transformer_encoder_11516transformer_encoder_11518transformer_encoder_11520transformer_encoder_11522transformer_encoder_11524transformer_encoder_11526transformer_encoder_11528*%
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
GPU 2J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_112622-
+transformer_encoder/StatefulPartitionedCall?
IdentityIdentity4transformer_encoder/StatefulPartitionedCall:output:1,^transformer_encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity4transformer_encoder/StatefulPartitionedCall:output:0,^transformer_encoder/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:` \
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
?
]
#__inference_add_layer_call_fn_13047
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
GPU 2J 8? *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_104832
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
?
?
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_13069

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
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_13095

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
?
3__inference_transformer/layer_0_layer_call_fn_13459
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
GPU 2J 8? *W
fRRP
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_108422
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
?
?
3__inference_transformer_encoder_layer_call_fn_12956
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
GPU 2J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_112622
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
?=
?
__inference__traced_save_13613
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
?: : :d::::::::::::::: : : :::::: 2(
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

:d:$ 

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
?j
?
!__inference__traced_restore_13695
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
J__inference_word_embeddings_layer_call_and_return_conditional_losses_12970

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
?
0__inference_pooler_transform_layer_call_fn_13507

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
GPU 2J 8? *T
fORM
K__inference_pooler_transform_layer_call_and_return_conditional_losses_109952
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
?
u
/__inference_word_embeddings_layer_call_fn_12977

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
GPU 2J 8? *S
fNRL
J__inference_word_embeddings_layer_call_and_return_conditional_losses_103982
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
x
>__inference_add_layer_call_and_return_conditional_losses_13040
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
??
?
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_13383
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
?
B
&__inference_lambda_layer_call_fn_13487

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
GPU 2J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_109712
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
??
?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_12629
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
add/addAddV2"word_embeddings/Reshape_1:output:0'position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2	
add/add?
	add/add_1AddV2add/add:z:0"type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2
	add/add_1?
4embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4embeddings/layer_norm/moments/mean/reduction_indices?
"embeddings/layer_norm/moments/meanMeanadd/add_1:z:0=embeddings/layer_norm/moments/mean/reduction_indices:output:0*
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
/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifferenceadd/add_1:z:03embeddings/layer_norm/moments/StopGradient:output:0*
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
%embeddings/layer_norm/batchnorm/mul_1Muladd/add_1:z:0'embeddings/layer_norm/batchnorm/mul:z:0*
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
%embeddings/layer_norm/batchnorm/add_1s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/dropout/Const?
dropout/dropout/MulMul)embeddings/layer_norm/batchnorm/add_1:z:0dropout/dropout/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/dropout/Mul?
dropout/dropout/ShapeShape)embeddings/layer_norm/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*4
_output_shapes"
 :??????????????????*
dtype0*
seed???)2.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :??????????????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/dropout/Mul_1
self_attention_mask/ShapeShapedropout/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
self_attention_mask/Shape?
'self_attention_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'self_attention_mask/strided_slice/stack?
)self_attention_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)self_attention_mask/strided_slice/stack_1?
)self_attention_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)self_attention_mask/strided_slice/stack_2?
!self_attention_mask/strided_sliceStridedSlice"self_attention_mask/Shape:output:00self_attention_mask/strided_slice/stack:output:02self_attention_mask/strided_slice/stack_1:output:02self_attention_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!self_attention_mask/strided_slice?
)self_attention_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)self_attention_mask/strided_slice_1/stack?
+self_attention_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_1/stack_1?
+self_attention_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_1/stack_2?
#self_attention_mask/strided_slice_1StridedSlice"self_attention_mask/Shape:output:02self_attention_mask/strided_slice_1/stack:output:04self_attention_mask/strided_slice_1/stack_1:output:04self_attention_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask/strided_slice_1r
self_attention_mask/Shape_1Shapeinputs_1*
T0*
_output_shapes
:2
self_attention_mask/Shape_1?
)self_attention_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)self_attention_mask/strided_slice_2/stack?
+self_attention_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_2/stack_1?
+self_attention_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_2/stack_2?
#self_attention_mask/strided_slice_2StridedSlice$self_attention_mask/Shape_1:output:02self_attention_mask/strided_slice_2/stack:output:04self_attention_mask/strided_slice_2/stack_1:output:04self_attention_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask/strided_slice_2?
)self_attention_mask/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)self_attention_mask/strided_slice_3/stack?
+self_attention_mask/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_3/stack_1?
+self_attention_mask/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_3/stack_2?
#self_attention_mask/strided_slice_3StridedSlice$self_attention_mask/Shape_1:output:02self_attention_mask/strided_slice_3/stack:output:04self_attention_mask/strided_slice_3/stack_1:output:04self_attention_mask/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask/strided_slice_3?
#self_attention_mask/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#self_attention_mask/Reshape/shape/1?
!self_attention_mask/Reshape/shapePack*self_attention_mask/strided_slice:output:0,self_attention_mask/Reshape/shape/1:output:0,self_attention_mask/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2#
!self_attention_mask/Reshape/shape?
self_attention_mask/ReshapeReshapeinputs_1*self_attention_mask/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask/Reshape?
self_attention_mask/CastCast$self_attention_mask/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2
self_attention_mask/Cast?
self_attention_mask/ones/mulMul*self_attention_mask/strided_slice:output:0,self_attention_mask/strided_slice_1:output:0*
T0*
_output_shapes
: 2
self_attention_mask/ones/mul?
 self_attention_mask/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 self_attention_mask/ones/mul_1/y?
self_attention_mask/ones/mul_1Mul self_attention_mask/ones/mul:z:0)self_attention_mask/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2 
self_attention_mask/ones/mul_1?
self_attention_mask/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2!
self_attention_mask/ones/Less/y?
self_attention_mask/ones/LessLess"self_attention_mask/ones/mul_1:z:0(self_attention_mask/ones/Less/y:output:0*
T0*
_output_shapes
: 2
self_attention_mask/ones/Less?
!self_attention_mask/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!self_attention_mask/ones/packed/2?
self_attention_mask/ones/packedPack*self_attention_mask/strided_slice:output:0,self_attention_mask/strided_slice_1:output:0*self_attention_mask/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2!
self_attention_mask/ones/packed?
self_attention_mask/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
self_attention_mask/ones/Const?
self_attention_mask/onesFill(self_attention_mask/ones/packed:output:0'self_attention_mask/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask/ones?
self_attention_mask/mulMul!self_attention_mask/ones:output:0self_attention_mask/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
self_attention_mask/mul?
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
6transformer/layer_0/self_attention/query/einsum/EinsumEinsumdropout/dropout/Mul_1:z:0Mtransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
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
4transformer/layer_0/self_attention/key/einsum/EinsumEinsumdropout/dropout/Mul_1:z:0Ktransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
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
6transformer/layer_0/self_attention/value/einsum/EinsumEinsumdropout/dropout/Mul_1:z:0Mtransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
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
ExpandDimsself_attention_mask/mul:z:0Itransformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
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
transformer/layer_0/addAddV2dropout/dropout/Mul_1:z:0/transformer/layer_0/dropout_1/dropout/Mul_1:z:0*
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
lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda/strided_slice/stack?
lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
lambda/strided_slice/stack_1?
lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
lambda/strided_slice/stack_2?
lambda/strided_sliceStridedSlice9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0#lambda/strided_slice/stack:output:0%lambda/strided_slice/stack_1:output:0%lambda/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
lambda/strided_slice?
lambda/SqueezeSqueezelambda/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
lambda/Squeeze?
&pooler_transform/MatMul/ReadVariableOpReadVariableOp/pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&pooler_transform/MatMul/ReadVariableOp?
pooler_transform/MatMulMatMullambda/Squeeze:output:0.pooler_transform/MatMul/ReadVariableOp:value:0*
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
v
>__inference_add_layer_call_and_return_conditional_losses_10483

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
?
u
/__inference_type_embeddings_layer_call_fn_13032

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
GPU 2J 8? *S
fNRL
J__inference_type_embeddings_layer_call_and_return_conditional_losses_104632
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
?
?
5__inference_embeddings/layer_norm_layer_call_fn_13078

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
GPU 2J 8? *Y
fTRR
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_105152
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
@__inference_model_layer_call_and_return_conditional_losses_12274
inputs_0
inputs_1
inputs_27
3transformer_encoder_word_embeddings_gather_resourceB
>transformer_encoder_position_embedding_readvariableop_resourceF
Btransformer_encoder_type_embeddings_matmul_readvariableop_resourceS
Otransformer_encoder_embeddings_layer_norm_batchnorm_mul_readvariableop_resourceO
Ktransformer_encoder_embeddings_layer_norm_batchnorm_readvariableop_resourcef
btransformer_encoder_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource\
Xtransformer_encoder_transformer_layer_0_self_attention_query_add_readvariableop_resourced
`transformer_encoder_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resourceZ
Vtransformer_encoder_transformer_layer_0_self_attention_key_add_readvariableop_resourcef
btransformer_encoder_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource\
Xtransformer_encoder_transformer_layer_0_self_attention_value_add_readvariableop_resourceq
mtransformer_encoder_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resourceg
ctransformer_encoder_transformer_layer_0_self_attention_attention_output_add_readvariableop_resourcek
gtransformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resourceg
ctransformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource^
Ztransformer_encoder_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resourceT
Ptransformer_encoder_transformer_layer_0_intermediate_add_readvariableop_resourceX
Ttransformer_encoder_transformer_layer_0_output_einsum_einsum_readvariableop_resourceN
Jtransformer_encoder_transformer_layer_0_output_add_readvariableop_resourcec
_transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource_
[transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resourceG
Ctransformer_encoder_pooler_transform_matmul_readvariableop_resourceH
Dtransformer_encoder_pooler_transform_biasadd_readvariableop_resource
identity

identity_1??Btransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp?Ftransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp?:transformer_encoder/pooler_transform/MatMul/ReadVariableOp?5transformer_encoder/position_embedding/ReadVariableOp?Gtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp?Qtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?Atransformer_encoder/transformer/layer_0/output/add/ReadVariableOp?Ktransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?Vtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?Ztransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?dtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?Mtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp?Wtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?Otransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp?Ytransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?Otransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp?Ytransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?9transformer_encoder/type_embeddings/MatMul/ReadVariableOp?*transformer_encoder/word_embeddings/Gather?
1transformer_encoder/word_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????23
1transformer_encoder/word_embeddings/Reshape/shape?
+transformer_encoder/word_embeddings/ReshapeReshapeinputs_0:transformer_encoder/word_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2-
+transformer_encoder/word_embeddings/Reshape?
*transformer_encoder/word_embeddings/GatherResourceGather3transformer_encoder_word_embeddings_gather_resource4transformer_encoder/word_embeddings/Reshape:output:0*
Tindices0*'
_output_shapes
:?????????*
dtype02,
*transformer_encoder/word_embeddings/Gather?
,transformer_encoder/word_embeddings/IdentityIdentity3transformer_encoder/word_embeddings/Gather:output:0*
T0*'
_output_shapes
:?????????2.
,transformer_encoder/word_embeddings/Identity?
)transformer_encoder/word_embeddings/ShapeShapeinputs_0*
T0*
_output_shapes
:2+
)transformer_encoder/word_embeddings/Shape?
3transformer_encoder/word_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:25
3transformer_encoder/word_embeddings/concat/values_1?
/transformer_encoder/word_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/transformer_encoder/word_embeddings/concat/axis?
*transformer_encoder/word_embeddings/concatConcatV22transformer_encoder/word_embeddings/Shape:output:0<transformer_encoder/word_embeddings/concat/values_1:output:08transformer_encoder/word_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*transformer_encoder/word_embeddings/concat?
-transformer_encoder/word_embeddings/Reshape_1Reshape5transformer_encoder/word_embeddings/Identity:output:03transformer_encoder/word_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder/word_embeddings/Reshape_1?
,transformer_encoder/position_embedding/ShapeShape6transformer_encoder/word_embeddings/Reshape_1:output:0*
T0*
_output_shapes
:2.
,transformer_encoder/position_embedding/Shape?
:transformer_encoder/position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_encoder/position_embedding/strided_slice/stack?
<transformer_encoder/position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<transformer_encoder/position_embedding/strided_slice/stack_1?
<transformer_encoder/position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<transformer_encoder/position_embedding/strided_slice/stack_2?
4transformer_encoder/position_embedding/strided_sliceStridedSlice5transformer_encoder/position_embedding/Shape:output:0Ctransformer_encoder/position_embedding/strided_slice/stack:output:0Etransformer_encoder/position_embedding/strided_slice/stack_1:output:0Etransformer_encoder/position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4transformer_encoder/position_embedding/strided_slice?
<transformer_encoder/position_embedding/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2>
<transformer_encoder/position_embedding/strided_slice_1/stack?
>transformer_encoder/position_embedding/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder/position_embedding/strided_slice_1/stack_1?
>transformer_encoder/position_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>transformer_encoder/position_embedding/strided_slice_1/stack_2?
6transformer_encoder/position_embedding/strided_slice_1StridedSlice5transformer_encoder/position_embedding/Shape:output:0Etransformer_encoder/position_embedding/strided_slice_1/stack:output:0Gtransformer_encoder/position_embedding/strided_slice_1/stack_1:output:0Gtransformer_encoder/position_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6transformer_encoder/position_embedding/strided_slice_1?
5transformer_encoder/position_embedding/ReadVariableOpReadVariableOp>transformer_encoder_position_embedding_readvariableop_resource*
_output_shapes

:*
dtype027
5transformer_encoder/position_embedding/ReadVariableOp?
<transformer_encoder/position_embedding/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2>
<transformer_encoder/position_embedding/strided_slice_2/stack?
@transformer_encoder/position_embedding/strided_slice_2/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_encoder/position_embedding/strided_slice_2/stack_1/1?
>transformer_encoder/position_embedding/strided_slice_2/stack_1Pack?transformer_encoder/position_embedding/strided_slice_1:output:0Itransformer_encoder/position_embedding/strided_slice_2/stack_1/1:output:0*
N*
T0*
_output_shapes
:2@
>transformer_encoder/position_embedding/strided_slice_2/stack_1?
>transformer_encoder/position_embedding/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>transformer_encoder/position_embedding/strided_slice_2/stack_2?
6transformer_encoder/position_embedding/strided_slice_2StridedSlice=transformer_encoder/position_embedding/ReadVariableOp:value:0Etransformer_encoder/position_embedding/strided_slice_2/stack:output:0Gtransformer_encoder/position_embedding/strided_slice_2/stack_1:output:0Gtransformer_encoder/position_embedding/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask28
6transformer_encoder/position_embedding/strided_slice_2?
:transformer_encoder/position_embedding/BroadcastTo/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2<
:transformer_encoder/position_embedding/BroadcastTo/shape/2?
8transformer_encoder/position_embedding/BroadcastTo/shapePack=transformer_encoder/position_embedding/strided_slice:output:0?transformer_encoder/position_embedding/strided_slice_1:output:0Ctransformer_encoder/position_embedding/BroadcastTo/shape/2:output:0*
N*
T0*
_output_shapes
:2:
8transformer_encoder/position_embedding/BroadcastTo/shape?
2transformer_encoder/position_embedding/BroadcastToBroadcastTo?transformer_encoder/position_embedding/strided_slice_2:output:0Atransformer_encoder/position_embedding/BroadcastTo/shape:output:0*
T0*4
_output_shapes"
 :??????????????????24
2transformer_encoder/position_embedding/BroadcastTo?
1transformer_encoder/type_embeddings/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????23
1transformer_encoder/type_embeddings/Reshape/shape?
+transformer_encoder/type_embeddings/ReshapeReshapeinputs_2:transformer_encoder/type_embeddings/Reshape/shape:output:0*
T0*#
_output_shapes
:?????????2-
+transformer_encoder/type_embeddings/Reshape?
4transformer_encoder/type_embeddings/one_hot/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  ??26
4transformer_encoder/type_embeddings/one_hot/on_value?
5transformer_encoder/type_embeddings/one_hot/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5transformer_encoder/type_embeddings/one_hot/off_value?
1transformer_encoder/type_embeddings/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :23
1transformer_encoder/type_embeddings/one_hot/depth?
+transformer_encoder/type_embeddings/one_hotOneHot4transformer_encoder/type_embeddings/Reshape:output:0:transformer_encoder/type_embeddings/one_hot/depth:output:0=transformer_encoder/type_embeddings/one_hot/on_value:output:0>transformer_encoder/type_embeddings/one_hot/off_value:output:0*
T0*
TI0*'
_output_shapes
:?????????2-
+transformer_encoder/type_embeddings/one_hot?
9transformer_encoder/type_embeddings/MatMul/ReadVariableOpReadVariableOpBtransformer_encoder_type_embeddings_matmul_readvariableop_resource*
_output_shapes

:*
dtype02;
9transformer_encoder/type_embeddings/MatMul/ReadVariableOp?
*transformer_encoder/type_embeddings/MatMulMatMul4transformer_encoder/type_embeddings/one_hot:output:0Atransformer_encoder/type_embeddings/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2,
*transformer_encoder/type_embeddings/MatMul?
)transformer_encoder/type_embeddings/ShapeShapeinputs_2*
T0*
_output_shapes
:2+
)transformer_encoder/type_embeddings/Shape?
3transformer_encoder/type_embeddings/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:25
3transformer_encoder/type_embeddings/concat/values_1?
/transformer_encoder/type_embeddings/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/transformer_encoder/type_embeddings/concat/axis?
*transformer_encoder/type_embeddings/concatConcatV22transformer_encoder/type_embeddings/Shape:output:0<transformer_encoder/type_embeddings/concat/values_1:output:08transformer_encoder/type_embeddings/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*transformer_encoder/type_embeddings/concat?
-transformer_encoder/type_embeddings/Reshape_1Reshape4transformer_encoder/type_embeddings/MatMul:product:03transformer_encoder/type_embeddings/concat:output:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder/type_embeddings/Reshape_1?
transformer_encoder/add/addAddV26transformer_encoder/word_embeddings/Reshape_1:output:0;transformer_encoder/position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2
transformer_encoder/add/add?
transformer_encoder/add/add_1AddV2transformer_encoder/add/add:z:06transformer_encoder/type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2
transformer_encoder/add/add_1?
Htransformer_encoder/embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_encoder/embeddings/layer_norm/moments/mean/reduction_indices?
6transformer_encoder/embeddings/layer_norm/moments/meanMean!transformer_encoder/add/add_1:z:0Qtransformer_encoder/embeddings/layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(28
6transformer_encoder/embeddings/layer_norm/moments/mean?
>transformer_encoder/embeddings/layer_norm/moments/StopGradientStopGradient?transformer_encoder/embeddings/layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2@
>transformer_encoder/embeddings/layer_norm/moments/StopGradient?
Ctransformer_encoder/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifference!transformer_encoder/add/add_1:z:0Gtransformer_encoder/embeddings/layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2E
Ctransformer_encoder/embeddings/layer_norm/moments/SquaredDifference?
Ltransformer_encoder/embeddings/layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_encoder/embeddings/layer_norm/moments/variance/reduction_indices?
:transformer_encoder/embeddings/layer_norm/moments/varianceMeanGtransformer_encoder/embeddings/layer_norm/moments/SquaredDifference:z:0Utransformer_encoder/embeddings/layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2<
:transformer_encoder/embeddings/layer_norm/moments/variance?
9transformer_encoder/embeddings/layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2;
9transformer_encoder/embeddings/layer_norm/batchnorm/add/y?
7transformer_encoder/embeddings/layer_norm/batchnorm/addAddV2Ctransformer_encoder/embeddings/layer_norm/moments/variance:output:0Btransformer_encoder/embeddings/layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer_encoder/embeddings/layer_norm/batchnorm/add?
9transformer_encoder/embeddings/layer_norm/batchnorm/RsqrtRsqrt;transformer_encoder/embeddings/layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder/embeddings/layer_norm/batchnorm/Rsqrt?
Ftransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_embeddings_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02H
Ftransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp?
7transformer_encoder/embeddings/layer_norm/batchnorm/mulMul=transformer_encoder/embeddings/layer_norm/batchnorm/Rsqrt:y:0Ntransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer_encoder/embeddings/layer_norm/batchnorm/mul?
9transformer_encoder/embeddings/layer_norm/batchnorm/mul_1Mul!transformer_encoder/add/add_1:z:0;transformer_encoder/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder/embeddings/layer_norm/batchnorm/mul_1?
9transformer_encoder/embeddings/layer_norm/batchnorm/mul_2Mul?transformer_encoder/embeddings/layer_norm/moments/mean:output:0;transformer_encoder/embeddings/layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder/embeddings/layer_norm/batchnorm/mul_2?
Btransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_embeddings_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02D
Btransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp?
7transformer_encoder/embeddings/layer_norm/batchnorm/subSubJtransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp:value:0=transformer_encoder/embeddings/layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????29
7transformer_encoder/embeddings/layer_norm/batchnorm/sub?
9transformer_encoder/embeddings/layer_norm/batchnorm/add_1AddV2=transformer_encoder/embeddings/layer_norm/batchnorm/mul_1:z:0;transformer_encoder/embeddings/layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2;
9transformer_encoder/embeddings/layer_norm/batchnorm/add_1?
$transformer_encoder/dropout/IdentityIdentity=transformer_encoder/embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2&
$transformer_encoder/dropout/Identity?
-transformer_encoder/self_attention_mask/ShapeShape-transformer_encoder/dropout/Identity:output:0*
T0*
_output_shapes
:2/
-transformer_encoder/self_attention_mask/Shape?
;transformer_encoder/self_attention_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2=
;transformer_encoder/self_attention_mask/strided_slice/stack?
=transformer_encoder/self_attention_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2?
=transformer_encoder/self_attention_mask/strided_slice/stack_1?
=transformer_encoder/self_attention_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2?
=transformer_encoder/self_attention_mask/strided_slice/stack_2?
5transformer_encoder/self_attention_mask/strided_sliceStridedSlice6transformer_encoder/self_attention_mask/Shape:output:0Dtransformer_encoder/self_attention_mask/strided_slice/stack:output:0Ftransformer_encoder/self_attention_mask/strided_slice/stack_1:output:0Ftransformer_encoder/self_attention_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask27
5transformer_encoder/self_attention_mask/strided_slice?
=transformer_encoder/self_attention_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=transformer_encoder/self_attention_mask/strided_slice_1/stack?
?transformer_encoder/self_attention_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_1/stack_1?
?transformer_encoder/self_attention_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_1/stack_2?
7transformer_encoder/self_attention_mask/strided_slice_1StridedSlice6transformer_encoder/self_attention_mask/Shape:output:0Ftransformer_encoder/self_attention_mask/strided_slice_1/stack:output:0Htransformer_encoder/self_attention_mask/strided_slice_1/stack_1:output:0Htransformer_encoder/self_attention_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7transformer_encoder/self_attention_mask/strided_slice_1?
/transformer_encoder/self_attention_mask/Shape_1Shapeinputs_1*
T0*
_output_shapes
:21
/transformer_encoder/self_attention_mask/Shape_1?
=transformer_encoder/self_attention_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=transformer_encoder/self_attention_mask/strided_slice_2/stack?
?transformer_encoder/self_attention_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_2/stack_1?
?transformer_encoder/self_attention_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_2/stack_2?
7transformer_encoder/self_attention_mask/strided_slice_2StridedSlice8transformer_encoder/self_attention_mask/Shape_1:output:0Ftransformer_encoder/self_attention_mask/strided_slice_2/stack:output:0Htransformer_encoder/self_attention_mask/strided_slice_2/stack_1:output:0Htransformer_encoder/self_attention_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7transformer_encoder/self_attention_mask/strided_slice_2?
=transformer_encoder/self_attention_mask/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=transformer_encoder/self_attention_mask/strided_slice_3/stack?
?transformer_encoder/self_attention_mask/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_3/stack_1?
?transformer_encoder/self_attention_mask/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?transformer_encoder/self_attention_mask/strided_slice_3/stack_2?
7transformer_encoder/self_attention_mask/strided_slice_3StridedSlice8transformer_encoder/self_attention_mask/Shape_1:output:0Ftransformer_encoder/self_attention_mask/strided_slice_3/stack:output:0Htransformer_encoder/self_attention_mask/strided_slice_3/stack_1:output:0Htransformer_encoder/self_attention_mask/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7transformer_encoder/self_attention_mask/strided_slice_3?
7transformer_encoder/self_attention_mask/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :29
7transformer_encoder/self_attention_mask/Reshape/shape/1?
5transformer_encoder/self_attention_mask/Reshape/shapePack>transformer_encoder/self_attention_mask/strided_slice:output:0@transformer_encoder/self_attention_mask/Reshape/shape/1:output:0@transformer_encoder/self_attention_mask/strided_slice_3:output:0*
N*
T0*
_output_shapes
:27
5transformer_encoder/self_attention_mask/Reshape/shape?
/transformer_encoder/self_attention_mask/ReshapeReshapeinputs_1>transformer_encoder/self_attention_mask/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????21
/transformer_encoder/self_attention_mask/Reshape?
,transformer_encoder/self_attention_mask/CastCast8transformer_encoder/self_attention_mask/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2.
,transformer_encoder/self_attention_mask/Cast?
0transformer_encoder/self_attention_mask/ones/mulMul>transformer_encoder/self_attention_mask/strided_slice:output:0@transformer_encoder/self_attention_mask/strided_slice_1:output:0*
T0*
_output_shapes
: 22
0transformer_encoder/self_attention_mask/ones/mul?
4transformer_encoder/self_attention_mask/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :26
4transformer_encoder/self_attention_mask/ones/mul_1/y?
2transformer_encoder/self_attention_mask/ones/mul_1Mul4transformer_encoder/self_attention_mask/ones/mul:z:0=transformer_encoder/self_attention_mask/ones/mul_1/y:output:0*
T0*
_output_shapes
: 24
2transformer_encoder/self_attention_mask/ones/mul_1?
3transformer_encoder/self_attention_mask/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?25
3transformer_encoder/self_attention_mask/ones/Less/y?
1transformer_encoder/self_attention_mask/ones/LessLess6transformer_encoder/self_attention_mask/ones/mul_1:z:0<transformer_encoder/self_attention_mask/ones/Less/y:output:0*
T0*
_output_shapes
: 23
1transformer_encoder/self_attention_mask/ones/Less?
5transformer_encoder/self_attention_mask/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :27
5transformer_encoder/self_attention_mask/ones/packed/2?
3transformer_encoder/self_attention_mask/ones/packedPack>transformer_encoder/self_attention_mask/strided_slice:output:0@transformer_encoder/self_attention_mask/strided_slice_1:output:0>transformer_encoder/self_attention_mask/ones/packed/2:output:0*
N*
T0*
_output_shapes
:25
3transformer_encoder/self_attention_mask/ones/packed?
2transformer_encoder/self_attention_mask/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2transformer_encoder/self_attention_mask/ones/Const?
,transformer_encoder/self_attention_mask/onesFill<transformer_encoder/self_attention_mask/ones/packed:output:0;transformer_encoder/self_attention_mask/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2.
,transformer_encoder/self_attention_mask/ones?
+transformer_encoder/self_attention_mask/mulMul5transformer_encoder/self_attention_mask/ones:output:00transformer_encoder/self_attention_mask/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2-
+transformer_encoder/self_attention_mask/mul?
Ytransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpbtransformer_encoder_transformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02[
Ytransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
Jtransformer_encoder/transformer/layer_0/self_attention/query/einsum/EinsumEinsum-transformer_encoder/dropout/Identity:output:0atransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2L
Jtransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum?
Otransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpReadVariableOpXtransformer_encoder_transformer_layer_0_self_attention_query_add_readvariableop_resource*
_output_shapes

:*
dtype02Q
Otransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp?
@transformer_encoder/transformer/layer_0/self_attention/query/addAddV2Stransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum:output:0Wtransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2B
@transformer_encoder/transformer/layer_0/self_attention/query/add?
Wtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp`transformer_encoder_transformer_layer_0_self_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02Y
Wtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp?
Htransformer_encoder/transformer/layer_0/self_attention/key/einsum/EinsumEinsum-transformer_encoder/dropout/Identity:output:0_transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2J
Htransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum?
Mtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpReadVariableOpVtransformer_encoder_transformer_layer_0_self_attention_key_add_readvariableop_resource*
_output_shapes

:*
dtype02O
Mtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp?
>transformer_encoder/transformer/layer_0/self_attention/key/addAddV2Qtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum:output:0Utransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2@
>transformer_encoder/transformer/layer_0/self_attention/key/add?
Ytransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpbtransformer_encoder_transformer_layer_0_self_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02[
Ytransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp?
Jtransformer_encoder/transformer/layer_0/self_attention/value/einsum/EinsumEinsum-transformer_encoder/dropout/Identity:output:0atransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationabc,cde->abde2L
Jtransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum?
Otransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpReadVariableOpXtransformer_encoder_transformer_layer_0_self_attention_value_add_readvariableop_resource*
_output_shapes

:*
dtype02Q
Otransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp?
@transformer_encoder/transformer/layer_0/self_attention/value/addAddV2Stransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum:output:0Wtransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp:value:0*
T0*8
_output_shapes&
$:"??????????????????2B
@transformer_encoder/transformer/layer_0/self_attention/value/add?
Dtransformer_encoder/transformer/layer_0/self_attention/einsum/EinsumEinsumBtransformer_encoder/transformer/layer_0/self_attention/key/add:z:0Dtransformer_encoder/transformer/layer_0/self_attention/query/add:z:0*
N*
T0*A
_output_shapes/
-:+???????????????????????????*
equationaecd,abcd->acbe2F
Dtransformer_encoder/transformer/layer_0/self_attention/einsum/Einsum?
<transformer_encoder/transformer/layer_0/self_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *??>2>
<transformer_encoder/transformer/layer_0/self_attention/Mul/y?
:transformer_encoder/transformer/layer_0/self_attention/MulMulMtransformer_encoder/transformer/layer_0/self_attention/einsum/Einsum:output:0Etransformer_encoder/transformer/layer_0/self_attention/Mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2<
:transformer_encoder/transformer/layer_0/self_attention/Mul?
Ttransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:2V
Ttransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim?
Ptransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims
ExpandDims/transformer_encoder/self_attention_mask/mul:z:0]transformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2R
Ptransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims?
Ktransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2M
Ktransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/x?
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/subSubTtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub/x:output:0Ytransformer_encoder/transformer/layer_0/self_attention/masked_softmax/ExpandDims:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2K
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub?
Ktransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 * @?2M
Ktransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/y?
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mulMulMtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/sub:z:0Ttransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul/y:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2K
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul?
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/addAddV2>transformer_encoder/transformer/layer_0/self_attention/Mul:z:0Mtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2K
Itransformer_encoder/transformer/layer_0/self_attention/masked_softmax/add?
Mtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/SoftmaxSoftmaxMtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/add:z:0*
T0*A
_output_shapes/
-:+???????????????????????????2O
Mtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/Softmax?
Gtransformer_encoder/transformer/layer_0/self_attention/dropout/IdentityIdentityWtransformer_encoder/transformer/layer_0/self_attention/masked_softmax/Softmax:softmax:0*
T0*A
_output_shapes/
-:+???????????????????????????2I
Gtransformer_encoder/transformer/layer_0/self_attention/dropout/Identity?
Ftransformer_encoder/transformer/layer_0/self_attention/einsum_1/EinsumEinsumPtransformer_encoder/transformer/layer_0/self_attention/dropout/Identity:output:0Dtransformer_encoder/transformer/layer_0/self_attention/value/add:z:0*
N*
T0*8
_output_shapes&
$:"??????????????????*
equationacbe,aecd->abcd2H
Ftransformer_encoder/transformer/layer_0/self_attention/einsum_1/Einsum?
dtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpmtransformer_encoder_transformer_layer_0_self_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02f
dtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp?
Utransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/EinsumEinsumOtransformer_encoder/transformer/layer_0/self_attention/einsum_1/Einsum:output:0ltransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabcd,cde->abe2W
Utransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum?
Ztransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpReadVariableOpctransformer_encoder_transformer_layer_0_self_attention_attention_output_add_readvariableop_resource*
_output_shapes
:*
dtype02\
Ztransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp?
Ktransformer_encoder/transformer/layer_0/self_attention/attention_output/addAddV2^transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum:output:0btransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2M
Ktransformer_encoder/transformer/layer_0/self_attention/attention_output/add?
:transformer_encoder/transformer/layer_0/dropout_1/IdentityIdentityOtransformer_encoder/transformer/layer_0/self_attention/attention_output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2<
:transformer_encoder/transformer/layer_0/dropout_1/Identity?
+transformer_encoder/transformer/layer_0/addAddV2-transformer_encoder/dropout/Identity:output:0Ctransformer_encoder/transformer/layer_0/dropout_1/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2-
+transformer_encoder/transformer/layer_0/add?
`transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2b
`transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices?
Ntransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/meanMean/transformer_encoder/transformer/layer_0/add:z:0itransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2P
Ntransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean?
Vtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradientStopGradientWtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2X
Vtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradient?
[transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifferenceSquaredDifference/transformer_encoder/transformer/layer_0/add:z:0_transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2]
[transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference?
dtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2f
dtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices?
Rtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/varianceMean_transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/SquaredDifference:z:0mtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2T
Rtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y?
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/addAddV2[transformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/variance:output:0Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2Q
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/RsqrtRsqrtStransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt?
^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOpgtransformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02`
^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp?
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mulMulUtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/Rsqrt:y:0ftransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2Q
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1Mul/transformer_encoder/transformer/layer_0/add:z:0Stransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2MulWtransformer_encoder/transformer/layer_0/self_attention_layer_norm/moments/mean:output:0Stransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2?
Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpReadVariableOpctransformer_encoder_transformer_layer_0_self_attention_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02\
Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp?
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/subSubbtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp:value:0Utransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2Q
Otransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/sub?
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1AddV2Utransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul_1:z:0Stransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2S
Qtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1?
Qtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpReadVariableOpZtransformer_encoder_transformer_layer_0_intermediate_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02S
Qtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp?
Btransformer_encoder/transformer/layer_0/intermediate/einsum/EinsumEinsumUtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0Ytransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :?????????????????? *
equationabc,cd->abd2D
Btransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum?
Gtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpReadVariableOpPtransformer_encoder_transformer_layer_0_intermediate_add_readvariableop_resource*
_output_shapes
: *
dtype02I
Gtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp?
8transformer_encoder/transformer/layer_0/intermediate/addAddV2Ktransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum:output:0Otransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/intermediate/add?
8transformer_encoder/transformer/layer_0/activation/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@2:
8transformer_encoder/transformer/layer_0/activation/Pow/y?
6transformer_encoder/transformer/layer_0/activation/PowPow<transformer_encoder/transformer/layer_0/intermediate/add:z:0Atransformer_encoder/transformer/layer_0/activation/Pow/y:output:0*
T0*4
_output_shapes"
 :?????????????????? 28
6transformer_encoder/transformer/layer_0/activation/Pow?
8transformer_encoder/transformer/layer_0/activation/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *'7=2:
8transformer_encoder/transformer/layer_0/activation/mul/x?
6transformer_encoder/transformer/layer_0/activation/mulMulAtransformer_encoder/transformer/layer_0/activation/mul/x:output:0:transformer_encoder/transformer/layer_0/activation/Pow:z:0*
T0*4
_output_shapes"
 :?????????????????? 28
6transformer_encoder/transformer/layer_0/activation/mul?
6transformer_encoder/transformer/layer_0/activation/addAddV2<transformer_encoder/transformer/layer_0/intermediate/add:z:0:transformer_encoder/transformer/layer_0/activation/mul:z:0*
T0*4
_output_shapes"
 :?????????????????? 28
6transformer_encoder/transformer/layer_0/activation/add?
:transformer_encoder/transformer/layer_0/activation/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 **BL?2<
:transformer_encoder/transformer/layer_0/activation/mul_1/x?
8transformer_encoder/transformer/layer_0/activation/mul_1MulCtransformer_encoder/transformer/layer_0/activation/mul_1/x:output:0:transformer_encoder/transformer/layer_0/activation/add:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/activation/mul_1?
7transformer_encoder/transformer/layer_0/activation/TanhTanh<transformer_encoder/transformer/layer_0/activation/mul_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 29
7transformer_encoder/transformer/layer_0/activation/Tanh?
:transformer_encoder/transformer/layer_0/activation/add_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2<
:transformer_encoder/transformer/layer_0/activation/add_1/x?
8transformer_encoder/transformer/layer_0/activation/add_1AddV2Ctransformer_encoder/transformer/layer_0/activation/add_1/x:output:0;transformer_encoder/transformer/layer_0/activation/Tanh:y:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/activation/add_1?
:transformer_encoder/transformer/layer_0/activation/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2<
:transformer_encoder/transformer/layer_0/activation/mul_2/x?
8transformer_encoder/transformer/layer_0/activation/mul_2MulCtransformer_encoder/transformer/layer_0/activation/mul_2/x:output:0<transformer_encoder/transformer/layer_0/activation/add_1:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/activation/mul_2?
8transformer_encoder/transformer/layer_0/activation/mul_3Mul<transformer_encoder/transformer/layer_0/intermediate/add:z:0<transformer_encoder/transformer/layer_0/activation/mul_2:z:0*
T0*4
_output_shapes"
 :?????????????????? 2:
8transformer_encoder/transformer/layer_0/activation/mul_3?
Ktransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_transformer_layer_0_output_einsum_einsum_readvariableop_resource*
_output_shapes

: *
dtype02M
Ktransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp?
<transformer_encoder/transformer/layer_0/output/einsum/EinsumEinsum<transformer_encoder/transformer/layer_0/activation/mul_3:z:0Stransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*4
_output_shapes"
 :??????????????????*
equationabc,cd->abd2>
<transformer_encoder/transformer/layer_0/output/einsum/Einsum?
Atransformer_encoder/transformer/layer_0/output/add/ReadVariableOpReadVariableOpJtransformer_encoder_transformer_layer_0_output_add_readvariableop_resource*
_output_shapes
:*
dtype02C
Atransformer_encoder/transformer/layer_0/output/add/ReadVariableOp?
2transformer_encoder/transformer/layer_0/output/addAddV2Etransformer_encoder/transformer/layer_0/output/einsum/Einsum:output:0Itransformer_encoder/transformer/layer_0/output/add/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????24
2transformer_encoder/transformer/layer_0/output/add?
:transformer_encoder/transformer/layer_0/dropout_2/IdentityIdentity6transformer_encoder/transformer/layer_0/output/add:z:0*
T0*4
_output_shapes"
 :??????????????????2<
:transformer_encoder/transformer/layer_0/dropout_2/Identity?
-transformer_encoder/transformer/layer_0/add_1AddV2Ctransformer_encoder/transformer/layer_0/dropout_2/Identity:output:0Utransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2/
-transformer_encoder/transformer/layer_0/add_1?
Xtransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2Z
Xtransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices?
Ftransformer_encoder/transformer/layer_0/output_layer_norm/moments/meanMean1transformer_encoder/transformer/layer_0/add_1:z:0atransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2H
Ftransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean?
Ntransformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradientStopGradientOtransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean:output:0*
T0*4
_output_shapes"
 :??????????????????2P
Ntransformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradient?
Stransformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifferenceSquaredDifference1transformer_encoder/transformer/layer_0/add_1:z:0Wtransformer_encoder/transformer/layer_0/output_layer_norm/moments/StopGradient:output:0*
T0*4
_output_shapes"
 :??????????????????2U
Stransformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifference?
\transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2^
\transformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices?
Jtransformer_encoder/transformer/layer_0/output_layer_norm/moments/varianceMeanWtransformer_encoder/transformer/layer_0/output_layer_norm/moments/SquaredDifference:z:0etransformer_encoder/transformer/layer_0/output_layer_norm/moments/variance/reduction_indices:output:0*
T0*4
_output_shapes"
 :??????????????????*
	keep_dims(2L
Jtransformer_encoder/transformer/layer_0/output_layer_norm/moments/variance?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/y?
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/addAddV2Stransformer_encoder/transformer/layer_0/output_layer_norm/moments/variance:output:0Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add/y:output:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/RsqrtRsqrtKtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt?
Vtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpReadVariableOp_transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype02X
Vtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp?
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mulMulMtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/Rsqrt:y:0^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp:value:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1Mul1transformer_encoder/transformer/layer_0/add_1:z:0Ktransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2MulOtransformer_encoder/transformer/layer_0/output_layer_norm/moments/mean:output:0Ktransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2?
Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpReadVariableOp[transformer_encoder_transformer_layer_0_output_layer_norm_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype02T
Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp?
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/subSubZtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp:value:0Mtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_2:z:0*
T0*4
_output_shapes"
 :??????????????????2I
Gtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/sub?
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1AddV2Mtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul_1:z:0Ktransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/sub:z:0*
T0*4
_output_shapes"
 :??????????????????2K
Itransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1?
.transformer_encoder/lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            20
.transformer_encoder/lambda/strided_slice/stack?
0transformer_encoder/lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           22
0transformer_encoder/lambda/strided_slice/stack_1?
0transformer_encoder/lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         22
0transformer_encoder/lambda/strided_slice/stack_2?
(transformer_encoder/lambda/strided_sliceStridedSliceMtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:07transformer_encoder/lambda/strided_slice/stack:output:09transformer_encoder/lambda/strided_slice/stack_1:output:09transformer_encoder/lambda/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2*
(transformer_encoder/lambda/strided_slice?
"transformer_encoder/lambda/SqueezeSqueeze1transformer_encoder/lambda/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2$
"transformer_encoder/lambda/Squeeze?
:transformer_encoder/pooler_transform/MatMul/ReadVariableOpReadVariableOpCtransformer_encoder_pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02<
:transformer_encoder/pooler_transform/MatMul/ReadVariableOp?
+transformer_encoder/pooler_transform/MatMulMatMul+transformer_encoder/lambda/Squeeze:output:0Btransformer_encoder/pooler_transform/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+transformer_encoder/pooler_transform/MatMul?
;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOpReadVariableOpDtransformer_encoder_pooler_transform_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02=
;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp?
,transformer_encoder/pooler_transform/BiasAddBiasAdd5transformer_encoder/pooler_transform/MatMul:product:0Ctransformer_encoder/pooler_transform/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2.
,transformer_encoder/pooler_transform/BiasAdd?
)transformer_encoder/pooler_transform/TanhTanh5transformer_encoder/pooler_transform/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2+
)transformer_encoder/pooler_transform/Tanh?
IdentityIdentity-transformer_encoder/pooler_transform/Tanh:y:0C^transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpG^transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp<^transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp;^transformer_encoder/pooler_transform/MatMul/ReadVariableOp6^transformer_encoder/position_embedding/ReadVariableOpH^transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpR^transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpB^transformer_encoder/transformer/layer_0/output/add/ReadVariableOpL^transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpS^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpW^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp[^transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpe^transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpN^transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpX^transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpP^transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpZ^transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpP^transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpZ^transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp[^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp_^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:^transformer_encoder/type_embeddings/MatMul/ReadVariableOp+^transformer_encoder/word_embeddings/Gather*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityMtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0C^transformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpG^transformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp<^transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp;^transformer_encoder/pooler_transform/MatMul/ReadVariableOp6^transformer_encoder/position_embedding/ReadVariableOpH^transformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpR^transformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpB^transformer_encoder/transformer/layer_0/output/add/ReadVariableOpL^transformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpS^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpW^transformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp[^transformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpe^transformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpN^transformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpX^transformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpP^transformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpZ^transformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpP^transformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpZ^transformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp[^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp_^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp:^transformer_encoder/type_embeddings/MatMul/ReadVariableOp+^transformer_encoder/word_embeddings/Gather*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2?
Btransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOpBtransformer_encoder/embeddings/layer_norm/batchnorm/ReadVariableOp2?
Ftransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOpFtransformer_encoder/embeddings/layer_norm/batchnorm/mul/ReadVariableOp2z
;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp;transformer_encoder/pooler_transform/BiasAdd/ReadVariableOp2x
:transformer_encoder/pooler_transform/MatMul/ReadVariableOp:transformer_encoder/pooler_transform/MatMul/ReadVariableOp2n
5transformer_encoder/position_embedding/ReadVariableOp5transformer_encoder/position_embedding/ReadVariableOp2?
Gtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOpGtransformer_encoder/transformer/layer_0/intermediate/add/ReadVariableOp2?
Qtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOpQtransformer_encoder/transformer/layer_0/intermediate/einsum/Einsum/ReadVariableOp2?
Atransformer_encoder/transformer/layer_0/output/add/ReadVariableOpAtransformer_encoder/transformer/layer_0/output/add/ReadVariableOp2?
Ktransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOpKtransformer_encoder/transformer/layer_0/output/einsum/Einsum/ReadVariableOp2?
Rtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOpRtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/ReadVariableOp2?
Vtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOpVtransformer_encoder/transformer/layer_0/output_layer_norm/batchnorm/mul/ReadVariableOp2?
Ztransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOpZtransformer_encoder/transformer/layer_0/self_attention/attention_output/add/ReadVariableOp2?
dtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOpdtransformer_encoder/transformer/layer_0/self_attention/attention_output/einsum/Einsum/ReadVariableOp2?
Mtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOpMtransformer_encoder/transformer/layer_0/self_attention/key/add/ReadVariableOp2?
Wtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOpWtransformer_encoder/transformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp2?
Otransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOpOtransformer_encoder/transformer/layer_0/self_attention/query/add/ReadVariableOp2?
Ytransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpYtransformer_encoder/transformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp2?
Otransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOpOtransformer_encoder/transformer/layer_0/self_attention/value/add/ReadVariableOp2?
Ytransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOpYtransformer_encoder/transformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp2?
Ztransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOpZtransformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/ReadVariableOp2?
^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp^transformer_encoder/transformer/layer_0/self_attention_layer_norm/batchnorm/mul/ReadVariableOp2v
9transformer_encoder/type_embeddings/MatMul/ReadVariableOp9transformer_encoder/type_embeddings/MatMul/ReadVariableOp2X
*transformer_encoder/word_embeddings/Gather*transformer_encoder/word_embeddings/Gather:Z V
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
a
B__inference_dropout_layer_call_and_return_conditional_losses_13090

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
??
?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_12846
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
add/addAddV2"word_embeddings/Reshape_1:output:0'position_embedding/BroadcastTo:output:0*
T0*4
_output_shapes"
 :??????????????????2	
add/add?
	add/add_1AddV2add/add:z:0"type_embeddings/Reshape_1:output:0*
T0*4
_output_shapes"
 :??????????????????2
	add/add_1?
4embeddings/layer_norm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4embeddings/layer_norm/moments/mean/reduction_indices?
"embeddings/layer_norm/moments/meanMeanadd/add_1:z:0=embeddings/layer_norm/moments/mean/reduction_indices:output:0*
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
/embeddings/layer_norm/moments/SquaredDifferenceSquaredDifferenceadd/add_1:z:03embeddings/layer_norm/moments/StopGradient:output:0*
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
%embeddings/layer_norm/batchnorm/mul_1Muladd/add_1:z:0'embeddings/layer_norm/batchnorm/mul:z:0*
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
dropout/IdentityIdentity)embeddings/layer_norm/batchnorm/add_1:z:0*
T0*4
_output_shapes"
 :??????????????????2
dropout/Identity
self_attention_mask/ShapeShapedropout/Identity:output:0*
T0*
_output_shapes
:2
self_attention_mask/Shape?
'self_attention_mask/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'self_attention_mask/strided_slice/stack?
)self_attention_mask/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)self_attention_mask/strided_slice/stack_1?
)self_attention_mask/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)self_attention_mask/strided_slice/stack_2?
!self_attention_mask/strided_sliceStridedSlice"self_attention_mask/Shape:output:00self_attention_mask/strided_slice/stack:output:02self_attention_mask/strided_slice/stack_1:output:02self_attention_mask/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!self_attention_mask/strided_slice?
)self_attention_mask/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)self_attention_mask/strided_slice_1/stack?
+self_attention_mask/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_1/stack_1?
+self_attention_mask/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_1/stack_2?
#self_attention_mask/strided_slice_1StridedSlice"self_attention_mask/Shape:output:02self_attention_mask/strided_slice_1/stack:output:04self_attention_mask/strided_slice_1/stack_1:output:04self_attention_mask/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask/strided_slice_1r
self_attention_mask/Shape_1Shapeinputs_1*
T0*
_output_shapes
:2
self_attention_mask/Shape_1?
)self_attention_mask/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)self_attention_mask/strided_slice_2/stack?
+self_attention_mask/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_2/stack_1?
+self_attention_mask/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_2/stack_2?
#self_attention_mask/strided_slice_2StridedSlice$self_attention_mask/Shape_1:output:02self_attention_mask/strided_slice_2/stack:output:04self_attention_mask/strided_slice_2/stack_1:output:04self_attention_mask/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask/strided_slice_2?
)self_attention_mask/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)self_attention_mask/strided_slice_3/stack?
+self_attention_mask/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_3/stack_1?
+self_attention_mask/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+self_attention_mask/strided_slice_3/stack_2?
#self_attention_mask/strided_slice_3StridedSlice$self_attention_mask/Shape_1:output:02self_attention_mask/strided_slice_3/stack:output:04self_attention_mask/strided_slice_3/stack_1:output:04self_attention_mask/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#self_attention_mask/strided_slice_3?
#self_attention_mask/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2%
#self_attention_mask/Reshape/shape/1?
!self_attention_mask/Reshape/shapePack*self_attention_mask/strided_slice:output:0,self_attention_mask/Reshape/shape/1:output:0,self_attention_mask/strided_slice_3:output:0*
N*
T0*
_output_shapes
:2#
!self_attention_mask/Reshape/shape?
self_attention_mask/ReshapeReshapeinputs_1*self_attention_mask/Reshape/shape:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask/Reshape?
self_attention_mask/CastCast$self_attention_mask/Reshape:output:0*

DstT0*

SrcT0*4
_output_shapes"
 :??????????????????2
self_attention_mask/Cast?
self_attention_mask/ones/mulMul*self_attention_mask/strided_slice:output:0,self_attention_mask/strided_slice_1:output:0*
T0*
_output_shapes
: 2
self_attention_mask/ones/mul?
 self_attention_mask/ones/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 self_attention_mask/ones/mul_1/y?
self_attention_mask/ones/mul_1Mul self_attention_mask/ones/mul:z:0)self_attention_mask/ones/mul_1/y:output:0*
T0*
_output_shapes
: 2 
self_attention_mask/ones/mul_1?
self_attention_mask/ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2!
self_attention_mask/ones/Less/y?
self_attention_mask/ones/LessLess"self_attention_mask/ones/mul_1:z:0(self_attention_mask/ones/Less/y:output:0*
T0*
_output_shapes
: 2
self_attention_mask/ones/Less?
!self_attention_mask/ones/packed/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!self_attention_mask/ones/packed/2?
self_attention_mask/ones/packedPack*self_attention_mask/strided_slice:output:0,self_attention_mask/strided_slice_1:output:0*self_attention_mask/ones/packed/2:output:0*
N*
T0*
_output_shapes
:2!
self_attention_mask/ones/packed?
self_attention_mask/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
self_attention_mask/ones/Const?
self_attention_mask/onesFill(self_attention_mask/ones/packed:output:0'self_attention_mask/ones/Const:output:0*
T0*4
_output_shapes"
 :??????????????????2
self_attention_mask/ones?
self_attention_mask/mulMul!self_attention_mask/ones:output:0self_attention_mask/Cast:y:0*
T0*=
_output_shapes+
):'???????????????????????????2
self_attention_mask/mul?
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_layer_0_self_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:*
dtype02G
Etransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp?
6transformer/layer_0/self_attention/query/einsum/EinsumEinsumdropout/Identity:output:0Mtransformer/layer_0/self_attention/query/einsum/Einsum/ReadVariableOp:value:0*
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
4transformer/layer_0/self_attention/key/einsum/EinsumEinsumdropout/Identity:output:0Ktransformer/layer_0/self_attention/key/einsum/Einsum/ReadVariableOp:value:0*
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
6transformer/layer_0/self_attention/value/einsum/EinsumEinsumdropout/Identity:output:0Mtransformer/layer_0/self_attention/value/einsum/Einsum/ReadVariableOp:value:0*
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
ExpandDimsself_attention_mask/mul:z:0Itransformer/layer_0/self_attention/masked_softmax/ExpandDims/dim:output:0*
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
transformer/layer_0/addAddV2dropout/Identity:output:0/transformer/layer_0/dropout_1/Identity:output:0*
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
lambda/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
lambda/strided_slice/stack?
lambda/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
lambda/strided_slice/stack_1?
lambda/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
lambda/strided_slice/stack_2?
lambda/strided_sliceStridedSlice9transformer/layer_0/output_layer_norm/batchnorm/add_1:z:0#lambda/strided_slice/stack:output:0%lambda/strided_slice/stack_1:output:0%lambda/strided_slice/stack_2:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*

begin_mask*
end_mask2
lambda/strided_slice?
lambda/SqueezeSqueezelambda/strided_slice:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
lambda/Squeeze?
&pooler_transform/MatMul/ReadVariableOpReadVariableOp/pooler_transform_matmul_readvariableop_resource*
_output_shapes

:*
dtype02(
&pooler_transform/MatMul/ReadVariableOp?
pooler_transform/MatMulMatMullambda/Squeeze:output:0.pooler_transform/MatMul/ReadVariableOp:value:0*
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
]
A__inference_lambda_layer_call_and_return_conditional_losses_10971

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
?
?
M__inference_position_embedding_layer_call_and_return_conditional_losses_10433

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
`
'__inference_dropout_layer_call_fn_13100

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
GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_105432
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
?
?
3__inference_transformer_encoder_layer_call_fn_11313
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
GPU 2J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_112622
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
?
#__inference_signature_wrapper_11812

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
GPU 2J 8? *)
f$R"
 __inference__wrapped_model_103782
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
??
?	
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_11144

inputs
inputs_1
inputs_2
word_embeddings_11086
position_embedding_11089
type_embeddings_11092
embeddings_layer_norm_11096
embeddings_layer_norm_11098
transformer_layer_0_11103
transformer_layer_0_11105
transformer_layer_0_11107
transformer_layer_0_11109
transformer_layer_0_11111
transformer_layer_0_11113
transformer_layer_0_11115
transformer_layer_0_11117
transformer_layer_0_11119
transformer_layer_0_11121
transformer_layer_0_11123
transformer_layer_0_11125
transformer_layer_0_11127
transformer_layer_0_11129
transformer_layer_0_11131
transformer_layer_0_11133
pooler_transform_11137
pooler_transform_11139
identity

identity_1??dropout/StatefulPartitionedCall?-embeddings/layer_norm/StatefulPartitionedCall?(pooler_transform/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?+transformer/layer_0/StatefulPartitionedCall?'type_embeddings/StatefulPartitionedCall?'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputsword_embeddings_11086*
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
GPU 2J 8? *S
fNRL
J__inference_word_embeddings_layer_call_and_return_conditional_losses_103982)
'word_embeddings/StatefulPartitionedCall?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_11089*
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
GPU 2J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_104332,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinputs_2type_embeddings_11092*
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
GPU 2J 8? *S
fNRL
J__inference_type_embeddings_layer_call_and_return_conditional_losses_104632)
'type_embeddings/StatefulPartitionedCall?
add/PartitionedCallPartitionedCall0word_embeddings/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:00type_embeddings/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_104832
add/PartitionedCall?
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0embeddings_layer_norm_11096embeddings_layer_norm_11098*
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
GPU 2J 8? *Y
fTRR
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_105152/
-embeddings/layer_norm/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall6embeddings/layer_norm/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_105432!
dropout/StatefulPartitionedCall?
#self_attention_mask/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0inputs_1*
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
GPU 2J 8? *W
fRRP
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_105982%
#self_attention_mask/PartitionedCall?
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0,self_attention_mask/PartitionedCall:output:0transformer_layer_0_11103transformer_layer_0_11105transformer_layer_0_11107transformer_layer_0_11109transformer_layer_0_11111transformer_layer_0_11113transformer_layer_0_11115transformer_layer_0_11117transformer_layer_0_11119transformer_layer_0_11121transformer_layer_0_11123transformer_layer_0_11125transformer_layer_0_11127transformer_layer_0_11129transformer_layer_0_11131transformer_layer_0_11133*
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
GPU 2J 8? *W
fRRP
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_107352-
+transformer/layer_0/StatefulPartitionedCall?
lambda/PartitionedCallPartitionedCall4transformer/layer_0/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_109622
lambda/PartitionedCall?
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0pooler_transform_11137pooler_transform_11139*
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
GPU 2J 8? *T
fORM
K__inference_pooler_transform_layer_call_and_return_conditional_losses_109952*
(pooler_transform/StatefulPartitionedCall?
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2^
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
?$
x
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_10598

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
?
?
@__inference_model_layer_call_and_return_conditional_losses_11704

inputs
inputs_1
inputs_2
transformer_encoder_11654
transformer_encoder_11656
transformer_encoder_11658
transformer_encoder_11660
transformer_encoder_11662
transformer_encoder_11664
transformer_encoder_11666
transformer_encoder_11668
transformer_encoder_11670
transformer_encoder_11672
transformer_encoder_11674
transformer_encoder_11676
transformer_encoder_11678
transformer_encoder_11680
transformer_encoder_11682
transformer_encoder_11684
transformer_encoder_11686
transformer_encoder_11688
transformer_encoder_11690
transformer_encoder_11692
transformer_encoder_11694
transformer_encoder_11696
transformer_encoder_11698
identity

identity_1??+transformer_encoder/StatefulPartitionedCall?
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2transformer_encoder_11654transformer_encoder_11656transformer_encoder_11658transformer_encoder_11660transformer_encoder_11662transformer_encoder_11664transformer_encoder_11666transformer_encoder_11668transformer_encoder_11670transformer_encoder_11672transformer_encoder_11674transformer_encoder_11676transformer_encoder_11678transformer_encoder_11680transformer_encoder_11682transformer_encoder_11684transformer_encoder_11686transformer_encoder_11688transformer_encoder_11690transformer_encoder_11692transformer_encoder_11694transformer_encoder_11696transformer_encoder_11698*%
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
GPU 2J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_112622-
+transformer_encoder/StatefulPartitionedCall?
IdentityIdentity4transformer_encoder/StatefulPartitionedCall:output:1,^transformer_encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity4transformer_encoder/StatefulPartitionedCall:output:0,^transformer_encoder/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:X T
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
?$
z
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_13142
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
?
B
&__inference_lambda_layer_call_fn_13482

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
GPU 2J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_109622
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
?
x
2__inference_position_embedding_layer_call_fn_13007

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
GPU 2J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_104332
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
?
?
%__inference_model_layer_call_fn_11645
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
GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_115942
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
?>
?
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_11076
input_word_ids

input_mask
input_type_ids
word_embeddings_11018
position_embedding_11021
type_embeddings_11024
embeddings_layer_norm_11028
embeddings_layer_norm_11030
transformer_layer_0_11035
transformer_layer_0_11037
transformer_layer_0_11039
transformer_layer_0_11041
transformer_layer_0_11043
transformer_layer_0_11045
transformer_layer_0_11047
transformer_layer_0_11049
transformer_layer_0_11051
transformer_layer_0_11053
transformer_layer_0_11055
transformer_layer_0_11057
transformer_layer_0_11059
transformer_layer_0_11061
transformer_layer_0_11063
transformer_layer_0_11065
pooler_transform_11069
pooler_transform_11071
identity

identity_1??-embeddings/layer_norm/StatefulPartitionedCall?(pooler_transform/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?+transformer/layer_0/StatefulPartitionedCall?'type_embeddings/StatefulPartitionedCall?'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_word_idsword_embeddings_11018*
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
GPU 2J 8? *S
fNRL
J__inference_word_embeddings_layer_call_and_return_conditional_losses_103982)
'word_embeddings/StatefulPartitionedCall?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_11021*
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
GPU 2J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_104332,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_type_idstype_embeddings_11024*
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
GPU 2J 8? *S
fNRL
J__inference_type_embeddings_layer_call_and_return_conditional_losses_104632)
'type_embeddings/StatefulPartitionedCall?
add/PartitionedCallPartitionedCall0word_embeddings/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:00type_embeddings/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_104832
add/PartitionedCall?
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0embeddings_layer_norm_11028embeddings_layer_norm_11030*
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
GPU 2J 8? *Y
fTRR
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_105152/
-embeddings/layer_norm/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall6embeddings/layer_norm/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_105482
dropout/PartitionedCall?
#self_attention_mask/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0
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
GPU 2J 8? *W
fRRP
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_105982%
#self_attention_mask/PartitionedCall?
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0,self_attention_mask/PartitionedCall:output:0transformer_layer_0_11035transformer_layer_0_11037transformer_layer_0_11039transformer_layer_0_11041transformer_layer_0_11043transformer_layer_0_11045transformer_layer_0_11047transformer_layer_0_11049transformer_layer_0_11051transformer_layer_0_11053transformer_layer_0_11055transformer_layer_0_11057transformer_layer_0_11059transformer_layer_0_11061transformer_layer_0_11063transformer_layer_0_11065*
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
GPU 2J 8? *W
fRRP
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_108422-
+transformer/layer_0/StatefulPartitionedCall?
lambda/PartitionedCallPartitionedCall4transformer/layer_0/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_109712
lambda/PartitionedCall?
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0pooler_transform_11069pooler_transform_11071*
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
GPU 2J 8? *T
fORM
K__inference_pooler_transform_layer_call_and_return_conditional_losses_109952*
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
?	
]
A__inference_lambda_layer_call_and_return_conditional_losses_10962

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
?
?
%__inference_model_layer_call_fn_12329
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
GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_115942
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
?@
?	
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_11013
input_word_ids

input_mask
input_type_ids
word_embeddings_10407
position_embedding_10442
type_embeddings_10472
embeddings_layer_norm_10526
embeddings_layer_norm_10528
transformer_layer_0_10920
transformer_layer_0_10922
transformer_layer_0_10924
transformer_layer_0_10926
transformer_layer_0_10928
transformer_layer_0_10930
transformer_layer_0_10932
transformer_layer_0_10934
transformer_layer_0_10936
transformer_layer_0_10938
transformer_layer_0_10940
transformer_layer_0_10942
transformer_layer_0_10944
transformer_layer_0_10946
transformer_layer_0_10948
transformer_layer_0_10950
pooler_transform_11006
pooler_transform_11008
identity

identity_1??dropout/StatefulPartitionedCall?-embeddings/layer_norm/StatefulPartitionedCall?(pooler_transform/StatefulPartitionedCall?*position_embedding/StatefulPartitionedCall?+transformer/layer_0/StatefulPartitionedCall?'type_embeddings/StatefulPartitionedCall?'word_embeddings/StatefulPartitionedCall?
'word_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_word_idsword_embeddings_10407*
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
GPU 2J 8? *S
fNRL
J__inference_word_embeddings_layer_call_and_return_conditional_losses_103982)
'word_embeddings/StatefulPartitionedCall?
*position_embedding/StatefulPartitionedCallStatefulPartitionedCall0word_embeddings/StatefulPartitionedCall:output:0position_embedding_10442*
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
GPU 2J 8? *V
fQRO
M__inference_position_embedding_layer_call_and_return_conditional_losses_104332,
*position_embedding/StatefulPartitionedCall?
'type_embeddings/StatefulPartitionedCallStatefulPartitionedCallinput_type_idstype_embeddings_10472*
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
GPU 2J 8? *S
fNRL
J__inference_type_embeddings_layer_call_and_return_conditional_losses_104632)
'type_embeddings/StatefulPartitionedCall?
add/PartitionedCallPartitionedCall0word_embeddings/StatefulPartitionedCall:output:03position_embedding/StatefulPartitionedCall:output:00type_embeddings/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_104832
add/PartitionedCall?
-embeddings/layer_norm/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0embeddings_layer_norm_10526embeddings_layer_norm_10528*
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
GPU 2J 8? *Y
fTRR
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_105152/
-embeddings/layer_norm/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall6embeddings/layer_norm/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_105432!
dropout/StatefulPartitionedCall?
#self_attention_mask/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0
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
GPU 2J 8? *W
fRRP
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_105982%
#self_attention_mask/PartitionedCall?
+transformer/layer_0/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0,self_attention_mask/PartitionedCall:output:0transformer_layer_0_10920transformer_layer_0_10922transformer_layer_0_10924transformer_layer_0_10926transformer_layer_0_10928transformer_layer_0_10930transformer_layer_0_10932transformer_layer_0_10934transformer_layer_0_10936transformer_layer_0_10938transformer_layer_0_10940transformer_layer_0_10942transformer_layer_0_10944transformer_layer_0_10946transformer_layer_0_10948transformer_layer_0_10950*
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
GPU 2J 8? *W
fRRP
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_107352-
+transformer/layer_0/StatefulPartitionedCall?
lambda/PartitionedCallPartitionedCall4transformer/layer_0/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_109622
lambda/PartitionedCall?
(pooler_transform/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0pooler_transform_11006pooler_transform_11008*
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
GPU 2J 8? *T
fORM
K__inference_pooler_transform_layer_call_and_return_conditional_losses_109952*
(pooler_transform/StatefulPartitionedCall?
IdentityIdentity4transformer/layer_0/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity?

Identity_1Identity1pooler_transform/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall.^embeddings/layer_norm/StatefulPartitionedCall)^pooler_transform/StatefulPartitionedCall+^position_embedding/StatefulPartitionedCall,^transformer/layer_0/StatefulPartitionedCall(^type_embeddings/StatefulPartitionedCall(^word_embeddings/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2^
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
?
%__inference_model_layer_call_fn_12384
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
GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_117042
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
?
?
3__inference_transformer/layer_0_layer_call_fn_13421
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
GPU 2J 8? *W
fRRP
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_108422
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
?
?
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_10515

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
]
A__inference_lambda_layer_call_and_return_conditional_losses_13477

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
?
a
B__inference_dropout_layer_call_and_return_conditional_losses_10543

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
?
_
3__inference_self_attention_mask_layer_call_fn_13148
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
GPU 2J 8? *W
fRRP
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_105982
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
?	
]
A__inference_lambda_layer_call_and_return_conditional_losses_13468

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
??
?
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_10735

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
?
?
@__inference_model_layer_call_and_return_conditional_losses_11594

inputs
inputs_1
inputs_2
transformer_encoder_11544
transformer_encoder_11546
transformer_encoder_11548
transformer_encoder_11550
transformer_encoder_11552
transformer_encoder_11554
transformer_encoder_11556
transformer_encoder_11558
transformer_encoder_11560
transformer_encoder_11562
transformer_encoder_11564
transformer_encoder_11566
transformer_encoder_11568
transformer_encoder_11570
transformer_encoder_11572
transformer_encoder_11574
transformer_encoder_11576
transformer_encoder_11578
transformer_encoder_11580
transformer_encoder_11582
transformer_encoder_11584
transformer_encoder_11586
transformer_encoder_11588
identity

identity_1??+transformer_encoder/StatefulPartitionedCall?
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2transformer_encoder_11544transformer_encoder_11546transformer_encoder_11548transformer_encoder_11550transformer_encoder_11552transformer_encoder_11554transformer_encoder_11556transformer_encoder_11558transformer_encoder_11560transformer_encoder_11562transformer_encoder_11564transformer_encoder_11566transformer_encoder_11568transformer_encoder_11570transformer_encoder_11572transformer_encoder_11574transformer_encoder_11576transformer_encoder_11578transformer_encoder_11580transformer_encoder_11582transformer_encoder_11584transformer_encoder_11586transformer_encoder_11588*%
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
GPU 2J 8? *W
fRRP
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_111442-
+transformer_encoder/StatefulPartitionedCall?
IdentityIdentity4transformer_encoder/StatefulPartitionedCall:output:1,^transformer_encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity4transformer_encoder/StatefulPartitionedCall:output:0,^transformer_encoder/StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes?
?:??????????????????:??????????????????:??????????????????:::::::::::::::::::::::2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:X T
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
%__inference_model_layer_call_fn_11755
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
GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_117042
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
_user_specified_nameinput_type_ids"?L
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
 serving_default_input_word_ids:0??????????????????G
transformer_encoder0
StatefulPartitionedCall:0?????????V
transformer_encoder_1=
StatefulPartitionedCall:1??????????????????tensorflow/serving/predict20

asset_path_initializer:0__tokenizer_type__2)

asset_path_initializer_1:0	vocab.txt:??
?#
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
do_lower_case
tokenizer_type
tokenizer_file
regularization_losses
		variables

trainable_variables
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"? 
_tf_keras_network? {"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}, "name": "input_word_ids", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}, "name": "input_mask", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}, "name": "input_type_ids", "inbound_nodes": []}, {"class_name": "Text>TransformerEncoder", "config": {"vocab_size": 100, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 16, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "name": "transformer_encoder", "inbound_nodes": [[["input_word_ids", 0, 0, {}], ["input_mask", 0, 0, {}], ["input_type_ids", 0, 0, {}]]]}], "input_layers": [["input_word_ids", 0, 0], ["input_mask", 0, 0], ["input_type_ids", 0, 0]], "output_layers": [["transformer_encoder", 1, 1], ["transformer_encoder", 1, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_word_ids"}, "name": "input_word_ids", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}, "name": "input_mask", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}, "name": "input_type_ids", "inbound_nodes": []}, {"class_name": "Text>TransformerEncoder", "config": {"vocab_size": 100, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 16, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "name": "transformer_encoder", "inbound_nodes": [[["input_word_ids", 0, 0, {}], ["input_mask", 0, 0, {}], ["input_type_ids", 0, 0, {}]]]}], "input_layers": [["input_word_ids", 0, 0], ["input_mask", 0, 0], ["input_type_ids", 0, 0]], "output_layers": [["transformer_encoder", 1, 1], ["transformer_encoder", 1, 0]]}}}
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
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_network?{"class_name": "Text>TransformerEncoder", "name": "transformer_encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"vocab_size": 100, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 16, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}, {"class_name": "TensorShape", "items": [null, null]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "TransformerEncoder", "config": {"vocab_size": 100, "hidden_size": 16, "num_layers": 1, "num_attention_heads": 2, "sequence_length": null, "max_sequence_length": 16, "type_vocab_size": 16, "intermediate_size": 32, "activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "return_all_encoder_outputs": false, "output_range": null, "embedding_width": null}}}
:
 2Variable
* 
*
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
422
23"
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
5non_trainable_variables
regularization_losses

6layers
		variables
7layer_metrics
8metrics
9layer_regularization_losses
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
:regularization_losses
;	variables
<trainable_variables
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>OnDeviceEmbedding", "name": "word_embeddings", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "word_embeddings", "trainable": true, "dtype": "float32", "vocab_size": 100, "embedding_width": 16, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "__passive_serialization__": true}, "use_one_hot": false}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_type_ids", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_type_ids"}}
?

embeddings
_position_embeddings
>regularization_losses
?	variables
@trainable_variables
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>PositionEmbedding", "name": "position_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "position_embedding", "trainable": true, "dtype": "float32", "max_sequence_length": 16, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "use_dynamic_slicing": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
 
embeddings
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>OnDeviceEmbedding", "name": "type_embeddings", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "type_embeddings", "trainable": true, "dtype": "float32", "vocab_size": 16, "embedding_width": 16, "initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}, "__passive_serialization__": true}, "use_one_hot": true}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
?
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Add", "name": "add", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, 16]}]}
?
Jaxis
	!gamma
"beta
Kregularization_losses
L	variables
Mtrainable_variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "embeddings/layer_norm", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "embeddings/layer_norm", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-12, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_mask", "dtype": "int32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int32", "sparse": false, "ragged": false, "name": "input_mask"}}
?
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>SelfAttentionMask", "name": "self_attention_mask", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "self_attention_mask", "trainable": true, "dtype": "float32"}}
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
`regularization_losses
a	variables
btrainable_variables
c	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>Transformer", "name": "transformer/layer_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "transformer/layer_0", "trainable": true, "dtype": "float32", "num_attention_heads": 2, "intermediate_size": 32, "intermediate_activation": "Text>gelu", "dropout_rate": 0.1, "attention_dropout_rate": 0.1, "output_range": null, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, null, 16]}, {"class_name": "TensorShape", "items": [null, null, null]}]}
?
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Lambda", "name": "lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAYAAABTAAAAcyQAAAB0AGoBfABkAGQAhQJkAWQChQJkAGQAhQJmAxkAZAJk\nA40CUwApBE7pAAAAAOkBAAAAKQHaBGF4aXMpAtoCdGbaB3NxdWVlemUpAdoBeKkAcgcAAAD6cS9o\nb21lL3poaXd3YW5nL3NpZGUtcHJvamVjdHMvbGliZXJ0LXRmMl90cnVuay90Zi1tb2RlbHMvc3Jj\nL29mZmljaWFsL25scC9tb2RlbGluZy9uZXR3b3Jrcy90cmFuc2Zvcm1lcl9lbmNvZGVyLnB52gg8\nbGFtYmRhPsgAAADzAAAAAA==\n", null, null]}, "function_type": "lambda", "module": "official.nlp.modeling.networks.transformer_encoder", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
?

3kernel
4bias
hregularization_losses
i	variables
jtrainable_variables
k	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "pooler_transform", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "pooler_transform", "trainable": true, "dtype": "float32", "units": 16, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
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
lnon_trainable_variables
regularization_losses

mlayers
	variables
nlayer_metrics
ometrics
player_regularization_losses
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*d2word_embeddings/embeddings
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
'
0"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
qnon_trainable_variables
:regularization_losses

rlayers
;	variables
slayer_metrics
tmetrics
ulayer_regularization_losses
<trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
vnon_trainable_variables
>regularization_losses

wlayers
?	variables
xlayer_metrics
ymetrics
zlayer_regularization_losses
@trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
?
{non_trainable_variables
Bregularization_losses

|layers
C	variables
}layer_metrics
~metrics
layer_regularization_losses
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
?non_trainable_variables
Fregularization_losses
?layers
G	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
Htrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
?non_trainable_variables
Kregularization_losses
?layers
L	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?non_trainable_variables
Oregularization_losses
?layers
P	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?non_trainable_variables
Sregularization_losses
?layers
T	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?regularization_losses
?	variables
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
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 16], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 2, 8]}}
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
	?axis
	+gamma
,beta
?regularization_losses
?	variables
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
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>DenseEinsum", "name": "intermediate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "intermediate", "trainable": true, "dtype": "float32", "output_shape": {"class_name": "__tuple__", "items": [32]}, "num_summed_dimensions": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
?regularization_losses
?	variables
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
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>DenseEinsum", "name": "output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output", "trainable": true, "dtype": "float32", "output_shape": {"class_name": "__tuple__", "items": [16]}, "num_summed_dimensions": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 32]}}
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
?
	?axis
	1gamma
2beta
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "LayerNormalization", "name": "output_layer_norm", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "output_layer_norm", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-12, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
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
?non_trainable_variables
`regularization_losses
?layers
a	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?non_trainable_variables
dregularization_losses
?layers
e	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
ftrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
?non_trainable_variables
hregularization_losses
?layers
i	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
jtrainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
?
?partial_output_shape
?full_output_shape

#kernel
$bias
?regularization_losses
?	variables
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
?regularization_losses
?	variables
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
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "EinsumDense", "name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 2, 8], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "TruncatedNormal", "config": {"mean": 0.0, "stddev": 0.02, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 16]}}
?
?_mask_expansion_axes
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Text>MaskedSoftmax", "name": "masked_softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "masked_softmax", "trainable": true, "dtype": "float32", "mask_expansion_axes": [1], "normalization_axes": {"class_name": "__tuple__", "items": [3]}}}
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
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
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
?
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
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
?non_trainable_variables
?regularization_losses
?layers
?	variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
O
?0
?1
?2
?3
?4
X5"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
%__inference_model_layer_call_fn_11755
%__inference_model_layer_call_fn_12384
%__inference_model_layer_call_fn_11645
%__inference_model_layer_call_fn_12329?
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
?2?
 __inference__wrapped_model_10378?
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
?2?
@__inference_model_layer_call_and_return_conditional_losses_12057
@__inference_model_layer_call_and_return_conditional_losses_12274
@__inference_model_layer_call_and_return_conditional_losses_11479
@__inference_model_layer_call_and_return_conditional_losses_11534?
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
3__inference_transformer_encoder_layer_call_fn_12901
3__inference_transformer_encoder_layer_call_fn_12956
3__inference_transformer_encoder_layer_call_fn_11195
3__inference_transformer_encoder_layer_call_fn_11313?
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
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_12846
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_12629
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_11013
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_11076?
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
#__inference_signature_wrapper_11812
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
/__inference_word_embeddings_layer_call_fn_12977?
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
J__inference_word_embeddings_layer_call_and_return_conditional_losses_12970?
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
2__inference_position_embedding_layer_call_fn_13007?
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
M__inference_position_embedding_layer_call_and_return_conditional_losses_13000?
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
/__inference_type_embeddings_layer_call_fn_13032?
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
J__inference_type_embeddings_layer_call_and_return_conditional_losses_13025?
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
#__inference_add_layer_call_fn_13047?
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
>__inference_add_layer_call_and_return_conditional_losses_13040?
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
5__inference_embeddings/layer_norm_layer_call_fn_13078?
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
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_13069?
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
'__inference_dropout_layer_call_fn_13105
'__inference_dropout_layer_call_fn_13100?
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
B__inference_dropout_layer_call_and_return_conditional_losses_13090
B__inference_dropout_layer_call_and_return_conditional_losses_13095?
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
3__inference_self_attention_mask_layer_call_fn_13148?
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
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_13142?
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
3__inference_transformer/layer_0_layer_call_fn_13421
3__inference_transformer/layer_0_layer_call_fn_13459?
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
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_13383
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_13276?
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
&__inference_lambda_layer_call_fn_13482
&__inference_lambda_layer_call_fn_13487?
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
A__inference_lambda_layer_call_and_return_conditional_losses_13468
A__inference_lambda_layer_call_and_return_conditional_losses_13477?
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
0__inference_pooler_transform_layer_call_fn_13507?
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
K__inference_pooler_transform_layer_call_and_return_conditional_losses_13498?
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
 __inference__wrapped_model_10378? !"#$%&'()*+,-./01234???
???
???
1?.
input_word_ids??????????????????
-?*

input_mask??????????????????
1?.
input_type_ids??????????????????
? "???
D
transformer_encoder-?*
transformer_encoder?????????
U
transformer_encoder_1<?9
transformer_encoder_1???????????????????
>__inference_add_layer_call_and_return_conditional_losses_13040????
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
#__inference_add_layer_call_fn_13047????
???
???
/?,
inputs/0??????????????????
/?,
inputs/1??????????????????
/?,
inputs/2??????????????????
? "%?"???????????????????
B__inference_dropout_layer_call_and_return_conditional_losses_13090v@?=
6?3
-?*
inputs??????????????????
p
? "2?/
(?%
0??????????????????
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_13095v@?=
6?3
-?*
inputs??????????????????
p 
? "2?/
(?%
0??????????????????
? ?
'__inference_dropout_layer_call_fn_13100i@?=
6?3
-?*
inputs??????????????????
p
? "%?"???????????????????
'__inference_dropout_layer_call_fn_13105i@?=
6?3
-?*
inputs??????????????????
p 
? "%?"???????????????????
P__inference_embeddings/layer_norm_layer_call_and_return_conditional_losses_13069v!"<?9
2?/
-?*
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
5__inference_embeddings/layer_norm_layer_call_fn_13078i!"<?9
2?/
-?*
inputs??????????????????
? "%?"???????????????????
A__inference_lambda_layer_call_and_return_conditional_losses_13468mD?A
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
A__inference_lambda_layer_call_and_return_conditional_losses_13477mD?A
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
&__inference_lambda_layer_call_fn_13482`D?A
:?7
-?*
inputs??????????????????

 
p
? "???????????
&__inference_lambda_layer_call_fn_13487`D?A
:?7
-?*
inputs??????????????????

 
p 
? "???????????
@__inference_model_layer_call_and_return_conditional_losses_11479? !"#$%&'()*+,-./01234???
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
@__inference_model_layer_call_and_return_conditional_losses_11534? !"#$%&'()*+,-./01234???
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
@__inference_model_layer_call_and_return_conditional_losses_12057? !"#$%&'()*+,-./01234???
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
@__inference_model_layer_call_and_return_conditional_losses_12274? !"#$%&'()*+,-./01234???
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
%__inference_model_layer_call_fn_11645? !"#$%&'()*+,-./01234???
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
%__inference_model_layer_call_fn_11755? !"#$%&'()*+,-./01234???
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
%__inference_model_layer_call_fn_12329? !"#$%&'()*+,-./01234???
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
%__inference_model_layer_call_fn_12384? !"#$%&'()*+,-./01234???
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
K__inference_pooler_transform_layer_call_and_return_conditional_losses_13498\34/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
0__inference_pooler_transform_layer_call_fn_13507O34/?,
%?"
 ?
inputs?????????
? "???????????
M__inference_position_embedding_layer_call_and_return_conditional_losses_13000u<?9
2?/
-?*
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
2__inference_position_embedding_layer_call_fn_13007h<?9
2?/
-?*
inputs??????????????????
? "%?"???????????????????
N__inference_self_attention_mask_layer_call_and_return_conditional_losses_13142?p?m
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
3__inference_self_attention_mask_layer_call_fn_13148?p?m
f?c
a?^
/?,
inputs/0??????????????????
+?(
inputs/1??????????????????
? ".?+'????????????????????????????
#__inference_signature_wrapper_11812? !"#$%&'()*+,-./01234???
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
D
transformer_encoder-?*
transformer_encoder?????????
U
transformer_encoder_1<?9
transformer_encoder_1???????????????????
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_13276?#$%&'()*+,-./012??~
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
N__inference_transformer/layer_0_layer_call_and_return_conditional_losses_13383?#$%&'()*+,-./012??~
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
3__inference_transformer/layer_0_layer_call_fn_13421?#$%&'()*+,-./012??~
w?t
n?k
/?,
inputs/0??????????????????
8?5
inputs/1'???????????????????????????
p
? "%?"???????????????????
3__inference_transformer/layer_0_layer_call_fn_13459?#$%&'()*+,-./012??~
w?t
n?k
/?,
inputs/0??????????????????
8?5
inputs/1'???????????????????????????
p 
? "%?"???????????????????
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_11013? !"#$%&'()*+,-./01234???
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
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_11076? !"#$%&'()*+,-./01234???
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
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_12629? !"#$%&'()*+,-./01234???
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
N__inference_transformer_encoder_layer_call_and_return_conditional_losses_12846? !"#$%&'()*+,-./01234???
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
3__inference_transformer_encoder_layer_call_fn_11195? !"#$%&'()*+,-./01234???
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
3__inference_transformer_encoder_layer_call_fn_11313? !"#$%&'()*+,-./01234???
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
3__inference_transformer_encoder_layer_call_fn_12901? !"#$%&'()*+,-./01234???
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
3__inference_transformer_encoder_layer_call_fn_12956? !"#$%&'()*+,-./01234???
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
J__inference_type_embeddings_layer_call_and_return_conditional_losses_13025q 8?5
.?+
)?&
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
/__inference_type_embeddings_layer_call_fn_13032d 8?5
.?+
)?&
inputs??????????????????
? "%?"???????????????????
J__inference_word_embeddings_layer_call_and_return_conditional_losses_12970q8?5
.?+
)?&
inputs??????????????????
? "2?/
(?%
0??????????????????
? ?
/__inference_word_embeddings_layer_call_fn_12977d8?5
.?+
)?&
inputs??????????????????
? "%?"??????????????????