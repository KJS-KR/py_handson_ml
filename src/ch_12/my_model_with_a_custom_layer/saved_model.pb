ƿ
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
�
Nadam/my_dense_1/bias/vVarHandleOp*
_output_shapes
: *(

debug_nameNadam/my_dense_1/bias/v/*
dtype0*
shape:*(
shared_nameNadam/my_dense_1/bias/v

+Nadam/my_dense_1/bias/v/Read/ReadVariableOpReadVariableOpNadam/my_dense_1/bias/v*
_output_shapes
:*
dtype0
�
Nadam/my_dense_1/kernel/vVarHandleOp*
_output_shapes
: **

debug_nameNadam/my_dense_1/kernel/v/*
dtype0*
shape
:**
shared_nameNadam/my_dense_1/kernel/v
�
-Nadam/my_dense_1/kernel/v/Read/ReadVariableOpReadVariableOpNadam/my_dense_1/kernel/v*
_output_shapes

:*
dtype0
�
Nadam/my_dense/bias/vVarHandleOp*
_output_shapes
: *&

debug_nameNadam/my_dense/bias/v/*
dtype0*
shape:*&
shared_nameNadam/my_dense/bias/v
{
)Nadam/my_dense/bias/v/Read/ReadVariableOpReadVariableOpNadam/my_dense/bias/v*
_output_shapes
:*
dtype0
�
Nadam/my_dense/kernel/vVarHandleOp*
_output_shapes
: *(

debug_nameNadam/my_dense/kernel/v/*
dtype0*
shape
:*(
shared_nameNadam/my_dense/kernel/v
�
+Nadam/my_dense/kernel/v/Read/ReadVariableOpReadVariableOpNadam/my_dense/kernel/v*
_output_shapes

:*
dtype0
�
Nadam/my_dense_1/bias/mVarHandleOp*
_output_shapes
: *(

debug_nameNadam/my_dense_1/bias/m/*
dtype0*
shape:*(
shared_nameNadam/my_dense_1/bias/m

+Nadam/my_dense_1/bias/m/Read/ReadVariableOpReadVariableOpNadam/my_dense_1/bias/m*
_output_shapes
:*
dtype0
�
Nadam/my_dense_1/kernel/mVarHandleOp*
_output_shapes
: **

debug_nameNadam/my_dense_1/kernel/m/*
dtype0*
shape
:**
shared_nameNadam/my_dense_1/kernel/m
�
-Nadam/my_dense_1/kernel/m/Read/ReadVariableOpReadVariableOpNadam/my_dense_1/kernel/m*
_output_shapes

:*
dtype0
�
Nadam/my_dense/bias/mVarHandleOp*
_output_shapes
: *&

debug_nameNadam/my_dense/bias/m/*
dtype0*
shape:*&
shared_nameNadam/my_dense/bias/m
{
)Nadam/my_dense/bias/m/Read/ReadVariableOpReadVariableOpNadam/my_dense/bias/m*
_output_shapes
:*
dtype0
�
Nadam/my_dense/kernel/mVarHandleOp*
_output_shapes
: *(

debug_nameNadam/my_dense/kernel/m/*
dtype0*
shape
:*(
shared_nameNadam/my_dense/kernel/m
�
+Nadam/my_dense/kernel/m/Read/ReadVariableOpReadVariableOpNadam/my_dense/kernel/m*
_output_shapes

:*
dtype0
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
�
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *%

debug_nameNadam/momentum_cache/*
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
_output_shapes
: *
dtype0
�
Nadam/learning_rateVarHandleOp*
_output_shapes
: *$

debug_nameNadam/learning_rate/*
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
�
Nadam/decayVarHandleOp*
_output_shapes
: *

debug_nameNadam/decay/*
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
�
Nadam/beta_2VarHandleOp*
_output_shapes
: *

debug_nameNadam/beta_2/*
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
�
Nadam/beta_1VarHandleOp*
_output_shapes
: *

debug_nameNadam/beta_1/*
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
�

Nadam/iterVarHandleOp*
_output_shapes
: *

debug_nameNadam/iter/*
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
�
my_dense_1/biasVarHandleOp*
_output_shapes
: * 

debug_namemy_dense_1/bias/*
dtype0*
shape:* 
shared_namemy_dense_1/bias
o
#my_dense_1/bias/Read/ReadVariableOpReadVariableOpmy_dense_1/bias*
_output_shapes
:*
dtype0
�
my_dense_1/kernelVarHandleOp*
_output_shapes
: *"

debug_namemy_dense_1/kernel/*
dtype0*
shape
:*"
shared_namemy_dense_1/kernel
w
%my_dense_1/kernel/Read/ReadVariableOpReadVariableOpmy_dense_1/kernel*
_output_shapes

:*
dtype0
�
my_dense/biasVarHandleOp*
_output_shapes
: *

debug_namemy_dense/bias/*
dtype0*
shape:*
shared_namemy_dense/bias
k
!my_dense/bias/Read/ReadVariableOpReadVariableOpmy_dense/bias*
_output_shapes
:*
dtype0
�
my_dense/kernelVarHandleOp*
_output_shapes
: * 

debug_namemy_dense/kernel/*
dtype0*
shape
:* 
shared_namemy_dense/kernel
s
#my_dense/kernel/Read/ReadVariableOpReadVariableOpmy_dense/kernel*
_output_shapes

:*
dtype0
�
serving_default_my_dense_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_my_dense_inputmy_dense/kernelmy_dense/biasmy_dense_1/kernelmy_dense_1/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_96474

NoOpNoOp
�"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�!
value�!B�! B�!
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
 
0
1
2
3*
 
0
1
2
3*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

!trace_0
"trace_1* 

#trace_0
$trace_1* 
* 
�
%iter

&beta_1

'beta_2
	(decay
)learning_rate
*momentum_cachem?m@mAmBvCvDvEvF*

+serving_default* 

0
1*

0
1*
* 
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

1trace_0* 

2trace_0* 
_Y
VARIABLE_VALUEmy_dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEmy_dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

8trace_0* 

9trace_0* 
a[
VARIABLE_VALUEmy_dense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmy_dense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

:0*
* 
* 
* 
* 
* 
* 
MG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
;	variables
<	keras_api
	=total
	>count*

=0
>1*

;	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUENadam/my_dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/my_dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUENadam/my_dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUENadam/my_dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUENadam/my_dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUENadam/my_dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUENadam/my_dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUENadam/my_dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemy_dense/kernelmy_dense/biasmy_dense_1/kernelmy_dense_1/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcountNadam/my_dense/kernel/mNadam/my_dense/bias/mNadam/my_dense_1/kernel/mNadam/my_dense_1/bias/mNadam/my_dense/kernel/vNadam/my_dense/bias/vNadam/my_dense_1/kernel/vNadam/my_dense_1/bias/vConst*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_96655
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemy_dense/kernelmy_dense/biasmy_dense_1/kernelmy_dense_1/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcountNadam/my_dense/kernel/mNadam/my_dense/bias/mNadam/my_dense_1/kernel/mNadam/my_dense_1/bias/mNadam/my_dense/kernel/vNadam/my_dense/bias/vNadam/my_dense_1/kernel/vNadam/my_dense_1/bias/v* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_96724�
�`
�
!__inference__traced_restore_96724
file_prefix2
 assignvariableop_my_dense_kernel:.
 assignvariableop_1_my_dense_bias:6
$assignvariableop_2_my_dense_1_kernel:0
"assignvariableop_3_my_dense_1_bias:'
assignvariableop_4_nadam_iter:	 )
assignvariableop_5_nadam_beta_1: )
assignvariableop_6_nadam_beta_2: (
assignvariableop_7_nadam_decay: 0
&assignvariableop_8_nadam_learning_rate: 1
'assignvariableop_9_nadam_momentum_cache: #
assignvariableop_10_total: #
assignvariableop_11_count: =
+assignvariableop_12_nadam_my_dense_kernel_m:7
)assignvariableop_13_nadam_my_dense_bias_m:?
-assignvariableop_14_nadam_my_dense_1_kernel_m:9
+assignvariableop_15_nadam_my_dense_1_bias_m:=
+assignvariableop_16_nadam_my_dense_kernel_v:7
)assignvariableop_17_nadam_my_dense_bias_v:?
-assignvariableop_18_nadam_my_dense_1_kernel_v:9
+assignvariableop_19_nadam_my_dense_1_bias_v:
identity_21��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_my_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_my_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_my_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_my_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_nadam_iterIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_nadam_beta_1Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_nadam_beta_2Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_nadam_decayIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp&assignvariableop_8_nadam_learning_rateIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp'assignvariableop_9_nadam_momentum_cacheIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp+assignvariableop_12_nadam_my_dense_kernel_mIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp)assignvariableop_13_nadam_my_dense_bias_mIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_nadam_my_dense_1_kernel_mIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_nadam_my_dense_1_bias_mIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp+assignvariableop_16_nadam_my_dense_kernel_vIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_nadam_my_dense_bias_vIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp-assignvariableop_18_nadam_my_dense_1_kernel_vIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_nadam_my_dense_1_bias_vIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_21Identity_21:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:73
1
_user_specified_nameNadam/my_dense_1/bias/v:95
3
_user_specified_nameNadam/my_dense_1/kernel/v:51
/
_user_specified_nameNadam/my_dense/bias/v:73
1
_user_specified_nameNadam/my_dense/kernel/v:73
1
_user_specified_nameNadam/my_dense_1/bias/m:95
3
_user_specified_nameNadam/my_dense_1/kernel/m:51
/
_user_specified_nameNadam/my_dense/bias/m:73
1
_user_specified_nameNadam/my_dense/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:4
0
.
_user_specified_nameNadam/momentum_cache:3	/
-
_user_specified_nameNadam/learning_rate:+'
%
_user_specified_nameNadam/decay:,(
&
_user_specified_nameNadam/beta_2:,(
&
_user_specified_nameNadam/beta_1:*&
$
_user_specified_name
Nadam/iter:/+
)
_user_specified_namemy_dense_1/bias:1-
+
_user_specified_namemy_dense_1/kernel:-)
'
_user_specified_namemy_dense/bias:/+
)
_user_specified_namemy_dense/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�	
�
E__inference_my_dense_1_layer_call_and_return_conditional_losses_96513
x0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity��add/ReadVariableOp�matmul/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0d
matmulMatMulxmatmul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2matmul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:���������O
NoOpNoOp^add/ReadVariableOp^matmul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2(
add/ReadVariableOpadd/ReadVariableOp2.
matmul/ReadVariableOpmatmul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
'
_output_shapes
:���������

_user_specified_namex
�	
�
,__inference_sequential_9_layer_call_fn_96436
my_dense_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmy_dense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_96410o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96432:%!

_user_specified_name96430:%!

_user_specified_name96428:%!

_user_specified_name96426:W S
'
_output_shapes
:���������
(
_user_specified_namemy_dense_input
�	
�
,__inference_sequential_9_layer_call_fn_96423
my_dense_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmy_dense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_96396o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96419:%!

_user_specified_name96417:%!

_user_specified_name96415:%!

_user_specified_name96413:W S
'
_output_shapes
:���������
(
_user_specified_namemy_dense_input
�
�
(__inference_my_dense_layer_call_fn_96483
x
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_my_dense_layer_call_and_return_conditional_losses_96374o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96479:%!

_user_specified_name96477:J F
'
_output_shapes
:���������

_user_specified_namex
�
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_96396
my_dense_input 
my_dense_96375:
my_dense_96377:"
my_dense_1_96390:
my_dense_1_96392:
identity�� my_dense/StatefulPartitionedCall�"my_dense_1/StatefulPartitionedCall�
 my_dense/StatefulPartitionedCallStatefulPartitionedCallmy_dense_inputmy_dense_96375my_dense_96377*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_my_dense_layer_call_and_return_conditional_losses_96374�
"my_dense_1/StatefulPartitionedCallStatefulPartitionedCall)my_dense/StatefulPartitionedCall:output:0my_dense_1_96390my_dense_1_96392*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_my_dense_1_layer_call_and_return_conditional_losses_96389z
IdentityIdentity+my_dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������j
NoOpNoOp!^my_dense/StatefulPartitionedCall#^my_dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2D
 my_dense/StatefulPartitionedCall my_dense/StatefulPartitionedCall2H
"my_dense_1/StatefulPartitionedCall"my_dense_1/StatefulPartitionedCall:%!

_user_specified_name96392:%!

_user_specified_name96390:%!

_user_specified_name96377:%!

_user_specified_name96375:W S
'
_output_shapes
:���������
(
_user_specified_namemy_dense_input
�	
�
E__inference_my_dense_1_layer_call_and_return_conditional_losses_96389
x0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity��add/ReadVariableOp�matmul/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0d
matmulMatMulxmatmul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2matmul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:���������O
NoOpNoOp^add/ReadVariableOp^matmul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2(
add/ReadVariableOpadd/ReadVariableOp2.
matmul/ReadVariableOpmatmul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
'
_output_shapes
:���������

_user_specified_nameX
�
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_96410
my_dense_input 
my_dense_96399:
my_dense_96401:"
my_dense_1_96404:
my_dense_1_96406:
identity�� my_dense/StatefulPartitionedCall�"my_dense_1/StatefulPartitionedCall�
 my_dense/StatefulPartitionedCallStatefulPartitionedCallmy_dense_inputmy_dense_96399my_dense_96401*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_my_dense_layer_call_and_return_conditional_losses_96374�
"my_dense_1/StatefulPartitionedCallStatefulPartitionedCall)my_dense/StatefulPartitionedCall:output:0my_dense_1_96404my_dense_1_96406*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_my_dense_1_layer_call_and_return_conditional_losses_96389z
IdentityIdentity+my_dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������j
NoOpNoOp!^my_dense/StatefulPartitionedCall#^my_dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2D
 my_dense/StatefulPartitionedCall my_dense/StatefulPartitionedCall2H
"my_dense_1/StatefulPartitionedCall"my_dense_1/StatefulPartitionedCall:%!

_user_specified_name96406:%!

_user_specified_name96404:%!

_user_specified_name96401:%!

_user_specified_name96399:W S
'
_output_shapes
:���������
(
_user_specified_namemy_dense_input
�

�
C__inference_my_dense_layer_call_and_return_conditional_losses_96374
x0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity��add/ReadVariableOp�matmul/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0d
matmulMatMulxmatmul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2matmul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G
ReluReluadd:z:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������O
NoOpNoOp^add/ReadVariableOp^matmul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2(
add/ReadVariableOpadd/ReadVariableOp2.
matmul/ReadVariableOpmatmul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
'
_output_shapes
:���������

_user_specified_nameX
�
�
 __inference__wrapped_model_96361
my_dense_inputF
4sequential_9_my_dense_matmul_readvariableop_resource:?
1sequential_9_my_dense_add_readvariableop_resource:H
6sequential_9_my_dense_1_matmul_readvariableop_resource:A
3sequential_9_my_dense_1_add_readvariableop_resource:
identity��(sequential_9/my_dense/add/ReadVariableOp�+sequential_9/my_dense/matmul/ReadVariableOp�*sequential_9/my_dense_1/add/ReadVariableOp�-sequential_9/my_dense_1/matmul/ReadVariableOp�
+sequential_9/my_dense/matmul/ReadVariableOpReadVariableOp4sequential_9_my_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_9/my_dense/matmulMatMulmy_dense_input3sequential_9/my_dense/matmul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(sequential_9/my_dense/add/ReadVariableOpReadVariableOp1sequential_9_my_dense_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_9/my_dense/addAddV2&sequential_9/my_dense/matmul:product:00sequential_9/my_dense/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������s
sequential_9/my_dense/ReluRelusequential_9/my_dense/add:z:0*
T0*'
_output_shapes
:����������
-sequential_9/my_dense_1/matmul/ReadVariableOpReadVariableOp6sequential_9_my_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_9/my_dense_1/matmulMatMul(sequential_9/my_dense/Relu:activations:05sequential_9/my_dense_1/matmul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
*sequential_9/my_dense_1/add/ReadVariableOpReadVariableOp3sequential_9_my_dense_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_9/my_dense_1/addAddV2(sequential_9/my_dense_1/matmul:product:02sequential_9/my_dense_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������n
IdentityIdentitysequential_9/my_dense_1/add:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^sequential_9/my_dense/add/ReadVariableOp,^sequential_9/my_dense/matmul/ReadVariableOp+^sequential_9/my_dense_1/add/ReadVariableOp.^sequential_9/my_dense_1/matmul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2T
(sequential_9/my_dense/add/ReadVariableOp(sequential_9/my_dense/add/ReadVariableOp2Z
+sequential_9/my_dense/matmul/ReadVariableOp+sequential_9/my_dense/matmul/ReadVariableOp2X
*sequential_9/my_dense_1/add/ReadVariableOp*sequential_9/my_dense_1/add/ReadVariableOp2^
-sequential_9/my_dense_1/matmul/ReadVariableOp-sequential_9/my_dense_1/matmul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
'
_output_shapes
:���������
(
_user_specified_namemy_dense_input
�
�
*__inference_my_dense_1_layer_call_fn_96503
x
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_my_dense_1_layer_call_and_return_conditional_losses_96389o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96499:%!

_user_specified_name96497:J F
'
_output_shapes
:���������

_user_specified_namex
�
�
#__inference_signature_wrapper_96474
my_dense_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallmy_dense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_96361o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name96470:%!

_user_specified_name96468:%!

_user_specified_name96466:%!

_user_specified_name96464:W S
'
_output_shapes
:���������
(
_user_specified_namemy_dense_input
�

�
C__inference_my_dense_layer_call_and_return_conditional_losses_96494
x0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity��add/ReadVariableOp�matmul/ReadVariableOpt
matmul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0d
matmulMatMulxmatmul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2matmul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������G
ReluReluadd:z:0*
T0*'
_output_shapes
:���������a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������O
NoOpNoOp^add/ReadVariableOp^matmul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2(
add/ReadVariableOpadd/ReadVariableOp2.
matmul/ReadVariableOpmatmul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:J F
'
_output_shapes
:���������

_user_specified_namex
��
�
__inference__traced_save_96655
file_prefix8
&read_disablecopyonread_my_dense_kernel:4
&read_1_disablecopyonread_my_dense_bias:<
*read_2_disablecopyonread_my_dense_1_kernel:6
(read_3_disablecopyonread_my_dense_1_bias:-
#read_4_disablecopyonread_nadam_iter:	 /
%read_5_disablecopyonread_nadam_beta_1: /
%read_6_disablecopyonread_nadam_beta_2: .
$read_7_disablecopyonread_nadam_decay: 6
,read_8_disablecopyonread_nadam_learning_rate: 7
-read_9_disablecopyonread_nadam_momentum_cache: )
read_10_disablecopyonread_total: )
read_11_disablecopyonread_count: C
1read_12_disablecopyonread_nadam_my_dense_kernel_m:=
/read_13_disablecopyonread_nadam_my_dense_bias_m:E
3read_14_disablecopyonread_nadam_my_dense_1_kernel_m:?
1read_15_disablecopyonread_nadam_my_dense_1_bias_m:C
1read_16_disablecopyonread_nadam_my_dense_kernel_v:=
/read_17_disablecopyonread_nadam_my_dense_bias_v:E
3read_18_disablecopyonread_nadam_my_dense_1_kernel_v:?
1read_19_disablecopyonread_nadam_my_dense_1_bias_v:
savev2_const
identity_41��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_my_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_my_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_my_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_my_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_2/DisableCopyOnReadDisableCopyOnRead*read_2_disablecopyonread_my_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp*read_2_disablecopyonread_my_dense_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:|
Read_3/DisableCopyOnReadDisableCopyOnRead(read_3_disablecopyonread_my_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp(read_3_disablecopyonread_my_dense_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:w
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_nadam_iter"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_nadam_iter^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0	*
_output_shapes
: y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_nadam_beta_1"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_nadam_beta_1^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: y
Read_6/DisableCopyOnReadDisableCopyOnRead%read_6_disablecopyonread_nadam_beta_2"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp%read_6_disablecopyonread_nadam_beta_2^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_nadam_decay"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_nadam_decay^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_8/DisableCopyOnReadDisableCopyOnRead,read_8_disablecopyonread_nadam_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp,read_8_disablecopyonread_nadam_learning_rate^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_9/DisableCopyOnReadDisableCopyOnRead-read_9_disablecopyonread_nadam_momentum_cache"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp-read_9_disablecopyonread_nadam_momentum_cache^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_10/DisableCopyOnReadDisableCopyOnReadread_10_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpread_10_disablecopyonread_total^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_11/DisableCopyOnReadDisableCopyOnReadread_11_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpread_11_disablecopyonread_count^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_12/DisableCopyOnReadDisableCopyOnRead1read_12_disablecopyonread_nadam_my_dense_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp1read_12_disablecopyonread_nadam_my_dense_kernel_m^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_nadam_my_dense_bias_m"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_nadam_my_dense_bias_m^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_14/DisableCopyOnReadDisableCopyOnRead3read_14_disablecopyonread_nadam_my_dense_1_kernel_m"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp3read_14_disablecopyonread_nadam_my_dense_1_kernel_m^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_nadam_my_dense_1_bias_m"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_nadam_my_dense_1_bias_m^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead1read_16_disablecopyonread_nadam_my_dense_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp1read_16_disablecopyonread_nadam_my_dense_kernel_v^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_nadam_my_dense_bias_v"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_nadam_my_dense_bias_v^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_18/DisableCopyOnReadDisableCopyOnRead3read_18_disablecopyonread_nadam_my_dense_1_kernel_v"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp3read_18_disablecopyonread_nadam_my_dense_1_kernel_v^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_nadam_my_dense_1_bias_v"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_nadam_my_dense_1_bias_v^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�

value�
B�
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *#
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_40Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_41IdentityIdentity_40:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_41Identity_41:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:73
1
_user_specified_nameNadam/my_dense_1/bias/v:95
3
_user_specified_nameNadam/my_dense_1/kernel/v:51
/
_user_specified_nameNadam/my_dense/bias/v:73
1
_user_specified_nameNadam/my_dense/kernel/v:73
1
_user_specified_nameNadam/my_dense_1/bias/m:95
3
_user_specified_nameNadam/my_dense_1/kernel/m:51
/
_user_specified_nameNadam/my_dense/bias/m:73
1
_user_specified_nameNadam/my_dense/kernel/m:%!

_user_specified_namecount:%!

_user_specified_nametotal:4
0
.
_user_specified_nameNadam/momentum_cache:3	/
-
_user_specified_nameNadam/learning_rate:+'
%
_user_specified_nameNadam/decay:,(
&
_user_specified_nameNadam/beta_2:,(
&
_user_specified_nameNadam/beta_1:*&
$
_user_specified_name
Nadam/iter:/+
)
_user_specified_namemy_dense_1/bias:1-
+
_user_specified_namemy_dense_1/kernel:-)
'
_user_specified_namemy_dense/bias:/+
)
_user_specified_namemy_dense/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
I
my_dense_input7
 serving_default_my_dense_input:0���������>

my_dense_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�H
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
!trace_0
"trace_12�
,__inference_sequential_9_layer_call_fn_96423
,__inference_sequential_9_layer_call_fn_96436�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z!trace_0z"trace_1
�
#trace_0
$trace_12�
G__inference_sequential_9_layer_call_and_return_conditional_losses_96396
G__inference_sequential_9_layer_call_and_return_conditional_losses_96410�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z#trace_0z$trace_1
�B�
 __inference__wrapped_model_96361my_dense_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
%iter

&beta_1

'beta_2
	(decay
)learning_rate
*momentum_cachem?m@mAmBvCvDvEvF"
	optimizer
,
+serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
1trace_02�
(__inference_my_dense_layer_call_fn_96483�
���
FullArgSpec
args�
jX
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z1trace_0
�
2trace_02�
C__inference_my_dense_layer_call_and_return_conditional_losses_96494�
���
FullArgSpec
args�
jX
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z2trace_0
!:2my_dense/kernel
:2my_dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
8trace_02�
*__inference_my_dense_1_layer_call_fn_96503�
���
FullArgSpec
args�
jX
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z8trace_0
�
9trace_02�
E__inference_my_dense_1_layer_call_and_return_conditional_losses_96513�
���
FullArgSpec
args�
jX
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z9trace_0
#:!2my_dense_1/kernel
:2my_dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
:0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_9_layer_call_fn_96423my_dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_9_layer_call_fn_96436my_dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_96396my_dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_96410my_dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
�B�
#__inference_signature_wrapper_96474my_dense_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 #

kwonlyargs�
jmy_dense_input
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_my_dense_layer_call_fn_96483x"�
���
FullArgSpec
args�
jX
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_my_dense_layer_call_and_return_conditional_losses_96494x"�
���
FullArgSpec
args�
jX
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_my_dense_1_layer_call_fn_96503x"�
���
FullArgSpec
args�
jX
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_my_dense_1_layer_call_and_return_conditional_losses_96513x"�
���
FullArgSpec
args�
jX
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
;	variables
<	keras_api
	=total
	>count"
_tf_keras_metric
.
=0
>1"
trackable_list_wrapper
-
;	variables"
_generic_user_object
:  (2total
:  (2count
':%2Nadam/my_dense/kernel/m
!:2Nadam/my_dense/bias/m
):'2Nadam/my_dense_1/kernel/m
#:!2Nadam/my_dense_1/bias/m
':%2Nadam/my_dense/kernel/v
!:2Nadam/my_dense/bias/v
):'2Nadam/my_dense_1/kernel/v
#:!2Nadam/my_dense_1/bias/v�
 __inference__wrapped_model_96361x7�4
-�*
(�%
my_dense_input���������
� "7�4
2

my_dense_1$�!

my_dense_1����������
E__inference_my_dense_1_layer_call_and_return_conditional_losses_96513^*�'
 �
�
x���������
� ",�)
"�
tensor_0���������
� �
*__inference_my_dense_1_layer_call_fn_96503S*�'
 �
�
x���������
� "!�
unknown����������
C__inference_my_dense_layer_call_and_return_conditional_losses_96494^*�'
 �
�
x���������
� ",�)
"�
tensor_0���������
� 
(__inference_my_dense_layer_call_fn_96483S*�'
 �
�
x���������
� "!�
unknown����������
G__inference_sequential_9_layer_call_and_return_conditional_losses_96396u?�<
5�2
(�%
my_dense_input���������
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_9_layer_call_and_return_conditional_losses_96410u?�<
5�2
(�%
my_dense_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
,__inference_sequential_9_layer_call_fn_96423j?�<
5�2
(�%
my_dense_input���������
p

 
� "!�
unknown����������
,__inference_sequential_9_layer_call_fn_96436j?�<
5�2
(�%
my_dense_input���������
p 

 
� "!�
unknown����������
#__inference_signature_wrapper_96474�I�F
� 
?�<
:
my_dense_input(�%
my_dense_input���������"7�4
2

my_dense_1$�!

my_dense_1���������