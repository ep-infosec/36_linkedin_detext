??

??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.02v1.9.0-rc1-64262-g7100d508??	
r
w_embeddingVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namew_embedding
k
w_embedding/Read/ReadVariableOpReadVariableOpw_embedding*
_output_shapes

:
*
dtype0
?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? *0
f+R)
'__inference_restored_function_body_8619
?
StatefulPartitionedCall_1StatefulPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? *0
f+R)
'__inference_restored_function_body_8624
G
ConstConst*
_output_shapes
: *
dtype0*
value	B : 
M
Const_1Const*
_output_shapes
: *
dtype0*
valueB B[UNK]
?
Const_2Const*
_output_shapes
:*
dtype0*?
valuewBuB[UNK]B[CLS]B[SEP]B[PAD]BbuildBwordBfunctionBableBtestBthisBisBaBsourceBsentenceBtargetBtoken
I
Const_3Const*
_output_shapes
: *
dtype0*
value	B :
?
Const_4Const*
_output_shapes
:*
dtype0*U
valueLBJ"@                            	   
                  
I
Const_5Const*
_output_shapes
: *
dtype0*
value	B :
?
Const_6Const*
_output_shapes
:*
dtype0*?
valuewBuB[UNK]B[CLS]B[SEP]B[PAD]BbuildBwordBfunctionBableBtestBthisBisBaBsourceBsentenceBtargetBtoken
?
Const_7Const*
_output_shapes
:*
dtype0*U
valueLBJ"@                            	   
                  
?
Const_8Const*
_output_shapes
:*
dtype0*U
valueLBJ"@                            	   
                  
?
Const_9Const*
_output_shapes
:*
dtype0*?
valuewBuB[UNK]B[CLS]B[SEP]B[PAD]BbuildBwordBfunctionBableBtestBthisBisBaBsourceBsentenceBtargetBtoken
?
StatefulPartitionedCall_2StatefulPartitionedCallStatefulPartitionedCallConst_6Const_7*
Tin
2*
Tout
2*
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
GPU 2J 8? *"
fR
__inference_<lambda>_8590
?
StatefulPartitionedCall_3StatefulPartitionedCallStatefulPartitionedCall_1Const_8Const_9*
Tin
2*
Tout
2*
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
GPU 2J 8? *"
fR
__inference_<lambda>_8612
D
NoOpNoOp^StatefulPartitionedCall_2^StatefulPartitionedCall_3
?	
Const_10Const"/device:CPU:0*
_output_shapes
: *
dtype0*?	
value?	B?	 B?	
?
	_func
	_callable
w_embedding:0
	variables
regularization_losses
trainable_variables
	keras_api

signatures
?
vocab_layer
	embedding
		variables

regularization_losses
trainable_variables
	keras_api

