³þ
í¾
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8
{
dense_85/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<* 
shared_namedense_85/kernel
t
#dense_85/kernel/Read/ReadVariableOpReadVariableOpdense_85/kernel*
_output_shapes
:	<*
dtype0
s
dense_85/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_85/bias
l
!dense_85/bias/Read/ReadVariableOpReadVariableOpdense_85/bias*
_output_shapes	
:*
dtype0
|
dense_86/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À* 
shared_namedense_86/kernel
u
#dense_86/kernel/Read/ReadVariableOpReadVariableOpdense_86/kernel* 
_output_shapes
:
À*
dtype0
s
dense_86/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*
shared_namedense_86/bias
l
!dense_86/bias/Read/ReadVariableOpReadVariableOpdense_86/bias*
_output_shapes	
:À*
dtype0
|
dense_87/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À* 
shared_namedense_87/kernel
u
#dense_87/kernel/Read/ReadVariableOpReadVariableOpdense_87/kernel* 
_output_shapes
:
À*
dtype0
s
dense_87/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_87/bias
l
!dense_87/bias/Read/ReadVariableOpReadVariableOpdense_87/bias*
_output_shapes	
:*
dtype0
{
dense_88/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_88/kernel
t
#dense_88/kernel/Read/ReadVariableOpReadVariableOpdense_88/kernel*
_output_shapes
:	@*
dtype0
r
dense_88/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_88/bias
k
!dense_88/bias/Read/ReadVariableOpReadVariableOpdense_88/bias*
_output_shapes
:@*
dtype0
z
dense_89/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_89/kernel
s
#dense_89/kernel/Read/ReadVariableOpReadVariableOpdense_89/kernel*
_output_shapes

:@*
dtype0
r
dense_89/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_89/bias
k
!dense_89/bias/Read/ReadVariableOpReadVariableOpdense_89/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense_85/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<*'
shared_nameAdam/dense_85/kernel/m

*Adam/dense_85/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_85/kernel/m*
_output_shapes
:	<*
dtype0

Adam/dense_85/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_85/bias/m
z
(Adam/dense_85/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_85/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_86/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*'
shared_nameAdam/dense_86/kernel/m

*Adam/dense_86/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_86/kernel/m* 
_output_shapes
:
À*
dtype0

Adam/dense_86/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*%
shared_nameAdam/dense_86/bias/m
z
(Adam/dense_86/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_86/bias/m*
_output_shapes	
:À*
dtype0

Adam/dense_87/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*'
shared_nameAdam/dense_87/kernel/m

*Adam/dense_87/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_87/kernel/m* 
_output_shapes
:
À*
dtype0

Adam/dense_87/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_87/bias/m
z
(Adam/dense_87/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_87/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_88/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_88/kernel/m

*Adam/dense_88/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_88/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_88/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_88/bias/m
y
(Adam/dense_88/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_88/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_89/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_89/kernel/m

*Adam/dense_89/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_89/kernel/m*
_output_shapes

:@*
dtype0

Adam/dense_89/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_89/bias/m
y
(Adam/dense_89/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_89/bias/m*
_output_shapes
:*
dtype0

Adam/dense_85/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	<*'
shared_nameAdam/dense_85/kernel/v

*Adam/dense_85/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_85/kernel/v*
_output_shapes
:	<*
dtype0

Adam/dense_85/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_85/bias/v
z
(Adam/dense_85/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_85/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_86/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*'
shared_nameAdam/dense_86/kernel/v

*Adam/dense_86/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_86/kernel/v* 
_output_shapes
:
À*
dtype0

Adam/dense_86/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*%
shared_nameAdam/dense_86/bias/v
z
(Adam/dense_86/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_86/bias/v*
_output_shapes	
:À*
dtype0

Adam/dense_87/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*'
shared_nameAdam/dense_87/kernel/v

*Adam/dense_87/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_87/kernel/v* 
_output_shapes
:
À*
dtype0

Adam/dense_87/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_87/bias/v
z
(Adam/dense_87/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_87/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_88/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_88/kernel/v

*Adam/dense_88/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_88/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_88/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_88/bias/v
y
(Adam/dense_88/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_88/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_89/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_89/kernel/v

*Adam/dense_89/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_89/kernel/v*
_output_shapes

:@*
dtype0

Adam/dense_89/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_89/bias/v
y
(Adam/dense_89/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_89/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
à6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*6
value6B6 B6
´
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
ô
*iter

+beta_1

,beta_2
	-decay
.learning_ratemXmYmZm[m\m]m^m_$m`%mavbvcvdvevfvgvhvi$vj%vk
F
0
1
2
3
4
5
6
7
$8
%9
F
0
1
2
3
4
5
6
7
$8
%9
 
­
/layer_regularization_losses
trainable_variables
0non_trainable_variables
1layer_metrics
	variables
2metrics

3layers
	regularization_losses
 
[Y
VARIABLE_VALUEdense_85/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_85/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
4layer_regularization_losses
trainable_variables
5layer_metrics
6non_trainable_variables
	variables
regularization_losses

7layers
8metrics
[Y
VARIABLE_VALUEdense_86/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_86/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
9layer_regularization_losses
trainable_variables
:layer_metrics
;non_trainable_variables
	variables
regularization_losses

<layers
=metrics
[Y
VARIABLE_VALUEdense_87/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_87/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
>layer_regularization_losses
trainable_variables
?layer_metrics
@non_trainable_variables
	variables
regularization_losses

Alayers
Bmetrics
[Y
VARIABLE_VALUEdense_88/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_88/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Clayer_regularization_losses
 trainable_variables
Dlayer_metrics
Enon_trainable_variables
!	variables
"regularization_losses

Flayers
Gmetrics
[Y
VARIABLE_VALUEdense_89/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_89/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
­
Hlayer_regularization_losses
&trainable_variables
Ilayer_metrics
Jnon_trainable_variables
'	variables
(regularization_losses

Klayers
Lmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

M0
N1
#
0
1
2
3
4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ototal
	Pcount
Q	variables
R	keras_api
D
	Stotal
	Tcount
U
_fn_kwargs
V	variables
W	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

O0
P1

Q	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

S0
T1

V	variables
~|
VARIABLE_VALUEAdam/dense_85/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_85/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_86/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_86/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_87/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_87/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_88/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_88/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_89/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_89/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_85/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_85/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_86/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_86/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_87/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_87/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_88/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_88/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_89/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_89/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_dense_85_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ<
î
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_85_inputdense_85/kerneldense_85/biasdense_86/kerneldense_86/biasdense_87/kerneldense_87/biasdense_88/kerneldense_88/biasdense_89/kerneldense_89/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1533616
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
 
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_85/kernel/Read/ReadVariableOp!dense_85/bias/Read/ReadVariableOp#dense_86/kernel/Read/ReadVariableOp!dense_86/bias/Read/ReadVariableOp#dense_87/kernel/Read/ReadVariableOp!dense_87/bias/Read/ReadVariableOp#dense_88/kernel/Read/ReadVariableOp!dense_88/bias/Read/ReadVariableOp#dense_89/kernel/Read/ReadVariableOp!dense_89/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_85/kernel/m/Read/ReadVariableOp(Adam/dense_85/bias/m/Read/ReadVariableOp*Adam/dense_86/kernel/m/Read/ReadVariableOp(Adam/dense_86/bias/m/Read/ReadVariableOp*Adam/dense_87/kernel/m/Read/ReadVariableOp(Adam/dense_87/bias/m/Read/ReadVariableOp*Adam/dense_88/kernel/m/Read/ReadVariableOp(Adam/dense_88/bias/m/Read/ReadVariableOp*Adam/dense_89/kernel/m/Read/ReadVariableOp(Adam/dense_89/bias/m/Read/ReadVariableOp*Adam/dense_85/kernel/v/Read/ReadVariableOp(Adam/dense_85/bias/v/Read/ReadVariableOp*Adam/dense_86/kernel/v/Read/ReadVariableOp(Adam/dense_86/bias/v/Read/ReadVariableOp*Adam/dense_87/kernel/v/Read/ReadVariableOp(Adam/dense_87/bias/v/Read/ReadVariableOp*Adam/dense_88/kernel/v/Read/ReadVariableOp(Adam/dense_88/bias/v/Read/ReadVariableOp*Adam/dense_89/kernel/v/Read/ReadVariableOp(Adam/dense_89/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
 __inference__traced_save_1533984

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_85/kerneldense_85/biasdense_86/kerneldense_86/biasdense_87/kerneldense_87/biasdense_88/kerneldense_88/biasdense_89/kerneldense_89/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_85/kernel/mAdam/dense_85/bias/mAdam/dense_86/kernel/mAdam/dense_86/bias/mAdam/dense_87/kernel/mAdam/dense_87/bias/mAdam/dense_88/kernel/mAdam/dense_88/bias/mAdam/dense_89/kernel/mAdam/dense_89/bias/mAdam/dense_85/kernel/vAdam/dense_85/bias/vAdam/dense_86/kernel/vAdam/dense_86/bias/vAdam/dense_87/kernel/vAdam/dense_87/bias/vAdam/dense_88/kernel/vAdam/dense_88/bias/vAdam/dense_89/kernel/vAdam/dense_89/bias/v*3
Tin,
*2(*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1534111ªã
ä@
ø	
"__inference__wrapped_model_1533255
dense_85_inputH
5sequential_17_dense_85_matmul_readvariableop_resource:	<E
6sequential_17_dense_85_biasadd_readvariableop_resource:	I
5sequential_17_dense_86_matmul_readvariableop_resource:
ÀE
6sequential_17_dense_86_biasadd_readvariableop_resource:	ÀI
5sequential_17_dense_87_matmul_readvariableop_resource:
ÀE
6sequential_17_dense_87_biasadd_readvariableop_resource:	H
5sequential_17_dense_88_matmul_readvariableop_resource:	@D
6sequential_17_dense_88_biasadd_readvariableop_resource:@G
5sequential_17_dense_89_matmul_readvariableop_resource:@D
6sequential_17_dense_89_biasadd_readvariableop_resource:
identity¢-sequential_17/dense_85/BiasAdd/ReadVariableOp¢,sequential_17/dense_85/MatMul/ReadVariableOp¢-sequential_17/dense_86/BiasAdd/ReadVariableOp¢,sequential_17/dense_86/MatMul/ReadVariableOp¢-sequential_17/dense_87/BiasAdd/ReadVariableOp¢,sequential_17/dense_87/MatMul/ReadVariableOp¢-sequential_17/dense_88/BiasAdd/ReadVariableOp¢,sequential_17/dense_88/MatMul/ReadVariableOp¢-sequential_17/dense_89/BiasAdd/ReadVariableOp¢,sequential_17/dense_89/MatMul/ReadVariableOpÓ
,sequential_17/dense_85/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_85_matmul_readvariableop_resource*
_output_shapes
:	<*
dtype02.
,sequential_17/dense_85/MatMul/ReadVariableOpÁ
sequential_17/dense_85/MatMulMatMuldense_85_input4sequential_17/dense_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_17/dense_85/MatMulÒ
-sequential_17/dense_85/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_85_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_17/dense_85/BiasAdd/ReadVariableOpÞ
sequential_17/dense_85/BiasAddBiasAdd'sequential_17/dense_85/MatMul:product:05sequential_17/dense_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_17/dense_85/BiasAdd
sequential_17/dense_85/ReluRelu'sequential_17/dense_85/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_17/dense_85/ReluÔ
,sequential_17/dense_86/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_86_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02.
,sequential_17/dense_86/MatMul/ReadVariableOpÜ
sequential_17/dense_86/MatMulMatMul)sequential_17/dense_85/Relu:activations:04sequential_17/dense_86/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
sequential_17/dense_86/MatMulÒ
-sequential_17/dense_86/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_86_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype02/
-sequential_17/dense_86/BiasAdd/ReadVariableOpÞ
sequential_17/dense_86/BiasAddBiasAdd'sequential_17/dense_86/MatMul:product:05sequential_17/dense_86/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2 
sequential_17/dense_86/BiasAdd
sequential_17/dense_86/ReluRelu'sequential_17/dense_86/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
sequential_17/dense_86/ReluÔ
,sequential_17/dense_87/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_87_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02.
,sequential_17/dense_87/MatMul/ReadVariableOpÜ
sequential_17/dense_87/MatMulMatMul)sequential_17/dense_86/Relu:activations:04sequential_17/dense_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_17/dense_87/MatMulÒ
-sequential_17/dense_87/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_17/dense_87/BiasAdd/ReadVariableOpÞ
sequential_17/dense_87/BiasAddBiasAdd'sequential_17/dense_87/MatMul:product:05sequential_17/dense_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_17/dense_87/BiasAdd
sequential_17/dense_87/ReluRelu'sequential_17/dense_87/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_17/dense_87/ReluÓ
,sequential_17/dense_88/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_88_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02.
,sequential_17/dense_88/MatMul/ReadVariableOpÛ
sequential_17/dense_88/MatMulMatMul)sequential_17/dense_87/Relu:activations:04sequential_17/dense_88/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_17/dense_88/MatMulÑ
-sequential_17/dense_88/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_88_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_17/dense_88/BiasAdd/ReadVariableOpÝ
sequential_17/dense_88/BiasAddBiasAdd'sequential_17/dense_88/MatMul:product:05sequential_17/dense_88/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_17/dense_88/BiasAdd
sequential_17/dense_88/ReluRelu'sequential_17/dense_88/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_17/dense_88/ReluÒ
,sequential_17/dense_89/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_89_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02.
,sequential_17/dense_89/MatMul/ReadVariableOpÛ
sequential_17/dense_89/MatMulMatMul)sequential_17/dense_88/Relu:activations:04sequential_17/dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_17/dense_89/MatMulÑ
-sequential_17/dense_89/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_17/dense_89/BiasAdd/ReadVariableOpÝ
sequential_17/dense_89/BiasAddBiasAdd'sequential_17/dense_89/MatMul:product:05sequential_17/dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_17/dense_89/BiasAdd¦
sequential_17/dense_89/SoftmaxSoftmax'sequential_17/dense_89/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_17/dense_89/Softmax
IdentityIdentity(sequential_17/dense_89/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity©
NoOpNoOp.^sequential_17/dense_85/BiasAdd/ReadVariableOp-^sequential_17/dense_85/MatMul/ReadVariableOp.^sequential_17/dense_86/BiasAdd/ReadVariableOp-^sequential_17/dense_86/MatMul/ReadVariableOp.^sequential_17/dense_87/BiasAdd/ReadVariableOp-^sequential_17/dense_87/MatMul/ReadVariableOp.^sequential_17/dense_88/BiasAdd/ReadVariableOp-^sequential_17/dense_88/MatMul/ReadVariableOp.^sequential_17/dense_89/BiasAdd/ReadVariableOp-^sequential_17/dense_89/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 2^
-sequential_17/dense_85/BiasAdd/ReadVariableOp-sequential_17/dense_85/BiasAdd/ReadVariableOp2\
,sequential_17/dense_85/MatMul/ReadVariableOp,sequential_17/dense_85/MatMul/ReadVariableOp2^
-sequential_17/dense_86/BiasAdd/ReadVariableOp-sequential_17/dense_86/BiasAdd/ReadVariableOp2\
,sequential_17/dense_86/MatMul/ReadVariableOp,sequential_17/dense_86/MatMul/ReadVariableOp2^
-sequential_17/dense_87/BiasAdd/ReadVariableOp-sequential_17/dense_87/BiasAdd/ReadVariableOp2\
,sequential_17/dense_87/MatMul/ReadVariableOp,sequential_17/dense_87/MatMul/ReadVariableOp2^
-sequential_17/dense_88/BiasAdd/ReadVariableOp-sequential_17/dense_88/BiasAdd/ReadVariableOp2\
,sequential_17/dense_88/MatMul/ReadVariableOp,sequential_17/dense_88/MatMul/ReadVariableOp2^
-sequential_17/dense_89/BiasAdd/ReadVariableOp-sequential_17/dense_89/BiasAdd/ReadVariableOp2\
,sequential_17/dense_89/MatMul/ReadVariableOp,sequential_17/dense_89/MatMul/ReadVariableOp:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
(
_user_specified_namedense_85_input
Ä
õ
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533477

inputs#
dense_85_1533451:	<
dense_85_1533453:	$
dense_86_1533456:
À
dense_86_1533458:	À$
dense_87_1533461:
À
dense_87_1533463:	#
dense_88_1533466:	@
dense_88_1533468:@"
dense_89_1533471:@
dense_89_1533473:
identity¢ dense_85/StatefulPartitionedCall¢ dense_86/StatefulPartitionedCall¢ dense_87/StatefulPartitionedCall¢ dense_88/StatefulPartitionedCall¢ dense_89/StatefulPartitionedCall
 dense_85/StatefulPartitionedCallStatefulPartitionedCallinputsdense_85_1533451dense_85_1533453*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_85_layer_call_and_return_conditional_losses_15332732"
 dense_85/StatefulPartitionedCall»
 dense_86/StatefulPartitionedCallStatefulPartitionedCall)dense_85/StatefulPartitionedCall:output:0dense_86_1533456dense_86_1533458*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_86_layer_call_and_return_conditional_losses_15332902"
 dense_86/StatefulPartitionedCall»
 dense_87/StatefulPartitionedCallStatefulPartitionedCall)dense_86/StatefulPartitionedCall:output:0dense_87_1533461dense_87_1533463*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_87_layer_call_and_return_conditional_losses_15333072"
 dense_87/StatefulPartitionedCallº
 dense_88/StatefulPartitionedCallStatefulPartitionedCall)dense_87/StatefulPartitionedCall:output:0dense_88_1533466dense_88_1533468*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_88_layer_call_and_return_conditional_losses_15333242"
 dense_88/StatefulPartitionedCallº
 dense_89/StatefulPartitionedCallStatefulPartitionedCall)dense_88/StatefulPartitionedCall:output:0dense_89_1533471dense_89_1533473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_89_layer_call_and_return_conditional_losses_15333412"
 dense_89/StatefulPartitionedCall
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityý
NoOpNoOp!^dense_85/StatefulPartitionedCall!^dense_86/StatefulPartitionedCall!^dense_87/StatefulPartitionedCall!^dense_88/StatefulPartitionedCall!^dense_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 2D
 dense_85/StatefulPartitionedCall dense_85/StatefulPartitionedCall2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 dense_87/StatefulPartitionedCall dense_87/StatefulPartitionedCall2D
 dense_88/StatefulPartitionedCall dense_88/StatefulPartitionedCall2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

÷
E__inference_dense_88_layer_call_and_return_conditional_losses_1533824

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ø
E__inference_dense_85_layer_call_and_return_conditional_losses_1533273

inputs1
matmul_readvariableop_resource:	<.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	<*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
Ü
ý
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533554
dense_85_input#
dense_85_1533528:	<
dense_85_1533530:	$
dense_86_1533533:
À
dense_86_1533535:	À$
dense_87_1533538:
À
dense_87_1533540:	#
dense_88_1533543:	@
dense_88_1533545:@"
dense_89_1533548:@
dense_89_1533550:
identity¢ dense_85/StatefulPartitionedCall¢ dense_86/StatefulPartitionedCall¢ dense_87/StatefulPartitionedCall¢ dense_88/StatefulPartitionedCall¢ dense_89/StatefulPartitionedCall 
 dense_85/StatefulPartitionedCallStatefulPartitionedCalldense_85_inputdense_85_1533528dense_85_1533530*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_85_layer_call_and_return_conditional_losses_15332732"
 dense_85/StatefulPartitionedCall»
 dense_86/StatefulPartitionedCallStatefulPartitionedCall)dense_85/StatefulPartitionedCall:output:0dense_86_1533533dense_86_1533535*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_86_layer_call_and_return_conditional_losses_15332902"
 dense_86/StatefulPartitionedCall»
 dense_87/StatefulPartitionedCallStatefulPartitionedCall)dense_86/StatefulPartitionedCall:output:0dense_87_1533538dense_87_1533540*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_87_layer_call_and_return_conditional_losses_15333072"
 dense_87/StatefulPartitionedCallº
 dense_88/StatefulPartitionedCallStatefulPartitionedCall)dense_87/StatefulPartitionedCall:output:0dense_88_1533543dense_88_1533545*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_88_layer_call_and_return_conditional_losses_15333242"
 dense_88/StatefulPartitionedCallº
 dense_89/StatefulPartitionedCallStatefulPartitionedCall)dense_88/StatefulPartitionedCall:output:0dense_89_1533548dense_89_1533550*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_89_layer_call_and_return_conditional_losses_15333412"
 dense_89/StatefulPartitionedCall
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityý
NoOpNoOp!^dense_85/StatefulPartitionedCall!^dense_86/StatefulPartitionedCall!^dense_87/StatefulPartitionedCall!^dense_88/StatefulPartitionedCall!^dense_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 2D
 dense_85/StatefulPartitionedCall dense_85/StatefulPartitionedCall2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 dense_87/StatefulPartitionedCall dense_87/StatefulPartitionedCall2D
 dense_88/StatefulPartitionedCall dense_88/StatefulPartitionedCall2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
(
_user_specified_namedense_85_input
Ö

ý
/__inference_sequential_17_layer_call_fn_1533641

inputs
unknown:	<
	unknown_0:	
	unknown_1:
À
	unknown_2:	À
	unknown_3:
À
	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_15333482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
Ö

ý
/__inference_sequential_17_layer_call_fn_1533666

inputs
unknown:	<
	unknown_0:	
	unknown_1:
À
	unknown_2:	À
	unknown_3:
À
	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_15334772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
Ä
õ
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533348

inputs#
dense_85_1533274:	<
dense_85_1533276:	$
dense_86_1533291:
À
dense_86_1533293:	À$
dense_87_1533308:
À
dense_87_1533310:	#
dense_88_1533325:	@
dense_88_1533327:@"
dense_89_1533342:@
dense_89_1533344:
identity¢ dense_85/StatefulPartitionedCall¢ dense_86/StatefulPartitionedCall¢ dense_87/StatefulPartitionedCall¢ dense_88/StatefulPartitionedCall¢ dense_89/StatefulPartitionedCall
 dense_85/StatefulPartitionedCallStatefulPartitionedCallinputsdense_85_1533274dense_85_1533276*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_85_layer_call_and_return_conditional_losses_15332732"
 dense_85/StatefulPartitionedCall»
 dense_86/StatefulPartitionedCallStatefulPartitionedCall)dense_85/StatefulPartitionedCall:output:0dense_86_1533291dense_86_1533293*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_86_layer_call_and_return_conditional_losses_15332902"
 dense_86/StatefulPartitionedCall»
 dense_87/StatefulPartitionedCallStatefulPartitionedCall)dense_86/StatefulPartitionedCall:output:0dense_87_1533308dense_87_1533310*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_87_layer_call_and_return_conditional_losses_15333072"
 dense_87/StatefulPartitionedCallº
 dense_88/StatefulPartitionedCallStatefulPartitionedCall)dense_87/StatefulPartitionedCall:output:0dense_88_1533325dense_88_1533327*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_88_layer_call_and_return_conditional_losses_15333242"
 dense_88/StatefulPartitionedCallº
 dense_89/StatefulPartitionedCallStatefulPartitionedCall)dense_88/StatefulPartitionedCall:output:0dense_89_1533342dense_89_1533344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_89_layer_call_and_return_conditional_losses_15333412"
 dense_89/StatefulPartitionedCall
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityý
NoOpNoOp!^dense_85/StatefulPartitionedCall!^dense_86/StatefulPartitionedCall!^dense_87/StatefulPartitionedCall!^dense_88/StatefulPartitionedCall!^dense_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 2D
 dense_85/StatefulPartitionedCall dense_85/StatefulPartitionedCall2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 dense_87/StatefulPartitionedCall dense_87/StatefulPartitionedCall2D
 dense_88/StatefulPartitionedCall dense_88/StatefulPartitionedCall2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

ö
E__inference_dense_89_layer_call_and_return_conditional_losses_1533341

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ø
E__inference_dense_85_layer_call_and_return_conditional_losses_1533764

inputs1
matmul_readvariableop_resource:	<.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	<*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

ù
E__inference_dense_86_layer_call_and_return_conditional_losses_1533784

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
¾
#__inference__traced_restore_1534111
file_prefix3
 assignvariableop_dense_85_kernel:	</
 assignvariableop_1_dense_85_bias:	6
"assignvariableop_2_dense_86_kernel:
À/
 assignvariableop_3_dense_86_bias:	À6
"assignvariableop_4_dense_87_kernel:
À/
 assignvariableop_5_dense_87_bias:	5
"assignvariableop_6_dense_88_kernel:	@.
 assignvariableop_7_dense_88_bias:@4
"assignvariableop_8_dense_89_kernel:@.
 assignvariableop_9_dense_89_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: =
*assignvariableop_19_adam_dense_85_kernel_m:	<7
(assignvariableop_20_adam_dense_85_bias_m:	>
*assignvariableop_21_adam_dense_86_kernel_m:
À7
(assignvariableop_22_adam_dense_86_bias_m:	À>
*assignvariableop_23_adam_dense_87_kernel_m:
À7
(assignvariableop_24_adam_dense_87_bias_m:	=
*assignvariableop_25_adam_dense_88_kernel_m:	@6
(assignvariableop_26_adam_dense_88_bias_m:@<
*assignvariableop_27_adam_dense_89_kernel_m:@6
(assignvariableop_28_adam_dense_89_bias_m:=
*assignvariableop_29_adam_dense_85_kernel_v:	<7
(assignvariableop_30_adam_dense_85_bias_v:	>
*assignvariableop_31_adam_dense_86_kernel_v:
À7
(assignvariableop_32_adam_dense_86_bias_v:	À>
*assignvariableop_33_adam_dense_87_kernel_v:
À7
(assignvariableop_34_adam_dense_87_bias_v:	=
*assignvariableop_35_adam_dense_88_kernel_v:	@6
(assignvariableop_36_adam_dense_88_bias_v:@<
*assignvariableop_37_adam_dense_89_kernel_v:@6
(assignvariableop_38_adam_dense_89_bias_v:
identity_40¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÞ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesö
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapes£
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_85_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_85_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_86_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_86_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_87_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_87_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_88_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_88_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_89_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_89_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10¥
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¦
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14®
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¡
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17£
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18£
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19²
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_85_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20°
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_85_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_86_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_86_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_87_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_87_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_88_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_88_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_89_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_89_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_85_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_85_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31²
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_86_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_86_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_87_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_87_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_88_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_88_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37²
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_89_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38°
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_89_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp¸
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39f
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_40 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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

ù
E__inference_dense_87_layer_call_and_return_conditional_losses_1533307

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ó

*__inference_dense_89_layer_call_fn_1533833

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_89_layer_call_and_return_conditional_losses_15333412
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
2

J__inference_sequential_17_layer_call_and_return_conditional_losses_1533705

inputs:
'dense_85_matmul_readvariableop_resource:	<7
(dense_85_biasadd_readvariableop_resource:	;
'dense_86_matmul_readvariableop_resource:
À7
(dense_86_biasadd_readvariableop_resource:	À;
'dense_87_matmul_readvariableop_resource:
À7
(dense_87_biasadd_readvariableop_resource:	:
'dense_88_matmul_readvariableop_resource:	@6
(dense_88_biasadd_readvariableop_resource:@9
'dense_89_matmul_readvariableop_resource:@6
(dense_89_biasadd_readvariableop_resource:
identity¢dense_85/BiasAdd/ReadVariableOp¢dense_85/MatMul/ReadVariableOp¢dense_86/BiasAdd/ReadVariableOp¢dense_86/MatMul/ReadVariableOp¢dense_87/BiasAdd/ReadVariableOp¢dense_87/MatMul/ReadVariableOp¢dense_88/BiasAdd/ReadVariableOp¢dense_88/MatMul/ReadVariableOp¢dense_89/BiasAdd/ReadVariableOp¢dense_89/MatMul/ReadVariableOp©
dense_85/MatMul/ReadVariableOpReadVariableOp'dense_85_matmul_readvariableop_resource*
_output_shapes
:	<*
dtype02 
dense_85/MatMul/ReadVariableOp
dense_85/MatMulMatMulinputs&dense_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_85/MatMul¨
dense_85/BiasAdd/ReadVariableOpReadVariableOp(dense_85_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_85/BiasAdd/ReadVariableOp¦
dense_85/BiasAddBiasAdddense_85/MatMul:product:0'dense_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_85/BiasAddt
dense_85/ReluReludense_85/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_85/Reluª
dense_86/MatMul/ReadVariableOpReadVariableOp'dense_86_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02 
dense_86/MatMul/ReadVariableOp¤
dense_86/MatMulMatMuldense_85/Relu:activations:0&dense_86/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
dense_86/MatMul¨
dense_86/BiasAdd/ReadVariableOpReadVariableOp(dense_86_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype02!
dense_86/BiasAdd/ReadVariableOp¦
dense_86/BiasAddBiasAdddense_86/MatMul:product:0'dense_86/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
dense_86/BiasAddt
dense_86/ReluReludense_86/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
dense_86/Reluª
dense_87/MatMul/ReadVariableOpReadVariableOp'dense_87_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02 
dense_87/MatMul/ReadVariableOp¤
dense_87/MatMulMatMuldense_86/Relu:activations:0&dense_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/MatMul¨
dense_87/BiasAdd/ReadVariableOpReadVariableOp(dense_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_87/BiasAdd/ReadVariableOp¦
dense_87/BiasAddBiasAdddense_87/MatMul:product:0'dense_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/BiasAddt
dense_87/ReluReludense_87/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/Relu©
dense_88/MatMul/ReadVariableOpReadVariableOp'dense_88_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_88/MatMul/ReadVariableOp£
dense_88/MatMulMatMuldense_87/Relu:activations:0&dense_88/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_88/MatMul§
dense_88/BiasAdd/ReadVariableOpReadVariableOp(dense_88_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_88/BiasAdd/ReadVariableOp¥
dense_88/BiasAddBiasAdddense_88/MatMul:product:0'dense_88/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_88/BiasAdds
dense_88/ReluReludense_88/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_88/Relu¨
dense_89/MatMul/ReadVariableOpReadVariableOp'dense_89_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_89/MatMul/ReadVariableOp£
dense_89/MatMulMatMuldense_88/Relu:activations:0&dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/MatMul§
dense_89/BiasAdd/ReadVariableOpReadVariableOp(dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_89/BiasAdd/ReadVariableOp¥
dense_89/BiasAddBiasAdddense_89/MatMul:product:0'dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/BiasAdd|
dense_89/SoftmaxSoftmaxdense_89/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/Softmaxu
IdentityIdentitydense_89/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^dense_85/BiasAdd/ReadVariableOp^dense_85/MatMul/ReadVariableOp ^dense_86/BiasAdd/ReadVariableOp^dense_86/MatMul/ReadVariableOp ^dense_87/BiasAdd/ReadVariableOp^dense_87/MatMul/ReadVariableOp ^dense_88/BiasAdd/ReadVariableOp^dense_88/MatMul/ReadVariableOp ^dense_89/BiasAdd/ReadVariableOp^dense_89/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 2B
dense_85/BiasAdd/ReadVariableOpdense_85/BiasAdd/ReadVariableOp2@
dense_85/MatMul/ReadVariableOpdense_85/MatMul/ReadVariableOp2B
dense_86/BiasAdd/ReadVariableOpdense_86/BiasAdd/ReadVariableOp2@
dense_86/MatMul/ReadVariableOpdense_86/MatMul/ReadVariableOp2B
dense_87/BiasAdd/ReadVariableOpdense_87/BiasAdd/ReadVariableOp2@
dense_87/MatMul/ReadVariableOpdense_87/MatMul/ReadVariableOp2B
dense_88/BiasAdd/ReadVariableOpdense_88/BiasAdd/ReadVariableOp2@
dense_88/MatMul/ReadVariableOpdense_88/MatMul/ReadVariableOp2B
dense_89/BiasAdd/ReadVariableOpdense_89/BiasAdd/ReadVariableOp2@
dense_89/MatMul/ReadVariableOpdense_89/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
î


/__inference_sequential_17_layer_call_fn_1533525
dense_85_input
unknown:	<
	unknown_0:	
	unknown_1:
À
	unknown_2:	À
	unknown_3:
À
	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCalldense_85_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_15334772
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
(
_user_specified_namedense_85_input
÷

*__inference_dense_85_layer_call_fn_1533753

inputs
unknown:	<
	unknown_0:	
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_85_layer_call_and_return_conditional_losses_15332732
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
î


/__inference_sequential_17_layer_call_fn_1533371
dense_85_input
unknown:	<
	unknown_0:	
	unknown_1:
À
	unknown_2:	À
	unknown_3:
À
	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCalldense_85_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_15333482
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
(
_user_specified_namedense_85_input
Ü
ý
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533583
dense_85_input#
dense_85_1533557:	<
dense_85_1533559:	$
dense_86_1533562:
À
dense_86_1533564:	À$
dense_87_1533567:
À
dense_87_1533569:	#
dense_88_1533572:	@
dense_88_1533574:@"
dense_89_1533577:@
dense_89_1533579:
identity¢ dense_85/StatefulPartitionedCall¢ dense_86/StatefulPartitionedCall¢ dense_87/StatefulPartitionedCall¢ dense_88/StatefulPartitionedCall¢ dense_89/StatefulPartitionedCall 
 dense_85/StatefulPartitionedCallStatefulPartitionedCalldense_85_inputdense_85_1533557dense_85_1533559*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_85_layer_call_and_return_conditional_losses_15332732"
 dense_85/StatefulPartitionedCall»
 dense_86/StatefulPartitionedCallStatefulPartitionedCall)dense_85/StatefulPartitionedCall:output:0dense_86_1533562dense_86_1533564*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_86_layer_call_and_return_conditional_losses_15332902"
 dense_86/StatefulPartitionedCall»
 dense_87/StatefulPartitionedCallStatefulPartitionedCall)dense_86/StatefulPartitionedCall:output:0dense_87_1533567dense_87_1533569*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_87_layer_call_and_return_conditional_losses_15333072"
 dense_87/StatefulPartitionedCallº
 dense_88/StatefulPartitionedCallStatefulPartitionedCall)dense_87/StatefulPartitionedCall:output:0dense_88_1533572dense_88_1533574*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_88_layer_call_and_return_conditional_losses_15333242"
 dense_88/StatefulPartitionedCallº
 dense_89/StatefulPartitionedCallStatefulPartitionedCall)dense_88/StatefulPartitionedCall:output:0dense_89_1533577dense_89_1533579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_89_layer_call_and_return_conditional_losses_15333412"
 dense_89/StatefulPartitionedCall
IdentityIdentity)dense_89/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityý
NoOpNoOp!^dense_85/StatefulPartitionedCall!^dense_86/StatefulPartitionedCall!^dense_87/StatefulPartitionedCall!^dense_88/StatefulPartitionedCall!^dense_89/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 2D
 dense_85/StatefulPartitionedCall dense_85/StatefulPartitionedCall2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 dense_87/StatefulPartitionedCall dense_87/StatefulPartitionedCall2D
 dense_88/StatefulPartitionedCall dense_88/StatefulPartitionedCall2D
 dense_89/StatefulPartitionedCall dense_89/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
(
_user_specified_namedense_85_input

ù
E__inference_dense_86_layer_call_and_return_conditional_losses_1533290

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	À
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:À*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þR
÷
 __inference__traced_save_1533984
file_prefix.
*savev2_dense_85_kernel_read_readvariableop,
(savev2_dense_85_bias_read_readvariableop.
*savev2_dense_86_kernel_read_readvariableop,
(savev2_dense_86_bias_read_readvariableop.
*savev2_dense_87_kernel_read_readvariableop,
(savev2_dense_87_bias_read_readvariableop.
*savev2_dense_88_kernel_read_readvariableop,
(savev2_dense_88_bias_read_readvariableop.
*savev2_dense_89_kernel_read_readvariableop,
(savev2_dense_89_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_85_kernel_m_read_readvariableop3
/savev2_adam_dense_85_bias_m_read_readvariableop5
1savev2_adam_dense_86_kernel_m_read_readvariableop3
/savev2_adam_dense_86_bias_m_read_readvariableop5
1savev2_adam_dense_87_kernel_m_read_readvariableop3
/savev2_adam_dense_87_bias_m_read_readvariableop5
1savev2_adam_dense_88_kernel_m_read_readvariableop3
/savev2_adam_dense_88_bias_m_read_readvariableop5
1savev2_adam_dense_89_kernel_m_read_readvariableop3
/savev2_adam_dense_89_bias_m_read_readvariableop5
1savev2_adam_dense_85_kernel_v_read_readvariableop3
/savev2_adam_dense_85_bias_v_read_readvariableop5
1savev2_adam_dense_86_kernel_v_read_readvariableop3
/savev2_adam_dense_86_bias_v_read_readvariableop5
1savev2_adam_dense_87_kernel_v_read_readvariableop3
/savev2_adam_dense_87_bias_v_read_readvariableop5
1savev2_adam_dense_88_kernel_v_read_readvariableop3
/savev2_adam_dense_88_bias_v_read_readvariableop5
1savev2_adam_dense_89_kernel_v_read_readvariableop3
/savev2_adam_dense_89_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesØ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÏ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_85_kernel_read_readvariableop(savev2_dense_85_bias_read_readvariableop*savev2_dense_86_kernel_read_readvariableop(savev2_dense_86_bias_read_readvariableop*savev2_dense_87_kernel_read_readvariableop(savev2_dense_87_bias_read_readvariableop*savev2_dense_88_kernel_read_readvariableop(savev2_dense_88_bias_read_readvariableop*savev2_dense_89_kernel_read_readvariableop(savev2_dense_89_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_85_kernel_m_read_readvariableop/savev2_adam_dense_85_bias_m_read_readvariableop1savev2_adam_dense_86_kernel_m_read_readvariableop/savev2_adam_dense_86_bias_m_read_readvariableop1savev2_adam_dense_87_kernel_m_read_readvariableop/savev2_adam_dense_87_bias_m_read_readvariableop1savev2_adam_dense_88_kernel_m_read_readvariableop/savev2_adam_dense_88_bias_m_read_readvariableop1savev2_adam_dense_89_kernel_m_read_readvariableop/savev2_adam_dense_89_bias_m_read_readvariableop1savev2_adam_dense_85_kernel_v_read_readvariableop/savev2_adam_dense_85_bias_v_read_readvariableop1savev2_adam_dense_86_kernel_v_read_readvariableop/savev2_adam_dense_86_bias_v_read_readvariableop1savev2_adam_dense_87_kernel_v_read_readvariableop/savev2_adam_dense_87_bias_v_read_readvariableop1savev2_adam_dense_88_kernel_v_read_readvariableop/savev2_adam_dense_88_bias_v_read_readvariableop1savev2_adam_dense_89_kernel_v_read_readvariableop/savev2_adam_dense_89_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*¶
_input_shapes¤
¡: :	<::
À:À:
À::	@:@:@:: : : : : : : : : :	<::
À:À:
À::	@:@:@::	<::
À:À:
À::	@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	<:!

_output_shapes	
::&"
 
_output_shapes
:
À:!

_output_shapes	
:À:&"
 
_output_shapes
:
À:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$	 

_output_shapes

:@: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	<:!

_output_shapes	
::&"
 
_output_shapes
:
À:!

_output_shapes	
:À:&"
 
_output_shapes
:
À:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::%!

_output_shapes
:	<:!

_output_shapes	
::& "
 
_output_shapes
:
À:!!

_output_shapes	
:À:&""
 
_output_shapes
:
À:!#

_output_shapes	
::%$!

_output_shapes
:	@: %

_output_shapes
:@:$& 

_output_shapes

:@: '

_output_shapes
::(

_output_shapes
: 
ú

*__inference_dense_87_layer_call_fn_1533793

inputs
unknown:
À
	unknown_0:	
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_87_layer_call_and_return_conditional_losses_15333072
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ú

*__inference_dense_86_layer_call_fn_1533773

inputs
unknown:
À
	unknown_0:	À
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_86_layer_call_and_return_conditional_losses_15332902
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ö
E__inference_dense_89_layer_call_and_return_conditional_losses_1533844

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
2

J__inference_sequential_17_layer_call_and_return_conditional_losses_1533744

inputs:
'dense_85_matmul_readvariableop_resource:	<7
(dense_85_biasadd_readvariableop_resource:	;
'dense_86_matmul_readvariableop_resource:
À7
(dense_86_biasadd_readvariableop_resource:	À;
'dense_87_matmul_readvariableop_resource:
À7
(dense_87_biasadd_readvariableop_resource:	:
'dense_88_matmul_readvariableop_resource:	@6
(dense_88_biasadd_readvariableop_resource:@9
'dense_89_matmul_readvariableop_resource:@6
(dense_89_biasadd_readvariableop_resource:
identity¢dense_85/BiasAdd/ReadVariableOp¢dense_85/MatMul/ReadVariableOp¢dense_86/BiasAdd/ReadVariableOp¢dense_86/MatMul/ReadVariableOp¢dense_87/BiasAdd/ReadVariableOp¢dense_87/MatMul/ReadVariableOp¢dense_88/BiasAdd/ReadVariableOp¢dense_88/MatMul/ReadVariableOp¢dense_89/BiasAdd/ReadVariableOp¢dense_89/MatMul/ReadVariableOp©
dense_85/MatMul/ReadVariableOpReadVariableOp'dense_85_matmul_readvariableop_resource*
_output_shapes
:	<*
dtype02 
dense_85/MatMul/ReadVariableOp
dense_85/MatMulMatMulinputs&dense_85/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_85/MatMul¨
dense_85/BiasAdd/ReadVariableOpReadVariableOp(dense_85_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_85/BiasAdd/ReadVariableOp¦
dense_85/BiasAddBiasAdddense_85/MatMul:product:0'dense_85/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_85/BiasAddt
dense_85/ReluReludense_85/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_85/Reluª
dense_86/MatMul/ReadVariableOpReadVariableOp'dense_86_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02 
dense_86/MatMul/ReadVariableOp¤
dense_86/MatMulMatMuldense_85/Relu:activations:0&dense_86/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
dense_86/MatMul¨
dense_86/BiasAdd/ReadVariableOpReadVariableOp(dense_86_biasadd_readvariableop_resource*
_output_shapes	
:À*
dtype02!
dense_86/BiasAdd/ReadVariableOp¦
dense_86/BiasAddBiasAdddense_86/MatMul:product:0'dense_86/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
dense_86/BiasAddt
dense_86/ReluReludense_86/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
dense_86/Reluª
dense_87/MatMul/ReadVariableOpReadVariableOp'dense_87_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02 
dense_87/MatMul/ReadVariableOp¤
dense_87/MatMulMatMuldense_86/Relu:activations:0&dense_87/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/MatMul¨
dense_87/BiasAdd/ReadVariableOpReadVariableOp(dense_87_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_87/BiasAdd/ReadVariableOp¦
dense_87/BiasAddBiasAdddense_87/MatMul:product:0'dense_87/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/BiasAddt
dense_87/ReluReludense_87/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/Relu©
dense_88/MatMul/ReadVariableOpReadVariableOp'dense_88_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_88/MatMul/ReadVariableOp£
dense_88/MatMulMatMuldense_87/Relu:activations:0&dense_88/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_88/MatMul§
dense_88/BiasAdd/ReadVariableOpReadVariableOp(dense_88_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_88/BiasAdd/ReadVariableOp¥
dense_88/BiasAddBiasAdddense_88/MatMul:product:0'dense_88/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_88/BiasAdds
dense_88/ReluReludense_88/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_88/Relu¨
dense_89/MatMul/ReadVariableOpReadVariableOp'dense_89_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02 
dense_89/MatMul/ReadVariableOp£
dense_89/MatMulMatMuldense_88/Relu:activations:0&dense_89/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/MatMul§
dense_89/BiasAdd/ReadVariableOpReadVariableOp(dense_89_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_89/BiasAdd/ReadVariableOp¥
dense_89/BiasAddBiasAdddense_89/MatMul:product:0'dense_89/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/BiasAdd|
dense_89/SoftmaxSoftmaxdense_89/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_89/Softmaxu
IdentityIdentitydense_89/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp ^dense_85/BiasAdd/ReadVariableOp^dense_85/MatMul/ReadVariableOp ^dense_86/BiasAdd/ReadVariableOp^dense_86/MatMul/ReadVariableOp ^dense_87/BiasAdd/ReadVariableOp^dense_87/MatMul/ReadVariableOp ^dense_88/BiasAdd/ReadVariableOp^dense_88/MatMul/ReadVariableOp ^dense_89/BiasAdd/ReadVariableOp^dense_89/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 2B
dense_85/BiasAdd/ReadVariableOpdense_85/BiasAdd/ReadVariableOp2@
dense_85/MatMul/ReadVariableOpdense_85/MatMul/ReadVariableOp2B
dense_86/BiasAdd/ReadVariableOpdense_86/BiasAdd/ReadVariableOp2@
dense_86/MatMul/ReadVariableOpdense_86/MatMul/ReadVariableOp2B
dense_87/BiasAdd/ReadVariableOpdense_87/BiasAdd/ReadVariableOp2@
dense_87/MatMul/ReadVariableOpdense_87/MatMul/ReadVariableOp2B
dense_88/BiasAdd/ReadVariableOpdense_88/BiasAdd/ReadVariableOp2@
dense_88/MatMul/ReadVariableOpdense_88/MatMul/ReadVariableOp2B
dense_89/BiasAdd/ReadVariableOpdense_89/BiasAdd/ReadVariableOp2@
dense_89/MatMul/ReadVariableOpdense_89/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

ù
E__inference_dense_87_layer_call_and_return_conditional_losses_1533804

inputs2
matmul_readvariableop_resource:
À.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ö

*__inference_dense_88_layer_call_fn_1533813

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_88_layer_call_and_return_conditional_losses_15333242
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼

û
%__inference_signature_wrapper_1533616
dense_85_input
unknown:	<
	unknown_0:	
	unknown_1:
À
	unknown_2:	À
	unknown_3:
À
	unknown_4:	
	unknown_5:	@
	unknown_6:@
	unknown_7:@
	unknown_8:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCalldense_85_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_15332552
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ<: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
(
_user_specified_namedense_85_input

÷
E__inference_dense_88_layer_call_and_return_conditional_losses_1533324

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¹
serving_default¥
I
dense_85_input7
 serving_default_dense_85_input:0ÿÿÿÿÿÿÿÿÿ<<
dense_890
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Åm
©
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
	optimizer
trainable_variables
	variables
	regularization_losses

	keras_api

signatures
l__call__
m_default_save_signature
*n&call_and_return_all_conditional_losses"
_tf_keras_sequential
»

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
»

$kernel
%bias
&trainable_variables
'	variables
(regularization_losses
)	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer

*iter

+beta_1

,beta_2
	-decay
.learning_ratemXmYmZm[m\m]m^m_$m`%mavbvcvdvevfvgvhvi$vj%vk"
	optimizer
f
0
1
2
3
4
5
6
7
$8
%9"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
$8
%9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
/layer_regularization_losses
trainable_variables
0non_trainable_variables
1layer_metrics
	variables
2metrics

3layers
	regularization_losses
l__call__
m_default_save_signature
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
,
yserving_default"
signature_map
": 	<2dense_85/kernel
:2dense_85/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
4layer_regularization_losses
trainable_variables
5layer_metrics
6non_trainable_variables
	variables
regularization_losses

7layers
8metrics
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
#:!
À2dense_86/kernel
:À2dense_86/bias
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
­
9layer_regularization_losses
trainable_variables
:layer_metrics
;non_trainable_variables
	variables
regularization_losses

<layers
=metrics
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
#:!
À2dense_87/kernel
:2dense_87/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
>layer_regularization_losses
trainable_variables
?layer_metrics
@non_trainable_variables
	variables
regularization_losses

Alayers
Bmetrics
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
": 	@2dense_88/kernel
:@2dense_88/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Clayer_regularization_losses
 trainable_variables
Dlayer_metrics
Enon_trainable_variables
!	variables
"regularization_losses

Flayers
Gmetrics
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
!:@2dense_89/kernel
:2dense_89/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Hlayer_regularization_losses
&trainable_variables
Ilayer_metrics
Jnon_trainable_variables
'	variables
(regularization_losses

Klayers
Lmetrics
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
M0
N1"
trackable_list_wrapper
C
0
1
2
3
4"
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
N
	Ototal
	Pcount
Q	variables
R	keras_api"
_tf_keras_metric
^
	Stotal
	Tcount
U
_fn_kwargs
V	variables
W	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
O0
P1"
trackable_list_wrapper
-
Q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
S0
T1"
trackable_list_wrapper
-
V	variables"
_generic_user_object
':%	<2Adam/dense_85/kernel/m
!:2Adam/dense_85/bias/m
(:&
À2Adam/dense_86/kernel/m
!:À2Adam/dense_86/bias/m
(:&
À2Adam/dense_87/kernel/m
!:2Adam/dense_87/bias/m
':%	@2Adam/dense_88/kernel/m
 :@2Adam/dense_88/bias/m
&:$@2Adam/dense_89/kernel/m
 :2Adam/dense_89/bias/m
':%	<2Adam/dense_85/kernel/v
!:2Adam/dense_85/bias/v
(:&
À2Adam/dense_86/kernel/v
!:À2Adam/dense_86/bias/v
(:&
À2Adam/dense_87/kernel/v
!:2Adam/dense_87/bias/v
':%	@2Adam/dense_88/kernel/v
 :@2Adam/dense_88/bias/v
&:$@2Adam/dense_89/kernel/v
 :2Adam/dense_89/bias/v
2
/__inference_sequential_17_layer_call_fn_1533371
/__inference_sequential_17_layer_call_fn_1533641
/__inference_sequential_17_layer_call_fn_1533666
/__inference_sequential_17_layer_call_fn_1533525À
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
kwonlydefaultsª 
annotationsª *
 
ÔBÑ
"__inference__wrapped_model_1533255dense_85_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533705
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533744
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533554
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533583À
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
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
*__inference_dense_85_layer_call_fn_1533753¢
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
annotationsª *
 
ï2ì
E__inference_dense_85_layer_call_and_return_conditional_losses_1533764¢
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
annotationsª *
 
Ô2Ñ
*__inference_dense_86_layer_call_fn_1533773¢
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
annotationsª *
 
ï2ì
E__inference_dense_86_layer_call_and_return_conditional_losses_1533784¢
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
annotationsª *
 
Ô2Ñ
*__inference_dense_87_layer_call_fn_1533793¢
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
annotationsª *
 
ï2ì
E__inference_dense_87_layer_call_and_return_conditional_losses_1533804¢
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
annotationsª *
 
Ô2Ñ
*__inference_dense_88_layer_call_fn_1533813¢
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
annotationsª *
 
ï2ì
E__inference_dense_88_layer_call_and_return_conditional_losses_1533824¢
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
annotationsª *
 
Ô2Ñ
*__inference_dense_89_layer_call_fn_1533833¢
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
annotationsª *
 
ï2ì
E__inference_dense_89_layer_call_and_return_conditional_losses_1533844¢
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
annotationsª *
 
ÓBÐ
%__inference_signature_wrapper_1533616dense_85_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
  
"__inference__wrapped_model_1533255z
$%7¢4
-¢*
(%
dense_85_inputÿÿÿÿÿÿÿÿÿ<
ª "3ª0
.
dense_89"
dense_89ÿÿÿÿÿÿÿÿÿ¦
E__inference_dense_85_layer_call_and_return_conditional_losses_1533764]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ<
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
*__inference_dense_85_layer_call_fn_1533753P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ§
E__inference_dense_86_layer_call_and_return_conditional_losses_1533784^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
*__inference_dense_86_layer_call_fn_1533773Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ§
E__inference_dense_87_layer_call_and_return_conditional_losses_1533804^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_dense_87_layer_call_fn_1533793Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ¦
E__inference_dense_88_layer_call_and_return_conditional_losses_1533824]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ~
*__inference_dense_88_layer_call_fn_1533813P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dense_89_layer_call_and_return_conditional_losses_1533844\$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_89_layer_call_fn_1533833O$%/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿÂ
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533554t
$%?¢<
5¢2
(%
dense_85_inputÿÿÿÿÿÿÿÿÿ<
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533583t
$%?¢<
5¢2
(%
dense_85_inputÿÿÿÿÿÿÿÿÿ<
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533705l
$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ<
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
J__inference_sequential_17_layer_call_and_return_conditional_losses_1533744l
$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ<
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_17_layer_call_fn_1533371g
$%?¢<
5¢2
(%
dense_85_inputÿÿÿÿÿÿÿÿÿ<
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_17_layer_call_fn_1533525g
$%?¢<
5¢2
(%
dense_85_inputÿÿÿÿÿÿÿÿÿ<
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_17_layer_call_fn_1533641_
$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ<
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_17_layer_call_fn_1533666_
$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ<
p

 
ª "ÿÿÿÿÿÿÿÿÿ¶
%__inference_signature_wrapper_1533616
$%I¢F
¢ 
?ª<
:
dense_85_input(%
dense_85_inputÿÿÿÿÿÿÿÿÿ<"3ª0
.
dense_89"
dense_89ÿÿÿÿÿÿÿÿÿ