??
??
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
dtypetype?
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
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?"serve*2.2.02v1.9.0-rc1-46331-gce6cb7c8??
r
w_embeddingVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*
shared_namew_embedding
k
w_embedding/Read/ReadVariableOpReadVariableOpw_embedding*
_output_shapes

:	*
dtype0
l

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name2349*
value_dtype0
G
ConstConst*
_output_shapes
: *
dtype0*
value	B : 
I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :	
?
Const_2Const*
_output_shapes
:	*
dtype0*R
valueIBG	B[UNK]B[CLS]B[SEP]B[PAD]BbuildBwordBfunctionBableBtest
t
Const_3Const*
_output_shapes
:	*
dtype0*9
value0B.	"$                            
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_2Const_3*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*"
fR
__inference_<lambda>_3378
&
NoOpNoOp^StatefulPartitionedCall
?
Const_4Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
vocab_layer
	embedding
trainable_variables
	variables
regularization_losses
	keras_api

signatures
?
_vocab_table_initializer
	vocab_table

trainable_variables
	variables
regularization_losses
	keras_api
EC
VARIABLE_VALUEw_embedding$embedding/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
?

layers
trainable_variables
	variables
layer_metrics
regularization_losses
non_trainable_variables
layer_regularization_losses
metrics
 
 

_initializer
 
 
 
?

layers

trainable_variables
	variables
layer_metrics
regularization_losses
non_trainable_variables
layer_regularization_losses
metrics

0
 
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
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamew_embedding/Read/ReadVariableOpConst_4*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*&
f!R
__inference__traced_save_3412
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamew_embedding*
Tin
2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*)
f$R"
 __inference__traced_restore_3427??
?
+
__inference__destroyer_3370
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
??
?
cond_1_false_2909F
Braggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse	H
Draggedfromsparse_strided_slice_9_raggedtosparse_raggedtensortosparse	;
7raggedboundingbox_shape_1_none_lookup_lookuptablefindv2
fill_dims_num_cls
fill_1_dims_num_sep
identity

identity_1
??.RaggedConcat/assert_equal_1/Assert/AssertGuard?.RaggedConcat/assert_equal_3/Assert/AssertGuard?#RaggedFromSparse/Assert/AssertGuard?
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
&RaggedFromSparse/strided_slice/stack_2?
RaggedFromSparse/strided_sliceStridedSliceBraggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse-RaggedFromSparse/strided_slice/stack:output:0/RaggedFromSparse/strided_slice/stack_1:output:0/RaggedFromSparse/strided_slice/stack_2:output:0*
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
(RaggedFromSparse/strided_slice_1/stack_2?
 RaggedFromSparse/strided_slice_1StridedSliceBraggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse/RaggedFromSparse/strided_slice_1/stack:output:01RaggedFromSparse/strided_slice_1/stack_1:output:01RaggedFromSparse/strided_slice_1/stack_2:output:0*
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
#RaggedFromSparse/Assert/AssertGuardIfRaggedFromSparse/LogicalAnd:z:0RaggedFromSparse/LogicalAnd:z:0Braggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse*
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
 *A
else_branch2R0
.RaggedFromSparse_Assert_AssertGuard_false_2972*
output_shapes
: *@
then_branch1R/
-RaggedFromSparse_Assert_AssertGuard_true_29712%
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
(RaggedFromSparse/strided_slice_8/stack_2?
 RaggedFromSparse/strided_slice_8StridedSliceBraggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse/RaggedFromSparse/strided_slice_8/stack:output:01RaggedFromSparse/strided_slice_8/stack_1:output:01RaggedFromSparse/strided_slice_8/stack_2:output:0*
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
 RaggedFromSparse/strided_slice_9StridedSliceDraggedfromsparse_strided_slice_9_raggedtosparse_raggedtensortosparse/RaggedFromSparse/strided_slice_9/stack:output:01RaggedFromSparse/strided_slice_9/stack_1:output:01RaggedFromSparse/strided_slice_9/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2"
 RaggedFromSparse/strided_slice_9?
+RaggedFromSparse/RaggedFromValueRowIds/CastCast)RaggedFromSparse/strided_slice_8:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2-
+RaggedFromSparse/RaggedFromValueRowIds/Cast?
-RaggedFromSparse/RaggedFromValueRowIds/Cast_1Cast)RaggedFromSparse/strided_slice_9:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2/
-RaggedFromSparse/RaggedFromValueRowIds/Cast_1?
5RaggedFromSparse/RaggedFromValueRowIds/bincount/ShapeShape/RaggedFromSparse/RaggedFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:27
5RaggedFromSparse/RaggedFromValueRowIds/bincount/Shape?
5RaggedFromSparse/RaggedFromValueRowIds/bincount/ConstConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedFromSparse/RaggedFromValueRowIds/bincount/Const?
4RaggedFromSparse/RaggedFromValueRowIds/bincount/ProdProd>RaggedFromSparse/RaggedFromValueRowIds/bincount/Shape:output:0>RaggedFromSparse/RaggedFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 26
4RaggedFromSparse/RaggedFromValueRowIds/bincount/Prod?
9RaggedFromSparse/RaggedFromValueRowIds/bincount/Greater/yConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 2;
9RaggedFromSparse/RaggedFromValueRowIds/bincount/Greater/y?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/GreaterGreater=RaggedFromSparse/RaggedFromValueRowIds/bincount/Prod:output:0BRaggedFromSparse/RaggedFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Greater?
4RaggedFromSparse/RaggedFromValueRowIds/bincount/CastCast;RaggedFromSparse/RaggedFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 26
4RaggedFromSparse/RaggedFromValueRowIds/bincount/Cast?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_1Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_1?
3RaggedFromSparse/RaggedFromValueRowIds/bincount/MaxMax/RaggedFromSparse/RaggedFromValueRowIds/Cast:y:0@RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 25
3RaggedFromSparse/RaggedFromValueRowIds/bincount/Max?
5RaggedFromSparse/RaggedFromValueRowIds/bincount/add/yConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :27
5RaggedFromSparse/RaggedFromValueRowIds/bincount/add/y?
3RaggedFromSparse/RaggedFromValueRowIds/bincount/addAddV2<RaggedFromSparse/RaggedFromValueRowIds/bincount/Max:output:0>RaggedFromSparse/RaggedFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 25
3RaggedFromSparse/RaggedFromValueRowIds/bincount/add?
3RaggedFromSparse/RaggedFromValueRowIds/bincount/mulMul8RaggedFromSparse/RaggedFromValueRowIds/bincount/Cast:y:07RaggedFromSparse/RaggedFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 25
3RaggedFromSparse/RaggedFromValueRowIds/bincount/mul?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/MaximumMaximum1RaggedFromSparse/RaggedFromValueRowIds/Cast_1:y:07RaggedFromSparse/RaggedFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Maximum?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/MinimumMinimum1RaggedFromSparse/RaggedFromValueRowIds/Cast_1:y:0;RaggedFromSparse/RaggedFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Minimum?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_2Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
valueB	 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_2?
8RaggedFromSparse/RaggedFromValueRowIds/bincount/BincountBincount/RaggedFromSparse/RaggedFromValueRowIds/Cast:y:0;RaggedFromSparse/RaggedFromValueRowIds/bincount/Minimum:z:0@RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2:
8RaggedFromSparse/RaggedFromValueRowIds/bincount/Bincount?
2RaggedFromSparse/RaggedFromValueRowIds/Cumsum/axisConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 24
2RaggedFromSparse/RaggedFromValueRowIds/Cumsum/axis?
-RaggedFromSparse/RaggedFromValueRowIds/CumsumCumsum?RaggedFromSparse/RaggedFromValueRowIds/bincount/Bincount:bins:0;RaggedFromSparse/RaggedFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2/
-RaggedFromSparse/RaggedFromValueRowIds/Cumsum?
6RaggedFromSparse/RaggedFromValueRowIds/concat/values_0Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0	*
valueB	R 28
6RaggedFromSparse/RaggedFromValueRowIds/concat/values_0?
2RaggedFromSparse/RaggedFromValueRowIds/concat/axisConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 24
2RaggedFromSparse/RaggedFromValueRowIds/concat/axis?
-RaggedFromSparse/RaggedFromValueRowIds/concatConcatV2?RaggedFromSparse/RaggedFromValueRowIds/concat/values_0:output:03RaggedFromSparse/RaggedFromValueRowIds/Cumsum:out:0;RaggedFromSparse/RaggedFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2/
-RaggedFromSparse/RaggedFromValueRowIds/concat?
RaggedBoundingBox/ShapeShape6RaggedFromSparse/RaggedFromValueRowIds/concat:output:0*
T0	*
_output_shapes
:*
out_type0	2
RaggedBoundingBox/Shape?
RaggedBoundingBox/Shape_1Shape7raggedboundingbox_shape_1_none_lookup_lookuptablefindv2*
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
)RaggedBoundingBox/strided_slice_1/stack_2?
!RaggedBoundingBox/strided_slice_1StridedSlice6RaggedFromSparse/RaggedFromValueRowIds/concat:output:00RaggedBoundingBox/strided_slice_1/stack:output:02RaggedBoundingBox/strided_slice_1/stack_1:output:02RaggedBoundingBox/strided_slice_1/stack_2:output:0*
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
)RaggedBoundingBox/strided_slice_2/stack_2?
!RaggedBoundingBox/strided_slice_2StridedSlice6RaggedFromSparse/RaggedFromValueRowIds/concat:output:00RaggedBoundingBox/strided_slice_2/stack:output:02RaggedBoundingBox/strided_slice_2/stack_1:output:02RaggedBoundingBox/strided_slice_2/stack_2:output:0*
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
RaggedBoundingBox/stackPackRaggedBoundingBox/sub:z:0RaggedBoundingBox/Maximum:z:0*
N*
T0	*
_output_shapes
:2
RaggedBoundingBox/stack?
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
	Fill/Castn
	Fill/dimsPackFill/Cast:y:0fill_dims_num_cls*
