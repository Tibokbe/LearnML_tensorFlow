??
?1?1
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	??
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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

ControlTrigger
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
?
)
Exit	
data"T
output"T"	
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
,
Floor
x"T
y"T"
Ttype:
2
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
InvertPermutation
x"T
y"T"
Ttype0:
2	
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
?
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
;
Maximum
x"T
y"T
z"T"
Ttype:

2	?
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
;
Minimum
x"T
y"T
z"T"
Ttype:

2	?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
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

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	?
A

StackPopV2

handle
elem"	elem_type"
	elem_typetype?
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( ?
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring ?
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:?
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestring?
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype?
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype?
9
TensorArraySizeV3

handle
flow_in
size?
?
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring ?
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype?
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.6.02v1.6.0-0-gd2e24b6039??
p
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:??????????*
shape:??????????
?
Placeholder_1Placeholder*
dtype0*4
_output_shapes"
 :??????????????????*)
shape :??????????????????
?
Placeholder_2Placeholder*
dtype0*4
_output_shapes"
 :??????????????????*)
shape :??????????????????
R
Placeholder_3Placeholder*
shape:*
dtype0*
_output_shapes
:
R
Placeholder_4Placeholder*
dtype0*
_output_shapes
:*
shape:
R
ShapeShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
T
Shape_1ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
?
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
T
Shape_2ShapePlaceholder_1*
out_type0*
_output_shapes
:*
T0
_
strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
strided_slice_2StridedSliceShape_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
]
DropoutWrapperInit/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
_
DropoutWrapperInit/Const_1Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
_
DropoutWrapperInit_1/ConstConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
a
DropoutWrapperInit_1/Const_1Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
J
rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Q
rnn/range/startConst*
_output_shapes
: *
value	B :*
dtype0
Q
rnn/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
f
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*
_output_shapes
:*

Tidx0
d
rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
Q
rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
?
rnn/transpose	TransposePlaceholder_1
rnn/concat*4
_output_shapes"
 :??????????????????*
Tperm0*
T0
V
	rnn/ShapeShapernn/transpose*
_output_shapes
:*
T0*
out_type0
a
rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
X
rnn/Shape_1Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
X
rnn/Shape_2Shapernn/transpose*
T0*
out_type0*
_output_shapes
:
c
rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
e
rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
?
rnn/strided_slice_2StridedSlicernn/Shape_2rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
T
rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
v
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
T
	rnn/ConstConst*
valueB:?*
dtype0*
_output_shapes
:
S
rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
rnn/concat_1ConcatV2rnn/ExpandDims	rnn/Constrnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
T
rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
u
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*
T0*