signatures
#_self_saveable_object_factories
IG
VARIABLE_VALUEw_embedding(w_embedding:0/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?

layers
layer_metrics
	variables
metrics
regularization_losses
layer_regularization_losses
non_trainable_variables
trainable_variables
 
?
_vocab_table_initializer
vocab_table
$ _inverse_vocab_table_initializer
inverse_vocab_table
py_vocab_table
	keras_api
#_self_saveable_object_factories

0
 

0
?

layers
layer_metrics
		variables
metrics

regularization_losses
layer_regularization_losses
non_trainable_variables
trainable_variables
# _self_saveable_object_factories
 
 
 
 
 
 
 
%
#!_self_saveable_object_factories
 
%
#"_self_saveable_object_factories
 
 
%
##_self_saveable_object_factories
 

0
 
 
 
 
 
 
 
 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenamew_embedding/Read/ReadVariableOpConst_10*
Tin
2*
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
__inference__traced_save_8658
?
StatefulPartitionedCall_5StatefulPartitionedCallsaver_filenamew_embedding*
Tin
2*
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
 __inference__traced_restore_8671??	
?
+
__inference_vocab_size_7757
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
__inference__initializer_75697
3key_value_init5027_lookuptableimportv2_table_handle/
+key_value_init5027_lookuptableimportv2_keys1
-key_value_init5027_lookuptableimportv2_values
identity??&key_value_init5027/LookupTableImportV2?
&key_value_init5027/LookupTableImportV2LookupTableImportV23key_value_init5027_lookuptableimportv2_table_handle+key_value_init5027_lookuptableimportv2_keys-key_value_init5027_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 2(
&key_value_init5027/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constz
IdentityIdentityConst:output:0'^key_value_init5027/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
:::2P
&key_value_init5027/LookupTableImportV2&key_value_init5027/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?

?
__inference_vocab_lookup_7598

inputs	
inputs_1
inputs_2	.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value
identity	

identity_1

identity_2	??None_Lookup/LookupTableFindV2?
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleinputs_1+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????2
None_Lookup/LookupTableFindV2z
IdentityIdentityinputs^None_Lookup/LookupTableFindV2*
T0	*'
_output_shapes
:?????????2

Identity?

Identity_1Identity&None_Lookup/LookupTableFindV2:values:0^None_Lookup/LookupTableFindV2*
T0*#
_output_shapes
:?????????2

Identity_1s

Identity_2Identityinputs_2^None_Lookup/LookupTableFindV2*
T0	*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*A
_input_shapes0
.:?????????:?????????::: 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:

_output_shapes
: 
?
4
__inference_values_7624
unknown
identity?
PartitionedCallPartitionedCallunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? * 
fR
__inference_values_76192
PartitionedCall_
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
::  

_output_shapes
:
?
+
__inference__destroyer_7532
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?K
U
__inference_tokenize_7740

inputs
identity	

identity_1

identity_2	g
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
StringSplit/Const?
StringSplit/StringSplitV2StringSplitV2inputsStringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:2
StringSplit/StringSplitV2?
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
StringSplit/strided_slice/stack?
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2#
!StringSplit/strided_slice/stack_1?
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!StringSplit/strided_slice/stack_2?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2
StringSplit/strided_slice?
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!StringSplit/strided_slice_1/stack?
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_1?
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#StringSplit/strided_slice_1/stack_2?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
StringSplit/strided_slice_1?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2D
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 2R
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2M
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :2N
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2L
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 2P
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2Q
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 2O
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2K
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2F
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
#RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparseMStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0"StringSplit/StringSplitV2:values:0*
RAGGED_RANK*
T0*<
_output_shapes*
(:?????????:?????????:2%
#RaggedToSparse/RaggedTensorToSparse?
IdentityIdentity4RaggedToSparse/RaggedTensorToSparse:sparse_indices:0*
T0	*'
_output_shapes
:?????????2

Identity?

Identity_1Identity3RaggedToSparse/RaggedTensorToSparse:sparse_values:0*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity8RaggedToSparse/RaggedTensorToSparse:sparse_dense_shape:0*
T0	*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*"
_input_shapes
:?????????:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8241
max_len
min_len
num_cls
num_sep
	sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?
StatefulPartitionedCallStatefulPartitionedCallmax_lenmin_lennum_clsnum_sep	sentencesunknown	unknown_0*
Tin
	2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_tokenize_to_indices_81452
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:1	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_embedding_lookup_75112
StatefulPartitionedCall_1?
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:? ;

_output_shapes
: 
!
_user_specified_name	max_len:?;

_output_shapes
: 
!
_user_specified_name	min_len:?;

_output_shapes
: 
!
_user_specified_name	num_cls:?;

_output_shapes
: 
!
_user_specified_name	num_sep:NJ
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
2
__inference_keys_7523
unknown
identityN
IdentityIdentityunknown*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
::  

_output_shapes
:
?

'__inference_restored_function_body_8602
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
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
__inference__initializer_75762
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
:::22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference_vocab_lookup_7611

inputs	
inputs_1
inputs_2	
unknown
	unknown_0
identity	

identity_1

identity_2	??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2unknown	unknown_0*
Tin	
2		*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:?????????:?????????:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference_vocab_lookup_75982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0	*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0	*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*A
_input_shapes0
.:?????????:?????????::: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
0__inference_embedding_layer_2_layer_call_fn_8177
inputs_max_len
inputs_min_len
inputs_num_cls
inputs_num_sep
inputs_sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_max_leninputs_min_leninputs_num_clsinputs_num_sepinputs_sentencesunknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:??????????????????
:?????????:??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_81612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes
: 
(
_user_specified_nameinputs/max_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/min_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_cls:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_sep:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/sentences:

_output_shapes
: 
?
4
__inference_values_7619
unknown
identityN
IdentityIdentityunknown*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
::  

_output_shapes
:
?

{
 __inference__traced_restore_8671
file_prefix 
assignvariableop_w_embedding

identity_2??AssignVariableOp?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*[
valueRBPB(w_embedding:0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_w_embeddingIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp9
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp{

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_1m

Identity_2IdentityIdentity_1:output:0^AssignVariableOp*
T0*
_output_shapes
: 2

Identity_2"!

identity_2Identity_2:output:0*
_input_shapes
: :2$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

?
I__inference_RaggedConcat_assert_equal_1_Assert_AssertGuard_true_5893_7503[
Wraggedconcat_assert_equal_1_assert_assertguard_identity_raggedconcat_assert_equal_1_all
>
:raggedconcat_assert_equal_1_assert_assertguard_placeholder	@
<raggedconcat_assert_equal_1_assert_assertguard_placeholder_1	=
9raggedconcat_assert_equal_1_assert_assertguard_identity_1
?
3RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 25
3RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOp?
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentityWraggedconcat_assert_equal_1_assert_assertguard_identity_raggedconcat_assert_equal_1_all4^RaggedConcat/assert_equal_1/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 29
7RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity?
9RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2;
9RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1"
9raggedconcat_assert_equal_1_assert_assertguard_identity_1BRaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
'
__inference_pad_id_7649
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
T
'__inference_restored_function_body_8624
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference__creator_76452
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
?
?
0__inference_embedding_layer_2_layer_call_fn_8209
inputs_max_len
inputs_min_len
inputs_num_cls
inputs_num_sep
inputs_sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_max_leninputs_min_leninputs_num_clsinputs_num_sepinputs_sentencesunknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:??????????????????
:?????????:??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_81612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes
: 
(
_user_specified_nameinputs/max_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/min_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_cls:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_sep:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/sentences:

_output_shapes
: 
?
9
__inference__creator_7562
identity??
hash_table?

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*$
shared_name5028_load_7496_7558*
use_node_name_sharing(*
value_dtype02

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 2

hash_table
hash_table
?
W
!__inference_adjust_len_right_7689

inputs
min_len
max_len
identity?
PartitionedCallPartitionedCallinputsmin_lenmax_len*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_adjust_len_right_76822
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????: : :X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:?;

_output_shapes
: 
!
_user_specified_name	min_len:?;

_output_shapes
: 
!
_user_specified_name	max_len
?
+
__inference__destroyer_7753
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?	
?
__inference_add_cls_sep_8327

inputs	
inputs_1
inputs_2	
num_cls
num_sep
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2num_clsnum_sep*
Tin	
2		*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_add_cls_sep_80902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????:?????????:: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:?;

_output_shapes
: 
!
_user_specified_name	num_cls:?;

_output_shapes
: 
!
_user_specified_name	num_sep
?
?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8257
inputs_max_len
inputs_min_len
inputs_num_cls
inputs_num_sep
inputs_sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?
StatefulPartitionedCallStatefulPartitionedCallinputs_max_leninputs_min_leninputs_num_clsinputs_num_sepinputs_sentencesunknown	unknown_0*
Tin
	2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_tokenize_to_indices_81452
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:1	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_embedding_lookup_75112
StatefulPartitionedCall_1?
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:F B

_output_shapes
: 
(
_user_specified_nameinputs/max_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/min_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_cls:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_sep:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/sentences:

_output_shapes
: 
?
4
__inference_sep_id_7697
unknown
identityJ
IdentityIdentityunknown*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : 

_output_shapes
: 
? 
W
!__inference_adjust_len_right_7682

inputs
min_len
max_len
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
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
strided_sliceS
subSubstrided_slice:output:0max_len*
T0*
_output_shapes
: 2
subX
	Maximum/xConst*
_output_shapes
: *
dtype0*
value	B : 2
	Maximum/x[
MaximumMaximumMaximum/x:output:0sub:z:0*
T0*
_output_shapes
: 2	
Maximumt
strided_slice_1/stack/0Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice_1/stack/0?
strided_slice_1/stackPack strided_slice_1/stack/0:output:0Maximum:z:0*
N*
T0*
_output_shapes
:2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2
strided_slice_1Z
Shape_1Shapestrided_slice_1:output:0*
T0*
_output_shapes
:2	
Shape_1?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
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
strided_slice_2Y
sub_1Submin_lenstrided_slice_2:output:0*
T0*
_output_shapes
: 2
sub_1\
Maximum_1/xConst*
_output_shapes
: *
dtype0*
value	B : 2
Maximum_1/xc
	Maximum_1MaximumMaximum_1/x:output:0	sub_1:z:0*
T0*
_output_shapes
: 2
	Maximum_1?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? * 
fR
__inference_pad_id_76492
PartitionedCallj
PadV2/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2
PadV2/paddings/1/0?
PadV2/paddings/1PackPadV2/paddings/1/0:output:0Maximum_1:z:0*
N*
T0*
_output_shapes
:2
PadV2/paddings/1y
PadV2/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2
PadV2/paddings/0_1?
PadV2/paddingsPackPadV2/paddings/0_1:output:0PadV2/paddings/1:output:0*
N*
T0*
_output_shapes

:2
PadV2/paddings?
PadV2PadV2strided_slice_1:output:0PadV2/paddings:output:0PartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2
PadV2k
IdentityIdentityPadV2:output:0*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????: : :X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:?;

_output_shapes
: 
!
_user_specified_name	min_len:?;

_output_shapes
: 
!
_user_specified_name	max_len
?
?
$__inference_tokenize_to_indices_8318
inputs_max_len
inputs_min_len
inputs_num_cls
inputs_num_sep
inputs_sentences
unknown
	unknown_0
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_max_leninputs_min_leninputs_num_clsinputs_num_sepinputs_sentencesunknown	unknown_0*
Tin
	2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference___call___81322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*0
_input_shapes
: : : : :?????????:: 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes
: 
(
_user_specified_nameinputs/max_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/min_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_cls:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_sep:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/sentences:

_output_shapes
: 
?
T
'__inference_restored_function_body_8619
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference__creator_75622
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 22
StatefulPartitionedCallStatefulPartitionedCall
?
q
__inference_<lambda>_8612
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
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
GPU 2J 8? *0
f+R)
'__inference_restored_function_body_86022
StatefulPartitionedCallS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Constk
IdentityIdentityConst:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
:::22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
:: 

_output_shapes
:
?

?
I__inference_RaggedConcat_assert_equal_3_Assert_AssertGuard_true_5923_7550[
Wraggedconcat_assert_equal_3_assert_assertguard_identity_raggedconcat_assert_equal_3_all
>
:raggedconcat_assert_equal_3_assert_assertguard_placeholder	@
<raggedconcat_assert_equal_3_assert_assertguard_placeholder_1	=
9raggedconcat_assert_equal_3_assert_assertguard_identity_1
?
3RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 25
3RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOp?
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentityWraggedconcat_assert_equal_3_assert_assertguard_identity_raggedconcat_assert_equal_3_all4^RaggedConcat/assert_equal_3/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 29
7RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity?
9RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 2;
9RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1"
9raggedconcat_assert_equal_3_assert_assertguard_identity_1BRaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?,
?
__inference___call___8132
max_len
min_len
num_cls
num_sep
	sentences
unknown
	unknown_0
identity

identity_1??StatefulPartitionedCall?StatefulPartitionedCall_1?
PartitionedCallPartitionedCall	sentences*
Tin
2*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:?????????:?????????:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference_tokenize_77402
PartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallPartitionedCall:output:0PartitionedCall:output:1PartitionedCall:output:2unknown	unknown_0*
Tin	
2		*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:?????????:?????????:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference_vocab_lookup_75982
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0 StatefulPartitionedCall:output:1 StatefulPartitionedCall:output:2num_clsnum_sep*
Tin	
2		*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *%
f R
__inference_add_cls_sep_80902
StatefulPartitionedCall_1{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stackt
strided_slice/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : 2
strided_slice/stack_1/0?
strided_slice/stack_1Pack strided_slice/stack_1/0:output:0max_len*
N*
T0*
_output_shapes
:2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSlice"StatefulPartitionedCall_1:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*0
_output_shapes
:??????????????????*

begin_mask*
end_mask2
strided_sliceT
ShapeShapestrided_slice:output:0*
T0*
_output_shapes
:2
Shape?
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
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
strided_slice_1U
subSubmin_lenstrided_slice_1:output:0*
T0*
_output_shapes
: 2
subX
	Maximum/xConst*
_output_shapes
: *
dtype0*
value	B : 2
	Maximum/x[
MaximumMaximumMaximum/x:output:0sub:z:0*
T0*
_output_shapes
: 2	
Maximum?
PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? * 
fR
__inference_pad_id_76492
PartitionedCall_1j
PadV2/paddings/1/0Const*
_output_shapes
: *
dtype0*
value	B : 2
PadV2/paddings/1/0?
PadV2/paddings/1PackPadV2/paddings/1/0:output:0Maximum:z:0*
N*
T0*
_output_shapes
:2
PadV2/paddings/1y
PadV2/paddings/0_1Const*
_output_shapes
:*
dtype0*
valueB"        2
PadV2/paddings/0_1?
PadV2/paddingsPackPadV2/paddings/0_1:output:0PadV2/paddings/1:output:0*
N*
T0*
_output_shapes

:2
PadV2/paddings?
PadV2PadV2strided_slice:output:0PadV2/paddings:output:0PartitionedCall_1:output:0*
T0*0
_output_shapes
:??????????????????2
PadV2?
PartitionedCall_2PartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? * 
fR
__inference_pad_id_76492
PartitionedCall_2?
NotEqualNotEqualPadV2:output:0PartitionedCall_2:output:0*
T0*0
_output_shapes
:??????????????????2

NotEquall
CastCastNotEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????????????2
Casty
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
Sum/reduction_indicesi
SumSumCast:y:0Sum/reduction_indices:output:0*
T0*#
_output_shapes
:?????????2
Sum?
IdentityIdentitySum:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*#
_output_shapes
:?????????2

Identity?

Identity_1IdentityPadV2:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*0
_output_shapes
:??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*0
_input_shapes
: : : : :?????????:: 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:? ;

_output_shapes
: 
!
_user_specified_name	max_len:?;

_output_shapes
: 
!
_user_specified_name	min_len:?;

_output_shapes
: 
!
_user_specified_name	num_cls:?;

_output_shapes
: 
!
_user_specified_name	num_sep:NJ
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
?
0__inference_embedding_layer_2_layer_call_fn_8225
max_len
min_len
num_cls
num_sep
	sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmax_lenmin_lennum_clsnum_sep	sentencesunknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:??????????????????
:?????????:??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_81612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall:? ;

_output_shapes
: 
!
_user_specified_name	max_len:?;

_output_shapes
: 
!
_user_specified_name	min_len:?;

_output_shapes
: 
!
_user_specified_name	num_cls:?;

_output_shapes
: 
!
_user_specified_name	num_sep:NJ
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
q
__inference_<lambda>_8590
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
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
GPU 2J 8? *0
f+R)
'__inference_restored_function_body_85802
StatefulPartitionedCallS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Constk
IdentityIdentityConst:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
:::22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
:: 

_output_shapes
:
?
?
J__inference_RaggedConcat_assert_equal_3_Assert_AssertGuard_false_5924_7794Y
Uraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_all
i
eraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_1_strided_slice_4	g
craggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4	=
9raggedconcat_assert_equal_3_assert_assertguard_identity_1
??5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert?
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2>
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_0?
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2>
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_1?
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*I
value@B> B8x (RaggedConcat/RaggedFromTensor_1/strided_slice_4:0) = 2>
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_2?
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = 2>
<RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_4?
5RaggedConcat/assert_equal_3/Assert/AssertGuard/AssertAssertUraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_allERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_0:output:0ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_1:output:0ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_2:output:0eraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_1_strided_slice_4ERaggedConcat/assert_equal_3/Assert/AssertGuard/Assert/data_4:output:0craggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4*
T

2		*
_output_shapes
 27
5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert?
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentityUraggedconcat_assert_equal_3_assert_assertguard_assert_raggedconcat_assert_equal_3_all6^RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 29
7RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity?
9RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity:output:06^RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2;
9RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1"
9raggedconcat_assert_equal_3_assert_assertguard_identity_1BRaggedConcat/assert_equal_3/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : 2n
5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert5RaggedConcat/assert_equal_3/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__traced_save_8658
file_prefix*
&savev2_w_embedding_read_readvariableop
savev2_const_10

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*[
valueRBPB(w_embedding:0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_w_embedding_read_readvariableopsavev2_const_10"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*!
_input_shapes
: :
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
:

_output_shapes
: 
?
n
!__inference_embedding_lookup_7511

inputs
embedding_lookup_6044
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_6044inputs*
Tindices0*(
_class
loc:@embedding_lookup/6044*4
_output_shapes"
 :??????????????????
*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/6044*4
_output_shapes"
 :??????????????????
2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????
2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :??????????????????
2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs
?
2
__inference_keys_7528
unknown
identity?
PartitionedCallPartitionedCallunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *
fR
__inference_keys_75232
PartitionedCall_
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:2

Identity"
identityIdentity:output:0*
_input_shapes
::  

_output_shapes
:
?
?
__inference_call_8273
max_len
min_len
num_cls
num_sep
	sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?
StatefulPartitionedCallStatefulPartitionedCallmax_lenmin_lennum_clsnum_sep	sentencesunknown	unknown_0*
Tin
	2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_tokenize_to_indices_81452
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:1	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_embedding_lookup_75112
StatefulPartitionedCall_1?
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:? ;

_output_shapes
: 
!
_user_specified_name	max_len:?;

_output_shapes
: 
!
_user_specified_name	min_len:?;

_output_shapes
: 
!
_user_specified_name	num_cls:?;

_output_shapes
: 
!
_user_specified_name	num_sep:NJ
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?
'
__inference_sep_id_7615
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
9
__inference__creator_7645
identity??
hash_table?

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*$
shared_name5034_load_7496_7641*
use_node_name_sharing(*
value_dtype02

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 2

hash_table
hash_table
?
?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8289
max_len
min_len
num_cls
num_sep
	sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?
StatefulPartitionedCallStatefulPartitionedCallmax_lenmin_lennum_clsnum_sep	sentencesunknown	unknown_0*
Tin
	2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_tokenize_to_indices_81452
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:1	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_embedding_lookup_75112
StatefulPartitionedCall_1?
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:? ;

_output_shapes
: 
!
_user_specified_name	max_len:?;

_output_shapes
: 
!
_user_specified_name	min_len:?;

_output_shapes
: 
!
_user_specified_name	num_cls:?;

_output_shapes
: 
!
_user_specified_name	num_sep:NJ
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
?

'__inference_restored_function_body_8580
unknown
	unknown_0
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
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
__inference__initializer_75692
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
:::22
StatefulPartitionedCallStatefulPartitionedCall: 

_output_shapes
:: 

_output_shapes
:
?
?
>__inference_RaggedFromSparse_Assert_AssertGuard_true_5707_7800L
Hraggedfromsparse_assert_assertguard_identity_raggedfromsparse_logicaland
3
/raggedfromsparse_assert_assertguard_placeholder	2
.raggedfromsparse_assert_assertguard_identity_1
r
(RaggedFromSparse/Assert/AssertGuard/NoOpNoOp*
_output_shapes
 2*
(RaggedFromSparse/Assert/AssertGuard/NoOp?
,RaggedFromSparse/Assert/AssertGuard/IdentityIdentityHraggedfromsparse_assert_assertguard_identity_raggedfromsparse_logicaland)^RaggedFromSparse/Assert/AssertGuard/NoOp*
T0
*
_output_shapes
: 2.
,RaggedFromSparse/Assert/AssertGuard/Identity?
.RaggedFromSparse/Assert/AssertGuard/Identity_1Identity5RaggedFromSparse/Assert/AssertGuard/Identity:output:0*
T0
*
_output_shapes
: 20
.RaggedFromSparse/Assert/AssertGuard/Identity_1"i
.raggedfromsparse_assert_assertguard_identity_17RaggedFromSparse/Assert/AssertGuard/Identity_1:output:0*(
_input_shapes
: :?????????: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
*
__inference_num_units_7783
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :
2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
J__inference_RaggedConcat_assert_equal_1_Assert_AssertGuard_false_5894_7587Y
Uraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_all
Z
Vraggedconcat_assert_equal_1_assert_assertguard_assert_raggedfromsparse_strided_slice_9	g
craggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4	=
9raggedconcat_assert_equal_1_assert_assertguard_identity_1
??5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert?
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2>
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_0?
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2>
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_1?
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (RaggedFromSparse/strided_slice_9:0) = 2>
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_2?
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = 2>
<RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_4?
5RaggedConcat/assert_equal_1/Assert/AssertGuard/AssertAssertUraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_allERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_0:output:0ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_1:output:0ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_2:output:0Vraggedconcat_assert_equal_1_assert_assertguard_assert_raggedfromsparse_strided_slice_9ERaggedConcat/assert_equal_1/Assert/AssertGuard/Assert/data_4:output:0craggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_raggedfromtensor_strided_slice_4*
T

2		*
_output_shapes
 27
5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert?
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentityUraggedconcat_assert_equal_1_assert_assertguard_assert_raggedconcat_assert_equal_1_all6^RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 29
7RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity?
9RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1Identity@RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity:output:06^RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2;
9RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1"
9raggedconcat_assert_equal_1_assert_assertguard_identity_1BRaggedConcat/assert_equal_1/Assert/AssertGuard/Identity_1:output:0*
_input_shapes
: : : 2n
5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert5RaggedConcat/assert_equal_1/Assert/AssertGuard/Assert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
%__inference_convert_ids_to_texts_7633
ids.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value
identity??None_Lookup/LookupTableFindV2?
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleids+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*0
_output_shapes
:??????????????????2
None_Lookup/LookupTableFindV2?
'ReduceJoin/ReduceJoin/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'ReduceJoin/ReduceJoin/reduction_indices?
ReduceJoin/ReduceJoin
ReduceJoin&None_Lookup/LookupTableFindV2:values:00ReduceJoin/ReduceJoin/reduction_indices:output:0*#
_output_shapes
:?????????*
	separator 2
ReduceJoin/ReduceJoin?
IdentityIdentityReduceJoin/ReduceJoin:output:0^None_Lookup/LookupTableFindV2*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":??????????????????:: 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV2:U Q
0
_output_shapes
:??????????????????

_user_specified_nameids:

_output_shapes
: 
?
?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8305
inputs_max_len
inputs_min_len
inputs_num_cls
inputs_num_sep
inputs_sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?
StatefulPartitionedCallStatefulPartitionedCallinputs_max_leninputs_min_leninputs_num_clsinputs_num_sepinputs_sentencesunknown	unknown_0*
Tin
	2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_tokenize_to_indices_81452
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:1	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_embedding_lookup_75112
StatefulPartitionedCall_1?
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:F B

_output_shapes
: 
(
_user_specified_nameinputs/max_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/min_len:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_cls:FB

_output_shapes
: 
(
_user_specified_nameinputs/num_sep:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/sentences:

_output_shapes
: 
?
?
__inference__initializer_75767
3key_value_init5033_lookuptableimportv2_table_handle/
+key_value_init5033_lookuptableimportv2_keys1
-key_value_init5033_lookuptableimportv2_values
identity??&key_value_init5033/LookupTableImportV2?
&key_value_init5033/LookupTableImportV2LookupTableImportV23key_value_init5033_lookuptableimportv2_table_handle+key_value_init5033_lookuptableimportv2_keys-key_value_init5033_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 2(
&key_value_init5033/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constz
IdentityIdentityConst:output:0'^key_value_init5033/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
:::2P
&key_value_init5033/LookupTableImportV2&key_value_init5033/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
0__inference_embedding_layer_2_layer_call_fn_8193
max_len
min_len
num_cls
num_sep
	sentences
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmax_lenmin_lennum_clsnum_sep	sentencesunknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:??????????????????
:?????????:??????????????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_81612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall:? ;

_output_shapes
: 
!
_user_specified_name	max_len:?;

_output_shapes
: 
!
_user_specified_name	min_len:?;

_output_shapes
: 
!
_user_specified_name	num_cls:?;

_output_shapes
: 
!
_user_specified_name	num_sep:NJ
#
_output_shapes
:?????????
#
_user_specified_name	sentences:

_output_shapes
: 
??
?
__inference_add_cls_sep_8090

inputs	
inputs_1
inputs_2	
num_cls
num_sep
identity??.RaggedConcat/assert_equal_1/Assert/AssertGuard?.RaggedConcat/assert_equal_3/Assert/AssertGuard?#RaggedFromSparse/Assert/AssertGuard?
$RaggedFromSparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$RaggedFromSparse/strided_slice/stack?
&RaggedFromSparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ????2(
&RaggedFromSparse/strided_slice/stack_1?
&RaggedFromSparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&RaggedFromSparse/strided_slice/stack_2?
RaggedFromSparse/strided_sliceStridedSliceinputs-RaggedFromSparse/strided_slice/stack:output:0/RaggedFromSparse/strided_slice/stack_1:output:0/RaggedFromSparse/strided_slice/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask*
end_mask2 
RaggedFromSparse/strided_slice?
&RaggedFromSparse/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ????2(
&RaggedFromSparse/strided_slice_1/stack?
(RaggedFromSparse/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(RaggedFromSparse/strided_slice_1/stack_1?
(RaggedFromSparse/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(RaggedFromSparse/strided_slice_1/stack_2?
 RaggedFromSparse/strided_slice_1StridedSliceinputs/RaggedFromSparse/strided_slice_1/stack:output:01RaggedFromSparse/strided_slice_1/stack_1:output:01RaggedFromSparse/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2"
 RaggedFromSparse/strided_slice_1?
&RaggedFromSparse/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&RaggedFromSparse/strided_slice_2/stack?
(RaggedFromSparse/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(RaggedFromSparse/strided_slice_2/stack_1?
(RaggedFromSparse/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_2/stack_2?
 RaggedFromSparse/strided_slice_2StridedSlice'RaggedFromSparse/strided_slice:output:0/RaggedFromSparse/strided_slice_2/stack:output:01RaggedFromSparse/strided_slice_2/stack_1:output:01RaggedFromSparse/strided_slice_2/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*
end_mask2"
 RaggedFromSparse/strided_slice_2?
&RaggedFromSparse/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&RaggedFromSparse/strided_slice_3/stack?
(RaggedFromSparse/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2*
(RaggedFromSparse/strided_slice_3/stack_1?
(RaggedFromSparse/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_3/stack_2?
 RaggedFromSparse/strided_slice_3StridedSlice'RaggedFromSparse/strided_slice:output:0/RaggedFromSparse/strided_slice_3/stack:output:01RaggedFromSparse/strided_slice_3/stack_1:output:01RaggedFromSparse/strided_slice_3/stack_2:output:0*
Index0*
T0	*'
_output_shapes
:?????????*

begin_mask2"
 RaggedFromSparse/strided_slice_3?
RaggedFromSparse/NotEqualNotEqual)RaggedFromSparse/strided_slice_2:output:0)RaggedFromSparse/strided_slice_3:output:0*
T0	*'
_output_shapes
:?????????2
RaggedFromSparse/NotEqual?
&RaggedFromSparse/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2(
&RaggedFromSparse/Any/reduction_indices?
RaggedFromSparse/AnyAnyRaggedFromSparse/NotEqual:z:0/RaggedFromSparse/Any/reduction_indices:output:0*#
_output_shapes
:?????????2
RaggedFromSparse/Any?
&RaggedFromSparse/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&RaggedFromSparse/strided_slice_4/stack?
(RaggedFromSparse/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(RaggedFromSparse/strided_slice_4/stack_1?
(RaggedFromSparse/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_4/stack_2?
 RaggedFromSparse/strided_slice_4StridedSlice)RaggedFromSparse/strided_slice_1:output:0/RaggedFromSparse/strided_slice_4/stack:output:01RaggedFromSparse/strided_slice_4/stack_1:output:01RaggedFromSparse/strided_slice_4/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
end_mask2"
 RaggedFromSparse/strided_slice_4v
RaggedFromSparse/Equal/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
RaggedFromSparse/Equal/y?
RaggedFromSparse/EqualEqual)RaggedFromSparse/strided_slice_4:output:0!RaggedFromSparse/Equal/y:output:0*
T0	*#
_output_shapes
:?????????2
RaggedFromSparse/Equal?
&RaggedFromSparse/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:2(
&RaggedFromSparse/strided_slice_5/stack?
(RaggedFromSparse/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2*
(RaggedFromSparse/strided_slice_5/stack_1?
(RaggedFromSparse/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_5/stack_2?
 RaggedFromSparse/strided_slice_5StridedSlice)RaggedFromSparse/strided_slice_1:output:0/RaggedFromSparse/strided_slice_5/stack:output:01RaggedFromSparse/strided_slice_5/stack_1:output:01RaggedFromSparse/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
end_mask2"
 RaggedFromSparse/strided_slice_5?
&RaggedFromSparse/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&RaggedFromSparse/strided_slice_6/stack?
(RaggedFromSparse/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2*
(RaggedFromSparse/strided_slice_6/stack_1?
(RaggedFromSparse/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_6/stack_2?
 RaggedFromSparse/strided_slice_6StridedSlice)RaggedFromSparse/strided_slice_1:output:0/RaggedFromSparse/strided_slice_6/stack:output:01RaggedFromSparse/strided_slice_6/stack_1:output:01RaggedFromSparse/strided_slice_6/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask2"
 RaggedFromSparse/strided_slice_6r
RaggedFromSparse/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2
RaggedFromSparse/add/y?
RaggedFromSparse/addAddV2)RaggedFromSparse/strided_slice_6:output:0RaggedFromSparse/add/y:output:0*
T0	*#
_output_shapes
:?????????2
RaggedFromSparse/add?
RaggedFromSparse/Equal_1Equal)RaggedFromSparse/strided_slice_5:output:0RaggedFromSparse/add:z:0*
T0	*#
_output_shapes
:?????????2
RaggedFromSparse/Equal_1?
RaggedFromSparse/SelectSelectRaggedFromSparse/Any:output:0RaggedFromSparse/Equal:z:0RaggedFromSparse/Equal_1:z:0*
T0
*#
_output_shapes
:?????????2
RaggedFromSparse/Select?
&RaggedFromSparse/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&RaggedFromSparse/strided_slice_7/stack?
(RaggedFromSparse/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_7/stack_1?
(RaggedFromSparse/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_7/stack_2?
 RaggedFromSparse/strided_slice_7StridedSlice)RaggedFromSparse/strided_slice_1:output:0/RaggedFromSparse/strided_slice_7/stack:output:01RaggedFromSparse/strided_slice_7/stack_1:output:01RaggedFromSparse/strided_slice_7/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask2"
 RaggedFromSparse/strided_slice_7z
RaggedFromSparse/Equal_2/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
RaggedFromSparse/Equal_2/y?
RaggedFromSparse/Equal_2Equal)RaggedFromSparse/strided_slice_7:output:0#RaggedFromSparse/Equal_2/y:output:0*
T0	*#
_output_shapes
:?????????2
RaggedFromSparse/Equal_2z
RaggedFromSparse/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
RaggedFromSparse/Const?
RaggedFromSparse/AllAllRaggedFromSparse/Equal_2:z:0RaggedFromSparse/Const:output:0*
_output_shapes
: 2
RaggedFromSparse/All~
RaggedFromSparse/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
RaggedFromSparse/Const_1?
RaggedFromSparse/All_1All RaggedFromSparse/Select:output:0!RaggedFromSparse/Const_1:output:0*
_output_shapes
: 2
RaggedFromSparse/All_1?
RaggedFromSparse/LogicalAnd
LogicalAndRaggedFromSparse/All:output:0RaggedFromSparse/All_1:output:0*
_output_shapes
: 2
RaggedFromSparse/LogicalAnd?
RaggedFromSparse/Assert/ConstConst*
_output_shapes
: *
dtype0*1
value(B& B SparseTensor is not right-ragged2
RaggedFromSparse/Assert/Const?
RaggedFromSparse/Assert/Const_1Const*
_output_shapes
: *
dtype0*'
valueB BSparseTensor.indices =2!
RaggedFromSparse/Assert/Const_1?
#RaggedFromSparse/Assert/AssertGuardIfRaggedFromSparse/LogicalAnd:z:0RaggedFromSparse/LogicalAnd:z:0inputs*
Tcond0
*
Tin
2
	*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *R
else_branchCRA
?__inference_RaggedFromSparse_Assert_AssertGuard_false_5708_7519*
output_shapes
: *Q
then_branchBR@
>__inference_RaggedFromSparse_Assert_AssertGuard_true_5707_78002%
#RaggedFromSparse/Assert/AssertGuard?
,RaggedFromSparse/Assert/AssertGuard/IdentityIdentity,RaggedFromSparse/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 2.
,RaggedFromSparse/Assert/AssertGuard/Identity?
&RaggedFromSparse/strided_slice_8/stackConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"        2(
&RaggedFromSparse/strided_slice_8/stack?
(RaggedFromSparse/strided_slice_8/stack_1Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"       2*
(RaggedFromSparse/strided_slice_8/stack_1?
(RaggedFromSparse/strided_slice_8/stack_2Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"      2*
(RaggedFromSparse/strided_slice_8/stack_2?
 RaggedFromSparse/strided_slice_8StridedSliceinputs/RaggedFromSparse/strided_slice_8/stack:output:01RaggedFromSparse/strided_slice_8/stack_1:output:01RaggedFromSparse/strided_slice_8/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask2"
 RaggedFromSparse/strided_slice_8?
&RaggedFromSparse/strided_slice_9/stackConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2(
&RaggedFromSparse/strided_slice_9/stack?
(RaggedFromSparse/strided_slice_9/stack_1Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_9/stack_1?
(RaggedFromSparse/strided_slice_9/stack_2Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2*
(RaggedFromSparse/strided_slice_9/stack_2?
 RaggedFromSparse/strided_slice_9StridedSliceinputs_2/RaggedFromSparse/strided_slice_9/stack:output:01RaggedFromSparse/strided_slice_9/stack_1:output:01RaggedFromSparse/strided_slice_9/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2"
 RaggedFromSparse/strided_slice_9?
GRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast)RaggedFromSparse/strided_slice_8:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2I
GRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast?
IRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast)RaggedFromSparse/strided_slice_9:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2K
IRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1?
QRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeKRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:2S
QRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape?
QRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2S
QRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const?
PRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdZRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ZRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 2R
PRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod?
URaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 2W
URaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y?
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterYRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0^RaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 2U
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater?
PRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastWRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 2R
PRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast?
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2U
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1?
ORaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxKRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0\RaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 2Q
ORaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max?
QRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :2S
QRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y?
ORaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2XRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ZRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 2Q
ORaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add?
ORaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulTRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 2Q
ORaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul?
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumMRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 2U
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum?
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumMRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0WRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 2U
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum?
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
valueB	 2U
SRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2?
TRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountKRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0\RaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2V
TRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount?
NRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 2P
NRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis?
IRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsum[RaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0WRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2K
IRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum?
RRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0	*
valueB	R 2T
RRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0?
NRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 2P
NRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis?
IRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2[RaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0ORaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0WRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2K
IRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat?
RaggedBoundingBox/ShapeShapeRRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0*
T0	*
_output_shapes
:*
out_type0	2
RaggedBoundingBox/Shape~
RaggedBoundingBox/Shape_1Shapeinputs_1*
T0*
_output_shapes
:*
out_type0	2
RaggedBoundingBox/Shape_1?
%RaggedBoundingBox/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%RaggedBoundingBox/strided_slice/stack?
'RaggedBoundingBox/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'RaggedBoundingBox/strided_slice/stack_1?
'RaggedBoundingBox/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'RaggedBoundingBox/strided_slice/stack_2?
RaggedBoundingBox/strided_sliceStridedSlice RaggedBoundingBox/Shape:output:0.RaggedBoundingBox/strided_slice/stack:output:00RaggedBoundingBox/strided_slice/stack_1:output:00RaggedBoundingBox/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2!
RaggedBoundingBox/strided_slicet
RaggedBoundingBox/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2
RaggedBoundingBox/sub/y?
RaggedBoundingBox/subSub(RaggedBoundingBox/strided_slice:output:0 RaggedBoundingBox/sub/y:output:0*
T0	*
_output_shapes
: 2
RaggedBoundingBox/sub?
'RaggedBoundingBox/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'RaggedBoundingBox/strided_slice_1/stack?
)RaggedBoundingBox/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)RaggedBoundingBox/strided_slice_1/stack_1?
)RaggedBoundingBox/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)RaggedBoundingBox/strided_slice_1/stack_2?
!RaggedBoundingBox/strided_slice_1StridedSliceRRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:00RaggedBoundingBox/strided_slice_1/stack:output:02RaggedBoundingBox/strided_slice_1/stack_1:output:02RaggedBoundingBox/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
end_mask2#
!RaggedBoundingBox/strided_slice_1?
'RaggedBoundingBox/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'RaggedBoundingBox/strided_slice_2/stack?
)RaggedBoundingBox/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2+
)RaggedBoundingBox/strided_slice_2/stack_1?
)RaggedBoundingBox/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)RaggedBoundingBox/strided_slice_2/stack_2?
!RaggedBoundingBox/strided_slice_2StridedSliceRRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:00RaggedBoundingBox/strided_slice_2/stack:output:02RaggedBoundingBox/strided_slice_2/stack_1:output:02RaggedBoundingBox/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask2#
!RaggedBoundingBox/strided_slice_2?
RaggedBoundingBox/sub_1Sub*RaggedBoundingBox/strided_slice_1:output:0*RaggedBoundingBox/strided_slice_2:output:0*
T0	*#
_output_shapes
:?????????2
RaggedBoundingBox/sub_1|
RaggedBoundingBox/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
RaggedBoundingBox/Const?
RaggedBoundingBox/MaxMaxRaggedBoundingBox/sub_1:z:0 RaggedBoundingBox/Const:output:0*
T0	*
_output_shapes
: 2
RaggedBoundingBox/Max|
RaggedBoundingBox/Maximum/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 2
RaggedBoundingBox/Maximum/y?
RaggedBoundingBox/MaximumMaximumRaggedBoundingBox/Max:output:0$RaggedBoundingBox/Maximum/y:output:0*
T0	*
_output_shapes
: 2
RaggedBoundingBox/Maximum?
'RaggedBoundingBox/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'RaggedBoundingBox/strided_slice_3/stack?
)RaggedBoundingBox/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)RaggedBoundingBox/strided_slice_3/stack_1?
)RaggedBoundingBox/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)RaggedBoundingBox/strided_slice_3/stack_2?
!RaggedBoundingBox/strided_slice_3StridedSlice"RaggedBoundingBox/Shape_1:output:00RaggedBoundingBox/strided_slice_3/stack:output:02RaggedBoundingBox/strided_slice_3/stack_1:output:02RaggedBoundingBox/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask2#
!RaggedBoundingBox/strided_slice_3?
RaggedBoundingBox/stackPackRaggedBoundingBox/sub:z:0RaggedBoundingBox/Maximum:z:0*
N*
T0	*
_output_shapes
:2
RaggedBoundingBox/stack?
RaggedBoundingBox/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
RaggedBoundingBox/concat/axis?
RaggedBoundingBox/concatConcatV2 RaggedBoundingBox/stack:output:0*RaggedBoundingBox/strided_slice_3:output:0&RaggedBoundingBox/concat/axis:output:0*
N*
T0	*
_output_shapes
:2
RaggedBoundingBox/concatt
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
strided_sliceStridedSlice!RaggedBoundingBox/concat:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
strided_slicef
	Fill/CastCaststrided_slice:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2
	Fill/Casth
Fill/dims_1PackFill/Cast:y:0num_cls*
N*
T0*
_output_shapes
:2
Fill/dims_1Z

Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :2

Fill/valuez
FillFillFill/dims_1:output:0Fill/value:output:0*
T0*0
_output_shapes
:??????????????????2
Fill?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? * 
fR
__inference_sep_id_76152
PartitionedCallj
Fill_1/CastCaststrided_slice:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Fill_1/Castn
Fill_1/dims_1PackFill_1/Cast:y:0num_sep*
N*
T0*
_output_shapes
:2
Fill_1/dims_1?
Fill_1FillFill_1/dims_1:output:0PartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2
Fill_1?
#RaggedConcat/RaggedFromTensor/ShapeShapeFill:output:0*
T0*
_output_shapes
:*
out_type0	2%
#RaggedConcat/RaggedFromTensor/Shape?
1RaggedConcat/RaggedFromTensor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:23
1RaggedConcat/RaggedFromTensor/strided_slice/stack?
3RaggedConcat/RaggedFromTensor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice/stack_1?
3RaggedConcat/RaggedFromTensor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice/stack_2?
+RaggedConcat/RaggedFromTensor/strided_sliceStridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0:RaggedConcat/RaggedFromTensor/strided_slice/stack:output:0<RaggedConcat/RaggedFromTensor/strided_slice/stack_1:output:0<RaggedConcat/RaggedFromTensor/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2-
+RaggedConcat/RaggedFromTensor/strided_slice?
3RaggedConcat/RaggedFromTensor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3RaggedConcat/RaggedFromTensor/strided_slice_1/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_1StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_1/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_1?
3RaggedConcat/RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice_2/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_2StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_2/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_2?
!RaggedConcat/RaggedFromTensor/mulMul6RaggedConcat/RaggedFromTensor/strided_slice_1:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: 2#
!RaggedConcat/RaggedFromTensor/mul?
3RaggedConcat/RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice_3/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_3StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_3/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_3?
-RaggedConcat/RaggedFromTensor/concat/values_0Pack%RaggedConcat/RaggedFromTensor/mul:z:0*
N*
T0	*
_output_shapes
:2/
-RaggedConcat/RaggedFromTensor/concat/values_0?
)RaggedConcat/RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)RaggedConcat/RaggedFromTensor/concat/axis?
$RaggedConcat/RaggedFromTensor/concatConcatV26RaggedConcat/RaggedFromTensor/concat/values_0:output:06RaggedConcat/RaggedFromTensor/strided_slice_3:output:02RaggedConcat/RaggedFromTensor/concat/axis:output:0*
N*
T0	*
_output_shapes
:2&
$RaggedConcat/RaggedFromTensor/concat?
%RaggedConcat/RaggedFromTensor/ReshapeReshapeFill:output:0-RaggedConcat/RaggedFromTensor/concat:output:0*
T0*
Tshape0	*#
_output_shapes
:?????????2'
%RaggedConcat/RaggedFromTensor/Reshape?
3RaggedConcat/RaggedFromTensor/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3RaggedConcat/RaggedFromTensor/strided_slice_4/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_4StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_4/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_4/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_4?
3RaggedConcat/RaggedFromTensor/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice_5/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_5/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_5/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_5StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_5/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_5/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_5/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_5?
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/ShapeShape.RaggedConcat/RaggedFromTensor/Reshape:output:0*
T0*
_output_shapes
:*
out_type0	2@
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/Shape?
LRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2N
LRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack?
NRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2P
NRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1?
NRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2P
NRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2?
FRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_sliceStridedSliceGRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/Shape:output:0URaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack:output:0WRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_1:output:0WRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2H
FRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice?
_RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2a
_RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y?
]RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV26RaggedConcat/RaggedFromTensor/strided_slice_4:output:0hRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: 2_
]RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add?
eRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2g
eRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start?
eRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2g
eRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta?
dRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/CastCastnRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2f
dRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast?
fRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1CastnRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2h
fRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1?
_RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangehRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast:y:0aRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0jRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2a
_RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range?
]RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMulhRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:06RaggedConcat/RaggedFromTensor/strided_slice_5:output:0*
T0	*#
_output_shapes
:?????????2_
]RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul?
%RaggedConcat/RaggedFromTensor_1/ShapeShapeFill_1:output:0*
T0*
_output_shapes
:*
out_type0	2'
%RaggedConcat/RaggedFromTensor_1/Shape?
3RaggedConcat/RaggedFromTensor_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3RaggedConcat/RaggedFromTensor_1/strided_slice/stack?
5RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1?
5RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2?
-RaggedConcat/RaggedFromTensor_1/strided_sliceStridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0<RaggedConcat/RaggedFromTensor_1/strided_slice/stack:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice/stack_1:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2/
-RaggedConcat/RaggedFromTensor_1/strided_slice?
5RaggedConcat/RaggedFromTensor_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_1StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_1?
5RaggedConcat/RaggedFromTensor_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_2StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_2?
#RaggedConcat/RaggedFromTensor_1/mulMul8RaggedConcat/RaggedFromTensor_1/strided_slice_1:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:0*
T0	*
_output_shapes
: 2%
#RaggedConcat/RaggedFromTensor_1/mul?
5RaggedConcat/RaggedFromTensor_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_3StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_3?
/RaggedConcat/RaggedFromTensor_1/concat/values_0Pack'RaggedConcat/RaggedFromTensor_1/mul:z:0*
N*
T0	*
_output_shapes
:21
/RaggedConcat/RaggedFromTensor_1/concat/values_0?
+RaggedConcat/RaggedFromTensor_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+RaggedConcat/RaggedFromTensor_1/concat/axis?
&RaggedConcat/RaggedFromTensor_1/concatConcatV28RaggedConcat/RaggedFromTensor_1/concat/values_0:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_3:output:04RaggedConcat/RaggedFromTensor_1/concat/axis:output:0*
N*
T0	*
_output_shapes
:2(
&RaggedConcat/RaggedFromTensor_1/concat?
'RaggedConcat/RaggedFromTensor_1/ReshapeReshapeFill_1:output:0/RaggedConcat/RaggedFromTensor_1/concat:output:0*
T0*
Tshape0	*#
_output_shapes
:?????????2)
'RaggedConcat/RaggedFromTensor_1/Reshape?
5RaggedConcat/RaggedFromTensor_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_4StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_4?
5RaggedConcat/RaggedFromTensor_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice_5/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_5/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_5/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_5StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_5/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_5/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_5/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_5?
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/ShapeShape0RaggedConcat/RaggedFromTensor_1/Reshape:output:0*
T0*
_output_shapes
:*
out_type0	2B
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/Shape?
NRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2P
NRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack?
PRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2R
PRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1?
PRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2R
PRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2?
HRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_sliceStridedSliceIRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/Shape:output:0WRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack:output:0YRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_1:output:0YRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2J
HRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice?
aRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2c
aRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y?
_RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/addAddV28RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:0jRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: 2a
_RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add?
gRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2i
gRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start?
gRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2i
gRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta?
fRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/CastCastpRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2h
fRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast?
hRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1CastpRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2j
hRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1?
aRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/rangeRangejRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast:y:0cRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/add:z:0lRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2c
aRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range?
_RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mulMuljRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/range:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_5:output:0*
T0	*#
_output_shapes
:?????????2a
_RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul?
!RaggedConcat/assert_equal_1/EqualEqual)RaggedFromSparse/strided_slice_9:output:06RaggedConcat/RaggedFromTensor/strided_slice_4:output:0*
T0	*
_output_shapes
: 2#
!RaggedConcat/assert_equal_1/Equal?
 RaggedConcat/assert_equal_1/RankConst*
_output_shapes
: *
dtype0*
value	B : 2"
 RaggedConcat/assert_equal_1/Rank?
'RaggedConcat/assert_equal_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2)
'RaggedConcat/assert_equal_1/range/start?
'RaggedConcat/assert_equal_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2)
'RaggedConcat/assert_equal_1/range/delta?
!RaggedConcat/assert_equal_1/rangeRange0RaggedConcat/assert_equal_1/range/start:output:0)RaggedConcat/assert_equal_1/Rank:output:00RaggedConcat/assert_equal_1/range/delta:output:0*
_output_shapes
: 2#
!RaggedConcat/assert_equal_1/range?
RaggedConcat/assert_equal_1/AllAll%RaggedConcat/assert_equal_1/Equal:z:0*RaggedConcat/assert_equal_1/range:output:0*
_output_shapes
: 2!
RaggedConcat/assert_equal_1/All?
(RaggedConcat/assert_equal_1/Assert/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2*
(RaggedConcat/assert_equal_1/Assert/Const?
*RaggedConcat/assert_equal_1/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2,
*RaggedConcat/assert_equal_1/Assert/Const_1?
*RaggedConcat/assert_equal_1/Assert/Const_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (RaggedFromSparse/strided_slice_9:0) = 2,
*RaggedConcat/assert_equal_1/Assert/Const_2?
*RaggedConcat/assert_equal_1/Assert/Const_3Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = 2,
*RaggedConcat/assert_equal_1/Assert/Const_3?
.RaggedConcat/assert_equal_1/Assert/AssertGuardIf(RaggedConcat/assert_equal_1/All:output:0(RaggedConcat/assert_equal_1/All:output:0)RaggedFromSparse/strided_slice_9:output:06RaggedConcat/RaggedFromTensor/strided_slice_4:output:0$^RaggedFromSparse/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *]
else_branchNRL
J__inference_RaggedConcat_assert_equal_1_Assert_AssertGuard_false_5894_7587*
output_shapes
: *\
then_branchMRK
I__inference_RaggedConcat_assert_equal_1_Assert_AssertGuard_true_5893_750320
.RaggedConcat/assert_equal_1/Assert/AssertGuard?
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentity7RaggedConcat/assert_equal_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 29
7RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity?
!RaggedConcat/assert_equal_3/EqualEqual8RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:06RaggedConcat/RaggedFromTensor/strided_slice_4:output:0*
T0	*
_output_shapes
: 2#
!RaggedConcat/assert_equal_3/Equal?
 RaggedConcat/assert_equal_3/RankConst*
_output_shapes
: *
dtype0*
value	B : 2"
 RaggedConcat/assert_equal_3/Rank?
'RaggedConcat/assert_equal_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2)
'RaggedConcat/assert_equal_3/range/start?
'RaggedConcat/assert_equal_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2)
'RaggedConcat/assert_equal_3/range/delta?
!RaggedConcat/assert_equal_3/rangeRange0RaggedConcat/assert_equal_3/range/start:output:0)RaggedConcat/assert_equal_3/Rank:output:00RaggedConcat/assert_equal_3/range/delta:output:0*
_output_shapes
: 2#
!RaggedConcat/assert_equal_3/range?
RaggedConcat/assert_equal_3/AllAll%RaggedConcat/assert_equal_3/Equal:z:0*RaggedConcat/assert_equal_3/range:output:0*
_output_shapes
: 2!
RaggedConcat/assert_equal_3/All?
(RaggedConcat/assert_equal_3/Assert/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2*
(RaggedConcat/assert_equal_3/Assert/Const?
*RaggedConcat/assert_equal_3/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2,
*RaggedConcat/assert_equal_3/Assert/Const_1?
*RaggedConcat/assert_equal_3/Assert/Const_2Const*
_output_shapes
: *
dtype0*I
value@B> B8x (RaggedConcat/RaggedFromTensor_1/strided_slice_4:0) = 2,
*RaggedConcat/assert_equal_3/Assert/Const_2?
*RaggedConcat/assert_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_4:0) = 2,
*RaggedConcat/assert_equal_3/Assert/Const_3?
.RaggedConcat/assert_equal_3/Assert/AssertGuardIf(RaggedConcat/assert_equal_3/All:output:0(RaggedConcat/assert_equal_3/All:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_4:output:06RaggedConcat/RaggedFromTensor/strided_slice_4:output:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard*
Tcond0
*
Tin
2
		*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *]
else_branchNRL
J__inference_RaggedConcat_assert_equal_3_Assert_AssertGuard_false_5924_7794*
output_shapes
: *\
then_branchMRK
I__inference_RaggedConcat_assert_equal_3_Assert_AssertGuard_true_5923_755020
.RaggedConcat/assert_equal_3/Assert/AssertGuard?
7RaggedConcat/assert_equal_3/Assert/AssertGuard/IdentityIdentity7RaggedConcat/assert_equal_3/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 29
7RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity?
RaggedConcat/concat/axisConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 2
RaggedConcat/concat/axis?
RaggedConcat/concatConcatV2.RaggedConcat/RaggedFromTensor/Reshape:output:0inputs_10RaggedConcat/RaggedFromTensor_1/Reshape:output:0!RaggedConcat/concat/axis:output:0*
N*
T0*#
_output_shapes
:?????????2
RaggedConcat/concat?
 RaggedConcat/strided_slice/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
?????????2"
 RaggedConcat/strided_slice/stack?
"RaggedConcat/strided_slice/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2$
"RaggedConcat/strided_slice/stack_1?
"RaggedConcat/strided_slice/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2$
"RaggedConcat/strided_slice/stack_2?
RaggedConcat/strided_sliceStridedSliceaRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0)RaggedConcat/strided_slice/stack:output:0+RaggedConcat/strided_slice/stack_1:output:0+RaggedConcat/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
RaggedConcat/strided_slice?
"RaggedConcat/strided_slice_1/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2$
"RaggedConcat/strided_slice_1/stack?
$RaggedConcat/strided_slice_1/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2&
$RaggedConcat/strided_slice_1/stack_1?
$RaggedConcat/strided_slice_1/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2&
$RaggedConcat/strided_slice_1/stack_2?
RaggedConcat/strided_slice_1StridedSliceRRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0+RaggedConcat/strided_slice_1/stack:output:0-RaggedConcat/strided_slice_1/stack_1:output:0-RaggedConcat/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
end_mask2
RaggedConcat/strided_slice_1?
RaggedConcat/addAddV2%RaggedConcat/strided_slice_1:output:0#RaggedConcat/strided_slice:output:0*
T0	*#
_output_shapes
:?????????2
RaggedConcat/add?
"RaggedConcat/strided_slice_2/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"RaggedConcat/strided_slice_2/stack?
$RaggedConcat/strided_slice_2/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2&
$RaggedConcat/strided_slice_2/stack_1?
$RaggedConcat/strided_slice_2/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2&
$RaggedConcat/strided_slice_2/stack_2?
RaggedConcat/strided_slice_2StridedSliceRRaggedFromSparse/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:0+RaggedConcat/strided_slice_2/stack:output:0-RaggedConcat/strided_slice_2/stack_1:output:0-RaggedConcat/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
RaggedConcat/strided_slice_2?
RaggedConcat/add_1AddV2#RaggedConcat/strided_slice:output:0%RaggedConcat/strided_slice_2:output:0*
T0	*
_output_shapes
: 2
RaggedConcat/add_1?
"RaggedConcat/strided_slice_3/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2$
"RaggedConcat/strided_slice_3/stack?
$RaggedConcat/strided_slice_3/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2&
$RaggedConcat/strided_slice_3/stack_1?
$RaggedConcat/strided_slice_3/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2&
$RaggedConcat/strided_slice_3/stack_2?
RaggedConcat/strided_slice_3StridedSlicecRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_3/stack:output:0-RaggedConcat/strided_slice_3/stack_1:output:0-RaggedConcat/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
end_mask2
RaggedConcat/strided_slice_3?
RaggedConcat/add_2AddV2%RaggedConcat/strided_slice_3:output:0RaggedConcat/add_1:z:0*
T0	*#
_output_shapes
:?????????2
RaggedConcat/add_2?
"RaggedConcat/strided_slice_4/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"RaggedConcat/strided_slice_4/stack?
$RaggedConcat/strided_slice_4/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2&
$RaggedConcat/strided_slice_4/stack_1?
$RaggedConcat/strided_slice_4/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2&
$RaggedConcat/strided_slice_4/stack_2?
RaggedConcat/strided_slice_4StridedSlicecRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_4/stack:output:0-RaggedConcat/strided_slice_4/stack_1:output:0-RaggedConcat/strided_slice_4/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2
RaggedConcat/strided_slice_4?
RaggedConcat/add_3AddV2RaggedConcat/add_1:z:0%RaggedConcat/strided_slice_4:output:0*
T0	*
_output_shapes
: 2
RaggedConcat/add_3?
RaggedConcat/concat_1/axisConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 2
RaggedConcat/concat_1/axis?
RaggedConcat/concat_1ConcatV2aRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/RowPartitionFromUniformRowLength/mul:z:0RaggedConcat/add:z:0RaggedConcat/add_2:z:0#RaggedConcat/concat_1/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2
RaggedConcat/concat_1?
RaggedConcat/mul/yConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
value	B	 R2
RaggedConcat/mul/y?
RaggedConcat/mulMul6RaggedConcat/RaggedFromTensor/strided_slice_4:output:0RaggedConcat/mul/y:output:0*
T0	*
_output_shapes
: 2
RaggedConcat/mul?
RaggedConcat/range/startConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 2
RaggedConcat/range/start?
RaggedConcat/range/deltaConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :2
RaggedConcat/range/delta?
RaggedConcat/range/CastCast!RaggedConcat/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
RaggedConcat/range/Cast?
RaggedConcat/range/Cast_1Cast!RaggedConcat/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
RaggedConcat/range/Cast_1?
RaggedConcat/rangeRangeRaggedConcat/range/Cast:y:0RaggedConcat/mul:z:0RaggedConcat/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2
RaggedConcat/range?
RaggedConcat/Reshape/shapeConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"   ????2
RaggedConcat/Reshape/shape?
RaggedConcat/ReshapeReshapeRaggedConcat/range:output:0#RaggedConcat/Reshape/shape:output:0*
T0	*'
_output_shapes
:?????????2
RaggedConcat/Reshape?
RaggedConcat/transpose/permConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB"       2
RaggedConcat/transpose/perm?
RaggedConcat/transpose	TransposeRaggedConcat/Reshape:output:0$RaggedConcat/transpose/perm:output:0*
T0	*'
_output_shapes
:?????????2
RaggedConcat/transpose?
RaggedConcat/Reshape_1/shapeConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:
?????????2
RaggedConcat/Reshape_1/shape?
RaggedConcat/Reshape_1ReshapeRaggedConcat/transpose:y:0%RaggedConcat/Reshape_1/shape:output:0*
T0	*#
_output_shapes
:?????????2
RaggedConcat/Reshape_1?
&RaggedConcat/RaggedGather/RaggedGatherRaggedGatherRaggedConcat/concat_1:output:0RaggedConcat/concat:output:0RaggedConcat/Reshape_1:output:0*
OUTPUT_RAGGED_RANK*
PARAMS_RAGGED_RANK*
Tindices0	*
Tvalues0*2
_output_shapes 
:?????????:?????????2(
&RaggedConcat/RaggedGather/RaggedGather?
"RaggedConcat/strided_slice_5/stackConst8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2$
"RaggedConcat/strided_slice_5/stack?
$RaggedConcat/strided_slice_5/stack_1Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 2&
$RaggedConcat/strided_slice_5/stack_1?
$RaggedConcat/strided_slice_5/stack_2Const8^RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity8^RaggedConcat/assert_equal_3/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB:2&
$RaggedConcat/strided_slice_5/stack_2?
RaggedConcat/strided_slice_5StridedSlice=RaggedConcat/RaggedGather/RaggedGather:output_nested_splits:0+RaggedConcat/strided_slice_5/stack:output:0-RaggedConcat/strided_slice_5/stack_1:output:0-RaggedConcat/strided_slice_5/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask2
RaggedConcat/strided_slice_5?
PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? * 
fR
__inference_pad_id_76492
PartitionedCall_1w
RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2
RaggedToTensor/Const?
#RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorRaggedToTensor/Const:output:0<RaggedConcat/RaggedGather/RaggedGather:output_dense_values:0PartitionedCall_1:output:0%RaggedConcat/strided_slice_5:output:0*
T0*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2%
#RaggedToTensor/RaggedTensorToTensor?
IdentityIdentity,RaggedToTensor/RaggedTensorToTensor:result:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard/^RaggedConcat/assert_equal_3/Assert/AssertGuard$^RaggedFromSparse/Assert/AssertGuard*
T0*0
_output_shapes
:??????????????????2

Identity"
identityIdentity:output:0*?
_input_shapes.
,:?????????:?????????:: : 2`
.RaggedConcat/assert_equal_1/Assert/AssertGuard.RaggedConcat/assert_equal_1/Assert/AssertGuard2`
.RaggedConcat/assert_equal_3/Assert/AssertGuard.RaggedConcat/assert_equal_3/Assert/AssertGuard2J
#RaggedFromSparse/Assert/AssertGuard#RaggedFromSparse/Assert/AssertGuard:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:B>

_output_shapes
:
 
_user_specified_nameinputs:?;

_output_shapes
: 
!
_user_specified_name	num_cls:?;

_output_shapes
: 
!
_user_specified_name	num_sep
?
8
__inference_vocab_size_7779
unknown
identityJ
IdentityIdentityunknown*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : 

_output_shapes
: 
?
'
__inference_pad_id_7693
identity?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU 2J 8? * 
fR
__inference_pad_id_76492
PartitionedCall[
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
?
?__inference_RaggedFromSparse_Assert_AssertGuard_false_5708_7519J
Fraggedfromsparse_assert_assertguard_assert_raggedfromsparse_logicaland
5
1raggedfromsparse_assert_assertguard_assert_inputs	2
.raggedfromsparse_assert_assertguard_identity_1
??*RaggedFromSparse/Assert/AssertGuard/Assert?
1RaggedFromSparse/Assert/AssertGuard/Assert/data_0Const*
_output_shapes
: *
dtype0*1
value(B& B SparseTensor is not right-ragged23
1RaggedFromSparse/Assert/AssertGuard/Assert/data_0?
1RaggedFromSparse/Assert/AssertGuard/Assert/data_1Const*
_output_shapes
: *
dtype0*'
valueB BSparseTensor.indices =23
1RaggedFromSparse/Assert/AssertGuard/Assert/data_1?
*RaggedFromSparse/Assert/AssertGuard/AssertAssertFraggedfromsparse_assert_assertguard_assert_raggedfromsparse_logicaland:RaggedFromSparse/Assert/AssertGuard/Assert/data_0:output:0:RaggedFromSparse/Assert/AssertGuard/Assert/data_1:output:01raggedfromsparse_assert_assertguard_assert_inputs*
T
2	*
_output_shapes
 2,
*RaggedFromSparse/Assert/AssertGuard/Assert?
,RaggedFromSparse/Assert/AssertGuard/IdentityIdentityFraggedfromsparse_assert_assertguard_assert_raggedfromsparse_logicaland+^RaggedFromSparse/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 2.
,RaggedFromSparse/Assert/AssertGuard/Identity?
.RaggedFromSparse/Assert/AssertGuard/Identity_1Identity5RaggedFromSparse/Assert/AssertGuard/Identity:output:0+^RaggedFromSparse/Assert/AssertGuard/Assert*
T0
*
_output_shapes
: 20
.RaggedFromSparse/Assert/AssertGuard/Identity_1"i
.raggedfromsparse_assert_assertguard_identity_17RaggedFromSparse/Assert/AssertGuard/Identity_1:output:0*(
_input_shapes
: :?????????2X
*RaggedFromSparse/Assert/AssertGuard/Assert*RaggedFromSparse/Assert/AssertGuard/Assert: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
?
$__inference_tokenize_to_indices_8145

inputs
inputs_1
inputs_2
inputs_3
inputs_4
unknown
	unknown_0
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4unknown	unknown_0*
Tin
	2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference___call___81322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*0
_input_shapes
: : : : :?????????:: 22
StatefulPartitionedCallStatefulPartitionedCall:> :

_output_shapes
: 
 
_user_specified_nameinputs:>:

_output_shapes
: 
 
_user_specified_nameinputs:>:

_output_shapes
: 
 
_user_specified_nameinputs:>:

_output_shapes
: 
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8161

inputs
inputs_1
inputs_2
inputs_3
inputs_4
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4unknown	unknown_0*
Tin
	2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_tokenize_to_indices_81452
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:1	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :??????????????????
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference_embedding_lookup_75112
StatefulPartitionedCall_1?
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*4
_output_shapes"
 :??????????????????
2

Identity?

Identity_1Identity StatefulPartitionedCall:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*#
_output_shapes
:?????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*0
_output_shapes
:??????????????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*4
_input_shapes#
!: : : : :?????????:: :22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:> :

_output_shapes
: 
 
_user_specified_nameinputs:>:

_output_shapes
: 
 
_user_specified_nameinputs:>:

_output_shapes
: 
 
_user_specified_nameinputs:>:

_output_shapes
: 
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
w
%__inference_convert_ids_to_texts_7640
ids
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallidsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_convert_ids_to_texts_76332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":??????????????????:: 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
0
_output_shapes
:??????????????????

_user_specified_nameids:

_output_shapes
: 
?
U
__inference_tokenize_7749

inputs
identity	

identity_1

identity_2	?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2		*
_collective_manager_ids
 *<
_output_shapes*
(:?????????:?????????:* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *"
fR
__inference_tokenize_77402
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:?????????2

Identityl

Identity_1IdentityPartitionedCall:output:1*
T0*#
_output_shapes
:?????????2

Identity_1c

Identity_2IdentityPartitionedCall:output:2*
T0	*
_output_shapes
:2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*"
_input_shapes
:?????????:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_4:0StatefulPartitionedCall_58"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:??
?
	_func
	_callable
w_embedding:0
	variables
regularization_losses
trainable_variables
	keras_api

signatures
*$&call_and_return_all_conditional_losses
%__call__
&add_cls_sep
'adjust_len_right
(convert_ids_to_texts
)embedding_lookup
*keys
+	num_units

,pad_id

-sep_id
.tokenize
/tokenize_to_indices

0values
1vocab_lookup
2
vocab_size"?
_tf_keras_layer?{"class_name": "KerasLayer", "name": "keras_layer_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "keras_layer_4", "trainable": true, "dtype": "float32", "handle": "/home/sidwang/Projects/li-smart-compose/li-smart-compose/test/resources/embedding_layer_hub"}}
?
vocab_layer
	embedding
		variables

regularization_losses
trainable_variables
	keras_api

signatures
#_self_saveable_object_factories
%__call__
&add_cls_sep
'adjust_len_right
3call
*4&call_and_return_all_conditional_losses
(convert_ids_to_texts
)embedding_lookup
*keys
+	num_units

,pad_id

-sep_id
.tokenize
/tokenize_to_indices

0values
1vocab_lookup
2
vocab_size"
_generic_user_object
:
2w_embedding
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?

layers
layer_metrics
	variables
metrics
regularization_losses
layer_regularization_losses
non_trainable_variables
trainable_variables
5__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
"
signature_map
?
_vocab_table_initializer
vocab_table
$ _inverse_vocab_table_initializer
inverse_vocab_table
py_vocab_table
	keras_api
#_self_saveable_object_factories
6__call__
7add_cls_sep
8adjust_len_right
9convert_ids_to_texts
:keys

;pad_id

<sep_id
=tokenize

>values
?vocab_lookup
@
vocab_size"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?

layers
layer_metrics
		variables
metrics

regularization_losses
layer_regularization_losses
non_trainable_variables
trainable_variables
# _self_saveable_object_factories
%__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
"
signature_map
 "
trackable_dict_wrapper
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
C
#!_self_saveable_object_factories"
_generic_user_object
@
A_create_resource
B_initialize
C_destroy_resourceR 
C
#"_self_saveable_object_factories"
_generic_user_object
@
D_create_resource
E_initialize
F_destroy_resourceR 
 "
trackable_dict_wrapper
C
##_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
'
0"
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
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
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
?2?
0__inference_embedding_layer_2_layer_call_fn_8193
0__inference_embedding_layer_2_layer_call_fn_8177
0__inference_embedding_layer_2_layer_call_fn_8209
0__inference_embedding_layer_2_layer_call_fn_8225?
???
FullArgSpec!
args?
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
annotations? *
 
?2?
__inference_add_cls_sep_8327?
???
FullArgSpec+
args#? 
jinputs
	jnum_cls
	jnum_sep
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *W?T
@?='?$
???????????????????
?SparseTensorSpec
? 
? 
?2?
!__inference_adjust_len_right_7689?
???
FullArgSpec+
args#? 
jinputs
	jmin_len
	jmax_len
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
!???????????????????
? 
? 
?2?
%__inference_convert_ids_to_texts_7640?
???
FullArgSpec
args
?
jids
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!???????????????????
?2?
!__inference_embedding_lookup_7511?
???
FullArgSpec
args?

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
annotations? *&?#
!???????????????????
?2?
__inference_keys_7528?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_num_units_7783?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_pad_id_7693?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_sep_id_7697?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_tokenize_7749?
???
FullArgSpec
args?

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
annotations? *?
??????????
?2?
$__inference_tokenize_to_indices_8318?
???
FullArgSpec
args?

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
annotations? *
 
?2?
__inference_values_7624?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_vocab_lookup_7611?
???
FullArgSpec
args?

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
annotations? *E?B
@?='?$
???????????????????
?SparseTensorSpec
?2?
__inference_vocab_size_7779?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_call_8273?
???
FullArgSpec
args?

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
annotations? *???
???

max_len?
max_len 

min_len?
min_len 

num_cls?
num_cls 

num_sep?
num_sep 
,
	sentences?
	sentences?????????
?2?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8257
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8241
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8289
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8305?
???
FullArgSpec!
args?
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
annotations? *
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
?2?
__inference___call___8132?
???
FullArgSpec
args?

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
annotations? *???
???

max_len?
max_len 

min_len?
min_len 

num_cls?
num_cls 

num_sep?
num_sep 
,
	sentences?
	sentences?????????
?2?
__inference_add_cls_sep_8090?
???
FullArgSpec+
args#? 
jinputs
	jnum_cls
	jnum_sep
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *W?T
@?='?$
???????????????????
?SparseTensorSpec
? 
? 
?2?
!__inference_adjust_len_right_7682?
???
FullArgSpec+
args#? 
jinputs
	jmin_len
	jmax_len
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *8?5
!???????????????????
? 
? 
?2?
%__inference_convert_ids_to_texts_7633?
???
FullArgSpec
args
?
jids
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!???????????????????
?2?
__inference_keys_7523?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_pad_id_7649?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_sep_id_7615?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_tokenize_7740?
???
FullArgSpec
args?

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
annotations? *?
??????????
?2?
__inference_values_7619?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_vocab_lookup_7598?
???
FullArgSpec
args?

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
annotations? *E?B
@?='?$
???????????????????
?SparseTensorSpec
?2?
__inference_vocab_size_7757?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_7562?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_7569?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_7532?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_7645?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_7576?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_7753?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9?
__inference___call___8132?G???
???
???

max_len?
max_len 

min_len?
min_len 

num_cls?
num_cls 

num_sep?
num_sep 
,
	sentences?
	sentences?????????
? "n?k
&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids??????????????????5
__inference__creator_7562?

? 
? "? 5
__inference__creator_7645?

? 
? "? 7
__inference__destroyer_7532?

? 
? "? 7
__inference__destroyer_7753?

? 
? "? >
__inference__initializer_7569MN?

? 
? "? >
__inference__initializer_7576OP?

? 
? "? ?
__inference_add_cls_sep_8090?s?p
i?f
@?='?$
???????????????????
?SparseTensorSpec
?
num_cls 
?
num_sep 
? "!????????????????????
__inference_add_cls_sep_8327?s?p
i?f
@?='?$
???????????????????
?SparseTensorSpec
?
num_cls 
?
num_sep 
? "!????????????????????
!__inference_adjust_len_right_7682?\?Y
R?O
)?&
inputs??????????????????
?
min_len 
?
max_len 
? "!????????????????????
!__inference_adjust_len_right_7689?\?Y
R?O
)?&
inputs??????????????????
?
min_len 
?
max_len 
? "!????????????????????
__inference_call_8273?G???
???
???

max_len?
max_len 

min_len?
min_len 

num_cls?
num_cls 

num_sep?
num_sep 
,
	sentences?
	sentences?????????
? "???
;
embedded/?,
embedded??????????????????

&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids??????????????????z
%__inference_convert_ids_to_texts_7633QH5?2
+?(
&?#
ids??????????????????
? "??????????z
%__inference_convert_ids_to_texts_7640QH5?2
+?(
&?#
ids??????????????????
? "???????????
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8241?G???
???
???

max_len?
max_len 

min_len?
min_len 

num_cls?
num_cls 

num_sep?
num_sep 
,
	sentences?
	sentences?????????
p 
? "???
???
=
embedded1?.

0/embedded??????????????????

(
length?
0/length?????????
C
tokenized_ids2?/
0/tokenized_ids??????????????????
? ?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8257?G???
???
???
"
max_len?
inputs/max_len 
"
min_len?
inputs/min_len 
"
num_cls?
inputs/num_cls 
"
num_sep?
inputs/num_sep 
3
	sentences&?#
inputs/sentences?????????
p 
? "???
???
=
embedded1?.

0/embedded??????????????????

(
length?
0/length?????????
C
tokenized_ids2?/
0/tokenized_ids??????????????????
? ?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8289?G???
???
???

max_len?
max_len 

min_len?
min_len 

num_cls?
num_cls 

num_sep?
num_sep 
,
	sentences?
	sentences?????????
p
? "???
???
=
embedded1?.

0/embedded??????????????????

(
length?
0/length?????????
C
tokenized_ids2?/
0/tokenized_ids??????????????????
? ?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_8305?G???
???
???
"
max_len?
inputs/max_len 
"
min_len?
inputs/min_len 
"
num_cls?
inputs/num_cls 
"
num_sep?
inputs/num_sep 
3
	sentences&?#
inputs/sentences?????????
p
? "???
???
=
embedded1?.

0/embedded??????????????????

(
length?
0/length?????????
C
tokenized_ids2?/
0/tokenized_ids??????????????????
? ?
0__inference_embedding_layer_2_layer_call_fn_8177?G???
???
???
"
max_len?
inputs/max_len 
"
min_len?
inputs/min_len 
"
num_cls?
inputs/num_cls 
"
num_sep?
inputs/num_sep 
3
	sentences&?#
inputs/sentences?????????
p
? "???
;
embedded/?,
embedded??????????????????

&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids???????????????????
0__inference_embedding_layer_2_layer_call_fn_8193?G???
???
???

max_len?
max_len 

min_len?
min_len 

num_cls?
num_cls 

num_sep?
num_sep 
,
	sentences?
	sentences?????????
p
? "???
;
embedded/?,
embedded??????????????????

&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids???????????????????
0__inference_embedding_layer_2_layer_call_fn_8209?G???
???
???
"
max_len?
inputs/max_len 
"
min_len?
inputs/min_len 
"
num_cls?
inputs/num_cls 
"
num_sep?
inputs/num_sep 
3
	sentences&?#
inputs/sentences?????????
p 
? "???
;
embedded/?,
embedded??????????????????

&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids???????????????????
0__inference_embedding_layer_2_layer_call_fn_8225?G???
???
???

max_len?
max_len 

min_len?
min_len 

num_cls?
num_cls 

num_sep?
num_sep 
,
	sentences?
	sentences?????????
p 
? "???
;
embedded/?,
embedded??????????????????

&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids???????????????????
!__inference_embedding_lookup_7511d8?5
.?+
)?&
inputs??????????????????
? "%?"??????????????????
8
__inference_keys_7523I?

? 
? "?8
__inference_keys_7528I?

? 
? "?6
__inference_num_units_7783?

? 
? "? 3
__inference_pad_id_7649?

? 
? "? 3
__inference_pad_id_7693?

? 
? "? 3
__inference_sep_id_7615?

? 
? "? 6
__inference_sep_id_7697J?

? 
? "? ?
__inference_tokenize_7740o+?(
!?
?
inputs?????????
? "@?='?$
???????????????????
?SparseTensorSpec?
__inference_tokenize_7749o+?(
!?
?
inputs?????????
? "@?='?$
???????????????????
?SparseTensorSpec?
$__inference_tokenize_to_indices_8318?G???
???
???
"
max_len?
inputs/max_len 
"
min_len?
inputs/min_len 
"
num_cls?
inputs/num_cls 
"
num_sep?
inputs/num_sep 
3
	sentences&?#
inputs/sentences?????????
? "n?k
&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids??????????????????:
__inference_values_7619K?

? 
? "?:
__inference_values_7624K?

? 
? "??
__inference_vocab_lookup_7598?GO?L
E?B
@?='?$
???????????????????
?SparseTensorSpec
? "@?='?$
???????????????????
?SparseTensorSpec?
__inference_vocab_lookup_7611?GO?L
E?B
@?='?$
???????????????????
?SparseTensorSpec
? "@?='?$
???????????????????
?SparseTensorSpec7
__inference_vocab_size_7757?

? 
? "? :
__inference_vocab_size_7779L?

? 
? "? 