N*
T0*
_output_shapes
:2
	Fill/dimsZ

Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :2

Fill/valuex
FillFillFill/dims:output:0Fill/value:output:0*
T0*0
_output_shapes
:??????????????????2
Fillj
Fill_1/CastCaststrided_slice:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Fill_1/Castv
Fill_1/dimsPackFill_1/Cast:y:0fill_1_dims_num_sep*
N*
T0*
_output_shapes
:2
Fill_1/dims^
Fill_1/valueConst*
_output_shapes
: *
dtype0*
value	B :2
Fill_1/value?
Fill_1FillFill_1/dims:output:0Fill_1/value:output:0*
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
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice_1/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_1StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_1/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_1?
-RaggedConcat/RaggedFromTensor/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R
?????????2/
-RaggedConcat/RaggedFromTensor/concat/values_0?
)RaggedConcat/RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)RaggedConcat/RaggedFromTensor/concat/axis?
$RaggedConcat/RaggedFromTensor/concatConcatV26RaggedConcat/RaggedFromTensor/concat/values_0:output:06RaggedConcat/RaggedFromTensor/strided_slice_1:output:02RaggedConcat/RaggedFromTensor/concat/axis:output:0*
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
3RaggedConcat/RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3RaggedConcat/RaggedFromTensor/strided_slice_2/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
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
3RaggedConcat/RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice_3/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_3StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_3/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_3?
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
FRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice?
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2@
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add/y?
<RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/addAddV26RaggedConcat/RaggedFromTensor/strided_slice_2:output:0GRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: 2>
<RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add?
DRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2F
DRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/start?
DRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2F
DRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/delta?
CRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/CastCastMRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2E
CRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast?
ERaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast_1CastMRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2G
ERaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast_1?
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/rangeRangeGRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast:y:0@RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add:z:0IRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2@
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range?
<RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/mulMulGRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range:output:06RaggedConcat/RaggedFromTensor/strided_slice_3:output:0*
T0	*#
_output_shapes
:?????????2>
<RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/mul?
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
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_1StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_1?
/RaggedConcat/RaggedFromTensor_1/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R
?????????21
/RaggedConcat/RaggedFromTensor_1/concat/values_0?
+RaggedConcat/RaggedFromTensor_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+RaggedConcat/RaggedFromTensor_1/concat/axis?
&RaggedConcat/RaggedFromTensor_1/concatConcatV28RaggedConcat/RaggedFromTensor_1/concat/values_0:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_1:output:04RaggedConcat/RaggedFromTensor_1/concat/axis:output:0*
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
5RaggedConcat/RaggedFromTensor_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
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
5RaggedConcat/RaggedFromTensor_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_3StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_3?
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
HRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice?
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2B
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add/y?
>RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/addAddV28RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:0IRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: 2@
>RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add?
FRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2H
FRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/start?
FRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2H
FRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/delta?
ERaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/CastCastORaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2G
ERaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast?
GRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast_1CastORaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2I
GRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast_1?
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/rangeRangeIRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast:y:0BRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add:z:0KRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2B
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range?
>RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/mulMulIRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_3:output:0*
T0	*#
_output_shapes
:?????????2@
>RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/mul?
!RaggedConcat/assert_equal_1/EqualEqual)RaggedFromSparse/strided_slice_9:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: 2#
!RaggedConcat/assert_equal_1/Equal?
!RaggedConcat/assert_equal_1/ConstConst*
_output_shapes
: *
dtype0*
valueB 2#
!RaggedConcat/assert_equal_1/Const?
RaggedConcat/assert_equal_1/AllAll%RaggedConcat/assert_equal_1/Equal:z:0*RaggedConcat/assert_equal_1/Const:output:0*
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
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_2:0) = 2,
*RaggedConcat/assert_equal_1/Assert/Const_3?
.RaggedConcat/assert_equal_1/Assert/AssertGuardIf(RaggedConcat/assert_equal_1/All:output:0(RaggedConcat/assert_equal_1/All:output:0)RaggedFromSparse/strided_slice_9:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0$^RaggedFromSparse/Assert/AssertGuard*
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
 *L
else_branch=R;
9RaggedConcat_assert_equal_1_Assert_AssertGuard_false_3137*
output_shapes
: *K
then_branch<R:
8RaggedConcat_assert_equal_1_Assert_AssertGuard_true_313620
.RaggedConcat/assert_equal_1/Assert/AssertGuard?
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentity7RaggedConcat/assert_equal_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 29
7RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity?
!RaggedConcat/assert_equal_3/EqualEqual8RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: 2#
!RaggedConcat/assert_equal_3/Equal?
!RaggedConcat/assert_equal_3/ConstConst*
_output_shapes
: *
dtype0*
valueB 2#
!RaggedConcat/assert_equal_3/Const?
RaggedConcat/assert_equal_3/AllAll%RaggedConcat/assert_equal_3/Equal:z:0*RaggedConcat/assert_equal_3/Const:output:0*
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
value@B> B8x (RaggedConcat/RaggedFromTensor_1/strided_slice_2:0) = 2,
*RaggedConcat/assert_equal_3/Assert/Const_2?
*RaggedConcat/assert_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_2:0) = 2,
*RaggedConcat/assert_equal_3/Assert/Const_3?
.RaggedConcat/assert_equal_3/Assert/AssertGuardIf(RaggedConcat/assert_equal_3/All:output:0(RaggedConcat/assert_equal_3/All:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard*
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
 *L
else_branch=R;
9RaggedConcat_assert_equal_3_Assert_AssertGuard_false_3164*
output_shapes
: *K
then_branch<R:
8RaggedConcat_assert_equal_3_Assert_AssertGuard_true_316320
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
RaggedConcat/concat/axis?
RaggedConcat/concatConcatV2.RaggedConcat/RaggedFromTensor/Reshape:output:07raggedboundingbox_shape_1_none_lookup_lookuptablefindv20RaggedConcat/RaggedFromTensor_1/Reshape:output:0!RaggedConcat/concat/axis:output:0*
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
RaggedConcat/strided_sliceStridedSlice@RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/mul:z:0)RaggedConcat/strided_slice/stack:output:0+RaggedConcat/strided_slice/stack_1:output:0+RaggedConcat/strided_slice/stack_2:output:0*
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
RaggedConcat/strided_slice_1StridedSlice6RaggedFromSparse/RaggedFromValueRowIds/concat:output:0+RaggedConcat/strided_slice_1/stack:output:0-RaggedConcat/strided_slice_1/stack_1:output:0-RaggedConcat/strided_slice_1/stack_2:output:0*
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
RaggedConcat/strided_slice_2StridedSlice6RaggedFromSparse/RaggedFromValueRowIds/concat:output:0+RaggedConcat/strided_slice_2/stack:output:0-RaggedConcat/strided_slice_2/stack_1:output:0-RaggedConcat/strided_slice_2/stack_2:output:0*
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
$RaggedConcat/strided_slice_3/stack_2?
RaggedConcat/strided_slice_3StridedSliceBRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_3/stack:output:0-RaggedConcat/strided_slice_3/stack_1:output:0-RaggedConcat/strided_slice_3/stack_2:output:0*
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
$RaggedConcat/strided_slice_4/stack_2?
RaggedConcat/strided_slice_4StridedSliceBRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_4/stack:output:0-RaggedConcat/strided_slice_4/stack_1:output:0-RaggedConcat/strided_slice_4/stack_2:output:0*
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
RaggedConcat/concat_1ConcatV2@RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/mul:z:0RaggedConcat/add:z:0RaggedConcat/add_2:z:0#RaggedConcat/concat_1/axis:output:0*
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
RaggedConcat/mulMul6RaggedConcat/RaggedFromTensor/strided_slice_2:output:0RaggedConcat/mul/y:output:0*
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
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8* 
fR
__inference_pad_id_24492
PartitionedCallw
RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2
RaggedToTensor/Const?
#RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorRaggedToTensor/Const:output:0<RaggedConcat/RaggedGather/RaggedGather:output_dense_values:0PartitionedCall:output:0%RaggedConcat/strided_slice_5:output:0*
T0*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2%
#RaggedToTensor/RaggedTensorToTensorP
ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
ConstT
Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z2	
Const_1?
IdentityIdentity,RaggedToTensor/RaggedTensorToTensor:result:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard/^RaggedConcat/assert_equal_3/Assert/AssertGuard$^RaggedFromSparse/Assert/AssertGuard*
T0*0
_output_shapes
:??????????????????2

IdentityT
Const_2Const*
_output_shapes
: *
dtype0
*
value	B
 Z2	
Const_2?

Identity_1IdentityConst_2:output:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard/^RaggedConcat/assert_equal_3/Assert/AssertGuard$^RaggedFromSparse/Assert/AssertGuard*
T0
*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:?????????::?????????: : 2`
.RaggedConcat/assert_equal_1/Assert/AssertGuard.RaggedConcat/assert_equal_1/Assert/AssertGuard2`
.RaggedConcat/assert_equal_3/Assert/AssertGuard.RaggedConcat/assert_equal_3/Assert/AssertGuard2J
#RaggedFromSparse/Assert/AssertGuard#RaggedFromSparse/Assert/AssertGuard:- )
'
_output_shapes
:?????????: 

_output_shapes
::)%
#
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
B
cond_true_2428
equal_num_sep
placeholder