index_type0*(
_output_shapes
:??????????
J
rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
?
rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*%
element_shape:??????????*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
?
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*
dtype0*
_output_shapes

:: *$
element_shape:?????????*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*.
tensor_array_namernn/dynamic_rnn/input_0
i
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
_output_shapes
:*
T0*
out_type0
t
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
v
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
?
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
d
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"rnn/TensorArrayUnstack/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
?
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:?????????*

Tidx0
?
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose*
_output_shapes
: 
O
rnn/Maximum/xConst*
dtype0*
_output_shapes
: *
value	B :
[
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
_output_shapes
: *
T0
Y
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
_output_shapes
: *
T0
]
rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
?
rnn/while/EnterEnterrnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 
?
rnn/while/Enter_1Enterrnn/time*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: *
T0
?
rnn/while/Enter_2Enterrnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 
?
rnn/while/Enter_3EnterPlaceholder*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context*(
_output_shapes
:??????????
n
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
t
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
N*
_output_shapes
: : *
T0
t
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
?
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
T0*
N**
_output_shapes
:??????????: 
^
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0*
_output_shapes
: 
?
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 
d
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
_output_shapes
: *
T0
?
rnn/while/Less_1/EnterEnterrnn/Minimum*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: *
T0*
is_constant(
\
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1*
_output_shapes
: 
L
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd*
_output_shapes
: 
?
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
_output_shapes
: : *
T0*"
_class
loc:@rnn/while/Merge
?
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1*
_output_shapes
: : 
?
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*
_output_shapes
: : *
T0*$
_class
loc:@rnn/while/Merge_2
?
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3*<
_output_shapes*
(:??????????:??????????
S
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0*
_output_shapes
: 
W
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0*
_output_shapes
: 
i
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0*(
_output_shapes
:??????????
f
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0*
_output_shapes
: 
?
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:?????????
?
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 
?
/rnn/while/rnn/multi_rnn_cell/cell_0/Slice/beginConst^rnn/while/Identity*
dtype0*
_output_shapes
:*
valueB"        
?
.rnn/while/rnn/multi_rnn_cell/cell_0/Slice/sizeConst^rnn/while/Identity*
valueB"?????   *
dtype0*
_output_shapes
:
?
)rnn/while/rnn/multi_rnn_cell/cell_0/SliceSlicernn/while/Identity_3/rnn/while/rnn/multi_rnn_cell/cell_0/Slice/begin.rnn/while/rnn/multi_rnn_cell/cell_0/Slice/size*
Index0*
T0*(
_output_shapes
:??????????
?
Prnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
valueB"?      *
dtype0
?
Nrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
valueB
 *?U??
?
Nrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/maxConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
valueB
 *?U?=*
dtype0*
_output_shapes
: 
?
Xrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformPrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*

seed *
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
seed2 
?
Nrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/subSubNrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/maxNrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/min*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
_output_shapes
: *
T0
?
Nrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/mulMulXrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformNrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/sub*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel* 
_output_shapes
:
??*
T0
?
Jrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniformAddNrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/mulNrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform/min*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel* 
_output_shapes
:
??
?
/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel
VariableV2*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name *B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel
?
6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/AssignAssign/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelJrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/readIdentity/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
T0* 
_output_shapes
:
??
?
?rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Initializer/ConstConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias
VariableV2*
shared_name *@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/AssignAssign-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias?rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Initializer/Const*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias
?
2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/readIdentity-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
T0*
_output_shapes	
:?
?
Trnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/shapeConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
valueB"?   ?   *
dtype0*
_output_shapes
:
?
Rrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/minConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
valueB
 *?(?*
dtype0*
_output_shapes
: 
?
Rrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/maxConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
valueB
 *?(>*
dtype0*
_output_shapes
: 
?
\rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRandomUniformTrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*

seed *
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
seed2 
?
Rrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/subSubRrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/maxRrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel
?
Rrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/mulMul\rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
??*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel
?
Nrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniformAddRrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/mulRrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel* 
_output_shapes
:
??
?
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel
VariableV2*
shared_name *F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??
?
:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/AssignAssign3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelNrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel
?
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/readIdentity3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
T0* 
_output_shapes
:
??
?
Srnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Initializer/zeros/shape_as_tensorConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
valueB:?*
dtype0*
_output_shapes
:
?
Irnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Initializer/zeros/ConstConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Crnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Initializer/zerosFillSrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Initializer/zeros/shape_as_tensorIrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Initializer/zeros/Const*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*

index_type0*
_output_shapes	
:?
?
1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
	container *
shape:?
?
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/AssignAssign1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasCrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/readIdentity1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
_output_shapes	
:?*
T0
?
8rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concatConcatV2rnn/while/TensorArrayReadV3)rnn/while/rnn/multi_rnn_cell/cell_0/Slice8rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat/axis*
N*(
_output_shapes
:??????????*

Tidx0*
T0
?
3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMulMatMul3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat9rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter*
transpose_a( *(
_output_shapes
:??????????*
transpose_b( *
T0
?
9rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/EnterEnter4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context* 
_output_shapes
:
??
?
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAddBiasAdd3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/EnterEnter2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes	
:?
?
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/SigmoidSigmoid4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd*
T0*(
_output_shapes
:??????????
?
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/ConstConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/splitSplit<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split/split_dim4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid*
T0*
	num_split*<
_output_shapes*
(:??????????:??????????
?
0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mulMul2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split)rnn/while/rnn/multi_rnn_cell/cell_0/Slice*
T0*(
_output_shapes
:??????????
?
:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1ConcatV2rnn/while/TensorArrayReadV30rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1/axis*
N*(
_output_shapes
:??????????*

Tidx0*
T0
?
5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1MatMul5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1;rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter*
transpose_a( *(
_output_shapes
:??????????*
transpose_b( *
T0
?
;rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/EnterEnter8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context* 
_output_shapes
:
??
?
6rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1BiasAdd5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/EnterEnter6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/read*'

frame_namernn/while/while_context*
_output_shapes	
:?*
T0*
is_constant(*
parallel_iterations 
?
1rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/TanhTanh6rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1*
T0*(
_output_shapes
:??????????
?
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1Mul4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:1)rnn/while/rnn/multi_rnn_cell/cell_0/Slice*
T0*(
_output_shapes
:??????????
?
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub/xConst^rnn/while/Identity*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/subSub2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub/x4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:1*
T0*(
_output_shapes
:??????????
?
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2Mul0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub1rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh*
T0*(
_output_shapes
:??????????
?
0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/addAdd2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_12rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2*
T0*(
_output_shapes
:??????????
?
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/ShapeShape0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add*
T0*
out_type0*
_output_shapes
:
?
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/minConst^rnn/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
?
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/maxConst^rnn/while/Identity*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
Hrnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformRandomUniform1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Shape*
T0*
dtype0*
seed2 *(
_output_shapes
:??????????*

seed 
?
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/subSub>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/max>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mulMulHrnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/sub*(
_output_shapes
:??????????*
T0
?
:rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniformAdd>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mul>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0*(
_output_shapes
:??????????
?
/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/addAdd5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter:rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform*
T0*
_output_shapes
:
?
5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/EnterEnterPlaceholder_4*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/FloorFloor/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add*
_output_shapes
:*
T0
?
/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/divRealDiv0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter*
T0*
_output_shapes
:
?
/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mulMul/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
T0*(
_output_shapes
:??????????
?
/rnn/while/rnn/multi_rnn_cell/cell_1/Slice/beginConst^rnn/while/Identity*
valueB"    ?   *
dtype0*
_output_shapes
:
?
.rnn/while/rnn/multi_rnn_cell/cell_1/Slice/sizeConst^rnn/while/Identity*
dtype0*
_output_shapes
:*
valueB"?????   
?
)rnn/while/rnn/multi_rnn_cell/cell_1/SliceSlicernn/while/Identity_3/rnn/while/rnn/multi_rnn_cell/cell_1/Slice/begin.rnn/while/rnn/multi_rnn_cell/cell_1/Slice/size*(
_output_shapes
:??????????*
Index0*
T0
?
Prnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/shapeConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Nrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/minConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
valueB
 *׳ݽ*
dtype0*
_output_shapes
: 
?
Nrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/maxConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
valueB
 *׳?=*
dtype0*
_output_shapes
: 
?
Xrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformRandomUniformPrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*

seed *
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
seed2 
?
Nrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/subSubNrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/maxNrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel
?
Nrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/mulMulXrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/RandomUniformNrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/sub*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel* 
_output_shapes
:
??
?
Jrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniformAddNrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/mulNrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform/min* 
_output_shapes
:
??*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel
?
/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
	container *
shape:
??
?
6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/AssignAssign/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernelJrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/readIdentity/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
T0* 
_output_shapes
:
??
?
?rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Initializer/ConstConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
valueB?*  ??*
dtype0*
_output_shapes	
:?
?
-rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
	container *
shape:?
?
4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/AssignAssign-rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias?rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Initializer/Const*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias
?
2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/readIdentity-rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
T0*
_output_shapes	
:?
?
Trnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/shapeConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
valueB"   ?   *
dtype0*
_output_shapes
:
?
Rrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/minConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
valueB
 *   ?*
dtype0*
_output_shapes
: 
?
Rrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/maxConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
valueB
 *   >*
dtype0*
_output_shapes
: 
?
\rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRandomUniformTrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
??*

seed *
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
seed2 
?
Rrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/subSubRrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/maxRrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
_output_shapes
: 
?
Rrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/mulMul\rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/RandomUniformRrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/sub*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel* 
_output_shapes
:
??
?
Nrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniformAddRrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/mulRrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform/min*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel* 
_output_shapes
:
??
?
3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
	container *
shape:
??
?
:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/AssignAssign3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernelNrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/readIdentity3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
T0* 
_output_shapes
:
??
?
Srnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Initializer/zeros/shape_as_tensorConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
valueB:?*
dtype0*
_output_shapes
:
?
Irnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
valueB
 *    
?
Crnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Initializer/zerosFillSrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Initializer/zeros/shape_as_tensorIrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Initializer/zeros/Const*
_output_shapes	
:?*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*

index_type0
?
1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias
VariableV2*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?*
shared_name 
?
8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/AssignAssign1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/biasCrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/readIdentity1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
_output_shapes	
:?*
T0
?
8rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
3rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concatConcatV2/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul)rnn/while/rnn/multi_rnn_cell/cell_1/Slice8rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat/axis*
T0*
N*(
_output_shapes
:??????????*

Tidx0
?
3rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMulMatMul3rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat9rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter*
T0*
transpose_a( *(
_output_shapes
:??????????*
transpose_b( 
?
9rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/EnterEnter4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/read*'

frame_namernn/while/while_context* 
_output_shapes
:
??*
T0*
is_constant(*
parallel_iterations 
?
4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAddBiasAdd3rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul:rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
:rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/EnterEnter2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes	
:?
?
4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/SigmoidSigmoid4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd*
T0*(
_output_shapes
:??????????
?
2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/ConstConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
<rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/splitSplit<rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split/split_dim4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid*
T0*
	num_split*<
_output_shapes*
(:??????????:??????????
?
0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mulMul2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split)rnn/while/rnn/multi_rnn_cell/cell_1/Slice*
T0*(
_output_shapes
:??????????
?
:rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
5rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1ConcatV2/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul:rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1/axis*
N*(
_output_shapes
:??????????*

Tidx0*
T0
?
5rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1MatMul5rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1;rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter*
T0*
transpose_a( *(
_output_shapes
:??????????*
transpose_b( 
?
;rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/EnterEnter8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context* 
_output_shapes
:
??
?
6rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1BiasAdd5rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1<rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter*
T0*
data_formatNHWC*(
_output_shapes
:??????????
?
<rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/EnterEnter6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes	
:?
?
1rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/TanhTanh6rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1*
T0*(
_output_shapes
:??????????
?
2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1Mul4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split:1)rnn/while/rnn/multi_rnn_cell/cell_1/Slice*
T0*(
_output_shapes
:??????????
?
2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub/xConst^rnn/while/Identity*
valueB
 *  ??*
dtype0*
_output_shapes
: 
?
0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/subSub2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub/x4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split:1*
T0*(
_output_shapes
:??????????
?
2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2Mul0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub1rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh*
T0*(
_output_shapes
:??????????
?
0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/addAdd2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_12rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2*
T0*(
_output_shapes
:??????????
?
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/ShapeShape0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add*
T0*
out_type0*
_output_shapes
:
?
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/minConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *    
?
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/maxConst^rnn/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
Hrnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformRandomUniform1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Shape*
dtype0*
seed2 *(
_output_shapes
:??????????*

seed *
T0
?
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/subSub>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/max>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
?
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mulMulHrnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/sub*
T0*(
_output_shapes
:??????????
?
:rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniformAdd>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mul>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*(
_output_shapes
:??????????*
T0
?
/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/addAdd5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter:rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform*
T0*
_output_shapes
:
?
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/FloorFloor/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/add*
_output_shapes
:*
T0
?
/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/divRealDiv0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter*
T0*
_output_shapes
:
?
/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mulMul/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*
T0*(
_output_shapes
:??????????

(rnn/while/rnn/multi_rnn_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
?
#rnn/while/rnn/multi_rnn_cell/concatConcatV20rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add(rnn/while/rnn/multi_rnn_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:??????????
?
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mulrnn/while/Identity_2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
_output_shapes
: 
?
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
is_constant(*
_output_shapes
:*'

frame_namernn/while/while_context*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
parallel_iterations 
h
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
T0*
_output_shapes
: 
X
rnn/while/NextIterationNextIterationrnn/while/add*
T0*
_output_shapes
: 
\
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0*
_output_shapes
: 
z
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
?
rnn/while/NextIteration_3NextIteration#rnn/while/rnn/multi_rnn_cell/concat*
T0*(
_output_shapes
:??????????
I
rnn/while/ExitExitrnn/while/Switch*
T0*
_output_shapes
: 
M
rnn/while/Exit_1Exitrnn/while/Switch_1*
_output_shapes
: *
T0
M
rnn/while/Exit_2Exitrnn/while/Switch_2*
_output_shapes
: *
T0
_
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0*(
_output_shapes
:??????????
?
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*
_output_shapes
: *"
_class
loc:@rnn/TensorArray
?
 rnn/TensorArrayStack/range/startConst*"
_class
loc:@rnn/TensorArray*
value	B : *
dtype0*
_output_shapes
: 
?
 rnn/TensorArrayStack/range/deltaConst*
_output_shapes
: *"
_class
loc:@rnn/TensorArray*
value	B :*
dtype0
?
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*"
_class
loc:@rnn/TensorArray*#
_output_shapes
:?????????*

Tidx0
?
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
dtype0*5
_output_shapes#
!:???????????????????*%
element_shape:??????????
V
rnn/Const_1Const*
dtype0*
_output_shapes
:*
valueB:?
L

rnn/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
S
rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
n
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*
_output_shapes
:*

Tidx0
f
rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
S
rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
?
rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0
?
rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*
T0*5
_output_shapes#
!:???????????????????*
Tperm0
K
mulMulstrided_slicestrided_slice_1*
T0*
_output_shapes
: 
R
Reshape/shape/1Const*
value
B :?*
dtype0*
_output_shapes
: 
e
Reshape/shapePackmulReshape/shape/1*
T0*

axis *
N*
_output_shapes
:
s
ReshapeReshapernn/transpose_1Reshape/shape*
Tshape0*(
_output_shapes
:??????????*
T0
?
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
_class
loc:@dense/kernel*
valueB"?      
?
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *??[?
?
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *??[>
?
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	?*

seed *
T0*
_class
loc:@dense/kernel*
seed2 
?
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
?
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_output_shapes
:	?*
T0*
_class
loc:@dense/kernel
?
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	?
?
dense/kernel
VariableV2*
_output_shapes
:	?*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	?*
dtype0
?
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	?
v
dense/kernel/readIdentitydense/kernel*
_output_shapes
:	?*
T0*
_class
loc:@dense/kernel
?
,dense/bias/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
_class
loc:@dense/bias*
valueB:*
dtype0
?
"dense/bias/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
_output_shapes
:*
T0*
_class
loc:@dense/bias*

index_type0
?

dense/bias
VariableV2*
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
?
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
_output_shapes
:*
T0
?
dense/MatMulMatMulReshapedense/kernel/read*
T0*
transpose_a( *'
_output_shapes
:?????????*
transpose_b( 
?
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:?????????
S
Reshape_1/shape/2Const*
value	B :*
dtype0*
_output_shapes
: 
?
Reshape_1/shapePackstrided_slicestrided_slice_1Reshape_1/shape/2*
T0*

axis *
N*
_output_shapes
:
?
	Reshape_1Reshapedense/BiasAddReshape_1/shape*
Tshape0*4
_output_shapes"
 :??????????????????*
T0
j
strided_slice_3/stackConst*
dtype0*
_output_shapes
:*!
valueB"    ????    
l
strided_slice_3/stack_1Const*!
valueB"            *
dtype0*
_output_shapes
:
l
strided_slice_3/stack_2Const*
_output_shapes
:*!
valueB"         *
dtype0
?
strided_slice_3StridedSlice	Reshape_1strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*4
_output_shapes"
 :??????????????????
?
$mean_squared_error/SquaredDifferenceSquaredDifferencePlaceholder_2	Reshape_1*4
_output_shapes"
 :??????????????????*
T0
t
/mean_squared_error/assert_broadcastable/weightsConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
x
5mean_squared_error/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
v
4mean_squared_error/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
?
4mean_squared_error/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:
u
3mean_squared_error/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
K
Cmean_squared_error/assert_broadcastable/static_scalar_check_successNoOp
?
mean_squared_error/ToFloat_3/xConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
mean_squared_error/MulMul$mean_squared_error/SquaredDifferencemean_squared_error/ToFloat_3/x*4
_output_shapes"
 :??????????????????*
T0
?
mean_squared_error/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*!
valueB"          *
dtype0*
_output_shapes
:
?
mean_squared_error/SumSummean_squared_error/Mulmean_squared_error/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
?
&mean_squared_error/num_present/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
?
$mean_squared_error/num_present/EqualEqualmean_squared_error/ToFloat_3/x&mean_squared_error/num_present/Equal/y*
T0*
_output_shapes
: 
?
9mean_squared_error/num_present/zeros_like/shape_as_tensorConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
?
/mean_squared_error/num_present/zeros_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
?
)mean_squared_error/num_present/zeros_likeFill9mean_squared_error/num_present/zeros_like/shape_as_tensor/mean_squared_error/num_present/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
?
.mean_squared_error/num_present/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
?
.mean_squared_error/num_present/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
valueB
 *  ??*
dtype0
?
(mean_squared_error/num_present/ones_likeFill.mean_squared_error/num_present/ones_like/Shape.mean_squared_error/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
?
%mean_squared_error/num_present/SelectSelect$mean_squared_error/num_present/Equal)mean_squared_error/num_present/zeros_like(mean_squared_error/num_present/ones_like*
T0*
_output_shapes
: 
?
Smean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
?
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/weights/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
?
Rmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/shapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
out_type0*
_output_shapes
:*
T0
?
Qmean_squared_error/num_present/broadcast_weights/assert_broadcastable/values/rankConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
?
amean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpD^mean_squared_error/assert_broadcastable/static_scalar_check_success
?
@mean_squared_error/num_present/broadcast_weights/ones_like/ShapeShape$mean_squared_error/SquaredDifferenceD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
?
@mean_squared_error/num_present/broadcast_weights/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_successb^mean_squared_error/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
:mean_squared_error/num_present/broadcast_weights/ones_likeFill@mean_squared_error/num_present/broadcast_weights/ones_like/Shape@mean_squared_error/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*4
_output_shapes"
 :??????????????????
?
0mean_squared_error/num_present/broadcast_weightsMul%mean_squared_error/num_present/Select:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*4
_output_shapes"
 :??????????????????
?
$mean_squared_error/num_present/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*!
valueB"          *
dtype0*
_output_shapes
:
?
mean_squared_error/num_presentSum0mean_squared_error/num_present/broadcast_weights$mean_squared_error/num_present/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
?
mean_squared_error/Const_1ConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB 
?
mean_squared_error/Sum_1Summean_squared_error/Summean_squared_error/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
?
mean_squared_error/Greater/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
?
mean_squared_error/GreaterGreatermean_squared_error/num_presentmean_squared_error/Greater/y*
T0*
_output_shapes
: 
?
mean_squared_error/Equal/yConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *    
~
mean_squared_error/EqualEqualmean_squared_error/num_presentmean_squared_error/Equal/y*
_output_shapes
: *
T0
?
"mean_squared_error/ones_like/ShapeConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
?
"mean_squared_error/ones_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
mean_squared_error/ones_likeFill"mean_squared_error/ones_like/Shape"mean_squared_error/ones_like/Const*
_output_shapes
: *
T0*

index_type0
?
mean_squared_error/SelectSelectmean_squared_error/Equalmean_squared_error/ones_likemean_squared_error/num_present*
_output_shapes
: *
T0
w
mean_squared_error/divRealDivmean_squared_error/Sum_1mean_squared_error/Select*
T0*
_output_shapes
: 
?
-mean_squared_error/zeros_like/shape_as_tensorConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
?
#mean_squared_error/zeros_like/ConstConstD^mean_squared_error/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
?
mean_squared_error/zeros_likeFill-mean_squared_error/zeros_like/shape_as_tensor#mean_squared_error/zeros_like/Const*
_output_shapes
: *
T0*

index_type0
?
mean_squared_error/valueSelectmean_squared_error/Greatermean_squared_error/divmean_squared_error/zeros_like*
T0*
_output_shapes
: 
c
ExponentialDecay/learning_rateConst*
valueB
 *
?#<*
dtype0*
_output_shapes
: 
^
ExponentialDecay/CastCastPlaceholder_3*

SrcT0*

DstT0*
_output_shapes
:
\
ExponentialDecay/Cast_1/xConst*
value
B :?*
dtype0*
_output_shapes
: 
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

SrcT0*

DstT0*
_output_shapes
: 
^
ExponentialDecay/Cast_2/xConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
v
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0*
_output_shapes
:
s
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/truediv*
T0*
_output_shapes
:
p
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0*
_output_shapes
:
J
add/xConst*
dtype0*
_output_shapes
: *
valueB
 *o?:
F
addAddadd/xExponentialDecay*
_output_shapes
:*
T0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ??*
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
S
gradients/f_countConst*
dtype0*
_output_shapes
: *
value	B : 
?
gradients/f_count_1Entergradients/f_count*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
: 
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
T0*
N*
_output_shapes
: : 
b
gradients/SwitchSwitchgradients/Mergernn/while/LoopCond*
T0*
_output_shapes
: : 
f
gradients/Add/yConst^rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*
_output_shapes
: 
?)
gradients/NextIterationNextIterationgradients/Add[^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2F^gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPushV2H^gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPushV2_1a^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPushV2Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPushV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPushV2T^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/StackPushV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPushV2T^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/StackPushV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2X^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPushV2Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPushV2_1b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/StackPushV2\^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2X^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/StackPushV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPushV2Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPushV2I^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPushV2K^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPushV2_1a^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPushV2T^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/StackPushV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPushV2T^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/StackPushV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2X^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPushV2Z^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPushV2_1b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/StackPushV2\^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2X^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/StackPushV2I^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPushV2K^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPushV2_1*
T0*
_output_shapes
: 
N
gradients/f_count_2Exitgradients/Switch*
T0*
_output_shapes
: 
S
gradients/b_countConst*
value	B :*
dtype0*
_output_shapes
: 
?
gradients/b_count_1Entergradients/f_count_2*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
: 
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
?
gradients/GreaterEqual/EnterEntergradients/b_count*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
: *
T0*
is_constant(*
parallel_iterations 
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
_output_shapes
: : *
T0
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
?
gradients/NextIteration_1NextIterationgradients/SubV^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
P
gradients/b_count_3Exitgradients/Switch_1*
T0*
_output_shapes
: 
?
Bgradients/mean_squared_error/value_grad/zeros_like/shape_as_tensorConst*
valueB *
dtype0*
_output_shapes
: 
}
8gradients/mean_squared_error/value_grad/zeros_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
2gradients/mean_squared_error/value_grad/zeros_likeFillBgradients/mean_squared_error/value_grad/zeros_like/shape_as_tensor8gradients/mean_squared_error/value_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
?
.gradients/mean_squared_error/value_grad/SelectSelectmean_squared_error/Greatergradients/Fill2gradients/mean_squared_error/value_grad/zeros_like*
_output_shapes
: *
T0
?
0gradients/mean_squared_error/value_grad/Select_1Selectmean_squared_error/Greater2gradients/mean_squared_error/value_grad/zeros_likegradients/Fill*
T0*
_output_shapes
: 
?
8gradients/mean_squared_error/value_grad/tuple/group_depsNoOp/^gradients/mean_squared_error/value_grad/Select1^gradients/mean_squared_error/value_grad/Select_1
?
@gradients/mean_squared_error/value_grad/tuple/control_dependencyIdentity.gradients/mean_squared_error/value_grad/Select9^gradients/mean_squared_error/value_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/mean_squared_error/value_grad/Select*
_output_shapes
: 
?
Bgradients/mean_squared_error/value_grad/tuple/control_dependency_1Identity0gradients/mean_squared_error/value_grad/Select_19^gradients/mean_squared_error/value_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/mean_squared_error/value_grad/Select_1*
_output_shapes
: 
n
+gradients/mean_squared_error/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
p
-gradients/mean_squared_error/div_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
?
;gradients/mean_squared_error/div_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/mean_squared_error/div_grad/Shape-gradients/mean_squared_error/div_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
-gradients/mean_squared_error/div_grad/RealDivRealDiv@gradients/mean_squared_error/value_grad/tuple/control_dependencymean_squared_error/Select*
_output_shapes
: *
T0
?
)gradients/mean_squared_error/div_grad/SumSum-gradients/mean_squared_error/div_grad/RealDiv;gradients/mean_squared_error/div_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
-gradients/mean_squared_error/div_grad/ReshapeReshape)gradients/mean_squared_error/div_grad/Sum+gradients/mean_squared_error/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
k
)gradients/mean_squared_error/div_grad/NegNegmean_squared_error/Sum_1*
T0*
_output_shapes
: 
?
/gradients/mean_squared_error/div_grad/RealDiv_1RealDiv)gradients/mean_squared_error/div_grad/Negmean_squared_error/Select*
T0*
_output_shapes
: 
?
/gradients/mean_squared_error/div_grad/RealDiv_2RealDiv/gradients/mean_squared_error/div_grad/RealDiv_1mean_squared_error/Select*
T0*
_output_shapes
: 
?
)gradients/mean_squared_error/div_grad/mulMul@gradients/mean_squared_error/value_grad/tuple/control_dependency/gradients/mean_squared_error/div_grad/RealDiv_2*
T0*
_output_shapes
: 
?
+gradients/mean_squared_error/div_grad/Sum_1Sum)gradients/mean_squared_error/div_grad/mul=gradients/mean_squared_error/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
/gradients/mean_squared_error/div_grad/Reshape_1Reshape+gradients/mean_squared_error/div_grad/Sum_1-gradients/mean_squared_error/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
?
6gradients/mean_squared_error/div_grad/tuple/group_depsNoOp.^gradients/mean_squared_error/div_grad/Reshape0^gradients/mean_squared_error/div_grad/Reshape_1
?
>gradients/mean_squared_error/div_grad/tuple/control_dependencyIdentity-gradients/mean_squared_error/div_grad/Reshape7^gradients/mean_squared_error/div_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/mean_squared_error/div_grad/Reshape*
_output_shapes
: 
?
@gradients/mean_squared_error/div_grad/tuple/control_dependency_1Identity/gradients/mean_squared_error/div_grad/Reshape_17^gradients/mean_squared_error/div_grad/tuple/group_deps*
_output_shapes
: *
T0*B
_class8
64loc:@gradients/mean_squared_error/div_grad/Reshape_1
x
5gradients/mean_squared_error/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
?
/gradients/mean_squared_error/Sum_1_grad/ReshapeReshape>gradients/mean_squared_error/div_grad/tuple/control_dependency5gradients/mean_squared_error/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
y
6gradients/mean_squared_error/Sum_1_grad/Tile/multiplesConst*
dtype0*
_output_shapes
: *
valueB 
?
,gradients/mean_squared_error/Sum_1_grad/TileTile/gradients/mean_squared_error/Sum_1_grad/Reshape6gradients/mean_squared_error/Sum_1_grad/Tile/multiples*

Tmultiples0*
T0*
_output_shapes
: 
?
Cgradients/mean_squared_error/Select_grad/zeros_like/shape_as_tensorConst*
dtype0*
_output_shapes
: *
valueB 
~
9gradients/mean_squared_error/Select_grad/zeros_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
?
3gradients/mean_squared_error/Select_grad/zeros_likeFillCgradients/mean_squared_error/Select_grad/zeros_like/shape_as_tensor9gradients/mean_squared_error/Select_grad/zeros_like/Const*
T0*

index_type0*
_output_shapes
: 
?
/gradients/mean_squared_error/Select_grad/SelectSelectmean_squared_error/Equal@gradients/mean_squared_error/div_grad/tuple/control_dependency_13gradients/mean_squared_error/Select_grad/zeros_like*
T0*
_output_shapes
: 
?
1gradients/mean_squared_error/Select_grad/Select_1Selectmean_squared_error/Equal3gradients/mean_squared_error/Select_grad/zeros_like@gradients/mean_squared_error/div_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
?
9gradients/mean_squared_error/Select_grad/tuple/group_depsNoOp0^gradients/mean_squared_error/Select_grad/Select2^gradients/mean_squared_error/Select_grad/Select_1
?
Agradients/mean_squared_error/Select_grad/tuple/control_dependencyIdentity/gradients/mean_squared_error/Select_grad/Select:^gradients/mean_squared_error/Select_grad/tuple/group_deps*B
_class8
64loc:@gradients/mean_squared_error/Select_grad/Select*
_output_shapes
: *
T0
?
Cgradients/mean_squared_error/Select_grad/tuple/control_dependency_1Identity1gradients/mean_squared_error/Select_grad/Select_1:^gradients/mean_squared_error/Select_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/mean_squared_error/Select_grad/Select_1*
_output_shapes
: 
?
3gradients/mean_squared_error/Sum_grad/Reshape/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:
?
-gradients/mean_squared_error/Sum_grad/ReshapeReshape,gradients/mean_squared_error/Sum_1_grad/Tile3gradients/mean_squared_error/Sum_grad/Reshape/shape*
T0*
Tshape0*"
_output_shapes
:
?
+gradients/mean_squared_error/Sum_grad/ShapeShapemean_squared_error/Mul*
T0*
out_type0*
_output_shapes
:
?
*gradients/mean_squared_error/Sum_grad/TileTile-gradients/mean_squared_error/Sum_grad/Reshape+gradients/mean_squared_error/Sum_grad/Shape*
T0*4
_output_shapes"
 :??????????????????*

Tmultiples0
?
+gradients/mean_squared_error/Mul_grad/ShapeShape$mean_squared_error/SquaredDifference*
T0*
out_type0*
_output_shapes
:
p
-gradients/mean_squared_error/Mul_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
?
;gradients/mean_squared_error/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/mean_squared_error/Mul_grad/Shape-gradients/mean_squared_error/Mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
)gradients/mean_squared_error/Mul_grad/mulMul*gradients/mean_squared_error/Sum_grad/Tilemean_squared_error/ToFloat_3/x*
T0*4
_output_shapes"
 :??????????????????
?
)gradients/mean_squared_error/Mul_grad/SumSum)gradients/mean_squared_error/Mul_grad/mul;gradients/mean_squared_error/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
-gradients/mean_squared_error/Mul_grad/ReshapeReshape)gradients/mean_squared_error/Mul_grad/Sum+gradients/mean_squared_error/Mul_grad/Shape*
T0*
Tshape0*4
_output_shapes"
 :??????????????????
?
+gradients/mean_squared_error/Mul_grad/mul_1Mul$mean_squared_error/SquaredDifference*gradients/mean_squared_error/Sum_grad/Tile*4
_output_shapes"
 :??????????????????*
T0
?
+gradients/mean_squared_error/Mul_grad/Sum_1Sum+gradients/mean_squared_error/Mul_grad/mul_1=gradients/mean_squared_error/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
/gradients/mean_squared_error/Mul_grad/Reshape_1Reshape+gradients/mean_squared_error/Mul_grad/Sum_1-gradients/mean_squared_error/Mul_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
?
6gradients/mean_squared_error/Mul_grad/tuple/group_depsNoOp.^gradients/mean_squared_error/Mul_grad/Reshape0^gradients/mean_squared_error/Mul_grad/Reshape_1
?
>gradients/mean_squared_error/Mul_grad/tuple/control_dependencyIdentity-gradients/mean_squared_error/Mul_grad/Reshape7^gradients/mean_squared_error/Mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/mean_squared_error/Mul_grad/Reshape*4
_output_shapes"
 :??????????????????
?
@gradients/mean_squared_error/Mul_grad/tuple/control_dependency_1Identity/gradients/mean_squared_error/Mul_grad/Reshape_17^gradients/mean_squared_error/Mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/mean_squared_error/Mul_grad/Reshape_1*
_output_shapes
: 
?
;gradients/mean_squared_error/num_present_grad/Reshape/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:
?
5gradients/mean_squared_error/num_present_grad/ReshapeReshapeCgradients/mean_squared_error/Select_grad/tuple/control_dependency_1;gradients/mean_squared_error/num_present_grad/Reshape/shape*
T0*
Tshape0*"
_output_shapes
:
?
3gradients/mean_squared_error/num_present_grad/ShapeShape0mean_squared_error/num_present/broadcast_weights*
out_type0*
_output_shapes
:*
T0
?
2gradients/mean_squared_error/num_present_grad/TileTile5gradients/mean_squared_error/num_present_grad/Reshape3gradients/mean_squared_error/num_present_grad/Shape*4
_output_shapes"
 :??????????????????*

Tmultiples0*
T0
?
Egradients/mean_squared_error/num_present/broadcast_weights_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
?
Ggradients/mean_squared_error/num_present/broadcast_weights_grad/Shape_1Shape:mean_squared_error/num_present/broadcast_weights/ones_like*
_output_shapes
:*
T0*
out_type0
?
Ugradients/mean_squared_error/num_present/broadcast_weights_grad/BroadcastGradientArgsBroadcastGradientArgsEgradients/mean_squared_error/num_present/broadcast_weights_grad/ShapeGgradients/mean_squared_error/num_present/broadcast_weights_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
Cgradients/mean_squared_error/num_present/broadcast_weights_grad/mulMul2gradients/mean_squared_error/num_present_grad/Tile:mean_squared_error/num_present/broadcast_weights/ones_like*
T0*4
_output_shapes"
 :??????????????????
?
Cgradients/mean_squared_error/num_present/broadcast_weights_grad/SumSumCgradients/mean_squared_error/num_present/broadcast_weights_grad/mulUgradients/mean_squared_error/num_present/broadcast_weights_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Ggradients/mean_squared_error/num_present/broadcast_weights_grad/ReshapeReshapeCgradients/mean_squared_error/num_present/broadcast_weights_grad/SumEgradients/mean_squared_error/num_present/broadcast_weights_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
?
Egradients/mean_squared_error/num_present/broadcast_weights_grad/mul_1Mul%mean_squared_error/num_present/Select2gradients/mean_squared_error/num_present_grad/Tile*4
_output_shapes"
 :??????????????????*
T0
?
Egradients/mean_squared_error/num_present/broadcast_weights_grad/Sum_1SumEgradients/mean_squared_error/num_present/broadcast_weights_grad/mul_1Wgradients/mean_squared_error/num_present/broadcast_weights_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Igradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape_1ReshapeEgradients/mean_squared_error/num_present/broadcast_weights_grad/Sum_1Ggradients/mean_squared_error/num_present/broadcast_weights_grad/Shape_1*
Tshape0*4
_output_shapes"
 :??????????????????*
T0
?
Pgradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/group_depsNoOpH^gradients/mean_squared_error/num_present/broadcast_weights_grad/ReshapeJ^gradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape_1
?
Xgradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/control_dependencyIdentityGgradients/mean_squared_error/num_present/broadcast_weights_grad/ReshapeQ^gradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape*
_output_shapes
: 
?
Zgradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/control_dependency_1IdentityIgradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape_1Q^gradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/group_deps*\
_classR
PNloc:@gradients/mean_squared_error/num_present/broadcast_weights_grad/Reshape_1*4
_output_shapes"
 :??????????????????*
T0
?
Ogradients/mean_squared_error/num_present/broadcast_weights/ones_like_grad/ConstConst*!
valueB"          *
dtype0*
_output_shapes
:
?
Mgradients/mean_squared_error/num_present/broadcast_weights/ones_like_grad/SumSumZgradients/mean_squared_error/num_present/broadcast_weights_grad/tuple/control_dependency_1Ogradients/mean_squared_error/num_present/broadcast_weights/ones_like_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
?
9gradients/mean_squared_error/SquaredDifference_grad/ShapeShapePlaceholder_2*
_output_shapes
:*
T0*
out_type0
?
;gradients/mean_squared_error/SquaredDifference_grad/Shape_1Shape	Reshape_1*
T0*
out_type0*
_output_shapes
:
?
Igradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients/mean_squared_error/SquaredDifference_grad/Shape;gradients/mean_squared_error/SquaredDifference_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
:gradients/mean_squared_error/SquaredDifference_grad/scalarConst?^gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
valueB
 *   @*
dtype0*
_output_shapes
: 
?
7gradients/mean_squared_error/SquaredDifference_grad/mulMul:gradients/mean_squared_error/SquaredDifference_grad/scalar>gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*4
_output_shapes"
 :??????????????????
?
7gradients/mean_squared_error/SquaredDifference_grad/subSubPlaceholder_2	Reshape_1?^gradients/mean_squared_error/Mul_grad/tuple/control_dependency*
T0*4
_output_shapes"
 :??????????????????
?
9gradients/mean_squared_error/SquaredDifference_grad/mul_1Mul7gradients/mean_squared_error/SquaredDifference_grad/mul7gradients/mean_squared_error/SquaredDifference_grad/sub*4
_output_shapes"
 :??????????????????*
T0
?
7gradients/mean_squared_error/SquaredDifference_grad/SumSum9gradients/mean_squared_error/SquaredDifference_grad/mul_1Igradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
;gradients/mean_squared_error/SquaredDifference_grad/ReshapeReshape7gradients/mean_squared_error/SquaredDifference_grad/Sum9gradients/mean_squared_error/SquaredDifference_grad/Shape*
Tshape0*4
_output_shapes"
 :??????????????????*
T0
?
9gradients/mean_squared_error/SquaredDifference_grad/Sum_1Sum9gradients/mean_squared_error/SquaredDifference_grad/mul_1Kgradients/mean_squared_error/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
=gradients/mean_squared_error/SquaredDifference_grad/Reshape_1Reshape9gradients/mean_squared_error/SquaredDifference_grad/Sum_1;gradients/mean_squared_error/SquaredDifference_grad/Shape_1*
T0*
Tshape0*4
_output_shapes"
 :??????????????????
?
7gradients/mean_squared_error/SquaredDifference_grad/NegNeg=gradients/mean_squared_error/SquaredDifference_grad/Reshape_1*4
_output_shapes"
 :??????????????????*
T0
?
Dgradients/mean_squared_error/SquaredDifference_grad/tuple/group_depsNoOp<^gradients/mean_squared_error/SquaredDifference_grad/Reshape8^gradients/mean_squared_error/SquaredDifference_grad/Neg
?
Lgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependencyIdentity;gradients/mean_squared_error/SquaredDifference_grad/ReshapeE^gradients/mean_squared_error/SquaredDifference_grad/tuple/group_deps*4
_output_shapes"
 :??????????????????*
T0*N
_classD
B@loc:@gradients/mean_squared_error/SquaredDifference_grad/Reshape
?
Ngradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1Identity7gradients/mean_squared_error/SquaredDifference_grad/NegE^gradients/mean_squared_error/SquaredDifference_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/mean_squared_error/SquaredDifference_grad/Neg*4
_output_shapes"
 :??????????????????
k
gradients/Reshape_1_grad/ShapeShapedense/BiasAdd*
T0*
out_type0*
_output_shapes
:
?
 gradients/Reshape_1_grad/ReshapeReshapeNgradients/mean_squared_error/SquaredDifference_grad/tuple/control_dependency_1gradients/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:?????????
?
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/Reshape_1_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
?
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp!^gradients/Reshape_1_grad/Reshape)^gradients/dense/BiasAdd_grad/BiasAddGrad
?
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity gradients/Reshape_1_grad/Reshape.^gradients/dense/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*3
_class)
'%loc:@gradients/Reshape_1_grad/Reshape
?
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
?
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
T0*
transpose_a( *(
_output_shapes
:??????????*
transpose_b(
?
$gradients/dense/MatMul_grad/MatMul_1MatMulReshape5gradients/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	?*
transpose_b( 
?
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
?
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*(
_output_shapes
:??????????*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
?
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
_output_shapes
:	?*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
k
gradients/Reshape_grad/ShapeShapernn/transpose_1*
_output_shapes
:*
T0*
out_type0
?
gradients/Reshape_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
T0*
Tshape0*5
_output_shapes#
!:???????????????????
x
0gradients/rnn/transpose_1_grad/InvertPermutationInvertPermutationrnn/concat_2*
_output_shapes
:*
T0
?
(gradients/rnn/transpose_1_grad/transpose	Transposegradients/Reshape_grad/Reshape0gradients/rnn/transpose_1_grad/InvertPermutation*5
_output_shapes#
!:???????????????????*
Tperm0*
T0
?
Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
source	gradients*
_output_shapes

:: 
?
Ugradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentityrnn/while/Exit_2Z^gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*"
_class
loc:@rnn/TensorArray*
_output_shapes
: 
?
_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayStack/range(gradients/rnn/transpose_1_grad/transposeUgradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
_output_shapes
: *
T0
f
gradients/zeros_like	ZerosLikernn/while/Exit_3*(
_output_shapes
:??????????*
T0
?
&gradients/rnn/while/Exit_2_grad/b_exitEnter_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
: *
T0*
is_constant( 
?
&gradients/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*(
_output_shapes
:??????????*
T0*
is_constant( 
?
*gradients/rnn/while/Switch_2_grad/b_switchMerge&gradients/rnn/while/Exit_2_grad/b_exit1gradients/rnn/while/Switch_2_grad_1/NextIteration*
T0*
N*
_output_shapes
: : 
?
*gradients/rnn/while/Switch_3_grad/b_switchMerge&gradients/rnn/while/Exit_3_grad/b_exit1gradients/rnn/while/Switch_3_grad_1/NextIteration*
T0*
N**
_output_shapes
:??????????: 
?
'gradients/rnn/while/Merge_2_grad/SwitchSwitch*gradients/rnn/while/Switch_2_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: : 
c
1gradients/rnn/while/Merge_2_grad/tuple/group_depsNoOp(^gradients/rnn/while/Merge_2_grad/Switch
?
9gradients/rnn/while/Merge_2_grad/tuple/control_dependencyIdentity'gradients/rnn/while/Merge_2_grad/Switch2^gradients/rnn/while/Merge_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
?
;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1Identity)gradients/rnn/while/Merge_2_grad/Switch:12^gradients/rnn/while/Merge_2_grad/tuple/group_deps*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: *
T0
?
'gradients/rnn/while/Merge_3_grad/SwitchSwitch*gradients/rnn/while/Switch_3_grad/b_switchgradients/b_count_2*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*<
_output_shapes*
(:??????????:??????????
c
1gradients/rnn/while/Merge_3_grad/tuple/group_depsNoOp(^gradients/rnn/while/Merge_3_grad/Switch
?
9gradients/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity'gradients/rnn/while/Merge_3_grad/Switch2^gradients/rnn/while/Merge_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*(
_output_shapes
:??????????
?
;gradients/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity)gradients/rnn/while/Merge_3_grad/Switch:12^gradients/rnn/while/Merge_3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_3_grad/b_switch*(
_output_shapes
:??????????
?
%gradients/rnn/while/Enter_2_grad/ExitExit9gradients/rnn/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
?
%gradients/rnn/while/Enter_3_grad/ExitExit9gradients/rnn/while/Merge_3_grad/tuple/control_dependency*(
_output_shapes
:??????????*
T0
?
^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
source	gradients*
_output_shapes

:: 
?
dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray*
_output_shapes
:*1

frame_name#!gradients/rnn/while/while_context*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
parallel_iterations *
is_constant(
?
Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1_^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
_output_shapes
: 
?
Ngradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*(
_output_shapes
:??????????
?
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*'
_class
loc:@rnn/while/Identity_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*'
_class
loc:@rnn/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0
?
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterrnn/while/Identity_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
: 
?
Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
_output_shapes
: *
	elem_type0
?
_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?)
Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerZ^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2E^gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2G^gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2_1`^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2P^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1a^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPopV2S^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/StackPopV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPopV2S^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/StackPopV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2W^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2_1a^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/StackPopV2[^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2W^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/StackPopV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2P^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2H^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2J^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2_1`^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1a^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPopV2S^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/StackPopV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPopV2S^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/StackPopV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2W^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2_1a^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/StackPopV2[^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2W^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/StackPopV2H^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2J^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2_1
?
Mgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOp<^gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1O^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
?
Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityNgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3N^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*a
_classW
USloc:@gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*(
_output_shapes
:??????????
?
Wgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1Identity;gradients/rnn/while/Merge_2_grad/tuple/control_dependency_1N^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/rnn/while/Switch_2_grad/b_switch*
_output_shapes
: 
?
7gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
6gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/modFloorMod<gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/mod/Const7gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Rank*
T0*
_output_shapes
: 
?
<gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/mod/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
8gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeShape0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add*
T0*
out_type0*
_output_shapes
:
?
9gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeNShapeNDgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2Fgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2_1*
N* 
_output_shapes
::*
T0*
out_type0
?
?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/ConstConst*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_accStackV2?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Const*
_output_shapes
:*
	elem_type0*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add*

stack_name 
?
?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/EnterEnter?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Egradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPushV2StackPushV2?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Enter0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Dgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2
StackPopV2Jgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:??????????
?
Jgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2/EnterEnter?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Const_1Const*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc_1StackV2Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Const_1*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add*

stack_name *
_output_shapes
:*
	elem_type0
?
Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Enter_1EnterAgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Ggradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPushV2_1StackPushV2Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Enter_10rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Fgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2_1
StackPopV2Lgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
Lgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2_1/EnterEnterAgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0
?
?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ConcatOffsetConcatOffset6gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/mod9gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN;gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
?
8gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/SliceSlice;gradients/rnn/while/Merge_3_grad/tuple/control_dependency_1?gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ConcatOffset9gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN*
Index0*
T0*0
_output_shapes
:??????????????????
?
:gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Slice_1Slice;gradients/rnn/while/Merge_3_grad/tuple/control_dependency_1Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ConcatOffset:1;gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:??????????????????
?
Cgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/tuple/group_depsNoOp9^gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Slice;^gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Slice_1
?
Kgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/tuple/control_dependencyIdentity8gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/SliceD^gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/tuple/group_deps*K
_classA
?=loc:@gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Slice*(
_output_shapes
:??????????*
T0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/tuple/control_dependency_1Identity:gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Slice_1D^gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Slice_1*(
_output_shapes
:??????????
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div*
T0*
out_type0*#
_output_shapes
:?????????
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1Shape1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*
T0*
out_type0*#
_output_shapes
:?????????
?
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/ConstConst*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Const*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc*'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape^gradients/Add*
swap_memory( *#
_output_shapes
:?????????*
T0
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*#
_output_shapes
:?????????
?
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1*
valueB :
?????????*
dtype0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Const_1*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( *#
_output_shapes
:?????????
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*#
_output_shapes
:?????????*
	elem_type0
?
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mulMulUgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2*
T0*
_output_shapes
:
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/ConstConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_accStackV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/Const*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor*

stack_name *
_output_shapes
:*
	elem_type0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPushV2StackPushV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/Enter1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2
StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPopV2/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/SumSumBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mulTgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*
_output_shapes
:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1MulOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
_output_shapes
:*
T0
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/ConstConst*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_accStackV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/Const*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div*

stack_name *
_output_shapes
:*
	elem_type0
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPushV2StackPushV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/Enter/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2
StackPopV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPopV2/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_1SumDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*
_output_shapes
:*
T0
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/tuple/group_depsNoOpG^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeI^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape_1
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/tuple/control_dependencyIdentityFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeP^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape*
_output_shapes
:
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/tuple/control_dependency_1IdentityHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape_1P^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape_1*
_output_shapes
:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/ShapeShape0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add*
_output_shapes
:*
T0*
out_type0
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1Shape5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter^rnn/while/Identity*#
_output_shapes
:?????????*
T0*
out_type0
?
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/ConstConst*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_accStackV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Const*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1*
valueB :
?????????*
dtype0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1StackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Const_1*
	elem_type0*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1*

stack_name *
_output_shapes
:
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1^gradients/Add*
T0*
swap_memory( *#
_output_shapes
:?????????
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*#
_output_shapes
:?????????
?
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDivRealDivWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/tuple/control_dependencyLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
_output_shapes
:*
T0
?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/EnterEnterPlaceholder_4*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/SumSumFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDivTgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/NegNegFgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2_1*
T0*(
_output_shapes
:??????????
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_1RealDivBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/NegLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0*
_output_shapes
:
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_2RealDivHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/mulMulWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/tuple/control_dependencyHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv_2*
_output_shapes
:*
T0
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sum_1SumBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/mulVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
_output_shapes
:*
T0*
Tshape0
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/tuple/group_depsNoOpG^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/ReshapeI^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape_1
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/tuple/control_dependencyIdentityFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/ReshapeP^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape*(
_output_shapes
:??????????
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/tuple/control_dependency_1IdentityHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape_1P^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/tuple/group_deps*
_output_shapes
:*
T0*[
_classQ
OMloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Reshape_1
?
1gradients/rnn/while/Switch_2_grad_1/NextIterationNextIterationWgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
?
gradients/AddNAddNMgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/tuple/control_dependency_1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/tuple/control_dependency*(
_output_shapes
:??????????*
T0*M
_classC
A?loc:@gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Slice_1*
N
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/ShapeShape2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1*
T0*
out_type0*
_output_shapes
:
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape_1Shape2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2*
T0*
out_type0*
_output_shapes
:
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgs`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/ConstConst*X
_classN
LJloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_accStackV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Const*X
_classN
LJloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/EnterEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape_1*
valueB :
?????????
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1StackV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape_1
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Enter_1Enter]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Enter_1Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/SumSumgradients/AddNUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/ReshapeReshapeCgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Sum`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Sum_1Sumgradients/AddNWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Reshape_1ReshapeEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Sum_1bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/group_depsNoOpH^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/ReshapeJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Reshape_1
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/control_dependencyIdentityGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/ReshapeQ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Reshape*(
_output_shapes
:??????????
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/control_dependency_1IdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Reshape_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Reshape_1*(
_output_shapes
:??????????
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/ShapeShape4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split:1*
T0*
out_type0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape_1Shape)rnn/while/rnn/multi_rnn_cell/cell_1/Slice*
T0*
out_type0*
_output_shapes
:
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsbgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape*

stack_name *
_output_shapes
:
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/EnterGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Const_1*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enter_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
?
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape_1^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
?
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mulMulXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/control_dependencyPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPopV2*(
_output_shapes
:??????????*
T0
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/ConstConst*
dtype0*
_output_shapes
: *<
_class2
0.loc:@rnn/while/rnn/multi_rnn_cell/cell_1/Slice*
valueB :
?????????
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/f_accStackV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/Const*
_output_shapes
:*
	elem_type0*<
_class2
0.loc:@rnn/while/rnn/multi_rnn_cell/cell_1/Slice*

stack_name 
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/f_acc*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPushV2StackPushV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/Enter)rnn/while/rnn/multi_rnn_cell/cell_1/Slice^gradients/Add*
swap_memory( *(
_output_shapes
:??????????*
T0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPopV2
StackPopV2Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPopV2/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/SumSumEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mulWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/ReshapeReshapeEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Sumbgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1MulRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/StackPopV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/control_dependency*(
_output_shapes
:??????????*
T0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/ConstConst*
_output_shapes
: *E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split*
valueB :
?????????*
dtype0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/f_accStackV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/Const*E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split*

stack_name *
_output_shapes
:*
	elem_type0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/EnterEnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/StackPushV2StackPushV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/Enter4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split:1^gradients/Add*
swap_memory( *(
_output_shapes
:??????????*
T0
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/StackPopV2/EnterEnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Sum_1SumGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Reshape_1ReshapeGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Sum_1dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/tuple/group_depsNoOpJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/ReshapeL^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Reshape_1
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/tuple/control_dependencyIdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/ReshapeS^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Reshape*(
_output_shapes
:??????????
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/tuple/control_dependency_1IdentityKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Reshape_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Reshape_1*(
_output_shapes
:??????????
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/ShapeShape0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub*
T0*
out_type0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape_1Shape1rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh*
T0*
out_type0*
_output_shapes
:
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsbgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Const*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/EnterGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Const_1*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enter_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape_1^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
?
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mulMulZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/control_dependency_1Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPopV2*
T0*(
_output_shapes
:??????????
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/ConstConst*
dtype0*
_output_shapes
: *D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh*
valueB :
?????????
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/f_accStackV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/Const*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPushV2StackPushV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/Enter1rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPopV2
StackPopV2Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPopV2/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/SumSumEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mulWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/ReshapeReshapeEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Sumbgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1MulRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/StackPopV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:??????????
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/ConstConst*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/f_accStackV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/Const*
_output_shapes
:*
	elem_type0*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub*

stack_name 
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/EnterEnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/StackPushV2StackPushV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/Enter0rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/StackPopV2/EnterEnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Sum_1SumGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Reshape_1ReshapeGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Sum_1dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/tuple/group_depsNoOpJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/ReshapeL^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Reshape_1
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/tuple/control_dependencyIdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/ReshapeS^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Reshape*(
_output_shapes
:??????????
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/tuple/control_dependency_1IdentityKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Reshape_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Reshape_1*(
_output_shapes
:??????????
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/ShapeConst^gradients/Sub*
valueB *
dtype0*
_output_shapes
: 
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Shape_1Shape4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split:1*
T0*
out_type0*
_output_shapes
:
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgsBroadcastGradientArgsEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Shape`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2*2
_output_shapes 
:?????????:?????????*
T0
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/ConstConst*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/f_accStackV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/Const*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2StackPushV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/EnterGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2
StackPopV2fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/SumSumZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/tuple/control_dependencyUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/ReshapeReshapeCgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/SumEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Shape*
_output_shapes
: *
T0*
Tshape0
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Sum_1SumZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/tuple/control_dependencyWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/NegNegEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Sum_1*
_output_shapes
:*
T0
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Reshape_1ReshapeCgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Neg`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/tuple/group_depsNoOpH^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/ReshapeJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Reshape_1
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/tuple/control_dependencyIdentityGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/ReshapeQ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Reshape*
_output_shapes
: *
T0
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/tuple/control_dependency_1IdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Reshape_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Reshape_1*(
_output_shapes
:??????????
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh_grad/TanhGradTanhGradPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/tuple/control_dependency_1*(
_output_shapes
:??????????*
T0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes	
:?*
T0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/tuple/group_depsNoOpJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh_grad/TanhGradR^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/BiasAddGrad
?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/tuple/control_dependencyIdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh_grad/TanhGradW^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh_grad/TanhGrad*(
_output_shapes
:??????????
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/tuple/control_dependency_1IdentityQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/BiasAddGradW^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/tuple/group_deps*
_output_shapes	
:?*
T0*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/BiasAddGrad
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMulMatMul^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/tuple/control_dependencyQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul/Enter*
T0*
transpose_a( *(
_output_shapes
:??????????*
transpose_b(
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul/EnterEnter8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/read*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context* 
_output_shapes
:
??*
T0*
is_constant(
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1MatMulXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/tuple/control_dependency*
T0*
transpose_a(* 
_output_shapes
:
??*
transpose_b( 
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/ConstConst*H
_class>
<:loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/f_accStackV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/Const*H
_class>
<:loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1*

stack_name *
_output_shapes
:*
	elem_type0
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/f_acc*'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/Enter5rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/f_acc*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/tuple/group_depsNoOpL^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMulN^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/tuple/control_dependencyIdentityKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMulV^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/tuple/group_deps*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul*(
_output_shapes
:??????????*
T0
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/tuple/control_dependency_1IdentityMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1V^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/tuple/group_deps* 
_output_shapes
:
??*
T0*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/b_accConst*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/b_acc_1EnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes	
:?
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/b_acc_2MergeSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/b_acc_1Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:?: 
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/SwitchSwitchSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/b_acc_2gradients/b_count_2*"
_output_shapes
:?:?*
T0
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/AddAddTgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/Switch:1`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:?
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/NextIterationNextIterationOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/Add*
T0*
_output_shapes	
:?
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/b_acc_3ExitRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/Switch*
_output_shapes	
:?*
T0
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/RankConst^gradients/Sub*
_output_shapes
: *
value	B :*
dtype0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/modFloorModNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/mod/ConstIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/Rank*
T0*
_output_shapes
: 
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/mod/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
T0*
out_type0*
_output_shapes
:
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeNShapeNVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2_1* 
_output_shapes
::*
T0*
out_type0*
N
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/ConstConst*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_accStackV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Const*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*

stack_name *
_output_shapes
:*
	elem_type0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc*'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPushV2StackPushV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Enter/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul^gradients/Add*
swap_memory( *(
_output_shapes
:??????????*
T0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2
StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Const_1Const*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc_1StackV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Const_1*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul*

stack_name *
_output_shapes
:*
	elem_type0
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Enter_1EnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPushV2_1StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Enter_10rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul^gradients/Add*
swap_memory( *(
_output_shapes
:??????????*
T0
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2_1
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2_1/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ConcatOffsetConcatOffsetHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/modKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeNMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN:1*
N* 
_output_shapes
::
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/SliceSlice]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/tuple/control_dependencyQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ConcatOffsetKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN*
Index0*
T0*0
_output_shapes
:??????????????????
?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/Slice_1Slice]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/tuple/control_dependencySgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ConcatOffset:1Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN:1*0
_output_shapes
:??????????????????*
Index0*
T0
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/tuple/group_depsNoOpK^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/SliceM^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/Slice_1
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/tuple/control_dependencyIdentityJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/SliceV^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/tuple/group_deps*(
_output_shapes
:??????????*
T0*]
_classS
QOloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/Slice
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/tuple/control_dependency_1IdentityLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/Slice_1V^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/tuple/group_deps*
T0*_
_classU
SQloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/Slice_1*(
_output_shapes
:??????????
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/b_accConst*
valueB
??*    *
dtype0* 
_output_shapes
:
??
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/b_acc_1EnterPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/b_acc*1

frame_name#!gradients/rnn/while/while_context* 
_output_shapes
:
??*
T0*
is_constant( *
parallel_iterations 
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/b_acc_2MergeRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/b_acc_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
??: 
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/SwitchSwitchRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/b_acc_2gradients/b_count_2*
T0*,
_output_shapes
:
??:
??
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/AddAddSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/Switch:1_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
??
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/NextIterationNextIterationNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/Add*
T0* 
_output_shapes
:
??
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/b_acc_3ExitQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/Switch*
T0* 
_output_shapes
:
??
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/ShapeShape2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split*
T0*
out_type0*
_output_shapes
:
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape_1Shape)rnn/while/rnn/multi_rnn_cell/cell_1/Slice*
T0*
out_type0*
_output_shapes
:
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgs`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/ConstConst*X
_classN
LJloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_accStackV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Const*
	elem_type0*X
_classN
LJloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape*

stack_name *
_output_shapes
:
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/EnterEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Const_1Const*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape_1
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1Enter]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
?
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mulMul_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/tuple/control_dependency_1Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPopV2*
T0*(
_output_shapes
:??????????
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/SumSumCgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mulUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/ReshapeReshapeCgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Sum`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1MulPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/StackPopV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:??????????
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/ConstConst*
dtype0*
_output_shapes
: *E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split*
valueB :
?????????
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/f_accStackV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/Const*
	elem_type0*E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split*

stack_name *
_output_shapes
:
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/StackPushV2StackPushV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/Enter2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split^gradients/Add*
swap_memory( *(
_output_shapes
:??????????*
T0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/StackPopV2
StackPopV2Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/StackPopV2/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/f_acc*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Sum_1SumEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Reshape_1ReshapeEgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Sum_1bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*0
_output_shapes
:??????????????????*
T0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/tuple/group_depsNoOpH^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/ReshapeJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Reshape_1
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/tuple/control_dependencyIdentityGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/ReshapeQ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Reshape*(
_output_shapes
:??????????
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/tuple/control_dependency_1IdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Reshape_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Reshape_1*(
_output_shapes
:??????????
?
gradients/AddN_1AddNZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/tuple/control_dependencyZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/tuple/control_dependency_1*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Reshape*
N*(
_output_shapes
:??????????*
T0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split_grad/concatConcatV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/tuple/control_dependencygradients/AddN_1Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split_grad/concat/Const*
N*(
_output_shapes
:??????????*

Tidx0*
T0
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGradSigmoidGradZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split_grad/concat*
T0*(
_output_shapes
:??????????
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/ConstConst*
dtype0*
_output_shapes
: *G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid*
valueB :
?????????
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/f_accStackV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/Const*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2StackPushV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/Enter4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2
StackPopV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/BiasAddGradBiasAddGradOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/tuple/group_depsNoOpP^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGradP^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/BiasAddGrad
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/tuple/control_dependencyIdentityOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGradU^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/tuple/group_deps*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad*(
_output_shapes
:??????????*
T0
?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/tuple/control_dependency_1IdentityOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/BiasAddGradU^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:?*
T0*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/BiasAddGrad
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMulMatMul\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/tuple/control_dependencyOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul/Enter*
transpose_a( *(
_output_shapes
:??????????*
transpose_b(*
T0
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul/EnterEnter4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/read*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context* 
_output_shapes
:
??
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1MatMulVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/tuple/control_dependency*
transpose_a(* 
_output_shapes
:
??*
transpose_b( *
T0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/ConstConst*
_output_shapes
: *F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat*
valueB :
?????????*
dtype0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/f_accStackV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/f_acc*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/Enter3rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/f_acc*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/tuple/group_depsNoOpJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMulL^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/tuple/control_dependencyIdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMulT^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/tuple/control_dependency_1IdentityKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1T^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
??
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/b_accConst*
dtype0*
_output_shapes	
:?*
valueB?*    
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/b_acc_1EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/b_acc*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes	
:?*
T0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/b_acc_2MergeQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/b_acc_1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:?: 
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/SwitchSwitchQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0*"
_output_shapes
:?:?
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/AddAddRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/Switch:1^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:?
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/NextIterationNextIterationMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/Add*
T0*
_output_shapes	
:?
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/b_acc_3ExitPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/Switch*
_output_shapes	
:?*
T0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/modFloorModLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/mod/ConstGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/Rank*
T0*
_output_shapes
: 
?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/mod/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
T0*
out_type0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ShapeNShapeNVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPopV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPopV2*
T0*
out_type0*
N* 
_output_shapes
::
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ConcatOffsetConcatOffsetFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/modIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ShapeNKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/SliceSlice[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/tuple/control_dependencyOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ConcatOffsetIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ShapeN*0
_output_shapes
:??????????????????*
Index0*
T0
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/Slice_1Slice[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/tuple/control_dependencyQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ConcatOffset:1Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:??????????????????
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/tuple/group_depsNoOpI^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/SliceK^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/Slice_1
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/tuple/control_dependencyIdentityHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/SliceT^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/tuple/group_deps*[
_classQ
OMloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/Slice*(
_output_shapes
:??????????*
T0
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/tuple/control_dependency_1IdentityJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/Slice_1T^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/tuple/group_deps*
T0*]
_classS
QOloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/Slice_1*(
_output_shapes
:??????????
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/b_accConst* 
_output_shapes
:
??*
valueB
??*    *
dtype0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/b_acc_1EnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context* 
_output_shapes
:
??
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/b_acc_2MergePgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/b_acc_1Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
??: 
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/SwitchSwitchPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*
T0*,
_output_shapes
:
??:
??
?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/AddAddQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/Switch:1]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
??*
T0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/NextIterationNextIterationLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/Add* 
_output_shapes
:
??*
T0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/b_acc_3ExitOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
??
?
gradients/AddN_2AddN]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/tuple/control_dependency[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/tuple/control_dependency*
T0*]
_classS
QOloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/Slice*
N*(
_output_shapes
:??????????
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*
T0*
out_type0*#
_output_shapes
:?????????
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1Shape1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
T0*
out_type0*#
_output_shapes
:?????????
?
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:?????????:?????????*
T0
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/ConstConst*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape^gradients/Add*
swap_memory( *#
_output_shapes
:?????????*
T0
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*#
_output_shapes
:?????????*
	elem_type0
?
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1*
valueB :
?????????*
dtype0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1*

stack_name *
_output_shapes
:
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1^gradients/Add*
swap_memory( *#
_output_shapes
:?????????*
T0
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*#
_output_shapes
:?????????*
	elem_type0
?
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mulMulgradients/AddN_2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2*
_output_shapes
:*
T0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/ConstConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_accStackV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/Const*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor*

stack_name *
_output_shapes
:*
	elem_type0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc*'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPushV2StackPushV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/Enter1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2
StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPopV2/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/SumSumBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mulTgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*
_output_shapes
:*
T0
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1MulOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2gradients/AddN_2*
_output_shapes
:*
T0
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/ConstConst*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_accStackV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/Const*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div*

stack_name *
_output_shapes
:*
	elem_type0
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPushV2StackPushV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/Enter/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2
StackPopV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPopV2/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1SumDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*
_output_shapes
:
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/group_depsNoOpG^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeI^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/control_dependencyIdentityFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeP^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape*
_output_shapes
:
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/control_dependency_1IdentityHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1P^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/group_deps*
_output_shapes
:*
T0*[
_classQ
OMloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1
?
gradients/AddN_3AddN\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/tuple/control_dependency_1Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/tuple/control_dependency_1]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/tuple/control_dependency_1*(
_output_shapes
:??????????*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Reshape_1*
N
?
=gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
>gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/ShapeShape)rnn/while/rnn/multi_rnn_cell/cell_1/Slice*
_output_shapes
:*
T0*
out_type0
?
@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/stack/1Const^gradients/Sub*
_output_shapes
: *
value	B :*
dtype0
?
>gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/stackPack=gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Rank@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/stack/1*
T0*

axis *
N*
_output_shapes
:
?
@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/ReshapeReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Reshape/Const>gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/stack*
_output_shapes

:*
T0*
Tshape0
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Reshape/ConstConst^gradients/Sub*
valueB"    ?   *
dtype0*
_output_shapes
:
?
@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape_1Shapernn/while/Identity_3*
T0*
out_type0*
_output_shapes
:
?
<gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/subSubGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2_1*
T0*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/ConstConst*S
_classI
GEloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_accStackV2Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Const*

stack_name *
_output_shapes
:*
	elem_type0*S
_classI
GEloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape_1
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/EnterEnterBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPushV2StackPushV2Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Enter@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2
StackPopV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2/EnterEnterBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Const_1Const*Q
_classG
ECloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc_1StackV2Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Const_1*
	elem_type0*Q
_classG
ECloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape*

stack_name *
_output_shapes
:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Enter_1EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPushV2_1StackPushV2Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Enter_1>gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2_1
StackPopV2Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPopV2_1/EnterEnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0
?
>gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub_1Sub<gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/subFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Reshape/Const*
T0*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Reshape_1Reshape>gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub_1>gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/stack*
T0*
Tshape0*
_output_shapes

:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/concat/axisConst^gradients/Sub*
_output_shapes
: *
value	B :*
dtype0
?
?gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/concatConcatV2@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/ReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Reshape_1Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
?
<gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/PadPadgradients/AddN_3?gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/concat*
T0*
	Tpaddings0*(
_output_shapes
:??????????
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ShapeShape0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add*
T0*
out_type0*
_output_shapes
:
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1Shape5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter^rnn/while/Identity*
out_type0*#
_output_shapes
:?????????*
T0
?
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:?????????:?????????*
T0
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/ConstConst*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_accStackV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Const*W
_classM
KIloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
?
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Const_1Const*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1StackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Const_1*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1^gradients/Add*
swap_memory( *#
_output_shapes
:?????????*
T0
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
	elem_type0*#
_output_shapes
:?????????
?
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDivRealDivWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/control_dependencyLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/SumSumFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDivTgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/NegNegDgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPopV2*
T0*(
_output_shapes
:??????????
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_1RealDivBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/NegLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
_output_shapes
:*
T0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_2RealDivHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/RealDiv/Enter*
T0*
_output_shapes
:
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/mulMulWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/tuple/control_dependencyHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/RealDiv_2*
T0*
_output_shapes
:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_1SumBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/mulVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*
_output_shapes
:
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/group_depsNoOpG^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ReshapeI^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/control_dependencyIdentityFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/ReshapeP^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/group_deps*(
_output_shapes
:??????????*
T0*Y
_classO
MKloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/control_dependency_1IdentityHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1P^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Reshape_1*
_output_shapes
:
?
gradients/AddN_4AddNKgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/tuple/control_dependencyWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/tuple/control_dependency*
T0*K
_classA
?=loc:@gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Slice*
N*(
_output_shapes
:??????????
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/ShapeShape2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1*
out_type0*
_output_shapes
:*
T0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape_1Shape2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2*
T0*
out_type0*
_output_shapes
:
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgs`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/ConstConst*X
_classN
LJloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_accStackV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Const*X
_classN
LJloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/EnterEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape_1*
valueB :
?????????
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1StackV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Const_1*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Enter_1Enter]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Enter_1Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/SumSumgradients/AddN_4Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/ReshapeReshapeCgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Sum`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Sum_1Sumgradients/AddN_4Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Reshape_1ReshapeEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Sum_1bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/group_depsNoOpH^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/ReshapeJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Reshape_1
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/control_dependencyIdentityGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/ReshapeQ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Reshape*(
_output_shapes
:??????????
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/control_dependency_1IdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Reshape_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/group_deps*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Reshape_1*(
_output_shapes
:??????????*
T0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/ShapeShape4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:1*
_output_shapes
:*
T0*
out_type0
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape_1Shape)rnn/while/rnn/multi_rnn_cell/cell_0/Slice*
T0*
out_type0*
_output_shapes
:
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsbgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape*
valueB :
?????????
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape*

stack_name *
_output_shapes
:
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/EnterGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Const_1*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enter_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape_1^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
?
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mulMulXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/control_dependencyPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPopV2*
T0*(
_output_shapes
:??????????
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/ConstConst*<
_class2
0.loc:@rnn/while/rnn/multi_rnn_cell/cell_0/Slice*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/f_accStackV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*<
_class2
0.loc:@rnn/while/rnn/multi_rnn_cell/cell_0/Slice
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/f_acc*'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPushV2StackPushV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/Enter)rnn/while/rnn/multi_rnn_cell/cell_0/Slice^gradients/Add*
swap_memory( *(
_output_shapes
:??????????*
T0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPopV2
StackPopV2Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:??????????
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPopV2/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/SumSumEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mulWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/ReshapeReshapeEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Sumbgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1MulRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/StackPopV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/control_dependency*(
_output_shapes
:??????????*
T0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/ConstConst*E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/f_accStackV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/Const*E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split*

stack_name *
_output_shapes
:*
	elem_type0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/EnterEnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/StackPushV2StackPushV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/Enter4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:1^gradients/Add*
swap_memory( *(
_output_shapes
:??????????*
T0
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/StackPopV2
StackPopV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:??????????
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/StackPopV2/EnterEnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Sum_1SumGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Reshape_1ReshapeGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Sum_1dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/tuple/group_depsNoOpJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/ReshapeL^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Reshape_1
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/tuple/control_dependencyIdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/ReshapeS^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/tuple/group_deps*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Reshape*(
_output_shapes
:??????????*
T0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/tuple/control_dependency_1IdentityKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Reshape_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Reshape_1*(
_output_shapes
:??????????
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/ShapeShape0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub*
T0*
out_type0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape_1Shape1rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh*
out_type0*
_output_shapes
:*
T0
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsbgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:?????????:?????????*
T0
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Const*
	elem_type0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape*

stack_name *
_output_shapes
:
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/EnterGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*
_output_shapes
:
?
hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Const_1*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enter_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mulMulZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/control_dependency_1Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPopV2*(
_output_shapes
:??????????*
T0
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/ConstConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/f_accStackV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/Const*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh*

stack_name *
_output_shapes
:
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPushV2StackPushV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/Enter1rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPopV2
StackPopV2Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPopV2/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/SumSumEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mulWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/ReshapeReshapeEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Sumbgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1MulRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/StackPopV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/tuple/control_dependency_1*(
_output_shapes
:??????????*
T0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/ConstConst*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/f_accStackV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/Const*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub*

stack_name *
_output_shapes
:*
	elem_type0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/EnterEnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/StackPushV2StackPushV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/Enter0rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/StackPopV2
StackPopV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*(
_output_shapes
:??????????
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/StackPopV2/EnterEnterMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Sum_1SumGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Reshape_1ReshapeGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Sum_1dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/tuple/group_depsNoOpJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/ReshapeL^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Reshape_1
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/tuple/control_dependencyIdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/ReshapeS^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Reshape*(
_output_shapes
:??????????
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/tuple/control_dependency_1IdentityKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Reshape_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Reshape_1*(
_output_shapes
:??????????
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/ShapeConst^gradients/Sub*
dtype0*
_output_shapes
: *
valueB 
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Shape_1Shape4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:1*
T0*
out_type0*
_output_shapes
:
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgsBroadcastGradientArgsEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Shape`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2*
T0*2
_output_shapes 
:?????????:?????????
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/ConstConst*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/f_accStackV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/Const*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2StackPushV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/EnterGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2
StackPopV2fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/SumSumZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/tuple/control_dependencyUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/ReshapeReshapeCgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/SumEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Shape*
Tshape0*
_output_shapes
: *
T0
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Sum_1SumZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/tuple/control_dependencyWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/NegNegEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Sum_1*
T0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Reshape_1ReshapeCgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Neg`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*0
_output_shapes
:??????????????????*
T0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/tuple/group_depsNoOpH^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/ReshapeJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Reshape_1
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/tuple/control_dependencyIdentityGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/ReshapeQ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/tuple/group_deps*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Reshape*
_output_shapes
: *
T0
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/tuple/control_dependency_1IdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Reshape_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Reshape_1*(
_output_shapes
:??????????
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh_grad/TanhGradTanhGradPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:??????????
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/BiasAddGradBiasAddGradIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh_grad/TanhGrad*
_output_shapes	
:?*
T0*
data_formatNHWC
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/tuple/group_depsNoOpJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh_grad/TanhGradR^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/BiasAddGrad
?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/tuple/control_dependencyIdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh_grad/TanhGradW^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh_grad/TanhGrad*(
_output_shapes
:??????????
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/tuple/control_dependency_1IdentityQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/BiasAddGradW^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/tuple/group_deps*
T0*d
_classZ
XVloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/BiasAddGrad*
_output_shapes	
:?
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMulMatMul^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/tuple/control_dependencyQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul/Enter*
transpose_a( *(
_output_shapes
:??????????*
transpose_b(*
T0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul/EnterEnter8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/read*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context* 
_output_shapes
:
??
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1MatMulXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/tuple/control_dependency*
T0*
transpose_a(* 
_output_shapes
:
??*
transpose_b( 
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/ConstConst*
_output_shapes
: *H
_class>
<:loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1*
valueB :
?????????*
dtype0
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/f_accStackV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/Const*H
_class>
<:loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1*

stack_name *
_output_shapes
:*
	elem_type0
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/Enter5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/StackPopV2/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/tuple/group_depsNoOpL^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMulN^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/tuple/control_dependencyIdentityKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMulV^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul*(
_output_shapes
:??????????
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/tuple/control_dependency_1IdentityMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1V^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1* 
_output_shapes
:
??
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/b_accConst*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/b_acc_1EnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/b_acc*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes	
:?*
T0
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/b_acc_2MergeSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/b_acc_1Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:?: 
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/SwitchSwitchSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/b_acc_2gradients/b_count_2*
T0*"
_output_shapes
:?:?
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/AddAddTgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/Switch:1`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1_grad/tuple/control_dependency_1*
_output_shapes	
:?*
T0
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/NextIterationNextIterationOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/Add*
T0*
_output_shapes	
:?
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/b_acc_3ExitRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/Switch*
T0*
_output_shapes	
:?
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/modFloorModNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/mod/ConstIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/Rank*
T0*
_output_shapes
: 
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/mod/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeShapernn/while/TensorArrayReadV3*
_output_shapes
:*
T0*
out_type0
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeNShapeNVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2_1*
T0*
out_type0*
N* 
_output_shapes
::
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/ConstConst*.
_class$
" loc:@rnn/while/TensorArrayReadV3*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_accStackV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Const*.
_class$
" loc:@rnn/while/TensorArrayReadV3*

stack_name *
_output_shapes
:*
	elem_type0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPushV2StackPushV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Enterrnn/while/TensorArrayReadV3^gradients/Add*
T0*
swap_memory( *'
_output_shapes
:?????????
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2
StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2/Enter^gradients/Sub*'
_output_shapes
:?????????*
	elem_type0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Const_1Const*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc_1StackV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Const_1*C
_class9
75loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul*

stack_name *
_output_shapes
:*
	elem_type0
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Enter_1EnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPushV2_1StackPushV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Enter_10rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2_1
StackPopV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2_1/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2_1/EnterEnterSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ConcatOffsetConcatOffsetHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/modKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeNMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN:1* 
_output_shapes
::*
N
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/SliceSlice]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/tuple/control_dependencyQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ConcatOffsetKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN*0
_output_shapes
:??????????????????*
Index0*
T0
?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/Slice_1Slice]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/tuple/control_dependencySgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ConcatOffset:1Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN:1*0
_output_shapes
:??????????????????*
Index0*
T0
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/tuple/group_depsNoOpK^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/SliceM^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/Slice_1
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/tuple/control_dependencyIdentityJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/SliceV^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/tuple/group_deps*
T0*]
_classS
QOloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/Slice*'
_output_shapes
:?????????
?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/tuple/control_dependency_1IdentityLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/Slice_1V^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/tuple/group_deps*
T0*_
_classU
SQloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/Slice_1*(
_output_shapes
:??????????
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/b_accConst*
dtype0* 
_output_shapes
:
??*
valueB
??*    
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/b_acc_1EnterPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context* 
_output_shapes
:
??
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/b_acc_2MergeRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/b_acc_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
??: 
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/SwitchSwitchRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/b_acc_2gradients/b_count_2*
T0*,
_output_shapes
:
??:
??
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/AddAddSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/Switch:1_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/tuple/control_dependency_1* 
_output_shapes
:
??*
T0
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/NextIterationNextIterationNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/Add*
T0* 
_output_shapes
:
??
?
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/b_acc_3ExitQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/Switch*
T0* 
_output_shapes
:
??
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/ShapeShape2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split*
out_type0*
_output_shapes
:*
T0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape_1Shape)rnn/while/rnn/multi_rnn_cell/cell_0/Slice*
T0*
out_type0*
_output_shapes
:
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgs`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:?????????:?????????
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/ConstConst*X
_classN
LJloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_accStackV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Const*X
_classN
LJloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/EnterEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Const_1Const*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Const_1*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1Enter]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape_1^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mulMul_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/tuple/control_dependency_1Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPopV2*
T0*(
_output_shapes
:??????????
?
Cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/SumSumCgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mulUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/ReshapeReshapeCgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Sum`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:??????????????????
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1MulPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/StackPopV2_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/tuple/control_dependency_1*(
_output_shapes
:??????????*
T0
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/ConstConst*
dtype0*
_output_shapes
: *E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split*
valueB :
?????????
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/f_accStackV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/Const*E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split*

stack_name *
_output_shapes
:*
	elem_type0
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/StackPushV2StackPushV2Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/Enter2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/StackPopV2
StackPopV2Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/StackPopV2/EnterEnterKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(
?
Egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Sum_1SumEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Reshape_1ReshapeEgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Sum_1bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:??????????????????*
T0*
Tshape0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/tuple/group_depsNoOpH^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/ReshapeJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Reshape_1
?
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/tuple/control_dependencyIdentityGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/ReshapeQ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Reshape*(
_output_shapes
:??????????
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/tuple/control_dependency_1IdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Reshape_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Reshape_1*(
_output_shapes
:??????????
?
gradients/AddN_5AddNZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/tuple/control_dependencyZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/tuple/control_dependency_1*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Reshape*
N*(
_output_shapes
:??????????*
T0
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split_grad/concatConcatV2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/tuple/control_dependencygradients/AddN_5Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split_grad/concat/Const*
N*(
_output_shapes
:??????????*

Tidx0*
T0
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split_grad/concat/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGradSigmoidGradZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split_grad/concat*(
_output_shapes
:??????????*
T0
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/ConstConst*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/f_accStackV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/Const*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2StackPushV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/Enter4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid^gradients/Add*
swap_memory( *(
_output_shapes
:??????????*
T0
?
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2
StackPopV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/StackPopV2/EnterEnterUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/BiasAddGradBiasAddGradOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad*
T0*
data_formatNHWC*
_output_shapes	
:?
?
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/tuple/group_depsNoOpP^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGradP^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/BiasAddGrad
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/tuple/control_dependencyIdentityOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGradU^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:??????????*
T0*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad
?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/tuple/control_dependency_1IdentityOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/BiasAddGradU^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/tuple/group_deps*
T0*b
_classX
VTloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:?
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMulMatMul\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/tuple/control_dependencyOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul/Enter*
T0*
transpose_a( *(
_output_shapes
:??????????*
transpose_b(
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul/EnterEnter4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/read*1

frame_name#!gradients/rnn/while/while_context* 
_output_shapes
:
??*
T0*
is_constant(*
parallel_iterations 
?
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1MatMulVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(* 
_output_shapes
:
??
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/ConstConst*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/f_accStackV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/Enter3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat^gradients/Add*
T0*
swap_memory( *(
_output_shapes
:??????????
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*(
_output_shapes
:??????????*
	elem_type0
?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/tuple/group_depsNoOpJ^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMulL^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/tuple/control_dependencyIdentityIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMulT^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul*(
_output_shapes
:??????????
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/tuple/control_dependency_1IdentityKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1T^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
??
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/b_accConst*
valueB?*    *
dtype0*
_output_shapes	
:?
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/b_acc_1EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/b_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes	
:?*
T0*
is_constant( 
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/b_acc_2MergeQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/b_acc_1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:?: 
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/SwitchSwitchQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_2*
T0*"
_output_shapes
:?:?
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/AddAddRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/Switch:1^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:?
?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/NextIterationNextIterationMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:?*
T0
?
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/b_acc_3ExitPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:?
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/RankConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/modFloorModLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/mod/ConstGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/Rank*
_output_shapes
: *
T0
?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/mod/ConstConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ShapeShapernn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ShapeNShapeNVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPopV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPopV2* 
_output_shapes
::*
T0*
out_type0*
N
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ConcatOffsetConcatOffsetFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/modIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ShapeNKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/SliceSlice[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/tuple/control_dependencyOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ConcatOffsetIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ShapeN*0
_output_shapes
:??????????????????*
Index0*
T0
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/Slice_1Slice[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/tuple/control_dependencyQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ConcatOffset:1Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:??????????????????
?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/tuple/group_depsNoOpI^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/SliceK^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/Slice_1
?
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/tuple/control_dependencyIdentityHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/SliceT^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*[
_classQ
OMloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/Slice
?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/tuple/control_dependency_1IdentityJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/Slice_1T^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/tuple/group_deps*(
_output_shapes
:??????????*
T0*]
_classS
QOloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/Slice_1
?
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/b_accConst*
valueB
??*    *
dtype0* 
_output_shapes
:
??
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/b_acc_1EnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/b_acc*1

frame_name#!gradients/rnn/while/while_context* 
_output_shapes
:
??*
T0*
is_constant( *
parallel_iterations 
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/b_acc_2MergePgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/b_acc_1Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
??: 
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/SwitchSwitchPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_2*,
_output_shapes
:
??:
??*
T0
?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/AddAddQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/Switch:1]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
??*
T0
?
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/NextIterationNextIterationLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/Add* 
_output_shapes
:
??*
T0
?
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/b_acc_3ExitOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
??
?
gradients/AddN_6AddN\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/tuple/control_dependency_1Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/tuple/control_dependency_1]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/tuple/control_dependency_1*
T0*^
_classT
RPloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Reshape_1*
N*(
_output_shapes
:??????????
?
=gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/RankConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :
?
>gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/ShapeShape)rnn/while/rnn/multi_rnn_cell/cell_0/Slice*
T0*
out_type0*
_output_shapes
:
?
@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/stack/1Const^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
>gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/stackPack=gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Rank@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/stack/1*
T0*

axis *
N*
_output_shapes
:
?
@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/ReshapeReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Reshape/Const>gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/stack*
_output_shapes

:*
T0*
Tshape0
?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Reshape/ConstConst^gradients/Sub*
valueB"        *
dtype0*
_output_shapes
:
?
@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape_1Shapernn/while/Identity_3*
T0*
out_type0*
_output_shapes
:
?
<gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/subSubGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2_1*
_output_shapes
:*
T0
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/ConstConst*S
_classI
GEloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape_1*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_accStackV2Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Const*S
_classI
GEloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/EnterEnterBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPushV2StackPushV2Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Enter@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape_1^gradients/Add*
swap_memory( *
_output_shapes
:*
T0
?
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2
StackPopV2Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2/EnterEnterBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Const_1Const*Q
_classG
ECloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape*
valueB :
?????????*
dtype0*
_output_shapes
: 
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc_1StackV2Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*Q
_classG
ECloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Enter_1EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context*
_output_shapes
:
?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPushV2_1StackPushV2Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Enter_1>gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape^gradients/Add*
T0*
swap_memory( *
_output_shapes
:
?
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2_1
StackPopV2Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2_1/Enter^gradients/Sub*
_output_shapes
:*
	elem_type0
?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPopV2_1/EnterEnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc_1*1

frame_name#!gradients/rnn/while/while_context*
_output_shapes
:*
T0*
is_constant(*
parallel_iterations 
?
>gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub_1Sub<gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/subFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Reshape/Const*
_output_shapes
:*
T0
?
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Reshape_1Reshape>gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub_1>gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/stack*
T0*
Tshape0*
_output_shapes

:
?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/concat/axisConst^gradients/Sub*
value	B :*
dtype0*
_output_shapes
: 
?
?gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/concatConcatV2@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/ReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Reshape_1Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/concat/axis*
_output_shapes

:*

Tidx0*
T0*
N
?
<gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/PadPadgradients/AddN_6?gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/concat*
	Tpaddings0*(
_output_shapes
:??????????*
T0
?
gradients/AddN_7AddN<gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Pad<gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Pad*
T0*O
_classE
CAloc:@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Pad*
N*(
_output_shapes
:??????????
?
1gradients/rnn/while/Switch_3_grad_1/NextIterationNextIterationgradients/AddN_7*
T0*(
_output_shapes
:??????????
}
beta1_power/initial_valueConst*
_output_shapes
: *
_class
loc:@dense/bias*
valueB
 *fff?*
dtype0
?
beta1_power
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
i
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
}
beta2_power/initial_valueConst*
_class
loc:@dense/bias*
valueB
 *w??*
dtype0*
_output_shapes
: 
?
beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@dense/bias*
	container *
shape: 
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense/bias
i
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
?
Vrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
valueB"?      *
dtype0*
_output_shapes
:
?
Lrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
valueB
 *    *
dtype0
?
Frnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Initializer/zerosFillVrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Initializer/zeros/shape_as_tensorLrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Initializer/zeros/Const*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*

index_type0* 
_output_shapes
:
??*
T0
?
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
	container *
shape:
??
?
;rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/AssignAssign4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/AdamFrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
9rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/readIdentity4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel* 
_output_shapes
:
??
?
Xrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
valueB"?      *
dtype0
?
Nrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Initializer/zeros/ConstConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Hrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Initializer/zerosFillXrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Initializer/zeros/shape_as_tensorNrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Initializer/zeros/Const*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*

index_type0* 
_output_shapes
:
??
?
6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1
VariableV2* 
_output_shapes
:
??*
shared_name *B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
	container *
shape:
??*
dtype0
?
=rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/AssignAssign6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1Hrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
;rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/readIdentity6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel* 
_output_shapes
:
??
?
Trnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Initializer/zeros/shape_as_tensorConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
valueB:?*
dtype0*
_output_shapes
:
?
Jrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Initializer/zeros/ConstConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Drnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Initializer/zerosFillTrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Initializer/zeros/shape_as_tensorJrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Initializer/zeros/Const*
_output_shapes	
:?*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*

index_type0
?
2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
	container *
shape:?
?
9rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/AssignAssign2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/AdamDrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
7rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/readIdentity2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
_output_shapes	
:?
?
Vrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
valueB:?*
dtype0*
_output_shapes
:
?
Lrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Initializer/zeros/ConstConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Frnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Initializer/zerosFillVrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Initializer/zeros/shape_as_tensorLrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Initializer/zeros/Const*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*

index_type0*
_output_shapes	
:?
?
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1
VariableV2*
shared_name *@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
;rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/AssignAssign4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1Frnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
validate_shape(
?
9rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/readIdentity4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
_output_shapes	
:?
?
Zrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/Initializer/zeros/shape_as_tensorConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
valueB"?   ?   *
dtype0*
_output_shapes
:
?
Prnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
valueB
 *    *
dtype0
?
Jrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/Initializer/zerosFillZrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/Initializer/zeros/shape_as_tensorPrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/Initializer/zeros/Const*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*

index_type0* 
_output_shapes
:
??*
T0
?
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
	container *
shape:
??
?
?rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/AssignAssign8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/AdamJrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/Initializer/zeros*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
=rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/readIdentity8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel* 
_output_shapes
:
??
?
\rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
valueB"?   ?   *
dtype0*
_output_shapes
:
?
Rrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/ConstConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Lrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/Initializer/zerosFill\rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/shape_as_tensorRrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/Const*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*

index_type0* 
_output_shapes
:
??
?
:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1
VariableV2* 
_output_shapes
:
??*
shared_name *F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
	container *
shape:
??*
dtype0
?
Arnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/AssignAssign:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1Lrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/Initializer/zeros*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
?rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/readIdentity:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel* 
_output_shapes
:
??
?
Xrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Initializer/zeros/shape_as_tensorConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
valueB:?*
dtype0*
_output_shapes
:
?
Nrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Initializer/zeros/ConstConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Hrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Initializer/zerosFillXrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Initializer/zeros/shape_as_tensorNrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Initializer/zeros/Const*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*

index_type0*
_output_shapes	
:?
?
6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam
VariableV2*
_output_shapes	
:?*
shared_name *D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
	container *
shape:?*
dtype0
?
=rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/AssignAssign6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/AdamHrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
;rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/readIdentity6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
_output_shapes	
:?
?
Zrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
valueB:?*
dtype0*
_output_shapes
:
?
Prnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Initializer/zeros/ConstConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Initializer/zerosFillZrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Initializer/zeros/shape_as_tensorPrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Initializer/zeros/Const*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*

index_type0*
_output_shapes	
:?
?
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:?*
shared_name *D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
	container *
shape:?
?
?rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/AssignAssign8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1Jrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
=rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/readIdentity8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1*
_output_shapes	
:?*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias
?
Vrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Initializer/zeros/shape_as_tensorConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
valueB"      *
dtype0*
_output_shapes
:
?
Lrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Initializer/zeros/ConstConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Frnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Initializer/zerosFillVrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Initializer/zeros/shape_as_tensorLrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
??*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*

index_type0
?
4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam
VariableV2*
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name *B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
	container 
?
;rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/AssignAssign4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/AdamFrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Initializer/zeros*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
9rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/readIdentity4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel* 
_output_shapes
:
??
?
Xrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
valueB"      *
dtype0
?
Nrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Initializer/zeros/ConstConst*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Hrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Initializer/zerosFillXrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Initializer/zeros/shape_as_tensorNrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
??*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*

index_type0
?
6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
??*
shared_name *B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
	container *
shape:
??
?
=rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/AssignAssign6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1Hrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Initializer/zeros*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
;rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/readIdentity6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1* 
_output_shapes
:
??*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel
?
Trnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Initializer/zeros/shape_as_tensorConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
valueB:?*
dtype0*
_output_shapes
:
?
Jrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Initializer/zeros/ConstConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Drnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Initializer/zerosFillTrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Initializer/zeros/shape_as_tensorJrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Initializer/zeros/Const*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*

index_type0*
_output_shapes	
:?
?
2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam
VariableV2*
_output_shapes	
:?*
shared_name *@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
	container *
shape:?*
dtype0
?
9rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/AssignAssign2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/AdamDrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
7rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/readIdentity2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
_output_shapes	
:?*
T0
?
Vrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
valueB:?
?
Lrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Initializer/zeros/ConstConst*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Frnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Initializer/zerosFillVrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Initializer/zeros/shape_as_tensorLrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Initializer/zeros/Const*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*

index_type0*
_output_shapes	
:?*
T0
?
4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1
VariableV2*
shared_name *@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
;rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/AssignAssign4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1Frnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Initializer/zeros*
_output_shapes	
:?*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
validate_shape(
?
9rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/readIdentity4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1*
_output_shapes	
:?*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias
?
Zrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/Initializer/zeros/shape_as_tensorConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
valueB"   ?   *
dtype0*
_output_shapes
:
?
Prnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/Initializer/zeros/ConstConst*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/Initializer/zerosFillZrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/Initializer/zeros/shape_as_tensorPrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/Initializer/zeros/Const*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*

index_type0* 
_output_shapes
:
??
?
8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam
VariableV2*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name 
?
?rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/AssignAssign8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/AdamJrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/Initializer/zeros*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
=rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/readIdentity8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel* 
_output_shapes
:
??
?
\rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
valueB"   ?   *
dtype0
?
Rrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
valueB
 *    *
dtype0
?
Lrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/Initializer/zerosFill\rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/shape_as_tensorRrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/Initializer/zeros/Const*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*

index_type0* 
_output_shapes
:
??
?
:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1
VariableV2*
	container *
shape:
??*
dtype0* 
_output_shapes
:
??*
shared_name *F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel
?
Arnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/AssignAssign:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1Lrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
?rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/readIdentity:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel* 
_output_shapes
:
??
?
Xrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
valueB:?*
dtype0
?
Nrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Initializer/zeros/ConstConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Hrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Initializer/zerosFillXrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Initializer/zeros/shape_as_tensorNrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Initializer/zeros/Const*
_output_shapes	
:?*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*

index_type0
?
6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam
VariableV2*
shared_name *D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
	container *
shape:?*
dtype0*
_output_shapes	
:?
?
=rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/AssignAssign6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/AdamHrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Initializer/zeros*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
;rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/readIdentity6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
_output_shapes	
:?
?
Zrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
valueB:?*
dtype0*
_output_shapes
:
?
Prnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Initializer/zeros/ConstConst*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
Jrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Initializer/zerosFillZrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Initializer/zeros/shape_as_tensorPrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Initializer/zeros/Const*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*

index_type0*
_output_shapes	
:?
?
8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1
VariableV2*
shape:?*
dtype0*
_output_shapes	
:?*
shared_name *D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
	container 
?
?rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/AssignAssign8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1Jrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
=rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/readIdentity8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1*
_output_shapes	
:?*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias
?
3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"?      *
dtype0*
_output_shapes
:
?
)dense/kernel/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
?
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
_class
loc:@dense/kernel*

index_type0*
_output_shapes
:	?*
T0
?
dense/kernel/Adam
VariableV2*
dtype0*
_output_shapes
:	?*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:	?
?
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	?
?
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	?
?
5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"?      *
dtype0*
_output_shapes
:
?
+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
?
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0*
_output_shapes
:	?
?
dense/kernel/Adam_1
VariableV2*
_class
loc:@dense/kernel*
	container *
shape:	?*
dtype0*
_output_shapes
:	?*
shared_name 
?
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
?
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
_class
loc:@dense/kernel*
_output_shapes
:	?*
T0
?
1dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0*
_output_shapes
:
?
'dense/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
!dense/bias/Adam/Initializer/zerosFill1dense/bias/Adam/Initializer/zeros/shape_as_tensor'dense/bias/Adam/Initializer/zeros/Const*
_output_shapes
:*
T0*
_class
loc:@dense/bias*

index_type0
?
dense/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
?
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
u
dense/bias/Adam/readIdentitydense/bias/Adam*
_output_shapes
:*
T0*
_class
loc:@dense/bias
?
3dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0*
_output_shapes
:
?
)dense/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0*
_output_shapes
: 
?
#dense/bias/Adam_1/Initializer/zerosFill3dense/bias/Adam_1/Initializer/zeros/shape_as_tensor)dense/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0*
_output_shapes
:
?
dense/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
:
?
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
y
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias*
_output_shapes
:
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w??*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w?+2*
dtype0*
_output_shapes
: 
?
EAdam/update_rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/ApplyAdam	ApplyAdam/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilonPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter_grad/b_acc_3*
use_locking( *
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
use_nesterov( * 
_output_shapes
:
??
?
CAdam/update_rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/ApplyAdam	ApplyAdam-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilonQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter_grad/b_acc_3*
use_nesterov( *
_output_shapes	
:?*
use_locking( *
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias
?
IAdam/update_rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/ApplyAdam	ApplyAdam3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilonRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter_grad/b_acc_3*
use_locking( *
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
use_nesterov( * 
_output_shapes
:
??
?
GAdam/update_rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/ApplyAdam	ApplyAdam1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilonSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter_grad/b_acc_3*
_output_shapes	
:?*
use_locking( *
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
use_nesterov( 
?
EAdam/update_rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/ApplyAdam	ApplyAdam/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilonPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter_grad/b_acc_3*
use_locking( *
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
use_nesterov( * 
_output_shapes
:
??
?
CAdam/update_rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/ApplyAdam	ApplyAdam-rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilonQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes	
:?*
use_locking( *
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
use_nesterov( 
?
IAdam/update_rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/ApplyAdam	ApplyAdam3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilonRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter_grad/b_acc_3*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
use_nesterov( * 
_output_shapes
:
??*
use_locking( *
T0
?
GAdam/update_rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/ApplyAdam	ApplyAdam1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilonSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter_grad/b_acc_3*
use_locking( *
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
use_nesterov( *
_output_shapes	
:?
?
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:	?*
use_locking( *
T0*
_class
loc:@dense/kernel
?
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readadd
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes
:
?
Adam/mulMulbeta1_power/read
Adam/beta1F^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/ApplyAdamD^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/ApplyAdamJ^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/ApplyAdamH^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/ApplyAdamF^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/ApplyAdamD^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/ApplyAdamJ^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/ApplyAdamH^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
?
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
?

Adam/mul_1Mulbeta2_power/read
Adam/beta2F^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/ApplyAdamD^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/ApplyAdamJ^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/ApplyAdamH^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/ApplyAdamF^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/ApplyAdamD^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/ApplyAdamJ^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/ApplyAdamH^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
?
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
?
AdamNoOpF^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/ApplyAdamD^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/ApplyAdamJ^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/ApplyAdamH^Adam/update_rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/ApplyAdamF^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/ApplyAdamD^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/ApplyAdamJ^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/ApplyAdamH^Adam/update_rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
?
initNoOp7^rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Assign5^rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Assign;^rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Assign9^rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Assign7^rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Assign5^rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Assign;^rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Assign9^rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Assign^dense/kernel/Assign^dense/bias/Assign^beta1_power/Assign^beta2_power/Assign<^rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Assign>^rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Assign:^rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Assign<^rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Assign@^rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/AssignB^rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/Assign>^rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Assign@^rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Assign<^rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Assign>^rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Assign:^rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Assign<^rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Assign@^rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/AssignB^rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/Assign>^rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Assign@^rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
?
save/SaveV2/tensor_namesConst*?
value?B? Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1B1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasB6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/AdamB8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1B3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelB8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/AdamB:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1B-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasB2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/AdamB4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1B/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelB4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/AdamB6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1B1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/biasB6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/AdamB8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1B3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernelB8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/AdamB:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1B-rnn/multi_rnn_cell/cell_1/gru_cell/gates/biasB2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/AdamB4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1B/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernelB4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/AdamB6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1*
dtype0*
_output_shapes
: 
?
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
: *S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_11rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_13rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_11rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_13rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1-rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1*.
dtypes$
"2 
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*?
value?B? Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1B1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasB6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/AdamB8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1B3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelB8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/AdamB:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1B-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasB2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/AdamB4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1B/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelB4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/AdamB6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1B1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/biasB6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/AdamB8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1B3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernelB8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/AdamB:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1B-rnn/multi_rnn_cell/cell_1/gru_cell/gates/biasB2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/AdamB4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1B/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernelB4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/AdamB6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1*
dtype0*
_output_shapes
: 
?
save/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*.
dtypes$
"2 *?
_output_shapes?
?::::::::::::::::::::::::::::::::
?
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: 
?
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(
?
save/Assign_2Assign
dense/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_3Assigndense/bias/Adamsave/RestoreV2:3*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
?
save/Assign_4Assigndense/bias/Adam_1save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:
?
save/Assign_5Assigndense/kernelsave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	?
?
save/Assign_6Assigndense/kernel/Adamsave/RestoreV2:6*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
?
save/Assign_7Assigndense/kernel/Adam_1save/RestoreV2:7*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
save/Assign_8Assign1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biassave/RestoreV2:8*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_9Assign6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adamsave/RestoreV2:9*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_10Assign8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1save/RestoreV2:10*
_output_shapes	
:?*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(
?
save/Assign_11Assign3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelsave/RestoreV2:11*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_12Assign8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adamsave/RestoreV2:12*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_13Assign:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1save/RestoreV2:13*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_14Assign-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biassave/RestoreV2:14*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_15Assign2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adamsave/RestoreV2:15*
_output_shapes	
:?*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
validate_shape(
?
save/Assign_16Assign4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1save/RestoreV2:16*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_17Assign/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelsave/RestoreV2:17*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
save/Assign_18Assign4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adamsave/RestoreV2:18*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel
?
save/Assign_19Assign6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1save/RestoreV2:19*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
save/Assign_20Assign1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/biassave/RestoreV2:20*
_output_shapes	
:?*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(
?
save/Assign_21Assign6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adamsave/RestoreV2:21*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_22Assign8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1save/RestoreV2:22*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_23Assign3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernelsave/RestoreV2:23*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
save/Assign_24Assign8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adamsave/RestoreV2:24*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_25Assign:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1save/RestoreV2:25*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
save/Assign_26Assign-rnn/multi_rnn_cell/cell_1/gru_cell/gates/biassave/RestoreV2:26*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save/Assign_27Assign2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adamsave/RestoreV2:27*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_28Assign4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1save/RestoreV2:28*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
save/Assign_29Assign/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernelsave/RestoreV2:29*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_30Assign4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adamsave/RestoreV2:30*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/Assign_31Assign6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1save/RestoreV2:31*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
?
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_75fae70a0a014412b5f3d01b2bc34d04/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
?
save_1/SaveV2/tensor_namesConst*?
value?B? Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1B1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasB6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/AdamB8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1B3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelB8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/AdamB:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1B-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasB2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/AdamB4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1B/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelB4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/AdamB6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1B1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/biasB6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/AdamB8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1B3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernelB8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/AdamB:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1B-rnn/multi_rnn_cell/cell_1/gru_cell/gates/biasB2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/AdamB4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1B/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernelB4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/AdamB6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1*
dtype0*
_output_shapes
: 
?
save_1/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_11rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_13rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1-rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_11rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_13rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1-rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1*.
dtypes$
"2 
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
_output_shapes
:*
T0*

axis *
N
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
_output_shapes
: *
T0
?
save_1/RestoreV2/tensor_namesConst*?
value?B? Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1B1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biasB6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/AdamB8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1B3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelB8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/AdamB:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1B-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biasB2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/AdamB4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1B/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelB4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/AdamB6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1B1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/biasB6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/AdamB8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1B3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernelB8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/AdamB:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1B-rnn/multi_rnn_cell/cell_1/gru_cell/gates/biasB2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/AdamB4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1B/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernelB4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/AdamB6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1*
dtype0*
_output_shapes
: 
?
!save_1/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*?
_output_shapes?
?::::::::::::::::::::::::::::::::*.
dtypes$
"2 
?
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense/bias
?
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
?
save_1/Assign_2Assign
dense/biassave_1/RestoreV2:2*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
?
save_1/Assign_3Assigndense/bias/Adamsave_1/RestoreV2:3*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
?
save_1/Assign_4Assigndense/bias/Adam_1save_1/RestoreV2:4*
T0*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes
:*
use_locking(
?
save_1/Assign_5Assigndense/kernelsave_1/RestoreV2:5*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	?*
use_locking(*
T0
?
save_1/Assign_6Assigndense/kernel/Adamsave_1/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(*
_output_shapes
:	?
?
save_1/Assign_7Assigndense/kernel/Adam_1save_1/RestoreV2:7*
_output_shapes
:	?*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
?
save_1/Assign_8Assign1rnn/multi_rnn_cell/cell_0/gru_cell/candidate/biassave_1/RestoreV2:8*
_output_shapes	
:?*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(
?
save_1/Assign_9Assign6rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adamsave_1/RestoreV2:9*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_10Assign8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1save_1/RestoreV2:10*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_11Assign3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernelsave_1/RestoreV2:11*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
save_1/Assign_12Assign8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adamsave_1/RestoreV2:12*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_13Assign:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1save_1/RestoreV2:13*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_14Assign-rnn/multi_rnn_cell/cell_0/gru_cell/gates/biassave_1/RestoreV2:14*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_15Assign2rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adamsave_1/RestoreV2:15*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(
?
save_1/Assign_16Assign4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1save_1/RestoreV2:16*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias
?
save_1/Assign_17Assign/rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernelsave_1/RestoreV2:17*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(
?
save_1/Assign_18Assign4rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adamsave_1/RestoreV2:18*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_19Assign6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1save_1/RestoreV2:19*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_20Assign1rnn/multi_rnn_cell/cell_1/gru_cell/candidate/biassave_1/RestoreV2:20*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_21Assign6rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adamsave_1/RestoreV2:21*
_output_shapes	
:?*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(
?
save_1/Assign_22Assign8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1save_1/RestoreV2:22*
use_locking(*
T0*D
_class:
86loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias*
validate_shape(*
_output_shapes	
:?
?
save_1/Assign_23Assign3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernelsave_1/RestoreV2:23*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_24Assign8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adamsave_1/RestoreV2:24*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel
?
save_1/Assign_25Assign:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1save_1/RestoreV2:25*
use_locking(*
T0*F
_class<
:8loc:@rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_26Assign-rnn/multi_rnn_cell/cell_1/gru_cell/gates/biassave_1/RestoreV2:26*
_output_shapes	
:?*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
validate_shape(
?
save_1/Assign_27Assign2rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adamsave_1/RestoreV2:27*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
validate_shape(*
_output_shapes	
:?*
use_locking(*
T0
?
save_1/Assign_28Assign4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1save_1/RestoreV2:28*
_output_shapes	
:?*
use_locking(*
T0*@
_class6
42loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias*
validate_shape(
?
save_1/Assign_29Assign/rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernelsave_1/RestoreV2:29*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel
?
save_1/Assign_30Assign4rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adamsave_1/RestoreV2:30*
use_locking(*
T0*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??
?
save_1/Assign_31Assign6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1save_1/RestoreV2:31*B
_class8
64loc:@rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel*
validate_shape(* 
_output_shapes
:
??*
use_locking(*
T0
?
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op

Adam"??
while_context????
??
rnn/while/while_context *rnn/while/LoopCond:02rnn/while/Merge:0:rnn/while/Identity:0Brnn/while/Exit:0Brnn/while/Exit_1:0Brnn/while/Exit_2:0Brnn/while/Exit_3:0Bgradients/f_count_2:0Jޗ
Placeholder_4:0
gradients/Add/y:0
gradients/Add:0
gradients/Merge:0
gradients/Merge:1
gradients/NextIteration:0
gradients/Switch:0
gradients/Switch:1
gradients/f_count:0
gradients/f_count_1:0
gradients/f_count_2:0
Vgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
\gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
Vgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
@gradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape:0
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/Shape_1:0
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Enter:0
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Enter_1:0
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPushV2:0
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/StackPushV2_1:0
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc:0
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc_1:0
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter:0
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter_1:0
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2:0
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1:0
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc:0
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1:0
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape:0
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/Shape_1:0
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter:0
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc:0
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape:0
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1:0
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/Enter:0
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/StackPushV2:0
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc:0
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/Enter:0
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/StackPushV2:0
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/Enter:0
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/f_acc:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/Enter:0
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/StackPushV2:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/f_acc:0
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/Enter:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2:0
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Enter:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Enter_1:0
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2:0
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1:0
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/Shape_1:0
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/Shape:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Enter:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Enter_1:0
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPushV2:0
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/StackPushV2_1:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc_1:0
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_grad/Shape:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape:0
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/Shape_1:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/Enter:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/StackPushV2:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/f_acc:0
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/Enter:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/StackPushV2:0
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/f_acc:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter:0
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape:0
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/Shape_1:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/Enter:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/StackPushV2:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/f_acc:0
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/Enter:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/StackPushV2:0
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/f_acc:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Enter:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1:0
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2:0
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/Shape_1:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/Enter:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/StackPushV2:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/f_acc:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/Enter:0
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/f_acc:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/Shape_1:0
@gradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape:0
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/Shape_1:0
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Enter:0
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Enter_1:0
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPushV2:0
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/StackPushV2_1:0
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc:0
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc_1:0
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter:0
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter_1:0
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2:0
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/StackPushV2_1:0
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc:0
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1:0
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape:0
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/Shape_1:0
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter:0
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2:0
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc:0
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape:0
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1:0
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/Enter:0
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/StackPushV2:0
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc:0
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/Enter:0
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/StackPushV2:0
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/Enter:0
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/StackPushV2:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/f_acc:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/Enter:0
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/StackPushV2:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/f_acc:0
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/Enter:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/StackPushV2:0
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Enter:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Enter_1:0
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2:0
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/StackPushV2_1:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1:0
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/Shape_1:0
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/Shape:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Enter:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Enter_1:0
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPushV2:0
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/StackPushV2_1:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc_1:0
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_grad/Shape:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter:0
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2:0
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape:0
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/Shape_1:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/Enter:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/StackPushV2:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/f_acc:0
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/Enter:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/StackPushV2:0
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/f_acc:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter:0
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2:0
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape:0
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/Shape_1:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/Enter:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/StackPushV2:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/f_acc:0
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/Enter:0
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/StackPushV2:0
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/f_acc:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Enter:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1:0
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2:0
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc:0
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/Shape_1:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/Enter:0
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/StackPushV2:0
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/f_acc:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/Enter:0
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/StackPushV2:0
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/f_acc:0
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/Shape_1:0
:gradients/rnn/while/rnn/multi_rnn_cell/concat_grad/Shape:0
Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Enter:0
Cgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Enter_1:0
Ggradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPushV2:0
Igradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/StackPushV2_1:0
Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc:0
Cgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc_1:0
rnn/Minimum:0
rnn/TensorArray:0
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
rnn/TensorArray_1:0
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/read:0
:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/read:0
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/read:0
6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/read:0
8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/read:0
:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/read:0
4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/read:0
6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/read:0
rnn/strided_slice_1:0
rnn/while/Enter:0
rnn/while/Enter_1:0
rnn/while/Enter_2:0
rnn/while/Enter_3:0
rnn/while/Exit:0
rnn/while/Exit_1:0
rnn/while/Exit_2:0
rnn/while/Exit_3:0
rnn/while/Identity:0
rnn/while/Identity_1:0
rnn/while/Identity_2:0
rnn/while/Identity_3:0
rnn/while/Less/Enter:0
rnn/while/Less:0
rnn/while/Less_1/Enter:0
rnn/while/Less_1:0
rnn/while/LogicalAnd:0
rnn/while/LoopCond:0
rnn/while/Merge:0
rnn/while/Merge:1
rnn/while/Merge_1:0
rnn/while/Merge_1:1
rnn/while/Merge_2:0
rnn/while/Merge_2:1
rnn/while/Merge_3:0
rnn/while/Merge_3:1
rnn/while/NextIteration:0
rnn/while/NextIteration_1:0
rnn/while/NextIteration_2:0
rnn/while/NextIteration_3:0
rnn/while/Switch:0
rnn/while/Switch:1
rnn/while/Switch_1:0
rnn/while/Switch_1:1
rnn/while/Switch_2:0
rnn/while/Switch_2:1
rnn/while/Switch_3:0
rnn/while/Switch_3:1
#rnn/while/TensorArrayReadV3/Enter:0
%rnn/while/TensorArrayReadV3/Enter_1:0
rnn/while/TensorArrayReadV3:0
5rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
rnn/while/add/y:0
rnn/while/add:0
rnn/while/add_1/y:0
rnn/while/add_1:0
1rnn/while/rnn/multi_rnn_cell/cell_0/Slice/begin:0
0rnn/while/rnn/multi_rnn_cell/cell_0/Slice/size:0
+rnn/while/rnn/multi_rnn_cell/cell_0/Slice:0
3rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Floor:0
3rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Shape:0
7rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter:0
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add:0
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div:0
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul:0
Jrnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform:0
@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/max:0
@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min:0
@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mul:0
@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/sub:0
<rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform:0
<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter:0
6rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd:0
>rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter:0
8rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1:0
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Const:0
;rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter:0
5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul:0
=rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter:0
7rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1:0
6rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid:0
3rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Tanh:0
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add:0
:rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat/axis:0
5rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat:0
<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1/axis:0
7rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1:0
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul:0
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1:0
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2:0
>rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split/split_dim:0
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:0
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/split:1
4rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub/x:0
2rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub:0
1rnn/while/rnn/multi_rnn_cell/cell_1/Slice/begin:0
0rnn/while/rnn/multi_rnn_cell/cell_1/Slice/size:0
+rnn/while/rnn/multi_rnn_cell/cell_1/Slice:0
3rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Floor:0
3rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Shape:0
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/add:0
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div:0
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul:0
Jrnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform:0
@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/max:0
@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min:0
@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mul:0
@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/sub:0
<rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform:0
<rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter:0
6rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd:0
>rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter:0
8rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1:0
4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Const:0
;rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter:0
5rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul:0
=rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter:0
7rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1:0
6rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid:0
3rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Tanh:0
2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add:0
:rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat/axis:0
5rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat:0
<rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1/axis:0
7rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1:0
2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul:0
4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1:0
4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2:0
>rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split/split_dim:0
4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split:0
4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/split:1
4rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub/x:0
2rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub:0
*rnn/while/rnn/multi_rnn_cell/concat/axis:0
%rnn/while/rnn/multi_rnn_cell/concat:0?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc:0\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter:0?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc_1:0Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Enter_1:0?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/f_acc:0]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/sub_grad/BroadcastGradientArgs/Enter:0?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc:0]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Enter:0?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1:0u
6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/read:0;rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul/Enter:0?
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc_1:0^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter_1:0?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/f_acc:0Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul_1/Enter:0i
@rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0%rnn/while/TensorArrayReadV3/Enter_1:0?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/f_acc:0Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul_1/Enter:0?
Vgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0Vgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0t
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/read:0<rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd/Enter:0/
rnn/strided_slice_1:0rnn/while/Less/Enter:0?
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc_1:0Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Enter_1:0?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1:0_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/add_grad/BroadcastGradientArgs/Enter_1:0?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc:0]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Enter:0?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc:0\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter:0?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/f_acc:0Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1_grad/MatMul_1/Enter:0?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/f_acc_1:0_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/BroadcastGradientArgs/Enter_1:0?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/f_acc:0Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_grad/MatMul_1/Enter:0?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc:0Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Enter:0?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc:0Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/Sigmoid_grad/SigmoidGrad/Enter:0?
Cgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc_1:0Cgradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Enter_1:0t
4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/read:0<rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd/Enter:0u
6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/read:0;rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul/Enter:0?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/f_acc:0Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul_1/Enter:0?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/f_acc:0Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_grad/MatMul_1/Enter:0?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/f_acc:0\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/div_grad/BroadcastGradientArgs/Enter:0?
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/f_acc:0Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/Sigmoid_grad/SigmoidGrad/Enter:0?
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc:0Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Enter:0?
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1:0agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter_1:0?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/f_acc:0Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/mul/Enter:0?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter:0?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/f_acc_1:0Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/concat_1_grad/ShapeN/Enter_1:0?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/f_acc:0Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul/Enter:0?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter:0?
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0agradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/f_acc:0Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/mul/Enter:0J
rnn/TensorArray:05rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0z
8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/read:0>rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/BiasAdd_1/Enter:0?
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/f_acc:0Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul_1/Enter:0?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc:0]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Enter:0?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/f_acc_1:0^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/div_grad/BroadcastGradientArgs/Enter_1:0?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/f_acc:0]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/sub_grad/BroadcastGradientArgs/Enter:0?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/f_acc:0Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1_grad/MatMul_1/Enter:0{
:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/read:0=rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/MatMul_1/Enter:0?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/f_acc:0Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul_1/Enter:0{
:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/read:0=rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/MatMul_1/Enter:0?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/f_acc_1:0_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/add_grad/BroadcastGradientArgs/Enter_1:0)
rnn/Minimum:0rnn/while/Less_1/Enter:0:
rnn/TensorArray_1:0#rnn/while/TensorArrayReadV3/Enter:0?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/f_acc:0Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/Slice_grad/sub/Enter:0?
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/f_acc_1:0Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/concat_1_grad/ShapeN/Enter_1:0?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc:0_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter:0?
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/f_acc:0_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/BroadcastGradientArgs/Enter:0?
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/f_acc:0Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/mul/Enter:0?
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/f_acc:0]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/BroadcastGradientArgs/Enter:0?
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1:0agradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_2_grad/BroadcastGradientArgs/Enter_1:0?
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/f_acc:0Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/Slice_grad/sub/Enter:0?
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc:0\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter:0?
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/f_acc:0Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_2_grad/mul_1/Enter:0z
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/read:0>rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/BiasAdd_1/Enter:0?
Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/f_acc:0Agradients/rnn/while/rnn/multi_rnn_cell/concat_grad/ShapeN/Enter:0?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/f_acc:0Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_grad/mul_1/Enter:0?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/f_acc:0Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/gru_cell/mul_1_grad/mul/Enter:0J
Placeholder_4:07rnn/while/rnn/multi_rnn_cell/cell_0/dropout/add/Enter:0?
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1:0^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1:0?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/f_acc:0Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_grad/mul_1/Enter:0?
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/f_acc:0Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/gru_cell/mul_1_grad/mul/Enter:0Rrnn/while/Enter:0Rrnn/while/Enter_1:0Rrnn/while/Enter_2:0Rrnn/while/Enter_3:0Rgradients/f_count_1:0Zrnn/strided_slice_1:0"?6
	variables?6?6
?
1rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel:06rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Assign6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/read:02Lrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform:0
?
/rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias:04rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Assign4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/read:02Arnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Initializer/Const:0
?
5rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel:0:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Assign:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/read:02Prnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform:0
?
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias:08rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Assign8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/read:02Ernn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Initializer/zeros:0
?
1rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel:06rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Assign6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/read:02Lrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform:0
?
/rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias:04rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Assign4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/read:02Arnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Initializer/Const:0
?
5rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel:0:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Assign:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/read:02Prnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform:0
?
3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias:08rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Assign8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/read:02Ernn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
?
6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam:0;rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Assign;rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/read:02Hrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam/Initializer/zeros:0
?
8rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1:0=rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Assign=rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/read:02Jrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Adam_1/Initializer/zeros:0
?
4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam:09rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Assign9rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/read:02Frnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam/Initializer/zeros:0
?
6rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1:0;rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Assign;rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/read:02Hrnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Adam_1/Initializer/zeros:0
?
:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam:0?rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/Assign?rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/read:02Lrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam/Initializer/zeros:0
?
<rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1:0Arnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/AssignArnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/read:02Nrnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Adam_1/Initializer/zeros:0
?
8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam:0=rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Assign=rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/read:02Jrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam/Initializer/zeros:0
?
:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1:0?rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Assign?rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/read:02Lrnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Adam_1/Initializer/zeros:0
?
6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam:0;rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Assign;rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/read:02Hrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam/Initializer/zeros:0
?
8rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1:0=rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Assign=rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/read:02Jrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Adam_1/Initializer/zeros:0
?
4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam:09rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Assign9rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/read:02Frnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam/Initializer/zeros:0
?
6rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1:0;rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Assign;rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/read:02Hrnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Adam_1/Initializer/zeros:0
?
:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam:0?rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/Assign?rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/read:02Lrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam/Initializer/zeros:0
?
<rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1:0Arnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/AssignArnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/read:02Nrnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Adam_1/Initializer/zeros:0
?
8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam:0=rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Assign=rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/read:02Jrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam/Initializer/zeros:0
?
:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1:0?rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Assign?rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/read:02Lrnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Adam_1/Initializer/zeros:0
p
dense/kernel/Adam:0dense/kernel/Adam/Assigndense/kernel/Adam/read:02%dense/kernel/Adam/Initializer/zeros:0
x
dense/kernel/Adam_1:0dense/kernel/Adam_1/Assigndense/kernel/Adam_1/read:02'dense/kernel/Adam_1/Initializer/zeros:0
h
dense/bias/Adam:0dense/bias/Adam/Assigndense/bias/Adam/read:02#dense/bias/Adam/Initializer/zeros:0
p
dense/bias/Adam_1:0dense/bias/Adam_1/Assigndense/bias/Adam_1/read:02%dense/bias/Adam_1/Initializer/zeros:0"(
losses

mean_squared_error/value:0"?
trainable_variables??
?
1rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel:06rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Assign6rnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/read:02Lrnn/multi_rnn_cell/cell_0/gru_cell/gates/kernel/Initializer/random_uniform:0
?
/rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias:04rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Assign4rnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/read:02Arnn/multi_rnn_cell/cell_0/gru_cell/gates/bias/Initializer/Const:0
?
5rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel:0:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Assign:rnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/read:02Prnn/multi_rnn_cell/cell_0/gru_cell/candidate/kernel/Initializer/random_uniform:0
?
3rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias:08rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Assign8rnn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/read:02Ernn/multi_rnn_cell/cell_0/gru_cell/candidate/bias/Initializer/zeros:0
?
1rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel:06rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Assign6rnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/read:02Lrnn/multi_rnn_cell/cell_1/gru_cell/gates/kernel/Initializer/random_uniform:0
?
/rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias:04rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Assign4rnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/read:02Arnn/multi_rnn_cell/cell_1/gru_cell/gates/bias/Initializer/Const:0
?
5rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel:0:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Assign:rnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/read:02Prnn/multi_rnn_cell/cell_1/gru_cell/candidate/kernel/Initializer/random_uniform:0
?
3rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias:08rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Assign8rnn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/read:02Ernn/multi_rnn_cell/cell_1/gru_cell/candidate/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0*?
serving_default?
(
dropout_pkeep
Placeholder_4:0
,
Hin%
Placeholder:0??????????
?
features3
Placeholder_1:0??????????????????/
H*
rnn/while/Exit_3:0??????????=
Yout5
strided_slice_3:0??????????????????tensorflow/serving/predict