identity
T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yy
EqualEqualequal_num_sepEqual/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
EqualL
IdentityIdentity	Equal:z:0*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : : 

_output_shapes
: :

_output_shapes
: 
?
?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_3306
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

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?
StatefulPartitionedCallStatefulPartitionedCallmax_lenmin_lennum_clsnum_sep	sentencesunknown	unknown_0*
Tin
	2*
Tout
2*?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*-
f(R&
$__inference_tokenize_to_indices_28182
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:1	unknown_1*
Tin
2*
Tout
2*4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8**
f%R#
!__inference_embedding_lookup_28342
StatefulPartitionedCall_1?
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*4
_output_shapes"
 :??????????????????2

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
_user_specified_name	sentences:

_output_shapes
: :

_output_shapes
: 
?
?
8RaggedConcat_assert_equal_3_Assert_AssertGuard_true_2702,
(identity_raggedconcat_assert_equal_3_all

placeholder	
placeholder_1	

identity_1
*
NoOpNoOp*
_output_shapes
 2
NoOpr
IdentityIdentity(identity_raggedconcat_assert_equal_3_all^NoOp*
T0
*
_output_shapes
: 2

IdentityX

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
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
?
?
8RaggedConcat_assert_equal_1_Assert_AssertGuard_true_2675,
(identity_raggedconcat_assert_equal_1_all

placeholder	
placeholder_1	

identity_1
*
NoOpNoOp*
_output_shapes
 2
NoOpr
IdentityIdentity(identity_raggedconcat_assert_equal_1_all^NoOp*
T0
*
_output_shapes
: 2

IdentityX

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
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
*
__inference_num_units_3331
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes 
?
'
__inference_pad_id_2449
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
?
?
9RaggedConcat_assert_equal_1_Assert_AssertGuard_false_3137*
&assert_raggedconcat_assert_equal_1_all
+
'assert_raggedfromsparse_strided_slice_9	8
4assert_raggedconcat_raggedfromtensor_strided_slice_2	

identity_1
??Assert?
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2
Assert/data_1?
Assert/data_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (RaggedFromSparse/strided_slice_9:0) = 2
Assert/data_2?
Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_2:0) = 2
Assert/data_4?
AssertAssert&assert_raggedconcat_assert_equal_1_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0'assert_raggedfromsparse_strided_slice_9Assert/data_4:output:04assert_raggedconcat_raggedfromtensor_strided_slice_2*
T

2		*
_output_shapes
 2
Assertr
IdentityIdentity&assert_raggedconcat_assert_equal_1_all^Assert*
T0
*
_output_shapes
: 2

Identitya

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : 2
AssertAssert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
8RaggedConcat_assert_equal_3_Assert_AssertGuard_true_3163,
(identity_raggedconcat_assert_equal_3_all

placeholder	
placeholder_1	

identity_1
*
NoOpNoOp*
_output_shapes
 2
NoOpr
IdentityIdentity(identity_raggedconcat_assert_equal_3_all^NoOp*
T0
*
_output_shapes
: 2

IdentityX

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
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
+
__inference_vocab_size_2356
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :	2
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
6__inference_vocab_layer_from_path_1_layer_call_fn_3286
max_len
min_len
num_cls
num_sep
	sentences
unknown
	unknown_0
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallmax_lenmin_lennum_clsnum_sep	sentencesunknown	unknown_0*
Tin
	2*
Tout
2*?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*Z
fURS
Q__inference_vocab_layer_from_path_1_layer_call_and_return_conditional_losses_32702
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
_user_specified_name	sentences:

_output_shapes
: 
??
?
cond_1_false_2443F
Braggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse	H
Draggedfromsparse_strided_slice_9_raggedtosparse_raggedtensortosparse	;
7raggedboundingbox_shape_1_none_lookup_lookuptablefindv2
fill_dims_num_cls
fill_1_dims_num_sep
identity

identity_1
??.RaggedConcat/assert_equal_1/Assert/AssertGuard?.RaggedConcat/assert_equal_3/Assert/AssertGuard?#RaggedFromSparse/Assert/AssertGuard?
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
&RaggedFromSparse/strided_slice/stack_2?
RaggedFromSparse/strided_sliceStridedSliceBraggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse-RaggedFromSparse/strided_slice/stack:output:0/RaggedFromSparse/strided_slice/stack_1:output:0/RaggedFromSparse/strided_slice/stack_2:output:0*
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
(RaggedFromSparse/strided_slice_1/stack_2?
 RaggedFromSparse/strided_slice_1StridedSliceBraggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse/RaggedFromSparse/strided_slice_1/stack:output:01RaggedFromSparse/strided_slice_1/stack_1:output:01RaggedFromSparse/strided_slice_1/stack_2:output:0*
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
#RaggedFromSparse/Assert/AssertGuardIfRaggedFromSparse/LogicalAnd:z:0RaggedFromSparse/LogicalAnd:z:0Braggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse*
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
 *A
else_branch2R0
.RaggedFromSparse_Assert_AssertGuard_false_2511*
output_shapes
: *@
then_branch1R/
-RaggedFromSparse_Assert_AssertGuard_true_25102%
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
(RaggedFromSparse/strided_slice_8/stack_2?
 RaggedFromSparse/strided_slice_8StridedSliceBraggedfromsparse_strided_slice_raggedtosparse_raggedtensortosparse/RaggedFromSparse/strided_slice_8/stack:output:01RaggedFromSparse/strided_slice_8/stack_1:output:01RaggedFromSparse/strided_slice_8/stack_2:output:0*
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
 RaggedFromSparse/strided_slice_9StridedSliceDraggedfromsparse_strided_slice_9_raggedtosparse_raggedtensortosparse/RaggedFromSparse/strided_slice_9/stack:output:01RaggedFromSparse/strided_slice_9/stack_1:output:01RaggedFromSparse/strided_slice_9/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2"
 RaggedFromSparse/strided_slice_9?
+RaggedFromSparse/RaggedFromValueRowIds/CastCast)RaggedFromSparse/strided_slice_8:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2-
+RaggedFromSparse/RaggedFromValueRowIds/Cast?
-RaggedFromSparse/RaggedFromValueRowIds/Cast_1Cast)RaggedFromSparse/strided_slice_9:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2/
-RaggedFromSparse/RaggedFromValueRowIds/Cast_1?
5RaggedFromSparse/RaggedFromValueRowIds/bincount/ShapeShape/RaggedFromSparse/RaggedFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:27
5RaggedFromSparse/RaggedFromValueRowIds/bincount/Shape?
5RaggedFromSparse/RaggedFromValueRowIds/bincount/ConstConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedFromSparse/RaggedFromValueRowIds/bincount/Const?
4RaggedFromSparse/RaggedFromValueRowIds/bincount/ProdProd>RaggedFromSparse/RaggedFromValueRowIds/bincount/Shape:output:0>RaggedFromSparse/RaggedFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 26
4RaggedFromSparse/RaggedFromValueRowIds/bincount/Prod?
9RaggedFromSparse/RaggedFromValueRowIds/bincount/Greater/yConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 2;
9RaggedFromSparse/RaggedFromValueRowIds/bincount/Greater/y?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/GreaterGreater=RaggedFromSparse/RaggedFromValueRowIds/bincount/Prod:output:0BRaggedFromSparse/RaggedFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Greater?
4RaggedFromSparse/RaggedFromValueRowIds/bincount/CastCast;RaggedFromSparse/RaggedFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 26
4RaggedFromSparse/RaggedFromValueRowIds/bincount/Cast?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_1Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0*
valueB: 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_1?
3RaggedFromSparse/RaggedFromValueRowIds/bincount/MaxMax/RaggedFromSparse/RaggedFromValueRowIds/Cast:y:0@RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 25
3RaggedFromSparse/RaggedFromValueRowIds/bincount/Max?
5RaggedFromSparse/RaggedFromValueRowIds/bincount/add/yConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B :27
5RaggedFromSparse/RaggedFromValueRowIds/bincount/add/y?
3RaggedFromSparse/RaggedFromValueRowIds/bincount/addAddV2<RaggedFromSparse/RaggedFromValueRowIds/bincount/Max:output:0>RaggedFromSparse/RaggedFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 25
3RaggedFromSparse/RaggedFromValueRowIds/bincount/add?
3RaggedFromSparse/RaggedFromValueRowIds/bincount/mulMul8RaggedFromSparse/RaggedFromValueRowIds/bincount/Cast:y:07RaggedFromSparse/RaggedFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 25
3RaggedFromSparse/RaggedFromValueRowIds/bincount/mul?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/MaximumMaximum1RaggedFromSparse/RaggedFromValueRowIds/Cast_1:y:07RaggedFromSparse/RaggedFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Maximum?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/MinimumMinimum1RaggedFromSparse/RaggedFromValueRowIds/Cast_1:y:0;RaggedFromSparse/RaggedFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Minimum?
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_2Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0	*
valueB	 29
7RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_2?
8RaggedFromSparse/RaggedFromValueRowIds/bincount/BincountBincount/RaggedFromSparse/RaggedFromValueRowIds/Cast:y:0;RaggedFromSparse/RaggedFromValueRowIds/bincount/Minimum:z:0@RaggedFromSparse/RaggedFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????2:
8RaggedFromSparse/RaggedFromValueRowIds/bincount/Bincount?
2RaggedFromSparse/RaggedFromValueRowIds/Cumsum/axisConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 24
2RaggedFromSparse/RaggedFromValueRowIds/Cumsum/axis?
-RaggedFromSparse/RaggedFromValueRowIds/CumsumCumsum?RaggedFromSparse/RaggedFromValueRowIds/bincount/Bincount:bins:0;RaggedFromSparse/RaggedFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2/
-RaggedFromSparse/RaggedFromValueRowIds/Cumsum?
6RaggedFromSparse/RaggedFromValueRowIds/concat/values_0Const-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
:*
dtype0	*
valueB	R 28
6RaggedFromSparse/RaggedFromValueRowIds/concat/values_0?
2RaggedFromSparse/RaggedFromValueRowIds/concat/axisConst-^RaggedFromSparse/Assert/AssertGuard/Identity*
_output_shapes
: *
dtype0*
value	B : 24
2RaggedFromSparse/RaggedFromValueRowIds/concat/axis?
-RaggedFromSparse/RaggedFromValueRowIds/concatConcatV2?RaggedFromSparse/RaggedFromValueRowIds/concat/values_0:output:03RaggedFromSparse/RaggedFromValueRowIds/Cumsum:out:0;RaggedFromSparse/RaggedFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2/
-RaggedFromSparse/RaggedFromValueRowIds/concat?
RaggedBoundingBox/ShapeShape6RaggedFromSparse/RaggedFromValueRowIds/concat:output:0*
T0	*
_output_shapes
:*
out_type0	2
RaggedBoundingBox/Shape?
RaggedBoundingBox/Shape_1Shape7raggedboundingbox_shape_1_none_lookup_lookuptablefindv2*
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
)RaggedBoundingBox/strided_slice_1/stack_2?
!RaggedBoundingBox/strided_slice_1StridedSlice6RaggedFromSparse/RaggedFromValueRowIds/concat:output:00RaggedBoundingBox/strided_slice_1/stack:output:02RaggedBoundingBox/strided_slice_1/stack_1:output:02RaggedBoundingBox/strided_slice_1/stack_2:output:0*
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
)RaggedBoundingBox/strided_slice_2/stack_2?
!RaggedBoundingBox/strided_slice_2StridedSlice6RaggedFromSparse/RaggedFromValueRowIds/concat:output:00RaggedBoundingBox/strided_slice_2/stack:output:02RaggedBoundingBox/strided_slice_2/stack_1:output:02RaggedBoundingBox/strided_slice_2/stack_2:output:0*
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
RaggedBoundingBox/stackPackRaggedBoundingBox/sub:z:0RaggedBoundingBox/Maximum:z:0*
N*
T0	*
_output_shapes
:2
RaggedBoundingBox/stack?
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
	Fill/Castn
	Fill/dimsPackFill/Cast:y:0fill_dims_num_cls*
N*
T0*
_output_shapes
:2
	Fill/dimsZ

Fill/valueConst*
_output_shapes
: *
dtype0*
value	B :2

Fill/valuex
FillFillFill/dims:output:0Fill/value:output:0*
T0*0
_output_shapes
:??????????????????2
Fillj
Fill_1/CastCaststrided_slice:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2
Fill_1/Castv
Fill_1/dimsPackFill_1/Cast:y:0fill_1_dims_num_sep*
N*
T0*
_output_shapes
:2
Fill_1/dims^
Fill_1/valueConst*
_output_shapes
: *
dtype0*
value	B :2
Fill_1/value?
Fill_1FillFill_1/dims:output:0Fill_1/value:output:0*
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
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice_1/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_1StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_1/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_1?
-RaggedConcat/RaggedFromTensor/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R
?????????2/
-RaggedConcat/RaggedFromTensor/concat/values_0?
)RaggedConcat/RaggedFromTensor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)RaggedConcat/RaggedFromTensor/concat/axis?
$RaggedConcat/RaggedFromTensor/concatConcatV26RaggedConcat/RaggedFromTensor/concat/values_0:output:06RaggedConcat/RaggedFromTensor/strided_slice_1:output:02RaggedConcat/RaggedFromTensor/concat/axis:output:0*
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
3RaggedConcat/RaggedFromTensor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3RaggedConcat/RaggedFromTensor/strided_slice_2/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
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
3RaggedConcat/RaggedFromTensor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:25
3RaggedConcat/RaggedFromTensor/strided_slice_3/stack?
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1?
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2?
-RaggedConcat/RaggedFromTensor/strided_slice_3StridedSlice,RaggedConcat/RaggedFromTensor/Shape:output:0<RaggedConcat/RaggedFromTensor/strided_slice_3/stack:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_1:output:0>RaggedConcat/RaggedFromTensor/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask2/
-RaggedConcat/RaggedFromTensor/strided_slice_3?
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
FRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/strided_slice?
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2@
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add/y?
<RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/addAddV26RaggedConcat/RaggedFromTensor/strided_slice_2:output:0GRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: 2>
<RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add?
DRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2F
DRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/start?
DRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2F
DRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/delta?
CRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/CastCastMRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2E
CRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast?
ERaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast_1CastMRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2G
ERaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast_1?
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/rangeRangeGRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast:y:0@RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/add:z:0IRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2@
>RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range?
<RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/mulMulGRaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/range:output:06RaggedConcat/RaggedFromTensor/strided_slice_3:output:0*
T0	*#
_output_shapes
:?????????2>
<RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/mul?
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
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 29
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_1StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
end_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_1?
/RaggedConcat/RaggedFromTensor_1/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R
?????????21
/RaggedConcat/RaggedFromTensor_1/concat/values_0?
+RaggedConcat/RaggedFromTensor_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+RaggedConcat/RaggedFromTensor_1/concat/axis?
&RaggedConcat/RaggedFromTensor_1/concatConcatV28RaggedConcat/RaggedFromTensor_1/concat/values_0:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_1:output:04RaggedConcat/RaggedFromTensor_1/concat/axis:output:0*
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
5RaggedConcat/RaggedFromTensor_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
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
5RaggedConcat/RaggedFromTensor_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack?
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1?
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2?
/RaggedConcat/RaggedFromTensor_1/strided_slice_3StridedSlice.RaggedConcat/RaggedFromTensor_1/Shape:output:0>RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_1:output:0@RaggedConcat/RaggedFromTensor_1/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask21
/RaggedConcat/RaggedFromTensor_1/strided_slice_3?
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
HRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/strided_slice?
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R2B
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add/y?
>RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/addAddV28RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:0IRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add/y:output:0*
T0	*
_output_shapes
: 2@
>RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add?
FRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2H
FRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/start?
FRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2H
FRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/delta?
ERaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/CastCastORaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/start:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2G
ERaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast?
GRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast_1CastORaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/delta:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2I
GRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast_1?
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/rangeRangeIRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast:y:0BRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/add:z:0KRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range/Cast_1:y:0*

Tidx0	*#
_output_shapes
:?????????2B
@RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range?
>RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/mulMulIRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/range:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_3:output:0*
T0	*#
_output_shapes
:?????????2@
>RaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/mul?
!RaggedConcat/assert_equal_1/EqualEqual)RaggedFromSparse/strided_slice_9:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: 2#
!RaggedConcat/assert_equal_1/Equal?
!RaggedConcat/assert_equal_1/ConstConst*
_output_shapes
: *
dtype0*
valueB 2#
!RaggedConcat/assert_equal_1/Const?
RaggedConcat/assert_equal_1/AllAll%RaggedConcat/assert_equal_1/Equal:z:0*RaggedConcat/assert_equal_1/Const:output:0*
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
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_2:0) = 2,
*RaggedConcat/assert_equal_1/Assert/Const_3?
.RaggedConcat/assert_equal_1/Assert/AssertGuardIf(RaggedConcat/assert_equal_1/All:output:0(RaggedConcat/assert_equal_1/All:output:0)RaggedFromSparse/strided_slice_9:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0$^RaggedFromSparse/Assert/AssertGuard*
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
 *L
else_branch=R;
9RaggedConcat_assert_equal_1_Assert_AssertGuard_false_2676*
output_shapes
: *K
then_branch<R:
8RaggedConcat_assert_equal_1_Assert_AssertGuard_true_267520
.RaggedConcat/assert_equal_1/Assert/AssertGuard?
7RaggedConcat/assert_equal_1/Assert/AssertGuard/IdentityIdentity7RaggedConcat/assert_equal_1/Assert/AssertGuard:output:0*
T0
*
_output_shapes
: 29
7RaggedConcat/assert_equal_1/Assert/AssertGuard/Identity?
!RaggedConcat/assert_equal_3/EqualEqual8RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0*
T0	*
_output_shapes
: 2#
!RaggedConcat/assert_equal_3/Equal?
!RaggedConcat/assert_equal_3/ConstConst*
_output_shapes
: *
dtype0*
valueB 2#
!RaggedConcat/assert_equal_3/Const?
RaggedConcat/assert_equal_3/AllAll%RaggedConcat/assert_equal_3/Equal:z:0*RaggedConcat/assert_equal_3/Const:output:0*
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
value@B> B8x (RaggedConcat/RaggedFromTensor_1/strided_slice_2:0) = 2,
*RaggedConcat/assert_equal_3/Assert/Const_2?
*RaggedConcat/assert_equal_3/Assert/Const_3Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_2:0) = 2,
*RaggedConcat/assert_equal_3/Assert/Const_3?
.RaggedConcat/assert_equal_3/Assert/AssertGuardIf(RaggedConcat/assert_equal_3/All:output:0(RaggedConcat/assert_equal_3/All:output:08RaggedConcat/RaggedFromTensor_1/strided_slice_2:output:06RaggedConcat/RaggedFromTensor/strided_slice_2:output:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard*
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
 *L
else_branch=R;
9RaggedConcat_assert_equal_3_Assert_AssertGuard_false_2703*
output_shapes
: *K
then_branch<R:
8RaggedConcat_assert_equal_3_Assert_AssertGuard_true_270220
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
RaggedConcat/concat/axis?
RaggedConcat/concatConcatV2.RaggedConcat/RaggedFromTensor/Reshape:output:07raggedboundingbox_shape_1_none_lookup_lookuptablefindv20RaggedConcat/RaggedFromTensor_1/Reshape:output:0!RaggedConcat/concat/axis:output:0*
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
RaggedConcat/strided_sliceStridedSlice@RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/mul:z:0)RaggedConcat/strided_slice/stack:output:0+RaggedConcat/strided_slice/stack_1:output:0+RaggedConcat/strided_slice/stack_2:output:0*
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
RaggedConcat/strided_slice_1StridedSlice6RaggedFromSparse/RaggedFromValueRowIds/concat:output:0+RaggedConcat/strided_slice_1/stack:output:0-RaggedConcat/strided_slice_1/stack_1:output:0-RaggedConcat/strided_slice_1/stack_2:output:0*
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
RaggedConcat/strided_slice_2StridedSlice6RaggedFromSparse/RaggedFromValueRowIds/concat:output:0+RaggedConcat/strided_slice_2/stack:output:0-RaggedConcat/strided_slice_2/stack_1:output:0-RaggedConcat/strided_slice_2/stack_2:output:0*
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
$RaggedConcat/strided_slice_3/stack_2?
RaggedConcat/strided_slice_3StridedSliceBRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_3/stack:output:0-RaggedConcat/strided_slice_3/stack_1:output:0-RaggedConcat/strided_slice_3/stack_2:output:0*
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
$RaggedConcat/strided_slice_4/stack_2?
RaggedConcat/strided_slice_4StridedSliceBRaggedConcat/RaggedFromTensor_1/RaggedFromUniformRowLength/mul:z:0+RaggedConcat/strided_slice_4/stack:output:0-RaggedConcat/strided_slice_4/stack_1:output:0-RaggedConcat/strided_slice_4/stack_2:output:0*
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
RaggedConcat/concat_1ConcatV2@RaggedConcat/RaggedFromTensor/RaggedFromUniformRowLength/mul:z:0RaggedConcat/add:z:0RaggedConcat/add_2:z:0#RaggedConcat/concat_1/axis:output:0*
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
RaggedConcat/mulMul6RaggedConcat/RaggedFromTensor/strided_slice_2:output:0RaggedConcat/mul/y:output:0*
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
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8* 
fR
__inference_pad_id_24492
PartitionedCallw
RaggedToTensor/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????2
RaggedToTensor/Const?
#RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensorRaggedToTensor/Const:output:0<RaggedConcat/RaggedGather/RaggedGather:output_dense_values:0PartitionedCall:output:0%RaggedConcat/strided_slice_5:output:0*
T0*
Tindex0	*
Tshape0	*0
_output_shapes
:??????????????????*
num_row_partition_tensors*%
row_partition_types

ROW_SPLITS2%
#RaggedToTensor/RaggedTensorToTensorP
ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
ConstT
Const_1Const*
_output_shapes
: *
dtype0
*
value	B
 Z2	
Const_1?
IdentityIdentity,RaggedToTensor/RaggedTensorToTensor:result:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard/^RaggedConcat/assert_equal_3/Assert/AssertGuard$^RaggedFromSparse/Assert/AssertGuard*
T0*0
_output_shapes
:??????????????????2

IdentityT
Const_2Const*
_output_shapes
: *
dtype0
*
value	B
 Z2	
Const_2?

Identity_1IdentityConst_2:output:0/^RaggedConcat/assert_equal_1/Assert/AssertGuard/^RaggedConcat/assert_equal_3/Assert/AssertGuard$^RaggedFromSparse/Assert/AssertGuard*
T0
*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:?????????::?????????: : 2`
.RaggedConcat/assert_equal_1/Assert/AssertGuard.RaggedConcat/assert_equal_1/Assert/AssertGuard2`
.RaggedConcat/assert_equal_3/Assert/AssertGuard.RaggedConcat/assert_equal_3/Assert/AssertGuard2J
#RaggedFromSparse/Assert/AssertGuard#RaggedFromSparse/Assert/AssertGuard:- )
'
_output_shapes
:?????????: 

_output_shapes
::)%
#
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?f
?
Q__inference_vocab_layer_from_path_1_layer_call_and_return_conditional_losses_3270
max_len
min_len
num_cls
num_sep
	sentences.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value
identity

identity_1??None_Lookup/LookupTableFindV2?cond_1g
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
StringSplit/Const?
StringSplit/StringSplitV2StringSplitV2	sentencesStringSplit/Const:output:0*<
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
&StringSplit/RaggedFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2(
&StringSplit/RaggedFromValueRowIds/Cast?
(StringSplit/RaggedFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2*
(StringSplit/RaggedFromValueRowIds/Cast_1?
0StringSplit/RaggedFromValueRowIds/bincount/ShapeShape*StringSplit/RaggedFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:22
0StringSplit/RaggedFromValueRowIds/bincount/Shape?
0StringSplit/RaggedFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 22
0StringSplit/RaggedFromValueRowIds/bincount/Const?
/StringSplit/RaggedFromValueRowIds/bincount/ProdProd9StringSplit/RaggedFromValueRowIds/bincount/Shape:output:09StringSplit/RaggedFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 21
/StringSplit/RaggedFromValueRowIds/bincount/Prod?
4StringSplit/RaggedFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 26
4StringSplit/RaggedFromValueRowIds/bincount/Greater/y?
2StringSplit/RaggedFromValueRowIds/bincount/GreaterGreater8StringSplit/RaggedFromValueRowIds/bincount/Prod:output:0=StringSplit/RaggedFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 24
2StringSplit/RaggedFromValueRowIds/bincount/Greater?
/StringSplit/RaggedFromValueRowIds/bincount/CastCast6StringSplit/RaggedFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 21
/StringSplit/RaggedFromValueRowIds/bincount/Cast?
2StringSplit/RaggedFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2StringSplit/RaggedFromValueRowIds/bincount/Const_1?
.StringSplit/RaggedFromValueRowIds/bincount/MaxMax*StringSplit/RaggedFromValueRowIds/Cast:y:0;StringSplit/RaggedFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 20
.StringSplit/RaggedFromValueRowIds/bincount/Max?
0StringSplit/RaggedFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :22
0StringSplit/RaggedFromValueRowIds/bincount/add/y?
.StringSplit/RaggedFromValueRowIds/bincount/addAddV27StringSplit/RaggedFromValueRowIds/bincount/Max:output:09StringSplit/RaggedFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 20
.StringSplit/RaggedFromValueRowIds/bincount/add?
.StringSplit/RaggedFromValueRowIds/bincount/mulMul3StringSplit/RaggedFromValueRowIds/bincount/Cast:y:02StringSplit/RaggedFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 20
.StringSplit/RaggedFromValueRowIds/bincount/mul?
2StringSplit/RaggedFromValueRowIds/bincount/MaximumMaximum,StringSplit/RaggedFromValueRowIds/Cast_1:y:02StringSplit/RaggedFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 24
2StringSplit/RaggedFromValueRowIds/bincount/Maximum?
2StringSplit/RaggedFromValueRowIds/bincount/MinimumMinimum,StringSplit/RaggedFromValueRowIds/Cast_1:y:06StringSplit/RaggedFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 24
2StringSplit/RaggedFromValueRowIds/bincount/Minimum?
2StringSplit/RaggedFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 24
2StringSplit/RaggedFromValueRowIds/bincount/Const_2?
3StringSplit/RaggedFromValueRowIds/bincount/BincountBincount*StringSplit/RaggedFromValueRowIds/Cast:y:06StringSplit/RaggedFromValueRowIds/bincount/Minimum:z:0;StringSplit/RaggedFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????25
3StringSplit/RaggedFromValueRowIds/bincount/Bincount?
-StringSplit/RaggedFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-StringSplit/RaggedFromValueRowIds/Cumsum/axis?
(StringSplit/RaggedFromValueRowIds/CumsumCumsum:StringSplit/RaggedFromValueRowIds/bincount/Bincount:bins:06StringSplit/RaggedFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2*
(StringSplit/RaggedFromValueRowIds/Cumsum?
1StringSplit/RaggedFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 23
1StringSplit/RaggedFromValueRowIds/concat/values_0?
-StringSplit/RaggedFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-StringSplit/RaggedFromValueRowIds/concat/axis?
(StringSplit/RaggedFromValueRowIds/concatConcatV2:StringSplit/RaggedFromValueRowIds/concat/values_0:output:0.StringSplit/RaggedFromValueRowIds/Cumsum:out:06StringSplit/RaggedFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2*
(StringSplit/RaggedFromValueRowIds/concat?
#RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparse1StringSplit/RaggedFromValueRowIds/concat:output:0"StringSplit/StringSplitV2:values:0*
RAGGED_RANK*
T0*<
_output_shapes*
(:?????????:?????????:2%
#RaggedToSparse/RaggedTensorToSparse?
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handle3RaggedToSparse/RaggedTensorToSparse:sparse_values:0+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????2
None_Lookup/LookupTableFindV2T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/ys
EqualEqualnum_clsEqual/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal?
condStatelessIf	Equal:z:0num_sep	Equal:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *"
else_branchR
cond_false_2895*
output_shapes
: *!
then_branchR
cond_true_28942
condZ
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: 2
cond/Identity?
cond_1Ifcond/Identity:output:04RaggedToSparse/RaggedTensorToSparse:sparse_indices:08RaggedToSparse/RaggedTensorToSparse:sparse_dense_shape:0&None_Lookup/LookupTableFindV2:values:0num_clsnum_sep*
Tcond0
*
Tin	
2		*
Tout
2
*
_lower_using_switch_merge(*2
_output_shapes 
:??????????????????: * 
_read_only_resource_inputs
 *$
else_branchR
cond_1_false_2909*1
output_shapes 
:??????????????????: *#
then_branchR
cond_1_true_29082
cond_1z
cond_1/IdentityIdentitycond_1:output:0*
T0*0
_output_shapes
:??????????????????2
cond_1/Identityd
cond_1/Identity_1Identitycond_1:output:1*
T0
*
_output_shapes
: 2
cond_1/Identity_1{
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
strided_sliceStridedSlicecond_1/Identity:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8* 
fR
__inference_pad_id_24492
PartitionedCallj
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
PadV2PadV2strided_slice:output:0PadV2/paddings:output:0PartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2
PadV2?
PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8* 
fR
__inference_pad_id_24492
PartitionedCall_1?
NotEqualNotEqualPadV2:output:0PartitionedCall_1:output:0*
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
IdentityIdentitySum:output:0^None_Lookup/LookupTableFindV2^cond_1*
T0*#
_output_shapes
:?????????2

Identity?

Identity_1IdentityPadV2:output:0^None_Lookup/LookupTableFindV2^cond_1*
T0*0
_output_shapes
:??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*0
_input_shapes
: : : : :?????????:: 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV22
cond_1cond_1:? ;
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
_user_specified_name	sentences:

_output_shapes
: 
?
?
__inference__initializer_33657
3key_value_init2348_lookuptableimportv2_table_handle/
+key_value_init2348_lookuptableimportv2_keys1
-key_value_init2348_lookuptableimportv2_values
identity??&key_value_init2348/LookupTableImportV2?
&key_value_init2348/LookupTableImportV2LookupTableImportV23key_value_init2348_lookuptableimportv2_table_handle+key_value_init2348_lookuptableimportv2_keys-key_value_init2348_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 2(
&key_value_init2348/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constz
IdentityIdentityConst:output:0'^key_value_init2348/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
::	:	2P
&key_value_init2348/LookupTableImportV2&key_value_init2348/LookupTableImportV2: 

_output_shapes
: 
?
B
cond_true_2894
equal_num_sep
placeholder

identity
T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/yy
EqualEqualequal_num_sepEqual/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
EqualL
IdentityIdentity	Equal:z:0*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : : 

_output_shapes
: :

_output_shapes
: 
?
z
-RaggedFromSparse_Assert_AssertGuard_true_2510(
$identity_raggedfromsparse_logicaland

placeholder	

identity_1
*
NoOpNoOp*
_output_shapes
 2
NoOpn
IdentityIdentity$identity_raggedfromsparse_logicaland^NoOp*
T0
*
_output_shapes
: 2

IdentityX

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*(
_input_shapes
: :?????????: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
?
9RaggedConcat_assert_equal_3_Assert_AssertGuard_false_3164*
&assert_raggedconcat_assert_equal_3_all
:
6assert_raggedconcat_raggedfromtensor_1_strided_slice_2	8
4assert_raggedconcat_raggedfromtensor_strided_slice_2	

identity_1
??Assert?
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2
Assert/data_1?
Assert/data_2Const*
_output_shapes
: *
dtype0*I
value@B> B8x (RaggedConcat/RaggedFromTensor_1/strided_slice_2:0) = 2
Assert/data_2?
Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_2:0) = 2
Assert/data_4?
AssertAssert&assert_raggedconcat_assert_equal_3_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:06assert_raggedconcat_raggedfromtensor_1_strided_slice_2Assert/data_4:output:04assert_raggedconcat_raggedfromtensor_strided_slice_2*
T

2		*
_output_shapes
 2
Assertr
IdentityIdentity&assert_raggedconcat_assert_equal_3_all^Assert*
T0
*
_output_shapes
: 2

Identitya

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : 2
AssertAssert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
8
__inference_vocab_size_3337
unknown
identityJ
IdentityIdentityunknown*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: 
?
?
0__inference_embedding_layer_2_layer_call_fn_3326
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
2*_
_output_shapesM
K:??????????????????:?????????:??????????????????*#
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*T
fORM
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_33062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :??????????????????2

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
_user_specified_name	sentences:

_output_shapes
: :

_output_shapes
: 
?f
?
__inference_call_2809
max_len
min_len
num_cls
num_sep
	sentences.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value
identity

identity_1??None_Lookup/LookupTableFindV2?cond_1g
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B 2
StringSplit/Const?
StringSplit/StringSplitV2StringSplitV2	sentencesStringSplit/Const:output:0*<
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
&StringSplit/RaggedFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2(
&StringSplit/RaggedFromValueRowIds/Cast?
(StringSplit/RaggedFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: 2*
(StringSplit/RaggedFromValueRowIds/Cast_1?
0StringSplit/RaggedFromValueRowIds/bincount/ShapeShape*StringSplit/RaggedFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:22
0StringSplit/RaggedFromValueRowIds/bincount/Shape?
0StringSplit/RaggedFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: 22
0StringSplit/RaggedFromValueRowIds/bincount/Const?
/StringSplit/RaggedFromValueRowIds/bincount/ProdProd9StringSplit/RaggedFromValueRowIds/bincount/Shape:output:09StringSplit/RaggedFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: 21
/StringSplit/RaggedFromValueRowIds/bincount/Prod?
4StringSplit/RaggedFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : 26
4StringSplit/RaggedFromValueRowIds/bincount/Greater/y?
2StringSplit/RaggedFromValueRowIds/bincount/GreaterGreater8StringSplit/RaggedFromValueRowIds/bincount/Prod:output:0=StringSplit/RaggedFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: 24
2StringSplit/RaggedFromValueRowIds/bincount/Greater?
/StringSplit/RaggedFromValueRowIds/bincount/CastCast6StringSplit/RaggedFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: 21
/StringSplit/RaggedFromValueRowIds/bincount/Cast?
2StringSplit/RaggedFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2StringSplit/RaggedFromValueRowIds/bincount/Const_1?
.StringSplit/RaggedFromValueRowIds/bincount/MaxMax*StringSplit/RaggedFromValueRowIds/Cast:y:0;StringSplit/RaggedFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: 20
.StringSplit/RaggedFromValueRowIds/bincount/Max?
0StringSplit/RaggedFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :22
0StringSplit/RaggedFromValueRowIds/bincount/add/y?
.StringSplit/RaggedFromValueRowIds/bincount/addAddV27StringSplit/RaggedFromValueRowIds/bincount/Max:output:09StringSplit/RaggedFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: 20
.StringSplit/RaggedFromValueRowIds/bincount/add?
.StringSplit/RaggedFromValueRowIds/bincount/mulMul3StringSplit/RaggedFromValueRowIds/bincount/Cast:y:02StringSplit/RaggedFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: 20
.StringSplit/RaggedFromValueRowIds/bincount/mul?
2StringSplit/RaggedFromValueRowIds/bincount/MaximumMaximum,StringSplit/RaggedFromValueRowIds/Cast_1:y:02StringSplit/RaggedFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: 24
2StringSplit/RaggedFromValueRowIds/bincount/Maximum?
2StringSplit/RaggedFromValueRowIds/bincount/MinimumMinimum,StringSplit/RaggedFromValueRowIds/Cast_1:y:06StringSplit/RaggedFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: 24
2StringSplit/RaggedFromValueRowIds/bincount/Minimum?
2StringSplit/RaggedFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 24
2StringSplit/RaggedFromValueRowIds/bincount/Const_2?
3StringSplit/RaggedFromValueRowIds/bincount/BincountBincount*StringSplit/RaggedFromValueRowIds/Cast:y:06StringSplit/RaggedFromValueRowIds/bincount/Minimum:z:0;StringSplit/RaggedFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:?????????25
3StringSplit/RaggedFromValueRowIds/bincount/Bincount?
-StringSplit/RaggedFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-StringSplit/RaggedFromValueRowIds/Cumsum/axis?
(StringSplit/RaggedFromValueRowIds/CumsumCumsum:StringSplit/RaggedFromValueRowIds/bincount/Bincount:bins:06StringSplit/RaggedFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:?????????2*
(StringSplit/RaggedFromValueRowIds/Cumsum?
1StringSplit/RaggedFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R 23
1StringSplit/RaggedFromValueRowIds/concat/values_0?
-StringSplit/RaggedFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-StringSplit/RaggedFromValueRowIds/concat/axis?
(StringSplit/RaggedFromValueRowIds/concatConcatV2:StringSplit/RaggedFromValueRowIds/concat/values_0:output:0.StringSplit/RaggedFromValueRowIds/Cumsum:out:06StringSplit/RaggedFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????2*
(StringSplit/RaggedFromValueRowIds/concat?
#RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparse1StringSplit/RaggedFromValueRowIds/concat:output:0"StringSplit/StringSplitV2:values:0*
RAGGED_RANK*
T0*<
_output_shapes*
(:?????????:?????????:2%
#RaggedToSparse/RaggedTensorToSparse?
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handle3RaggedToSparse/RaggedTensorToSparse:sparse_values:0+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????2
None_Lookup/LookupTableFindV2T
Equal/yConst*
_output_shapes
: *
dtype0*
value	B : 2	
Equal/ys
EqualEqualnum_clsEqual/y:output:0*
T0*
_output_shapes
: *
incompatible_shape_error( 2
Equal?
condStatelessIf	Equal:z:0num_sep	Equal:z:0*
Tcond0
*
Tin
2
*
Tout
2
*
_lower_using_switch_merge(*
_output_shapes
: * 
_read_only_resource_inputs
 *"
else_branchR
cond_false_2429*
output_shapes
: *!
then_branchR
cond_true_24282
condZ
cond/IdentityIdentitycond:output:0*
T0
*
_output_shapes
: 2
cond/Identity?
cond_1Ifcond/Identity:output:04RaggedToSparse/RaggedTensorToSparse:sparse_indices:08RaggedToSparse/RaggedTensorToSparse:sparse_dense_shape:0&None_Lookup/LookupTableFindV2:values:0num_clsnum_sep*
Tcond0
*
Tin	
2		*
Tout
2
*
_lower_using_switch_merge(*2
_output_shapes 
:??????????????????: * 
_read_only_resource_inputs
 *$
else_branchR
cond_1_false_2443*1
output_shapes 
:??????????????????: *#
then_branchR
cond_1_true_24422
cond_1z
cond_1/IdentityIdentitycond_1:output:0*
T0*0
_output_shapes
:??????????????????2
cond_1/Identityd
cond_1/Identity_1Identitycond_1:output:1*
T0
*
_output_shapes
: 2
cond_1/Identity_1{
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
strided_sliceStridedSlicecond_1/Identity:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8* 
fR
__inference_pad_id_24492
PartitionedCallj
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
PadV2PadV2strided_slice:output:0PadV2/paddings:output:0PartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????2
PadV2?
PartitionedCall_1PartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8* 
fR
__inference_pad_id_24492
PartitionedCall_1?
NotEqualNotEqualPadV2:output:0PartitionedCall_1:output:0*
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
IdentityIdentitySum:output:0^None_Lookup/LookupTableFindV2^cond_1*
T0*#
_output_shapes
:?????????2

Identity?

Identity_1IdentityPadV2:output:0^None_Lookup/LookupTableFindV2^cond_1*
T0*0
_output_shapes
:??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*0
_input_shapes
: : : : :?????????:: 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV22
cond_1cond_1:? ;
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
_user_specified_name	sentences:

_output_shapes
: 
?
?
$__inference_tokenize_to_indices_3352
inputs_max_len
inputs_min_len
inputs_num_cls
inputs_num_sep
inputs_sentences 
vocab_layer_from_path_1_3344 
vocab_layer_from_path_1_3346
identity

identity_1??/vocab_layer_from_path_1/StatefulPartitionedCall?
/vocab_layer_from_path_1/StatefulPartitionedCallStatefulPartitionedCallinputs_max_leninputs_min_leninputs_num_clsinputs_num_sepinputs_sentencesvocab_layer_from_path_1_3344vocab_layer_from_path_1_3346*
Tin
	2*
Tout
2*?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*
fR
__inference_call_280921
/vocab_layer_from_path_1/StatefulPartitionedCall?
IdentityIdentity8vocab_layer_from_path_1/StatefulPartitionedCall:output:00^vocab_layer_from_path_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity?

Identity_1Identity8vocab_layer_from_path_1/StatefulPartitionedCall:output:10^vocab_layer_from_path_1/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*0
_input_shapes
: : : : :?????????:: 2b
/vocab_layer_from_path_1/StatefulPartitionedCall/vocab_layer_from_path_1/StatefulPartitionedCall:F B
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
_user_specified_nameinputs/sentences:

_output_shapes
: 
?
?
.RaggedFromSparse_Assert_AssertGuard_false_2511&
"assert_raggedfromsparse_logicaland
.
*assert_raggedtosparse_raggedtensortosparse	

identity_1
??Assert
Assert/data_0Const*
_output_shapes
: *
dtype0*1
value(B& B SparseTensor is not right-ragged2
Assert/data_0u
Assert/data_1Const*
_output_shapes
: *
dtype0*'
valueB BSparseTensor.indices =2
Assert/data_1?
AssertAssert"assert_raggedfromsparse_logicalandAssert/data_0:output:0Assert/data_1:output:0*assert_raggedtosparse_raggedtensortosparse*
T
2	*
_output_shapes
 2
Assertn
IdentityIdentity"assert_raggedfromsparse_logicaland^Assert*
T0
*
_output_shapes
: 2

Identitya

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*(
_input_shapes
: :?????????2
AssertAssert: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
D
cond_false_2895
placeholder
identity_equal

identity
Q
IdentityIdentityidentity_equal*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : : 

_output_shapes
: :

_output_shapes
: 
?

?
cond_1_true_29085
1sparsetodense_raggedtosparse_raggedtensortosparse	7
3sparsetodense_raggedtosparse_raggedtensortosparse_1	/
+sparsetodense_none_lookup_lookuptablefindv2
placeholder
placeholder_1
identity

identity_1
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8* 
fR
__inference_pad_id_24492
PartitionedCall?
SparseToDenseSparseToDense1sparsetodense_raggedtosparse_raggedtensortosparse3sparsetodense_raggedtosparse_raggedtensortosparse_1+sparsetodense_none_lookup_lookuptablefindv2PartitionedCall:output:0*
T0*
Tindices0	*0
_output_shapes
:??????????????????2
SparseToDenser
IdentityIdentitySparseToDense:dense:0*
T0*0
_output_shapes
:??????????????????2

IdentityP
ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
ConstU

Identity_1IdentityConst:output:0*
T0
*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:?????????::?????????: : :- )
'
_output_shapes
:?????????: 

_output_shapes
::)%
#
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: 
?
9
__inference__creator_3357
identity??
hash_tablez

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name2349*
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
?
[
!__inference_embedding_lookup_2834

inputs
embedding_lookup_2828
identity??
embedding_lookupResourceGatherembedding_lookup_2828inputs*
Tindices0*(
_class
loc:@embedding_lookup/2828*4
_output_shapes"
 :??????????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/2828*4
_output_shapes"
 :??????????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :??????????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*4
_output_shapes"
 :??????????????????2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :??????????????????::X T
0
_output_shapes
:??????????????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
z
-RaggedFromSparse_Assert_AssertGuard_true_2971(
$identity_raggedfromsparse_logicaland

placeholder	

identity_1
*
NoOpNoOp*
_output_shapes
 2
NoOpn
IdentityIdentity$identity_raggedfromsparse_logicaland^NoOp*
T0
*
_output_shapes
: 2

IdentityX

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*(
_input_shapes
: :?????????: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
?
9RaggedConcat_assert_equal_1_Assert_AssertGuard_false_2676*
&assert_raggedconcat_assert_equal_1_all
+
'assert_raggedfromsparse_strided_slice_9	8
4assert_raggedconcat_raggedfromtensor_strided_slice_2	

identity_1
??Assert?
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2
Assert/data_1?
Assert/data_2Const*
_output_shapes
: *
dtype0*:
value1B/ B)x (RaggedFromSparse/strided_slice_9:0) = 2
Assert/data_2?
Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_2:0) = 2
Assert/data_4?
AssertAssert&assert_raggedconcat_assert_equal_1_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:0'assert_raggedfromsparse_strided_slice_9Assert/data_4:output:04assert_raggedconcat_raggedfromtensor_strided_slice_2*
T

2		*
_output_shapes
 2
Assertr
IdentityIdentity&assert_raggedconcat_assert_equal_1_all^Assert*
T0
*
_output_shapes
: 2

Identitya

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : 2
AssertAssert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
8RaggedConcat_assert_equal_1_Assert_AssertGuard_true_3136,
(identity_raggedconcat_assert_equal_1_all

placeholder	
placeholder_1	

identity_1
*
NoOpNoOp*
_output_shapes
 2
NoOpr
IdentityIdentity(identity_raggedconcat_assert_equal_1_all^NoOp*
T0
*
_output_shapes
: 2

IdentityX

Identity_1IdentityIdentity:output:0*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
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
?
?
.RaggedFromSparse_Assert_AssertGuard_false_2972&
"assert_raggedfromsparse_logicaland
.
*assert_raggedtosparse_raggedtensortosparse	

identity_1
??Assert
Assert/data_0Const*
_output_shapes
: *
dtype0*1
value(B& B SparseTensor is not right-ragged2
Assert/data_0u
Assert/data_1Const*
_output_shapes
: *
dtype0*'
valueB BSparseTensor.indices =2
Assert/data_1?
AssertAssert"assert_raggedfromsparse_logicalandAssert/data_0:output:0Assert/data_1:output:0*assert_raggedtosparse_raggedtensortosparse*
T
2	*
_output_shapes
 2
Assertn
IdentityIdentity"assert_raggedfromsparse_logicaland^Assert*
T0
*
_output_shapes
: 2

Identitya

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*(
_input_shapes
: :?????????2
AssertAssert: 

_output_shapes
: :-)
'
_output_shapes
:?????????
?
?
__inference__traced_save_3412
file_prefix*
&savev2_w_embedding_read_readvariableop
savev2_1_const_4

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
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
Const?
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_7d32d1fa6fd44b3881056492119723bf/part2	
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
value	B :2

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
:*
dtype0*9
value0B.B$embedding/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_w_embedding_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard?
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1?
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names?
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices?
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const_4^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity?

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*!
_input_shapes
: :	: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:	:

_output_shapes
: 
?
?
__inference_<lambda>_33787
3key_value_init2348_lookuptableimportv2_table_handle/
+key_value_init2348_lookuptableimportv2_keys1
-key_value_init2348_lookuptableimportv2_values
identity??&key_value_init2348/LookupTableImportV2?
&key_value_init2348/LookupTableImportV2LookupTableImportV23key_value_init2348_lookuptableimportv2_table_handle+key_value_init2348_lookuptableimportv2_keys-key_value_init2348_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 2(
&key_value_init2348/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Constz
IdentityIdentityConst:output:0'^key_value_init2348/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*#
_input_shapes
::	:	2P
&key_value_init2348/LookupTableImportV2&key_value_init2348/LookupTableImportV2: 

_output_shapes
: 
?
?
9RaggedConcat_assert_equal_3_Assert_AssertGuard_false_2703*
&assert_raggedconcat_assert_equal_3_all
:
6assert_raggedconcat_raggedfromtensor_1_strided_slice_2	8
4assert_raggedconcat_raggedfromtensor_strided_slice_2	

identity_1
??Assert?
Assert/data_0Const*
_output_shapes
: *
dtype0*8
value/B- B'Input tensors have incompatible shapes.2
Assert/data_0?
Assert/data_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x == y did not hold element-wise:2
Assert/data_1?
Assert/data_2Const*
_output_shapes
: *
dtype0*I
value@B> B8x (RaggedConcat/RaggedFromTensor_1/strided_slice_2:0) = 2
Assert/data_2?
Assert/data_4Const*
_output_shapes
: *
dtype0*G
value>B< B6y (RaggedConcat/RaggedFromTensor/strided_slice_2:0) = 2
Assert/data_4?
AssertAssert&assert_raggedconcat_assert_equal_3_allAssert/data_0:output:0Assert/data_1:output:0Assert/data_2:output:06assert_raggedconcat_raggedfromtensor_1_strided_slice_2Assert/data_4:output:04assert_raggedconcat_raggedfromtensor_strided_slice_2*
T

2		*
_output_shapes
 2
Assertr
IdentityIdentity&assert_raggedconcat_assert_equal_3_all^Assert*
T0
*
_output_shapes
: 2

Identitya

Identity_1IdentityIdentity:output:0^Assert*
T0
*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: : : 2
AssertAssert: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_call_2841
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

identity_2??StatefulPartitionedCall?StatefulPartitionedCall_1?
StatefulPartitionedCallStatefulPartitionedCallmax_lenmin_lennum_clsnum_sep	sentencesunknown	unknown_0*
Tin
	2*
Tout
2*?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*-
f(R&
$__inference_tokenize_to_indices_28182
StatefulPartitionedCall?
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:1	unknown_1*
Tin
2*
Tout
2*4
_output_shapes"
 :??????????????????*#
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8**
f%R#
!__inference_embedding_lookup_28342
StatefulPartitionedCall_1?
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*4
_output_shapes"
 :??????????????????2

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
_user_specified_name	sentences:

_output_shapes
: :

_output_shapes
: 
?
D
cond_false_2429
placeholder
identity_equal

identity
Q
IdentityIdentityidentity_equal*
T0
*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
: : : 

_output_shapes
: :

_output_shapes
: 
?
?
$__inference_tokenize_to_indices_2818

inputs
inputs_1
inputs_2
inputs_3
inputs_4 
vocab_layer_from_path_1_2810 
vocab_layer_from_path_1_2812
identity

identity_1??/vocab_layer_from_path_1/StatefulPartitionedCall?
/vocab_layer_from_path_1/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4vocab_layer_from_path_1_2810vocab_layer_from_path_1_2812*
Tin
	2*
Tout
2*?
_output_shapes-
+:?????????:??????????????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*
fR
__inference_call_280921
/vocab_layer_from_path_1/StatefulPartitionedCall?
IdentityIdentity8vocab_layer_from_path_1/StatefulPartitionedCall:output:00^vocab_layer_from_path_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity?

Identity_1Identity8vocab_layer_from_path_1/StatefulPartitionedCall:output:10^vocab_layer_from_path_1/StatefulPartitionedCall*
T0*0
_output_shapes
:??????????????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*0
_input_shapes
: : : : :?????????:: 2b
/vocab_layer_from_path_1/StatefulPartitionedCall/vocab_layer_from_path_1/StatefulPartitionedCall:> :
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
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
 __inference__traced_restore_3427
file_prefix 
assignvariableop_w_embedding

identity_2??AssignVariableOp?	RestoreV2?RestoreV2_1?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B$embedding/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_w_embeddingIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names?
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices?
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp{

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_1?

Identity_2IdentityIdentity_1:output:0^AssignVariableOp
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_2"!

identity_2Identity_2:output:0*
_input_shapes
: :2$
AssignVariableOpAssignVariableOp2
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
?

?
cond_1_true_24425
1sparsetodense_raggedtosparse_raggedtensortosparse	7
3sparsetodense_raggedtosparse_raggedtensortosparse_1	/
+sparsetodense_none_lookup_lookuptablefindv2
placeholder
placeholder_1
identity

identity_1
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8* 
fR
__inference_pad_id_24492
PartitionedCall?
SparseToDenseSparseToDense1sparsetodense_raggedtosparse_raggedtensortosparse3sparsetodense_raggedtosparse_raggedtensortosparse_1+sparsetodense_none_lookup_lookuptablefindv2PartitionedCall:output:0*
T0*
Tindices0	*0
_output_shapes
:??????????????????2
SparseToDenser
IdentityIdentitySparseToDense:dense:0*
T0*0
_output_shapes
:??????????????????2

IdentityP
ConstConst*
_output_shapes
: *
dtype0
*
value	B
 Z2
ConstU

Identity_1IdentityConst:output:0*
T0
*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*?
_input_shapes.
,:?????????::?????????: : :- )
'
_output_shapes
:?????????: 

_output_shapes
::)%
#
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:?M
?
vocab_layer
	embedding
trainable_variables
	variables
regularization_losses
	keras_api

signatures
*&call_and_return_all_conditional_losses
__call__
call
embedding_lookup
	num_units
tokenize_to_indices

vocab_size"?
_tf_keras_layer?{"class_name": "EmbeddingLayer", "name": "embedding_layer_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"layer was saved without config": true}}
?
_vocab_table_initializer
	vocab_table

trainable_variables
	variables
regularization_losses
	keras_api
*&call_and_return_all_conditional_losses
 __call__
!call

"pad_id
#
vocab_size"?
_tf_keras_layer?{"class_name": "VocabLayerFromPath", "name": "vocab_layer_from_path_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"layer was saved without config": true}}
:	2w_embedding
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?

layers
trainable_variables
	variables
layer_metrics
regularization_losses
non_trainable_variables
layer_regularization_losses
metrics
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
signature_map
"
_generic_user_object
R
_initializer
$_create_resource
%_initialize
&_destroy_resourceR 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

layers

trainable_variables
	variables
layer_metrics
regularization_losses
non_trainable_variables
layer_regularization_losses
metrics
 __call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
?2?
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_3306?
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
annotations? *???
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
0__inference_embedding_layer_2_layer_call_fn_3326?
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
annotations? *???
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
__inference_call_2841?
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
annotations? *???
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
?2?
!__inference_embedding_lookup_2834?
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
annotations? *&?#
!???????????????????
?2?
__inference_num_units_3331?
???
FullArgSpec
args?
jself
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
$__inference_tokenize_to_indices_3352?
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
__inference_vocab_size_3337?
???
FullArgSpec
args?
jself
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
Q__inference_vocab_layer_from_path_1_layer_call_and_return_conditional_losses_3270?
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
annotations? *???
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
6__inference_vocab_layer_from_path_1_layer_call_fn_3286?
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
annotations? *???
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
__inference_call_2809?
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
annotations? *???
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
?2?
__inference_pad_id_2449?
???
FullArgSpec
args?
jself
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_vocab_size_2356?
???
FullArgSpec
args?
jself
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_3357?
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
__inference__initializer_3365?
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
__inference__destroyer_3370?
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
Const_35
__inference__creator_3357?

? 
? "? 7
__inference__destroyer_3370?

? 
? "? >
__inference__initializer_3365	)*?

? 
? "? ?
__inference_call_2809?	'???
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
tokenized_ids???????????????????
__inference_call_2841?	'???
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
embedded??????????????????
&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids???????????????????
K__inference_embedding_layer_2_layer_call_and_return_conditional_losses_3306?	'???
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
???
=
embedded1?.

0/embedded??????????????????
(
length?
0/length?????????
C
tokenized_ids2?/
0/tokenized_ids??????????????????
? ?
0__inference_embedding_layer_2_layer_call_fn_3326?	'???
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
embedded??????????????????
&
length?
length?????????
A
tokenized_ids0?-
tokenized_ids???????????????????
!__inference_embedding_lookup_2834d8?5
.?+
)?&
inputs??????????????????
? "%?"??????????????????6
__inference_num_units_3331?

? 
? "? 3
__inference_pad_id_2449?

? 
? "? ?
$__inference_tokenize_to_indices_3352?	'???
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
tokenized_ids???????????????????
Q__inference_vocab_layer_from_path_1_layer_call_and_return_conditional_losses_3270?	'???
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
? "|?y
r?o
(
length?
0/length?????????
C
tokenized_ids2?/
0/tokenized_ids??????????????????
? ?
6__inference_vocab_layer_from_path_1_layer_call_fn_3286?	'???
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
tokenized_ids??????????????????7
__inference_vocab_size_2356?

? 
? "? :
__inference_vocab_size_3337(?

? 
? "? 