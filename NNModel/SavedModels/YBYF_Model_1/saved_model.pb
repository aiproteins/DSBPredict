�
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
delete_old_dirsbool(�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.22v2.6.1-9-gc2363d6d0258��
�
hidden_layer01/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_namehidden_layer01/kernel
�
)hidden_layer01/kernel/Read/ReadVariableOpReadVariableOphidden_layer01/kernel*
_output_shapes
:	�*
dtype0

hidden_layer01/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namehidden_layer01/bias
x
'hidden_layer01/bias/Read/ReadVariableOpReadVariableOphidden_layer01/bias*
_output_shapes	
:�*
dtype0
�
hidden_layer02/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namehidden_layer02/kernel
�
)hidden_layer02/kernel/Read/ReadVariableOpReadVariableOphidden_layer02/kernel* 
_output_shapes
:
��*
dtype0

hidden_layer02/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namehidden_layer02/bias
x
'hidden_layer02/bias/Read/ReadVariableOpReadVariableOphidden_layer02/bias*
_output_shapes	
:�*
dtype0
�
hidden_layer03/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namehidden_layer03/kernel
�
)hidden_layer03/kernel/Read/ReadVariableOpReadVariableOphidden_layer03/kernel* 
_output_shapes
:
��*
dtype0

hidden_layer03/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namehidden_layer03/bias
x
'hidden_layer03/bias/Read/ReadVariableOpReadVariableOphidden_layer03/bias*
_output_shapes	
:�*
dtype0
�
hidden_layer04/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namehidden_layer04/kernel
�
)hidden_layer04/kernel/Read/ReadVariableOpReadVariableOphidden_layer04/kernel* 
_output_shapes
:
��*
dtype0

hidden_layer04/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namehidden_layer04/bias
x
'hidden_layer04/bias/Read/ReadVariableOpReadVariableOphidden_layer04/bias*
_output_shapes	
:�*
dtype0
�
hidden_layer05/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namehidden_layer05/kernel
�
)hidden_layer05/kernel/Read/ReadVariableOpReadVariableOphidden_layer05/kernel* 
_output_shapes
:
��*
dtype0

hidden_layer05/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namehidden_layer05/bias
x
'hidden_layer05/bias/Read/ReadVariableOpReadVariableOphidden_layer05/bias*
_output_shapes	
:�*
dtype0
�
hidden_layer06/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namehidden_layer06/kernel
�
)hidden_layer06/kernel/Read/ReadVariableOpReadVariableOphidden_layer06/kernel* 
_output_shapes
:
��*
dtype0

hidden_layer06/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namehidden_layer06/bias
x
'hidden_layer06/bias/Read/ReadVariableOpReadVariableOphidden_layer06/bias*
_output_shapes	
:�*
dtype0
�
hidden_layer07/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namehidden_layer07/kernel
�
)hidden_layer07/kernel/Read/ReadVariableOpReadVariableOphidden_layer07/kernel* 
_output_shapes
:
��*
dtype0

hidden_layer07/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namehidden_layer07/bias
x
'hidden_layer07/bias/Read/ReadVariableOpReadVariableOphidden_layer07/bias*
_output_shapes	
:�*
dtype0
�
output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*$
shared_nameoutput_layer/kernel
|
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes
:	�*
dtype0
z
output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameoutput_layer/bias
s
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
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
�
Adam/hidden_layer01/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameAdam/hidden_layer01/kernel/m
�
0Adam/hidden_layer01/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer01/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/hidden_layer01/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer01/bias/m
�
.Adam/hidden_layer01/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer01/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer02/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer02/kernel/m
�
0Adam/hidden_layer02/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer02/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer02/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer02/bias/m
�
.Adam/hidden_layer02/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer02/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer03/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer03/kernel/m
�
0Adam/hidden_layer03/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer03/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer03/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer03/bias/m
�
.Adam/hidden_layer03/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer03/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer04/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer04/kernel/m
�
0Adam/hidden_layer04/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer04/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer04/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer04/bias/m
�
.Adam/hidden_layer04/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer04/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer05/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer05/kernel/m
�
0Adam/hidden_layer05/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer05/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer05/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer05/bias/m
�
.Adam/hidden_layer05/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer05/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer06/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer06/kernel/m
�
0Adam/hidden_layer06/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer06/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer06/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer06/bias/m
�
.Adam/hidden_layer06/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer06/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer07/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer07/kernel/m
�
0Adam/hidden_layer07/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer07/kernel/m* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer07/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer07/bias/m
�
.Adam/hidden_layer07/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_layer07/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameAdam/output_layer/kernel/m
�
.Adam/output_layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/output_layer/bias/m
�
,Adam/output_layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/m*
_output_shapes
:*
dtype0
�
Adam/hidden_layer01/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameAdam/hidden_layer01/kernel/v
�
0Adam/hidden_layer01/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer01/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/hidden_layer01/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer01/bias/v
�
.Adam/hidden_layer01/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer01/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer02/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer02/kernel/v
�
0Adam/hidden_layer02/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer02/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer02/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer02/bias/v
�
.Adam/hidden_layer02/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer02/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer03/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer03/kernel/v
�
0Adam/hidden_layer03/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer03/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer03/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer03/bias/v
�
.Adam/hidden_layer03/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer03/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer04/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer04/kernel/v
�
0Adam/hidden_layer04/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer04/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer04/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer04/bias/v
�
.Adam/hidden_layer04/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer04/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer05/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer05/kernel/v
�
0Adam/hidden_layer05/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer05/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer05/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer05/bias/v
�
.Adam/hidden_layer05/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer05/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer06/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer06/kernel/v
�
0Adam/hidden_layer06/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer06/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer06/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer06/bias/v
�
.Adam/hidden_layer06/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer06/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/hidden_layer07/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/hidden_layer07/kernel/v
�
0Adam/hidden_layer07/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer07/kernel/v* 
_output_shapes
:
��*
dtype0
�
Adam/hidden_layer07/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/hidden_layer07/bias/v
�
.Adam/hidden_layer07/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_layer07/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nameAdam/output_layer/kernel/v
�
.Adam/output_layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/output_layer/bias/v
�
,Adam/output_layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/output_layer/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�h
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�h
value�hB�h B�h
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
x

activation

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
x

activation

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
 regularization_losses
!	variables
"	keras_api
x
#
activation

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
x
*
activation

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
R
1trainable_variables
2regularization_losses
3	variables
4	keras_api
x
5
activation

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
x
<
activation

=kernel
>bias
?trainable_variables
@regularization_losses
A	variables
B	keras_api
x
C
activation

Dkernel
Ebias
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
h

Jkernel
Kbias
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
�
Piter

Qbeta_1

Rbeta_2
	Sdecaym�m�m�m�$m�%m�+m�,m�6m�7m�=m�>m�Dm�Em�Jm�Km�v�v�v�v�$v�%v�+v�,v�6v�7v�=v�>v�Dv�Ev�Jv�Kv�
v
0
1
2
3
$4
%5
+6
,7
68
79
=10
>11
D12
E13
J14
K15
 
v
0
1
2
3
$4
%5
+6
,7
68
79
=10
>11
D12
E13
J14
K15
�
trainable_variables
Tlayer_metrics
Ulayer_regularization_losses
regularization_losses
Vmetrics

Wlayers
Xnon_trainable_variables
	variables
 
R
Ytrainable_variables
Zregularization_losses
[	variables
\	keras_api
a_
VARIABLE_VALUEhidden_layer01/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEhidden_layer01/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
]layer_metrics
^layer_regularization_losses
regularization_losses
_metrics

`layers
anon_trainable_variables
	variables
R
btrainable_variables
cregularization_losses
d	variables
e	keras_api
a_
VARIABLE_VALUEhidden_layer02/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEhidden_layer02/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
flayer_metrics
glayer_regularization_losses
regularization_losses
hmetrics

ilayers
jnon_trainable_variables
	variables
 
 
 
�
trainable_variables
klayer_metrics
llayer_regularization_losses
 regularization_losses
mmetrics

nlayers
onon_trainable_variables
!	variables
R
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
a_
VARIABLE_VALUEhidden_layer03/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEhidden_layer03/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
�
&trainable_variables
tlayer_metrics
ulayer_regularization_losses
'regularization_losses
vmetrics

wlayers
xnon_trainable_variables
(	variables
R
ytrainable_variables
zregularization_losses
{	variables
|	keras_api
a_
VARIABLE_VALUEhidden_layer04/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEhidden_layer04/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
�
-trainable_variables
}layer_metrics
~layer_regularization_losses
.regularization_losses
metrics
�layers
�non_trainable_variables
/	variables
 
 
 
�
1trainable_variables
�layer_metrics
 �layer_regularization_losses
2regularization_losses
�metrics
�layers
�non_trainable_variables
3	variables
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
a_
VARIABLE_VALUEhidden_layer05/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEhidden_layer05/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
�
8trainable_variables
�layer_metrics
 �layer_regularization_losses
9regularization_losses
�metrics
�layers
�non_trainable_variables
:	variables
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
a_
VARIABLE_VALUEhidden_layer06/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEhidden_layer06/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1
 

=0
>1
�
?trainable_variables
�layer_metrics
 �layer_regularization_losses
@regularization_losses
�metrics
�layers
�non_trainable_variables
A	variables
V
�trainable_variables
�regularization_losses
�	variables
�	keras_api
a_
VARIABLE_VALUEhidden_layer07/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEhidden_layer07/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1
 

D0
E1
�
Ftrainable_variables
�layer_metrics
 �layer_regularization_losses
Gregularization_losses
�metrics
�layers
�non_trainable_variables
H	variables
_]
VARIABLE_VALUEoutput_layer/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEoutput_layer/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

J0
K1
 

J0
K1
�
Ltrainable_variables
�layer_metrics
 �layer_regularization_losses
Mregularization_losses
�metrics
�layers
�non_trainable_variables
N	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
 
 

�0
�1
F
0
1
2
3
4
5
6
7
	8

9
 
 
 
 
�
Ytrainable_variables
�layer_metrics
 �layer_regularization_losses
Zregularization_losses
�metrics
�layers
�non_trainable_variables
[	variables
 
 
 

0
 
 
 
 
�
btrainable_variables
�layer_metrics
 �layer_regularization_losses
cregularization_losses
�metrics
�layers
�non_trainable_variables
d	variables
 
 
 

0
 
 
 
 
 
 
 
 
 
�
ptrainable_variables
�layer_metrics
 �layer_regularization_losses
qregularization_losses
�metrics
�layers
�non_trainable_variables
r	variables
 
 
 

#0
 
 
 
 
�
ytrainable_variables
�layer_metrics
 �layer_regularization_losses
zregularization_losses
�metrics
�layers
�non_trainable_variables
{	variables
 
 
 

*0
 
 
 
 
 
 
 
 
 
�
�trainable_variables
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�layers
�non_trainable_variables
�	variables
 
 
 

50
 
 
 
 
�
�trainable_variables
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�layers
�non_trainable_variables
�	variables
 
 
 

<0
 
 
 
 
�
�trainable_variables
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�layers
�non_trainable_variables
�	variables
 
 
 

C0
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
��
VARIABLE_VALUEAdam/hidden_layer01/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer01/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer02/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer02/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer03/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer03/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer04/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer04/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer05/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer05/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer06/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer06/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer07/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer07/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/output_layer/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/output_layer/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer01/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer01/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer02/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer02/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer03/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer03/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer04/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer04/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer05/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer05/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer06/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer06/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/hidden_layer07/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUEAdam/hidden_layer07/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUEAdam/output_layer/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/output_layer/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
serving_default_input_layerPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layerhidden_layer01/kernelhidden_layer01/biashidden_layer02/kernelhidden_layer02/biashidden_layer03/kernelhidden_layer03/biashidden_layer04/kernelhidden_layer04/biashidden_layer05/kernelhidden_layer05/biashidden_layer06/kernelhidden_layer06/biashidden_layer07/kernelhidden_layer07/biasoutput_layer/kerneloutput_layer/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_104957
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)hidden_layer01/kernel/Read/ReadVariableOp'hidden_layer01/bias/Read/ReadVariableOp)hidden_layer02/kernel/Read/ReadVariableOp'hidden_layer02/bias/Read/ReadVariableOp)hidden_layer03/kernel/Read/ReadVariableOp'hidden_layer03/bias/Read/ReadVariableOp)hidden_layer04/kernel/Read/ReadVariableOp'hidden_layer04/bias/Read/ReadVariableOp)hidden_layer05/kernel/Read/ReadVariableOp'hidden_layer05/bias/Read/ReadVariableOp)hidden_layer06/kernel/Read/ReadVariableOp'hidden_layer06/bias/Read/ReadVariableOp)hidden_layer07/kernel/Read/ReadVariableOp'hidden_layer07/bias/Read/ReadVariableOp'output_layer/kernel/Read/ReadVariableOp%output_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0Adam/hidden_layer01/kernel/m/Read/ReadVariableOp.Adam/hidden_layer01/bias/m/Read/ReadVariableOp0Adam/hidden_layer02/kernel/m/Read/ReadVariableOp.Adam/hidden_layer02/bias/m/Read/ReadVariableOp0Adam/hidden_layer03/kernel/m/Read/ReadVariableOp.Adam/hidden_layer03/bias/m/Read/ReadVariableOp0Adam/hidden_layer04/kernel/m/Read/ReadVariableOp.Adam/hidden_layer04/bias/m/Read/ReadVariableOp0Adam/hidden_layer05/kernel/m/Read/ReadVariableOp.Adam/hidden_layer05/bias/m/Read/ReadVariableOp0Adam/hidden_layer06/kernel/m/Read/ReadVariableOp.Adam/hidden_layer06/bias/m/Read/ReadVariableOp0Adam/hidden_layer07/kernel/m/Read/ReadVariableOp.Adam/hidden_layer07/bias/m/Read/ReadVariableOp.Adam/output_layer/kernel/m/Read/ReadVariableOp,Adam/output_layer/bias/m/Read/ReadVariableOp0Adam/hidden_layer01/kernel/v/Read/ReadVariableOp.Adam/hidden_layer01/bias/v/Read/ReadVariableOp0Adam/hidden_layer02/kernel/v/Read/ReadVariableOp.Adam/hidden_layer02/bias/v/Read/ReadVariableOp0Adam/hidden_layer03/kernel/v/Read/ReadVariableOp.Adam/hidden_layer03/bias/v/Read/ReadVariableOp0Adam/hidden_layer04/kernel/v/Read/ReadVariableOp.Adam/hidden_layer04/bias/v/Read/ReadVariableOp0Adam/hidden_layer05/kernel/v/Read/ReadVariableOp.Adam/hidden_layer05/bias/v/Read/ReadVariableOp0Adam/hidden_layer06/kernel/v/Read/ReadVariableOp.Adam/hidden_layer06/bias/v/Read/ReadVariableOp0Adam/hidden_layer07/kernel/v/Read/ReadVariableOp.Adam/hidden_layer07/bias/v/Read/ReadVariableOp.Adam/output_layer/kernel/v/Read/ReadVariableOp,Adam/output_layer/bias/v/Read/ReadVariableOpConst*E
Tin>
<2:	*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_105574
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamehidden_layer01/kernelhidden_layer01/biashidden_layer02/kernelhidden_layer02/biashidden_layer03/kernelhidden_layer03/biashidden_layer04/kernelhidden_layer04/biashidden_layer05/kernelhidden_layer05/biashidden_layer06/kernelhidden_layer06/biashidden_layer07/kernelhidden_layer07/biasoutput_layer/kerneloutput_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotalcounttotal_1count_1Adam/hidden_layer01/kernel/mAdam/hidden_layer01/bias/mAdam/hidden_layer02/kernel/mAdam/hidden_layer02/bias/mAdam/hidden_layer03/kernel/mAdam/hidden_layer03/bias/mAdam/hidden_layer04/kernel/mAdam/hidden_layer04/bias/mAdam/hidden_layer05/kernel/mAdam/hidden_layer05/bias/mAdam/hidden_layer06/kernel/mAdam/hidden_layer06/bias/mAdam/hidden_layer07/kernel/mAdam/hidden_layer07/bias/mAdam/output_layer/kernel/mAdam/output_layer/bias/mAdam/hidden_layer01/kernel/vAdam/hidden_layer01/bias/vAdam/hidden_layer02/kernel/vAdam/hidden_layer02/bias/vAdam/hidden_layer03/kernel/vAdam/hidden_layer03/bias/vAdam/hidden_layer04/kernel/vAdam/hidden_layer04/bias/vAdam/hidden_layer05/kernel/vAdam/hidden_layer05/bias/vAdam/hidden_layer06/kernel/vAdam/hidden_layer06/bias/vAdam/hidden_layer07/kernel/vAdam/hidden_layer07/bias/vAdam/output_layer/kernel/vAdam/output_layer/bias/v*D
Tin=
;29*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_105752��

�
�
+__inference_sequential_layer_call_fn_105031

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1047502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_105303

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_hidden_layer07_layer_call_fn_105352

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_1044802
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_104433

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:����������2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_output_layer_layer_call_fn_105372

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_1044972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_104539
input_layer
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1045042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_105323

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_4/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_4/Reluv
IdentityIdentityre_lu_4/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_hidden_layer02_layer_call_fn_105198

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_1043812
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_105276

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_3/Reluv
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
C__inference_dropout_layer_call_and_return_conditional_losses_105236

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_105291

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:����������2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_dropout_1_layer_call_fn_105281

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1044332
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_105363

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_6/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_6/Reluv
IdentityIdentityre_lu_6/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_105224

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:����������2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
D
(__inference_dropout_layer_call_fn_105214

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1043922
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�u
�
__inference__traced_save_105574
file_prefix4
0savev2_hidden_layer01_kernel_read_readvariableop2
.savev2_hidden_layer01_bias_read_readvariableop4
0savev2_hidden_layer02_kernel_read_readvariableop2
.savev2_hidden_layer02_bias_read_readvariableop4
0savev2_hidden_layer03_kernel_read_readvariableop2
.savev2_hidden_layer03_bias_read_readvariableop4
0savev2_hidden_layer04_kernel_read_readvariableop2
.savev2_hidden_layer04_bias_read_readvariableop4
0savev2_hidden_layer05_kernel_read_readvariableop2
.savev2_hidden_layer05_bias_read_readvariableop4
0savev2_hidden_layer06_kernel_read_readvariableop2
.savev2_hidden_layer06_bias_read_readvariableop4
0savev2_hidden_layer07_kernel_read_readvariableop2
.savev2_hidden_layer07_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_adam_hidden_layer01_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer01_bias_m_read_readvariableop;
7savev2_adam_hidden_layer02_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer02_bias_m_read_readvariableop;
7savev2_adam_hidden_layer03_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer03_bias_m_read_readvariableop;
7savev2_adam_hidden_layer04_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer04_bias_m_read_readvariableop;
7savev2_adam_hidden_layer05_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer05_bias_m_read_readvariableop;
7savev2_adam_hidden_layer06_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer06_bias_m_read_readvariableop;
7savev2_adam_hidden_layer07_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer07_bias_m_read_readvariableop9
5savev2_adam_output_layer_kernel_m_read_readvariableop7
3savev2_adam_output_layer_bias_m_read_readvariableop;
7savev2_adam_hidden_layer01_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer01_bias_v_read_readvariableop;
7savev2_adam_hidden_layer02_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer02_bias_v_read_readvariableop;
7savev2_adam_hidden_layer03_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer03_bias_v_read_readvariableop;
7savev2_adam_hidden_layer04_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer04_bias_v_read_readvariableop;
7savev2_adam_hidden_layer05_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer05_bias_v_read_readvariableop;
7savev2_adam_hidden_layer06_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer06_bias_v_read_readvariableop;
7savev2_adam_hidden_layer07_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer07_bias_v_read_readvariableop9
5savev2_adam_output_layer_kernel_v_read_readvariableop7
3savev2_adam_output_layer_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
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
Const_1�
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
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value�B�9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer01_kernel_read_readvariableop.savev2_hidden_layer01_bias_read_readvariableop0savev2_hidden_layer02_kernel_read_readvariableop.savev2_hidden_layer02_bias_read_readvariableop0savev2_hidden_layer03_kernel_read_readvariableop.savev2_hidden_layer03_bias_read_readvariableop0savev2_hidden_layer04_kernel_read_readvariableop.savev2_hidden_layer04_bias_read_readvariableop0savev2_hidden_layer05_kernel_read_readvariableop.savev2_hidden_layer05_bias_read_readvariableop0savev2_hidden_layer06_kernel_read_readvariableop.savev2_hidden_layer06_bias_read_readvariableop0savev2_hidden_layer07_kernel_read_readvariableop.savev2_hidden_layer07_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_adam_hidden_layer01_kernel_m_read_readvariableop5savev2_adam_hidden_layer01_bias_m_read_readvariableop7savev2_adam_hidden_layer02_kernel_m_read_readvariableop5savev2_adam_hidden_layer02_bias_m_read_readvariableop7savev2_adam_hidden_layer03_kernel_m_read_readvariableop5savev2_adam_hidden_layer03_bias_m_read_readvariableop7savev2_adam_hidden_layer04_kernel_m_read_readvariableop5savev2_adam_hidden_layer04_bias_m_read_readvariableop7savev2_adam_hidden_layer05_kernel_m_read_readvariableop5savev2_adam_hidden_layer05_bias_m_read_readvariableop7savev2_adam_hidden_layer06_kernel_m_read_readvariableop5savev2_adam_hidden_layer06_bias_m_read_readvariableop7savev2_adam_hidden_layer07_kernel_m_read_readvariableop5savev2_adam_hidden_layer07_bias_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop7savev2_adam_hidden_layer01_kernel_v_read_readvariableop5savev2_adam_hidden_layer01_bias_v_read_readvariableop7savev2_adam_hidden_layer02_kernel_v_read_readvariableop5savev2_adam_hidden_layer02_bias_v_read_readvariableop7savev2_adam_hidden_layer03_kernel_v_read_readvariableop5savev2_adam_hidden_layer03_bias_v_read_readvariableop7savev2_adam_hidden_layer04_kernel_v_read_readvariableop5savev2_adam_hidden_layer04_bias_v_read_readvariableop7savev2_adam_hidden_layer05_kernel_v_read_readvariableop5savev2_adam_hidden_layer05_bias_v_read_readvariableop7savev2_adam_hidden_layer06_kernel_v_read_readvariableop5savev2_adam_hidden_layer06_bias_v_read_readvariableop7savev2_adam_hidden_layer07_kernel_v_read_readvariableop5savev2_adam_hidden_layer07_bias_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *G
dtypes=
;29	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:: : : : : : : : :	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�::	�:�:
��:�:
��:�:
��:�:
��:�:
��:�:
��:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:! 

_output_shapes	
:�:&!"
 
_output_shapes
:
��:!"

_output_shapes	
:�:&#"
 
_output_shapes
:
��:!$

_output_shapes	
:�:&%"
 
_output_shapes
:
��:!&

_output_shapes	
:�:%'!

_output_shapes
:	�: (

_output_shapes
::%)!

_output_shapes
:	�:!*

_output_shapes	
:�:&+"
 
_output_shapes
:
��:!,

_output_shapes	
:�:&-"
 
_output_shapes
:
��:!.

_output_shapes	
:�:&/"
 
_output_shapes
:
��:!0

_output_shapes	
:�:&1"
 
_output_shapes
:
��:!2

_output_shapes	
:�:&3"
 
_output_shapes
:
��:!4

_output_shapes	
:�:&5"
 
_output_shapes
:
��:!6

_output_shapes	
:�:%7!

_output_shapes
:	�: 8

_output_shapes
::9

_output_shapes
: 
�
�
/__inference_hidden_layer04_layer_call_fn_105265

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_1044222
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_104599

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_105209

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_1/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_1/Reluv
IdentityIdentityre_lu_1/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
H__inference_output_layer_layer_call_and_return_conditional_losses_105383

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�7
�
F__inference_sequential_layer_call_and_return_conditional_losses_104504

inputs(
hidden_layer01_104365:	�$
hidden_layer01_104367:	�)
hidden_layer02_104382:
��$
hidden_layer02_104384:	�)
hidden_layer03_104406:
��$
hidden_layer03_104408:	�)
hidden_layer04_104423:
��$
hidden_layer04_104425:	�)
hidden_layer05_104447:
��$
hidden_layer05_104449:	�)
hidden_layer06_104464:
��$
hidden_layer06_104466:	�)
hidden_layer07_104481:
��$
hidden_layer07_104483:	�&
output_layer_104498:	�!
output_layer_104500:
identity��&hidden_layer01/StatefulPartitionedCall�&hidden_layer02/StatefulPartitionedCall�&hidden_layer03/StatefulPartitionedCall�&hidden_layer04/StatefulPartitionedCall�&hidden_layer05/StatefulPartitionedCall�&hidden_layer06/StatefulPartitionedCall�&hidden_layer07/StatefulPartitionedCall�$output_layer/StatefulPartitionedCall�
&hidden_layer01/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer01_104365hidden_layer01_104367*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_1043642(
&hidden_layer01/StatefulPartitionedCall�
&hidden_layer02/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer01/StatefulPartitionedCall:output:0hidden_layer02_104382hidden_layer02_104384*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_1043812(
&hidden_layer02/StatefulPartitionedCall�
dropout/PartitionedCallPartitionedCall/hidden_layer02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1043922
dropout/PartitionedCall�
&hidden_layer03/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_layer03_104406hidden_layer03_104408*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_1044052(
&hidden_layer03/StatefulPartitionedCall�
&hidden_layer04/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer03/StatefulPartitionedCall:output:0hidden_layer04_104423hidden_layer04_104425*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_1044222(
&hidden_layer04/StatefulPartitionedCall�
dropout_1/PartitionedCallPartitionedCall/hidden_layer04/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1044332
dropout_1/PartitionedCall�
&hidden_layer05/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0hidden_layer05_104447hidden_layer05_104449*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_1044462(
&hidden_layer05/StatefulPartitionedCall�
&hidden_layer06/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer05/StatefulPartitionedCall:output:0hidden_layer06_104464hidden_layer06_104466*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_1044632(
&hidden_layer06/StatefulPartitionedCall�
&hidden_layer07/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer06/StatefulPartitionedCall:output:0hidden_layer07_104481hidden_layer07_104483*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_1044802(
&hidden_layer07/StatefulPartitionedCall�
$output_layer/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer07/StatefulPartitionedCall:output:0output_layer_104498output_layer_104500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_1044972&
$output_layer/StatefulPartitionedCall�
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp'^hidden_layer01/StatefulPartitionedCall'^hidden_layer02/StatefulPartitionedCall'^hidden_layer03/StatefulPartitionedCall'^hidden_layer04/StatefulPartitionedCall'^hidden_layer05/StatefulPartitionedCall'^hidden_layer06/StatefulPartitionedCall'^hidden_layer07/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2P
&hidden_layer01/StatefulPartitionedCall&hidden_layer01/StatefulPartitionedCall2P
&hidden_layer02/StatefulPartitionedCall&hidden_layer02/StatefulPartitionedCall2P
&hidden_layer03/StatefulPartitionedCall&hidden_layer03/StatefulPartitionedCall2P
&hidden_layer04/StatefulPartitionedCall&hidden_layer04/StatefulPartitionedCall2P
&hidden_layer05/StatefulPartitionedCall&hidden_layer05/StatefulPartitionedCall2P
&hidden_layer06/StatefulPartitionedCall&hidden_layer06/StatefulPartitionedCall2P
&hidden_layer07/StatefulPartitionedCall&hidden_layer07/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_104364

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdde

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2

re_lu/Relut
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_104463

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_5/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_5/Reluv
IdentityIdentityre_lu_5/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_104957
input_layer
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_1043462
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_104446

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_4/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_4/Reluv
IdentityIdentityre_lu_4/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_hidden_layer05_layer_call_fn_105312

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_1044462
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
C__inference_dropout_layer_call_and_return_conditional_losses_104642

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_105189

inputs1
matmul_readvariableop_resource:	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdde

re_lu/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2

re_lu/Relut
IdentityIdentityre_lu/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_sequential_layer_call_fn_104994

inputs
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1045042
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
/__inference_hidden_layer06_layer_call_fn_105332

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_1044632
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�[
�
F__inference_sequential_layer_call_and_return_conditional_losses_105093

inputs@
-hidden_layer01_matmul_readvariableop_resource:	�=
.hidden_layer01_biasadd_readvariableop_resource:	�A
-hidden_layer02_matmul_readvariableop_resource:
��=
.hidden_layer02_biasadd_readvariableop_resource:	�A
-hidden_layer03_matmul_readvariableop_resource:
��=
.hidden_layer03_biasadd_readvariableop_resource:	�A
-hidden_layer04_matmul_readvariableop_resource:
��=
.hidden_layer04_biasadd_readvariableop_resource:	�A
-hidden_layer05_matmul_readvariableop_resource:
��=
.hidden_layer05_biasadd_readvariableop_resource:	�A
-hidden_layer06_matmul_readvariableop_resource:
��=
.hidden_layer06_biasadd_readvariableop_resource:	�A
-hidden_layer07_matmul_readvariableop_resource:
��=
.hidden_layer07_biasadd_readvariableop_resource:	�>
+output_layer_matmul_readvariableop_resource:	�:
,output_layer_biasadd_readvariableop_resource:
identity��%hidden_layer01/BiasAdd/ReadVariableOp�$hidden_layer01/MatMul/ReadVariableOp�%hidden_layer02/BiasAdd/ReadVariableOp�$hidden_layer02/MatMul/ReadVariableOp�%hidden_layer03/BiasAdd/ReadVariableOp�$hidden_layer03/MatMul/ReadVariableOp�%hidden_layer04/BiasAdd/ReadVariableOp�$hidden_layer04/MatMul/ReadVariableOp�%hidden_layer05/BiasAdd/ReadVariableOp�$hidden_layer05/MatMul/ReadVariableOp�%hidden_layer06/BiasAdd/ReadVariableOp�$hidden_layer06/MatMul/ReadVariableOp�%hidden_layer07/BiasAdd/ReadVariableOp�$hidden_layer07/MatMul/ReadVariableOp�#output_layer/BiasAdd/ReadVariableOp�"output_layer/MatMul/ReadVariableOp�
$hidden_layer01/MatMul/ReadVariableOpReadVariableOp-hidden_layer01_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02&
$hidden_layer01/MatMul/ReadVariableOp�
hidden_layer01/MatMulMatMulinputs,hidden_layer01/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer01/MatMul�
%hidden_layer01/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer01_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer01/BiasAdd/ReadVariableOp�
hidden_layer01/BiasAddBiasAddhidden_layer01/MatMul:product:0-hidden_layer01/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer01/BiasAdd�
hidden_layer01/re_lu/ReluReluhidden_layer01/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer01/re_lu/Relu�
$hidden_layer02/MatMul/ReadVariableOpReadVariableOp-hidden_layer02_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer02/MatMul/ReadVariableOp�
hidden_layer02/MatMulMatMul'hidden_layer01/re_lu/Relu:activations:0,hidden_layer02/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer02/MatMul�
%hidden_layer02/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer02_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer02/BiasAdd/ReadVariableOp�
hidden_layer02/BiasAddBiasAddhidden_layer02/MatMul:product:0-hidden_layer02/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer02/BiasAdd�
hidden_layer02/re_lu_1/ReluReluhidden_layer02/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer02/re_lu_1/Relu�
dropout/IdentityIdentity)hidden_layer02/re_lu_1/Relu:activations:0*
T0*(
_output_shapes
:����������2
dropout/Identity�
$hidden_layer03/MatMul/ReadVariableOpReadVariableOp-hidden_layer03_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer03/MatMul/ReadVariableOp�
hidden_layer03/MatMulMatMuldropout/Identity:output:0,hidden_layer03/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer03/MatMul�
%hidden_layer03/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer03_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer03/BiasAdd/ReadVariableOp�
hidden_layer03/BiasAddBiasAddhidden_layer03/MatMul:product:0-hidden_layer03/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer03/BiasAdd�
hidden_layer03/re_lu_2/ReluReluhidden_layer03/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer03/re_lu_2/Relu�
$hidden_layer04/MatMul/ReadVariableOpReadVariableOp-hidden_layer04_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer04/MatMul/ReadVariableOp�
hidden_layer04/MatMulMatMul)hidden_layer03/re_lu_2/Relu:activations:0,hidden_layer04/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer04/MatMul�
%hidden_layer04/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer04_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer04/BiasAdd/ReadVariableOp�
hidden_layer04/BiasAddBiasAddhidden_layer04/MatMul:product:0-hidden_layer04/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer04/BiasAdd�
hidden_layer04/re_lu_3/ReluReluhidden_layer04/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer04/re_lu_3/Relu�
dropout_1/IdentityIdentity)hidden_layer04/re_lu_3/Relu:activations:0*
T0*(
_output_shapes
:����������2
dropout_1/Identity�
$hidden_layer05/MatMul/ReadVariableOpReadVariableOp-hidden_layer05_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer05/MatMul/ReadVariableOp�
hidden_layer05/MatMulMatMuldropout_1/Identity:output:0,hidden_layer05/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer05/MatMul�
%hidden_layer05/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer05_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer05/BiasAdd/ReadVariableOp�
hidden_layer05/BiasAddBiasAddhidden_layer05/MatMul:product:0-hidden_layer05/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer05/BiasAdd�
hidden_layer05/re_lu_4/ReluReluhidden_layer05/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer05/re_lu_4/Relu�
$hidden_layer06/MatMul/ReadVariableOpReadVariableOp-hidden_layer06_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer06/MatMul/ReadVariableOp�
hidden_layer06/MatMulMatMul)hidden_layer05/re_lu_4/Relu:activations:0,hidden_layer06/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer06/MatMul�
%hidden_layer06/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer06_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer06/BiasAdd/ReadVariableOp�
hidden_layer06/BiasAddBiasAddhidden_layer06/MatMul:product:0-hidden_layer06/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer06/BiasAdd�
hidden_layer06/re_lu_5/ReluReluhidden_layer06/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer06/re_lu_5/Relu�
$hidden_layer07/MatMul/ReadVariableOpReadVariableOp-hidden_layer07_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer07/MatMul/ReadVariableOp�
hidden_layer07/MatMulMatMul)hidden_layer06/re_lu_5/Relu:activations:0,hidden_layer07/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer07/MatMul�
%hidden_layer07/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer07_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer07/BiasAdd/ReadVariableOp�
hidden_layer07/BiasAddBiasAddhidden_layer07/MatMul:product:0-hidden_layer07/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer07/BiasAdd�
hidden_layer07/re_lu_6/ReluReluhidden_layer07/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer07/re_lu_6/Relu�
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"output_layer/MatMul/ReadVariableOp�
output_layer/MatMulMatMul)hidden_layer07/re_lu_6/Relu:activations:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
output_layer/MatMul�
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#output_layer/BiasAdd/ReadVariableOp�
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
output_layer/BiasAdd�
output_layer/SoftmaxSoftmaxoutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
output_layer/Softmaxy
IdentityIdentityoutput_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp&^hidden_layer01/BiasAdd/ReadVariableOp%^hidden_layer01/MatMul/ReadVariableOp&^hidden_layer02/BiasAdd/ReadVariableOp%^hidden_layer02/MatMul/ReadVariableOp&^hidden_layer03/BiasAdd/ReadVariableOp%^hidden_layer03/MatMul/ReadVariableOp&^hidden_layer04/BiasAdd/ReadVariableOp%^hidden_layer04/MatMul/ReadVariableOp&^hidden_layer05/BiasAdd/ReadVariableOp%^hidden_layer05/MatMul/ReadVariableOp&^hidden_layer06/BiasAdd/ReadVariableOp%^hidden_layer06/MatMul/ReadVariableOp&^hidden_layer07/BiasAdd/ReadVariableOp%^hidden_layer07/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2N
%hidden_layer01/BiasAdd/ReadVariableOp%hidden_layer01/BiasAdd/ReadVariableOp2L
$hidden_layer01/MatMul/ReadVariableOp$hidden_layer01/MatMul/ReadVariableOp2N
%hidden_layer02/BiasAdd/ReadVariableOp%hidden_layer02/BiasAdd/ReadVariableOp2L
$hidden_layer02/MatMul/ReadVariableOp$hidden_layer02/MatMul/ReadVariableOp2N
%hidden_layer03/BiasAdd/ReadVariableOp%hidden_layer03/BiasAdd/ReadVariableOp2L
$hidden_layer03/MatMul/ReadVariableOp$hidden_layer03/MatMul/ReadVariableOp2N
%hidden_layer04/BiasAdd/ReadVariableOp%hidden_layer04/BiasAdd/ReadVariableOp2L
$hidden_layer04/MatMul/ReadVariableOp$hidden_layer04/MatMul/ReadVariableOp2N
%hidden_layer05/BiasAdd/ReadVariableOp%hidden_layer05/BiasAdd/ReadVariableOp2L
$hidden_layer05/MatMul/ReadVariableOp$hidden_layer05/MatMul/ReadVariableOp2N
%hidden_layer06/BiasAdd/ReadVariableOp%hidden_layer06/BiasAdd/ReadVariableOp2L
$hidden_layer06/MatMul/ReadVariableOp$hidden_layer06/MatMul/ReadVariableOp2N
%hidden_layer07/BiasAdd/ReadVariableOp%hidden_layer07/BiasAdd/ReadVariableOp2L
$hidden_layer07/MatMul/ReadVariableOp$hidden_layer07/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�$
"__inference__traced_restore_105752
file_prefix9
&assignvariableop_hidden_layer01_kernel:	�5
&assignvariableop_1_hidden_layer01_bias:	�<
(assignvariableop_2_hidden_layer02_kernel:
��5
&assignvariableop_3_hidden_layer02_bias:	�<
(assignvariableop_4_hidden_layer03_kernel:
��5
&assignvariableop_5_hidden_layer03_bias:	�<
(assignvariableop_6_hidden_layer04_kernel:
��5
&assignvariableop_7_hidden_layer04_bias:	�<
(assignvariableop_8_hidden_layer05_kernel:
��5
&assignvariableop_9_hidden_layer05_bias:	�=
)assignvariableop_10_hidden_layer06_kernel:
��6
'assignvariableop_11_hidden_layer06_bias:	�=
)assignvariableop_12_hidden_layer07_kernel:
��6
'assignvariableop_13_hidden_layer07_bias:	�:
'assignvariableop_14_output_layer_kernel:	�3
%assignvariableop_15_output_layer_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: #
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: C
0assignvariableop_24_adam_hidden_layer01_kernel_m:	�=
.assignvariableop_25_adam_hidden_layer01_bias_m:	�D
0assignvariableop_26_adam_hidden_layer02_kernel_m:
��=
.assignvariableop_27_adam_hidden_layer02_bias_m:	�D
0assignvariableop_28_adam_hidden_layer03_kernel_m:
��=
.assignvariableop_29_adam_hidden_layer03_bias_m:	�D
0assignvariableop_30_adam_hidden_layer04_kernel_m:
��=
.assignvariableop_31_adam_hidden_layer04_bias_m:	�D
0assignvariableop_32_adam_hidden_layer05_kernel_m:
��=
.assignvariableop_33_adam_hidden_layer05_bias_m:	�D
0assignvariableop_34_adam_hidden_layer06_kernel_m:
��=
.assignvariableop_35_adam_hidden_layer06_bias_m:	�D
0assignvariableop_36_adam_hidden_layer07_kernel_m:
��=
.assignvariableop_37_adam_hidden_layer07_bias_m:	�A
.assignvariableop_38_adam_output_layer_kernel_m:	�:
,assignvariableop_39_adam_output_layer_bias_m:C
0assignvariableop_40_adam_hidden_layer01_kernel_v:	�=
.assignvariableop_41_adam_hidden_layer01_bias_v:	�D
0assignvariableop_42_adam_hidden_layer02_kernel_v:
��=
.assignvariableop_43_adam_hidden_layer02_bias_v:	�D
0assignvariableop_44_adam_hidden_layer03_kernel_v:
��=
.assignvariableop_45_adam_hidden_layer03_bias_v:	�D
0assignvariableop_46_adam_hidden_layer04_kernel_v:
��=
.assignvariableop_47_adam_hidden_layer04_bias_v:	�D
0assignvariableop_48_adam_hidden_layer05_kernel_v:
��=
.assignvariableop_49_adam_hidden_layer05_bias_v:	�D
0assignvariableop_50_adam_hidden_layer06_kernel_v:
��=
.assignvariableop_51_adam_hidden_layer06_bias_v:	�D
0assignvariableop_52_adam_hidden_layer07_kernel_v:
��=
.assignvariableop_53_adam_hidden_layer07_bias_v:	�A
.assignvariableop_54_adam_output_layer_kernel_v:	�:
,assignvariableop_55_adam_output_layer_bias_v:
identity_57��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9� 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value�B�9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::*G
dtypes=
;29	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer01_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer01_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp(assignvariableop_2_hidden_layer02_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp&assignvariableop_3_hidden_layer02_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp(assignvariableop_4_hidden_layer03_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp&assignvariableop_5_hidden_layer03_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp(assignvariableop_6_hidden_layer04_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp&assignvariableop_7_hidden_layer04_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp(assignvariableop_8_hidden_layer05_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp&assignvariableop_9_hidden_layer05_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp)assignvariableop_10_hidden_layer06_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp'assignvariableop_11_hidden_layer06_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp)assignvariableop_12_hidden_layer07_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp'assignvariableop_13_hidden_layer07_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp'assignvariableop_14_output_layer_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp%assignvariableop_15_output_layer_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_hidden_layer01_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp.assignvariableop_25_adam_hidden_layer01_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_hidden_layer02_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_hidden_layer02_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp0assignvariableop_28_adam_hidden_layer03_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_hidden_layer03_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_hidden_layer04_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_hidden_layer04_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp0assignvariableop_32_adam_hidden_layer05_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp.assignvariableop_33_adam_hidden_layer05_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp0assignvariableop_34_adam_hidden_layer06_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp.assignvariableop_35_adam_hidden_layer06_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp0assignvariableop_36_adam_hidden_layer07_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp.assignvariableop_37_adam_hidden_layer07_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp.assignvariableop_38_adam_output_layer_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp,assignvariableop_39_adam_output_layer_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp0assignvariableop_40_adam_hidden_layer01_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp.assignvariableop_41_adam_hidden_layer01_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp0assignvariableop_42_adam_hidden_layer02_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp.assignvariableop_43_adam_hidden_layer02_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp0assignvariableop_44_adam_hidden_layer03_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp.assignvariableop_45_adam_hidden_layer03_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp0assignvariableop_46_adam_hidden_layer04_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp.assignvariableop_47_adam_hidden_layer04_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp0assignvariableop_48_adam_hidden_layer05_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49�
AssignVariableOp_49AssignVariableOp.assignvariableop_49_adam_hidden_layer05_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50�
AssignVariableOp_50AssignVariableOp0assignvariableop_50_adam_hidden_layer06_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51�
AssignVariableOp_51AssignVariableOp.assignvariableop_51_adam_hidden_layer06_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52�
AssignVariableOp_52AssignVariableOp0assignvariableop_52_adam_hidden_layer07_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53�
AssignVariableOp_53AssignVariableOp.assignvariableop_53_adam_hidden_layer07_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54�
AssignVariableOp_54AssignVariableOp.assignvariableop_54_adam_output_layer_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55�
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_output_layer_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_559
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_56Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_56f
Identity_57IdentityIdentity_56:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_57�

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_57Identity_57:output:0*�
_input_shapest
r: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
H__inference_output_layer_layer_call_and_return_conditional_losses_104497

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_104422

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_3/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_3/Reluv
IdentityIdentityre_lu_3/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_104392

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:����������2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_hidden_layer03_layer_call_fn_105245

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_1044052
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_104405

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_2/Reluv
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_105256

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_2/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_2/Reluv
IdentityIdentityre_lu_2/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
*__inference_dropout_1_layer_call_fn_105286

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1045992
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�m
�
!__inference__wrapped_model_104346
input_layerK
8sequential_hidden_layer01_matmul_readvariableop_resource:	�H
9sequential_hidden_layer01_biasadd_readvariableop_resource:	�L
8sequential_hidden_layer02_matmul_readvariableop_resource:
��H
9sequential_hidden_layer02_biasadd_readvariableop_resource:	�L
8sequential_hidden_layer03_matmul_readvariableop_resource:
��H
9sequential_hidden_layer03_biasadd_readvariableop_resource:	�L
8sequential_hidden_layer04_matmul_readvariableop_resource:
��H
9sequential_hidden_layer04_biasadd_readvariableop_resource:	�L
8sequential_hidden_layer05_matmul_readvariableop_resource:
��H
9sequential_hidden_layer05_biasadd_readvariableop_resource:	�L
8sequential_hidden_layer06_matmul_readvariableop_resource:
��H
9sequential_hidden_layer06_biasadd_readvariableop_resource:	�L
8sequential_hidden_layer07_matmul_readvariableop_resource:
��H
9sequential_hidden_layer07_biasadd_readvariableop_resource:	�I
6sequential_output_layer_matmul_readvariableop_resource:	�E
7sequential_output_layer_biasadd_readvariableop_resource:
identity��0sequential/hidden_layer01/BiasAdd/ReadVariableOp�/sequential/hidden_layer01/MatMul/ReadVariableOp�0sequential/hidden_layer02/BiasAdd/ReadVariableOp�/sequential/hidden_layer02/MatMul/ReadVariableOp�0sequential/hidden_layer03/BiasAdd/ReadVariableOp�/sequential/hidden_layer03/MatMul/ReadVariableOp�0sequential/hidden_layer04/BiasAdd/ReadVariableOp�/sequential/hidden_layer04/MatMul/ReadVariableOp�0sequential/hidden_layer05/BiasAdd/ReadVariableOp�/sequential/hidden_layer05/MatMul/ReadVariableOp�0sequential/hidden_layer06/BiasAdd/ReadVariableOp�/sequential/hidden_layer06/MatMul/ReadVariableOp�0sequential/hidden_layer07/BiasAdd/ReadVariableOp�/sequential/hidden_layer07/MatMul/ReadVariableOp�.sequential/output_layer/BiasAdd/ReadVariableOp�-sequential/output_layer/MatMul/ReadVariableOp�
/sequential/hidden_layer01/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer01_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype021
/sequential/hidden_layer01/MatMul/ReadVariableOp�
 sequential/hidden_layer01/MatMulMatMulinput_layer7sequential/hidden_layer01/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 sequential/hidden_layer01/MatMul�
0sequential/hidden_layer01/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer01_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential/hidden_layer01/BiasAdd/ReadVariableOp�
!sequential/hidden_layer01/BiasAddBiasAdd*sequential/hidden_layer01/MatMul:product:08sequential/hidden_layer01/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/hidden_layer01/BiasAdd�
$sequential/hidden_layer01/re_lu/ReluRelu*sequential/hidden_layer01/BiasAdd:output:0*
T0*(
_output_shapes
:����������2&
$sequential/hidden_layer01/re_lu/Relu�
/sequential/hidden_layer02/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer02_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype021
/sequential/hidden_layer02/MatMul/ReadVariableOp�
 sequential/hidden_layer02/MatMulMatMul2sequential/hidden_layer01/re_lu/Relu:activations:07sequential/hidden_layer02/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 sequential/hidden_layer02/MatMul�
0sequential/hidden_layer02/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer02_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential/hidden_layer02/BiasAdd/ReadVariableOp�
!sequential/hidden_layer02/BiasAddBiasAdd*sequential/hidden_layer02/MatMul:product:08sequential/hidden_layer02/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/hidden_layer02/BiasAdd�
&sequential/hidden_layer02/re_lu_1/ReluRelu*sequential/hidden_layer02/BiasAdd:output:0*
T0*(
_output_shapes
:����������2(
&sequential/hidden_layer02/re_lu_1/Relu�
sequential/dropout/IdentityIdentity4sequential/hidden_layer02/re_lu_1/Relu:activations:0*
T0*(
_output_shapes
:����������2
sequential/dropout/Identity�
/sequential/hidden_layer03/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer03_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype021
/sequential/hidden_layer03/MatMul/ReadVariableOp�
 sequential/hidden_layer03/MatMulMatMul$sequential/dropout/Identity:output:07sequential/hidden_layer03/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 sequential/hidden_layer03/MatMul�
0sequential/hidden_layer03/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer03_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential/hidden_layer03/BiasAdd/ReadVariableOp�
!sequential/hidden_layer03/BiasAddBiasAdd*sequential/hidden_layer03/MatMul:product:08sequential/hidden_layer03/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/hidden_layer03/BiasAdd�
&sequential/hidden_layer03/re_lu_2/ReluRelu*sequential/hidden_layer03/BiasAdd:output:0*
T0*(
_output_shapes
:����������2(
&sequential/hidden_layer03/re_lu_2/Relu�
/sequential/hidden_layer04/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer04_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype021
/sequential/hidden_layer04/MatMul/ReadVariableOp�
 sequential/hidden_layer04/MatMulMatMul4sequential/hidden_layer03/re_lu_2/Relu:activations:07sequential/hidden_layer04/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 sequential/hidden_layer04/MatMul�
0sequential/hidden_layer04/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer04_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential/hidden_layer04/BiasAdd/ReadVariableOp�
!sequential/hidden_layer04/BiasAddBiasAdd*sequential/hidden_layer04/MatMul:product:08sequential/hidden_layer04/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/hidden_layer04/BiasAdd�
&sequential/hidden_layer04/re_lu_3/ReluRelu*sequential/hidden_layer04/BiasAdd:output:0*
T0*(
_output_shapes
:����������2(
&sequential/hidden_layer04/re_lu_3/Relu�
sequential/dropout_1/IdentityIdentity4sequential/hidden_layer04/re_lu_3/Relu:activations:0*
T0*(
_output_shapes
:����������2
sequential/dropout_1/Identity�
/sequential/hidden_layer05/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer05_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype021
/sequential/hidden_layer05/MatMul/ReadVariableOp�
 sequential/hidden_layer05/MatMulMatMul&sequential/dropout_1/Identity:output:07sequential/hidden_layer05/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 sequential/hidden_layer05/MatMul�
0sequential/hidden_layer05/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer05_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential/hidden_layer05/BiasAdd/ReadVariableOp�
!sequential/hidden_layer05/BiasAddBiasAdd*sequential/hidden_layer05/MatMul:product:08sequential/hidden_layer05/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/hidden_layer05/BiasAdd�
&sequential/hidden_layer05/re_lu_4/ReluRelu*sequential/hidden_layer05/BiasAdd:output:0*
T0*(
_output_shapes
:����������2(
&sequential/hidden_layer05/re_lu_4/Relu�
/sequential/hidden_layer06/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer06_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype021
/sequential/hidden_layer06/MatMul/ReadVariableOp�
 sequential/hidden_layer06/MatMulMatMul4sequential/hidden_layer05/re_lu_4/Relu:activations:07sequential/hidden_layer06/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 sequential/hidden_layer06/MatMul�
0sequential/hidden_layer06/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer06_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential/hidden_layer06/BiasAdd/ReadVariableOp�
!sequential/hidden_layer06/BiasAddBiasAdd*sequential/hidden_layer06/MatMul:product:08sequential/hidden_layer06/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/hidden_layer06/BiasAdd�
&sequential/hidden_layer06/re_lu_5/ReluRelu*sequential/hidden_layer06/BiasAdd:output:0*
T0*(
_output_shapes
:����������2(
&sequential/hidden_layer06/re_lu_5/Relu�
/sequential/hidden_layer07/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer07_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype021
/sequential/hidden_layer07/MatMul/ReadVariableOp�
 sequential/hidden_layer07/MatMulMatMul4sequential/hidden_layer06/re_lu_5/Relu:activations:07sequential/hidden_layer07/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2"
 sequential/hidden_layer07/MatMul�
0sequential/hidden_layer07/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer07_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype022
0sequential/hidden_layer07/BiasAdd/ReadVariableOp�
!sequential/hidden_layer07/BiasAddBiasAdd*sequential/hidden_layer07/MatMul:product:08sequential/hidden_layer07/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2#
!sequential/hidden_layer07/BiasAdd�
&sequential/hidden_layer07/re_lu_6/ReluRelu*sequential/hidden_layer07/BiasAdd:output:0*
T0*(
_output_shapes
:����������2(
&sequential/hidden_layer07/re_lu_6/Relu�
-sequential/output_layer/MatMul/ReadVariableOpReadVariableOp6sequential_output_layer_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02/
-sequential/output_layer/MatMul/ReadVariableOp�
sequential/output_layer/MatMulMatMul4sequential/hidden_layer07/re_lu_6/Relu:activations:05sequential/output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential/output_layer/MatMul�
.sequential/output_layer/BiasAdd/ReadVariableOpReadVariableOp7sequential_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential/output_layer/BiasAdd/ReadVariableOp�
sequential/output_layer/BiasAddBiasAdd(sequential/output_layer/MatMul:product:06sequential/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2!
sequential/output_layer/BiasAdd�
sequential/output_layer/SoftmaxSoftmax(sequential/output_layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������2!
sequential/output_layer/Softmax�
IdentityIdentity)sequential/output_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp1^sequential/hidden_layer01/BiasAdd/ReadVariableOp0^sequential/hidden_layer01/MatMul/ReadVariableOp1^sequential/hidden_layer02/BiasAdd/ReadVariableOp0^sequential/hidden_layer02/MatMul/ReadVariableOp1^sequential/hidden_layer03/BiasAdd/ReadVariableOp0^sequential/hidden_layer03/MatMul/ReadVariableOp1^sequential/hidden_layer04/BiasAdd/ReadVariableOp0^sequential/hidden_layer04/MatMul/ReadVariableOp1^sequential/hidden_layer05/BiasAdd/ReadVariableOp0^sequential/hidden_layer05/MatMul/ReadVariableOp1^sequential/hidden_layer06/BiasAdd/ReadVariableOp0^sequential/hidden_layer06/MatMul/ReadVariableOp1^sequential/hidden_layer07/BiasAdd/ReadVariableOp0^sequential/hidden_layer07/MatMul/ReadVariableOp/^sequential/output_layer/BiasAdd/ReadVariableOp.^sequential/output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2d
0sequential/hidden_layer01/BiasAdd/ReadVariableOp0sequential/hidden_layer01/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer01/MatMul/ReadVariableOp/sequential/hidden_layer01/MatMul/ReadVariableOp2d
0sequential/hidden_layer02/BiasAdd/ReadVariableOp0sequential/hidden_layer02/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer02/MatMul/ReadVariableOp/sequential/hidden_layer02/MatMul/ReadVariableOp2d
0sequential/hidden_layer03/BiasAdd/ReadVariableOp0sequential/hidden_layer03/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer03/MatMul/ReadVariableOp/sequential/hidden_layer03/MatMul/ReadVariableOp2d
0sequential/hidden_layer04/BiasAdd/ReadVariableOp0sequential/hidden_layer04/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer04/MatMul/ReadVariableOp/sequential/hidden_layer04/MatMul/ReadVariableOp2d
0sequential/hidden_layer05/BiasAdd/ReadVariableOp0sequential/hidden_layer05/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer05/MatMul/ReadVariableOp/sequential/hidden_layer05/MatMul/ReadVariableOp2d
0sequential/hidden_layer06/BiasAdd/ReadVariableOp0sequential/hidden_layer06/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer06/MatMul/ReadVariableOp/sequential/hidden_layer06/MatMul/ReadVariableOp2d
0sequential/hidden_layer07/BiasAdd/ReadVariableOp0sequential/hidden_layer07/BiasAdd/ReadVariableOp2b
/sequential/hidden_layer07/MatMul/ReadVariableOp/sequential/hidden_layer07/MatMul/ReadVariableOp2`
.sequential/output_layer/BiasAdd/ReadVariableOp.sequential/output_layer/BiasAdd/ReadVariableOp2^
-sequential/output_layer/MatMul/ReadVariableOp-sequential/output_layer/MatMul/ReadVariableOp:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�:
�
F__inference_sequential_layer_call_and_return_conditional_losses_104750

inputs(
hidden_layer01_104707:	�$
hidden_layer01_104709:	�)
hidden_layer02_104712:
��$
hidden_layer02_104714:	�)
hidden_layer03_104718:
��$
hidden_layer03_104720:	�)
hidden_layer04_104723:
��$
hidden_layer04_104725:	�)
hidden_layer05_104729:
��$
hidden_layer05_104731:	�)
hidden_layer06_104734:
��$
hidden_layer06_104736:	�)
hidden_layer07_104739:
��$
hidden_layer07_104741:	�&
output_layer_104744:	�!
output_layer_104746:
identity��dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�&hidden_layer01/StatefulPartitionedCall�&hidden_layer02/StatefulPartitionedCall�&hidden_layer03/StatefulPartitionedCall�&hidden_layer04/StatefulPartitionedCall�&hidden_layer05/StatefulPartitionedCall�&hidden_layer06/StatefulPartitionedCall�&hidden_layer07/StatefulPartitionedCall�$output_layer/StatefulPartitionedCall�
&hidden_layer01/StatefulPartitionedCallStatefulPartitionedCallinputshidden_layer01_104707hidden_layer01_104709*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_1043642(
&hidden_layer01/StatefulPartitionedCall�
&hidden_layer02/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer01/StatefulPartitionedCall:output:0hidden_layer02_104712hidden_layer02_104714*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_1043812(
&hidden_layer02/StatefulPartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1046422!
dropout/StatefulPartitionedCall�
&hidden_layer03/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_layer03_104718hidden_layer03_104720*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_1044052(
&hidden_layer03/StatefulPartitionedCall�
&hidden_layer04/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer03/StatefulPartitionedCall:output:0hidden_layer04_104723hidden_layer04_104725*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_1044222(
&hidden_layer04/StatefulPartitionedCall�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer04/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1045992#
!dropout_1/StatefulPartitionedCall�
&hidden_layer05/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0hidden_layer05_104729hidden_layer05_104731*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_1044462(
&hidden_layer05/StatefulPartitionedCall�
&hidden_layer06/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer05/StatefulPartitionedCall:output:0hidden_layer06_104734hidden_layer06_104736*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_1044632(
&hidden_layer06/StatefulPartitionedCall�
&hidden_layer07/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer06/StatefulPartitionedCall:output:0hidden_layer07_104739hidden_layer07_104741*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_1044802(
&hidden_layer07/StatefulPartitionedCall�
$output_layer/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer07/StatefulPartitionedCall:output:0output_layer_104744output_layer_104746*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_1044972&
$output_layer/StatefulPartitionedCall�
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall'^hidden_layer01/StatefulPartitionedCall'^hidden_layer02/StatefulPartitionedCall'^hidden_layer03/StatefulPartitionedCall'^hidden_layer04/StatefulPartitionedCall'^hidden_layer05/StatefulPartitionedCall'^hidden_layer06/StatefulPartitionedCall'^hidden_layer07/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2P
&hidden_layer01/StatefulPartitionedCall&hidden_layer01/StatefulPartitionedCall2P
&hidden_layer02/StatefulPartitionedCall&hidden_layer02/StatefulPartitionedCall2P
&hidden_layer03/StatefulPartitionedCall&hidden_layer03/StatefulPartitionedCall2P
&hidden_layer04/StatefulPartitionedCall&hidden_layer04/StatefulPartitionedCall2P
&hidden_layer05/StatefulPartitionedCall&hidden_layer05/StatefulPartitionedCall2P
&hidden_layer06/StatefulPartitionedCall&hidden_layer06/StatefulPartitionedCall2P
&hidden_layer07/StatefulPartitionedCall&hidden_layer07/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�:
�
F__inference_sequential_layer_call_and_return_conditional_losses_104914
input_layer(
hidden_layer01_104871:	�$
hidden_layer01_104873:	�)
hidden_layer02_104876:
��$
hidden_layer02_104878:	�)
hidden_layer03_104882:
��$
hidden_layer03_104884:	�)
hidden_layer04_104887:
��$
hidden_layer04_104889:	�)
hidden_layer05_104893:
��$
hidden_layer05_104895:	�)
hidden_layer06_104898:
��$
hidden_layer06_104900:	�)
hidden_layer07_104903:
��$
hidden_layer07_104905:	�&
output_layer_104908:	�!
output_layer_104910:
identity��dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�&hidden_layer01/StatefulPartitionedCall�&hidden_layer02/StatefulPartitionedCall�&hidden_layer03/StatefulPartitionedCall�&hidden_layer04/StatefulPartitionedCall�&hidden_layer05/StatefulPartitionedCall�&hidden_layer06/StatefulPartitionedCall�&hidden_layer07/StatefulPartitionedCall�$output_layer/StatefulPartitionedCall�
&hidden_layer01/StatefulPartitionedCallStatefulPartitionedCallinput_layerhidden_layer01_104871hidden_layer01_104873*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_1043642(
&hidden_layer01/StatefulPartitionedCall�
&hidden_layer02/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer01/StatefulPartitionedCall:output:0hidden_layer02_104876hidden_layer02_104878*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_1043812(
&hidden_layer02/StatefulPartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1046422!
dropout/StatefulPartitionedCall�
&hidden_layer03/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0hidden_layer03_104882hidden_layer03_104884*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_1044052(
&hidden_layer03/StatefulPartitionedCall�
&hidden_layer04/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer03/StatefulPartitionedCall:output:0hidden_layer04_104887hidden_layer04_104889*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_1044222(
&hidden_layer04/StatefulPartitionedCall�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer04/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1045992#
!dropout_1/StatefulPartitionedCall�
&hidden_layer05/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0hidden_layer05_104893hidden_layer05_104895*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_1044462(
&hidden_layer05/StatefulPartitionedCall�
&hidden_layer06/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer05/StatefulPartitionedCall:output:0hidden_layer06_104898hidden_layer06_104900*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_1044632(
&hidden_layer06/StatefulPartitionedCall�
&hidden_layer07/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer06/StatefulPartitionedCall:output:0hidden_layer07_104903hidden_layer07_104905*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_1044802(
&hidden_layer07/StatefulPartitionedCall�
$output_layer/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer07/StatefulPartitionedCall:output:0output_layer_104908output_layer_104910*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_1044972&
$output_layer/StatefulPartitionedCall�
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall'^hidden_layer01/StatefulPartitionedCall'^hidden_layer02/StatefulPartitionedCall'^hidden_layer03/StatefulPartitionedCall'^hidden_layer04/StatefulPartitionedCall'^hidden_layer05/StatefulPartitionedCall'^hidden_layer06/StatefulPartitionedCall'^hidden_layer07/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2P
&hidden_layer01/StatefulPartitionedCall&hidden_layer01/StatefulPartitionedCall2P
&hidden_layer02/StatefulPartitionedCall&hidden_layer02/StatefulPartitionedCall2P
&hidden_layer03/StatefulPartitionedCall&hidden_layer03/StatefulPartitionedCall2P
&hidden_layer04/StatefulPartitionedCall&hidden_layer04/StatefulPartitionedCall2P
&hidden_layer05/StatefulPartitionedCall&hidden_layer05/StatefulPartitionedCall2P
&hidden_layer06/StatefulPartitionedCall&hidden_layer06/StatefulPartitionedCall2P
&hidden_layer07/StatefulPartitionedCall&hidden_layer07/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�m
�
F__inference_sequential_layer_call_and_return_conditional_losses_105169

inputs@
-hidden_layer01_matmul_readvariableop_resource:	�=
.hidden_layer01_biasadd_readvariableop_resource:	�A
-hidden_layer02_matmul_readvariableop_resource:
��=
.hidden_layer02_biasadd_readvariableop_resource:	�A
-hidden_layer03_matmul_readvariableop_resource:
��=
.hidden_layer03_biasadd_readvariableop_resource:	�A
-hidden_layer04_matmul_readvariableop_resource:
��=
.hidden_layer04_biasadd_readvariableop_resource:	�A
-hidden_layer05_matmul_readvariableop_resource:
��=
.hidden_layer05_biasadd_readvariableop_resource:	�A
-hidden_layer06_matmul_readvariableop_resource:
��=
.hidden_layer06_biasadd_readvariableop_resource:	�A
-hidden_layer07_matmul_readvariableop_resource:
��=
.hidden_layer07_biasadd_readvariableop_resource:	�>
+output_layer_matmul_readvariableop_resource:	�:
,output_layer_biasadd_readvariableop_resource:
identity��%hidden_layer01/BiasAdd/ReadVariableOp�$hidden_layer01/MatMul/ReadVariableOp�%hidden_layer02/BiasAdd/ReadVariableOp�$hidden_layer02/MatMul/ReadVariableOp�%hidden_layer03/BiasAdd/ReadVariableOp�$hidden_layer03/MatMul/ReadVariableOp�%hidden_layer04/BiasAdd/ReadVariableOp�$hidden_layer04/MatMul/ReadVariableOp�%hidden_layer05/BiasAdd/ReadVariableOp�$hidden_layer05/MatMul/ReadVariableOp�%hidden_layer06/BiasAdd/ReadVariableOp�$hidden_layer06/MatMul/ReadVariableOp�%hidden_layer07/BiasAdd/ReadVariableOp�$hidden_layer07/MatMul/ReadVariableOp�#output_layer/BiasAdd/ReadVariableOp�"output_layer/MatMul/ReadVariableOp�
$hidden_layer01/MatMul/ReadVariableOpReadVariableOp-hidden_layer01_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02&
$hidden_layer01/MatMul/ReadVariableOp�
hidden_layer01/MatMulMatMulinputs,hidden_layer01/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer01/MatMul�
%hidden_layer01/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer01_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer01/BiasAdd/ReadVariableOp�
hidden_layer01/BiasAddBiasAddhidden_layer01/MatMul:product:0-hidden_layer01/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer01/BiasAdd�
hidden_layer01/re_lu/ReluReluhidden_layer01/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer01/re_lu/Relu�
$hidden_layer02/MatMul/ReadVariableOpReadVariableOp-hidden_layer02_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer02/MatMul/ReadVariableOp�
hidden_layer02/MatMulMatMul'hidden_layer01/re_lu/Relu:activations:0,hidden_layer02/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer02/MatMul�
%hidden_layer02/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer02_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer02/BiasAdd/ReadVariableOp�
hidden_layer02/BiasAddBiasAddhidden_layer02/MatMul:product:0-hidden_layer02/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer02/BiasAdd�
hidden_layer02/re_lu_1/ReluReluhidden_layer02/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer02/re_lu_1/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout/dropout/Const�
dropout/dropout/MulMul)hidden_layer02/re_lu_1/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout/dropout/Mul�
dropout/dropout/ShapeShape)hidden_layer02/re_lu_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout/dropout/Mul_1�
$hidden_layer03/MatMul/ReadVariableOpReadVariableOp-hidden_layer03_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer03/MatMul/ReadVariableOp�
hidden_layer03/MatMulMatMuldropout/dropout/Mul_1:z:0,hidden_layer03/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer03/MatMul�
%hidden_layer03/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer03_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer03/BiasAdd/ReadVariableOp�
hidden_layer03/BiasAddBiasAddhidden_layer03/MatMul:product:0-hidden_layer03/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer03/BiasAdd�
hidden_layer03/re_lu_2/ReluReluhidden_layer03/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer03/re_lu_2/Relu�
$hidden_layer04/MatMul/ReadVariableOpReadVariableOp-hidden_layer04_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer04/MatMul/ReadVariableOp�
hidden_layer04/MatMulMatMul)hidden_layer03/re_lu_2/Relu:activations:0,hidden_layer04/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer04/MatMul�
%hidden_layer04/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer04_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer04/BiasAdd/ReadVariableOp�
hidden_layer04/BiasAddBiasAddhidden_layer04/MatMul:product:0-hidden_layer04/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer04/BiasAdd�
hidden_layer04/re_lu_3/ReluReluhidden_layer04/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer04/re_lu_3/Reluw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMul)hidden_layer04/re_lu_3/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:����������2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeShape)hidden_layer04/re_lu_3/Relu:activations:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:����������2
dropout_1/dropout/Mul_1�
$hidden_layer05/MatMul/ReadVariableOpReadVariableOp-hidden_layer05_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer05/MatMul/ReadVariableOp�
hidden_layer05/MatMulMatMuldropout_1/dropout/Mul_1:z:0,hidden_layer05/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer05/MatMul�
%hidden_layer05/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer05_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer05/BiasAdd/ReadVariableOp�
hidden_layer05/BiasAddBiasAddhidden_layer05/MatMul:product:0-hidden_layer05/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer05/BiasAdd�
hidden_layer05/re_lu_4/ReluReluhidden_layer05/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer05/re_lu_4/Relu�
$hidden_layer06/MatMul/ReadVariableOpReadVariableOp-hidden_layer06_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer06/MatMul/ReadVariableOp�
hidden_layer06/MatMulMatMul)hidden_layer05/re_lu_4/Relu:activations:0,hidden_layer06/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer06/MatMul�
%hidden_layer06/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer06_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer06/BiasAdd/ReadVariableOp�
hidden_layer06/BiasAddBiasAddhidden_layer06/MatMul:product:0-hidden_layer06/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer06/BiasAdd�
hidden_layer06/re_lu_5/ReluReluhidden_layer06/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer06/re_lu_5/Relu�
$hidden_layer07/MatMul/ReadVariableOpReadVariableOp-hidden_layer07_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02&
$hidden_layer07/MatMul/ReadVariableOp�
hidden_layer07/MatMulMatMul)hidden_layer06/re_lu_5/Relu:activations:0,hidden_layer07/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer07/MatMul�
%hidden_layer07/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer07_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%hidden_layer07/BiasAdd/ReadVariableOp�
hidden_layer07/BiasAddBiasAddhidden_layer07/MatMul:product:0-hidden_layer07/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
hidden_layer07/BiasAdd�
hidden_layer07/re_lu_6/ReluReluhidden_layer07/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
hidden_layer07/re_lu_6/Relu�
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02$
"output_layer/MatMul/ReadVariableOp�
output_layer/MatMulMatMul)hidden_layer07/re_lu_6/Relu:activations:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
output_layer/MatMul�
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#output_layer/BiasAdd/ReadVariableOp�
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
output_layer/BiasAdd�
output_layer/SoftmaxSoftmaxoutput_layer/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
output_layer/Softmaxy
IdentityIdentityoutput_layer/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp&^hidden_layer01/BiasAdd/ReadVariableOp%^hidden_layer01/MatMul/ReadVariableOp&^hidden_layer02/BiasAdd/ReadVariableOp%^hidden_layer02/MatMul/ReadVariableOp&^hidden_layer03/BiasAdd/ReadVariableOp%^hidden_layer03/MatMul/ReadVariableOp&^hidden_layer04/BiasAdd/ReadVariableOp%^hidden_layer04/MatMul/ReadVariableOp&^hidden_layer05/BiasAdd/ReadVariableOp%^hidden_layer05/MatMul/ReadVariableOp&^hidden_layer06/BiasAdd/ReadVariableOp%^hidden_layer06/MatMul/ReadVariableOp&^hidden_layer07/BiasAdd/ReadVariableOp%^hidden_layer07/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2N
%hidden_layer01/BiasAdd/ReadVariableOp%hidden_layer01/BiasAdd/ReadVariableOp2L
$hidden_layer01/MatMul/ReadVariableOp$hidden_layer01/MatMul/ReadVariableOp2N
%hidden_layer02/BiasAdd/ReadVariableOp%hidden_layer02/BiasAdd/ReadVariableOp2L
$hidden_layer02/MatMul/ReadVariableOp$hidden_layer02/MatMul/ReadVariableOp2N
%hidden_layer03/BiasAdd/ReadVariableOp%hidden_layer03/BiasAdd/ReadVariableOp2L
$hidden_layer03/MatMul/ReadVariableOp$hidden_layer03/MatMul/ReadVariableOp2N
%hidden_layer04/BiasAdd/ReadVariableOp%hidden_layer04/BiasAdd/ReadVariableOp2L
$hidden_layer04/MatMul/ReadVariableOp$hidden_layer04/MatMul/ReadVariableOp2N
%hidden_layer05/BiasAdd/ReadVariableOp%hidden_layer05/BiasAdd/ReadVariableOp2L
$hidden_layer05/MatMul/ReadVariableOp$hidden_layer05/MatMul/ReadVariableOp2N
%hidden_layer06/BiasAdd/ReadVariableOp%hidden_layer06/BiasAdd/ReadVariableOp2L
$hidden_layer06/MatMul/ReadVariableOp$hidden_layer06/MatMul/ReadVariableOp2N
%hidden_layer07/BiasAdd/ReadVariableOp%hidden_layer07/BiasAdd/ReadVariableOp2L
$hidden_layer07/MatMul/ReadVariableOp$hidden_layer07/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_105343

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_5/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_5/Reluv
IdentityIdentityre_lu_5/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�7
�
F__inference_sequential_layer_call_and_return_conditional_losses_104868
input_layer(
hidden_layer01_104825:	�$
hidden_layer01_104827:	�)
hidden_layer02_104830:
��$
hidden_layer02_104832:	�)
hidden_layer03_104836:
��$
hidden_layer03_104838:	�)
hidden_layer04_104841:
��$
hidden_layer04_104843:	�)
hidden_layer05_104847:
��$
hidden_layer05_104849:	�)
hidden_layer06_104852:
��$
hidden_layer06_104854:	�)
hidden_layer07_104857:
��$
hidden_layer07_104859:	�&
output_layer_104862:	�!
output_layer_104864:
identity��&hidden_layer01/StatefulPartitionedCall�&hidden_layer02/StatefulPartitionedCall�&hidden_layer03/StatefulPartitionedCall�&hidden_layer04/StatefulPartitionedCall�&hidden_layer05/StatefulPartitionedCall�&hidden_layer06/StatefulPartitionedCall�&hidden_layer07/StatefulPartitionedCall�$output_layer/StatefulPartitionedCall�
&hidden_layer01/StatefulPartitionedCallStatefulPartitionedCallinput_layerhidden_layer01_104825hidden_layer01_104827*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_1043642(
&hidden_layer01/StatefulPartitionedCall�
&hidden_layer02/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer01/StatefulPartitionedCall:output:0hidden_layer02_104830hidden_layer02_104832*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_1043812(
&hidden_layer02/StatefulPartitionedCall�
dropout/PartitionedCallPartitionedCall/hidden_layer02/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1043922
dropout/PartitionedCall�
&hidden_layer03/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0hidden_layer03_104836hidden_layer03_104838*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_1044052(
&hidden_layer03/StatefulPartitionedCall�
&hidden_layer04/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer03/StatefulPartitionedCall:output:0hidden_layer04_104841hidden_layer04_104843*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_1044222(
&hidden_layer04/StatefulPartitionedCall�
dropout_1/PartitionedCallPartitionedCall/hidden_layer04/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_1044332
dropout_1/PartitionedCall�
&hidden_layer05/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0hidden_layer05_104847hidden_layer05_104849*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_1044462(
&hidden_layer05/StatefulPartitionedCall�
&hidden_layer06/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer05/StatefulPartitionedCall:output:0hidden_layer06_104852hidden_layer06_104854*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_1044632(
&hidden_layer06/StatefulPartitionedCall�
&hidden_layer07/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer06/StatefulPartitionedCall:output:0hidden_layer07_104857hidden_layer07_104859*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_1044802(
&hidden_layer07/StatefulPartitionedCall�
$output_layer/StatefulPartitionedCallStatefulPartitionedCall/hidden_layer07/StatefulPartitionedCall:output:0output_layer_104862output_layer_104864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_output_layer_layer_call_and_return_conditional_losses_1044972&
$output_layer/StatefulPartitionedCall�
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp'^hidden_layer01/StatefulPartitionedCall'^hidden_layer02/StatefulPartitionedCall'^hidden_layer03/StatefulPartitionedCall'^hidden_layer04/StatefulPartitionedCall'^hidden_layer05/StatefulPartitionedCall'^hidden_layer06/StatefulPartitionedCall'^hidden_layer07/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 2P
&hidden_layer01/StatefulPartitionedCall&hidden_layer01/StatefulPartitionedCall2P
&hidden_layer02/StatefulPartitionedCall&hidden_layer02/StatefulPartitionedCall2P
&hidden_layer03/StatefulPartitionedCall&hidden_layer03/StatefulPartitionedCall2P
&hidden_layer04/StatefulPartitionedCall&hidden_layer04/StatefulPartitionedCall2P
&hidden_layer05/StatefulPartitionedCall&hidden_layer05/StatefulPartitionedCall2P
&hidden_layer06/StatefulPartitionedCall&hidden_layer06/StatefulPartitionedCall2P
&hidden_layer07/StatefulPartitionedCall&hidden_layer07/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
+__inference_sequential_layer_call_fn_104822
input_layer
unknown:	�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_1047502
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������
%
_user_specified_nameinput_layer
�
�
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_104480

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_6/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_6/Reluv
IdentityIdentityre_lu_6/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_104381

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddi
re_lu_1/ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
re_lu_1/Reluv
IdentityIdentityre_lu_1/Relu:activations:0^NoOp*
T0*(
_output_shapes
:����������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_hidden_layer01_layer_call_fn_105178

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_1043642
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
(__inference_dropout_layer_call_fn_105219

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_1046422
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_layer4
serving_default_input_layer:0���������@
output_layer0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_sequential
�

activation

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

activation

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
trainable_variables
 regularization_losses
!	variables
"	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
#
activation

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*
activation

+kernel
,bias
-trainable_variables
.regularization_losses
/	variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
1trainable_variables
2regularization_losses
3	variables
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
5
activation

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
<
activation

=kernel
>bias
?trainable_variables
@regularization_losses
A	variables
B	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
C
activation

Dkernel
Ebias
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Jkernel
Kbias
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Piter

Qbeta_1

Rbeta_2
	Sdecaym�m�m�m�$m�%m�+m�,m�6m�7m�=m�>m�Dm�Em�Jm�Km�v�v�v�v�$v�%v�+v�,v�6v�7v�=v�>v�Dv�Ev�Jv�Kv�"
	optimizer
�
0
1
2
3
$4
%5
+6
,7
68
79
=10
>11
D12
E13
J14
K15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
$4
%5
+6
,7
68
79
=10
>11
D12
E13
J14
K15"
trackable_list_wrapper
�
trainable_variables
Tlayer_metrics
Ulayer_regularization_losses
regularization_losses
Vmetrics

Wlayers
Xnon_trainable_variables
	variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�
Ytrainable_variables
Zregularization_losses
[	variables
\	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(:&	�2hidden_layer01/kernel
": �2hidden_layer01/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
]layer_metrics
^layer_regularization_losses
regularization_losses
_metrics

`layers
anon_trainable_variables
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
btrainable_variables
cregularization_losses
d	variables
e	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
):'
��2hidden_layer02/kernel
": �2hidden_layer02/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
flayer_metrics
glayer_regularization_losses
regularization_losses
hmetrics

ilayers
jnon_trainable_variables
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
trainable_variables
klayer_metrics
llayer_regularization_losses
 regularization_losses
mmetrics

nlayers
onon_trainable_variables
!	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
):'
��2hidden_layer03/kernel
": �2hidden_layer03/bias
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
�
&trainable_variables
tlayer_metrics
ulayer_regularization_losses
'regularization_losses
vmetrics

wlayers
xnon_trainable_variables
(	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
ytrainable_variables
zregularization_losses
{	variables
|	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
):'
��2hidden_layer04/kernel
": �2hidden_layer04/bias
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
�
-trainable_variables
}layer_metrics
~layer_regularization_losses
.regularization_losses
metrics
�layers
�non_trainable_variables
/	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
1trainable_variables
�layer_metrics
 �layer_regularization_losses
2regularization_losses
�metrics
�layers
�non_trainable_variables
3	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
):'
��2hidden_layer05/kernel
": �2hidden_layer05/bias
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
�
8trainable_variables
�layer_metrics
 �layer_regularization_losses
9regularization_losses
�metrics
�layers
�non_trainable_variables
:	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
):'
��2hidden_layer06/kernel
": �2hidden_layer06/bias
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
�
?trainable_variables
�layer_metrics
 �layer_regularization_losses
@regularization_losses
�metrics
�layers
�non_trainable_variables
A	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trainable_variables
�regularization_losses
�	variables
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
):'
��2hidden_layer07/kernel
": �2hidden_layer07/bias
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
�
Ftrainable_variables
�layer_metrics
 �layer_regularization_losses
Gregularization_losses
�metrics
�layers
�non_trainable_variables
H	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
&:$	�2output_layer/kernel
:2output_layer/bias
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
�
Ltrainable_variables
�layer_metrics
 �layer_regularization_losses
Mregularization_losses
�metrics
�layers
�non_trainable_variables
N	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Ytrainable_variables
�layer_metrics
 �layer_regularization_losses
Zregularization_losses
�metrics
�layers
�non_trainable_variables
[	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
btrainable_variables
�layer_metrics
 �layer_regularization_losses
cregularization_losses
�metrics
�layers
�non_trainable_variables
d	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
ptrainable_variables
�layer_metrics
 �layer_regularization_losses
qregularization_losses
�metrics
�layers
�non_trainable_variables
r	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
#0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
ytrainable_variables
�layer_metrics
 �layer_regularization_losses
zregularization_losses
�metrics
�layers
�non_trainable_variables
{	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
*0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�trainable_variables
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�layers
�non_trainable_variables
�	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
50"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�trainable_variables
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�layers
�non_trainable_variables
�	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�trainable_variables
�layer_metrics
 �layer_regularization_losses
�regularization_losses
�metrics
�layers
�non_trainable_variables
�	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
C0"
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
-:+	�2Adam/hidden_layer01/kernel/m
':%�2Adam/hidden_layer01/bias/m
.:,
��2Adam/hidden_layer02/kernel/m
':%�2Adam/hidden_layer02/bias/m
.:,
��2Adam/hidden_layer03/kernel/m
':%�2Adam/hidden_layer03/bias/m
.:,
��2Adam/hidden_layer04/kernel/m
':%�2Adam/hidden_layer04/bias/m
.:,
��2Adam/hidden_layer05/kernel/m
':%�2Adam/hidden_layer05/bias/m
.:,
��2Adam/hidden_layer06/kernel/m
':%�2Adam/hidden_layer06/bias/m
.:,
��2Adam/hidden_layer07/kernel/m
':%�2Adam/hidden_layer07/bias/m
+:)	�2Adam/output_layer/kernel/m
$:"2Adam/output_layer/bias/m
-:+	�2Adam/hidden_layer01/kernel/v
':%�2Adam/hidden_layer01/bias/v
.:,
��2Adam/hidden_layer02/kernel/v
':%�2Adam/hidden_layer02/bias/v
.:,
��2Adam/hidden_layer03/kernel/v
':%�2Adam/hidden_layer03/bias/v
.:,
��2Adam/hidden_layer04/kernel/v
':%�2Adam/hidden_layer04/bias/v
.:,
��2Adam/hidden_layer05/kernel/v
':%�2Adam/hidden_layer05/bias/v
.:,
��2Adam/hidden_layer06/kernel/v
':%�2Adam/hidden_layer06/bias/v
.:,
��2Adam/hidden_layer07/kernel/v
':%�2Adam/hidden_layer07/bias/v
+:)	�2Adam/output_layer/kernel/v
$:"2Adam/output_layer/bias/v
�2�
+__inference_sequential_layer_call_fn_104539
+__inference_sequential_layer_call_fn_104994
+__inference_sequential_layer_call_fn_105031
+__inference_sequential_layer_call_fn_104822�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_sequential_layer_call_and_return_conditional_losses_105093
F__inference_sequential_layer_call_and_return_conditional_losses_105169
F__inference_sequential_layer_call_and_return_conditional_losses_104868
F__inference_sequential_layer_call_and_return_conditional_losses_104914�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_104346input_layer"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_hidden_layer01_layer_call_fn_105178�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_105189�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_hidden_layer02_layer_call_fn_105198�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_105209�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dropout_layer_call_fn_105214
(__inference_dropout_layer_call_fn_105219�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_dropout_layer_call_and_return_conditional_losses_105224
C__inference_dropout_layer_call_and_return_conditional_losses_105236�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_hidden_layer03_layer_call_fn_105245�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_105256�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_hidden_layer04_layer_call_fn_105265�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_105276�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_dropout_1_layer_call_fn_105281
*__inference_dropout_1_layer_call_fn_105286�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_dropout_1_layer_call_and_return_conditional_losses_105291
E__inference_dropout_1_layer_call_and_return_conditional_losses_105303�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_hidden_layer05_layer_call_fn_105312�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_105323�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_hidden_layer06_layer_call_fn_105332�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_105343�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_hidden_layer07_layer_call_fn_105352�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_105363�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
-__inference_output_layer_layer_call_fn_105372�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
H__inference_output_layer_layer_call_and_return_conditional_losses_105383�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_104957input_layer"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_104346�$%+,67=>DEJK4�1
*�'
%�"
input_layer���������
� ";�8
6
output_layer&�#
output_layer����������
E__inference_dropout_1_layer_call_and_return_conditional_losses_105291^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
E__inference_dropout_1_layer_call_and_return_conditional_losses_105303^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� 
*__inference_dropout_1_layer_call_fn_105281Q4�1
*�'
!�
inputs����������
p 
� "�����������
*__inference_dropout_1_layer_call_fn_105286Q4�1
*�'
!�
inputs����������
p
� "������������
C__inference_dropout_layer_call_and_return_conditional_losses_105224^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
C__inference_dropout_layer_call_and_return_conditional_losses_105236^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� }
(__inference_dropout_layer_call_fn_105214Q4�1
*�'
!�
inputs����������
p 
� "�����������}
(__inference_dropout_layer_call_fn_105219Q4�1
*�'
!�
inputs����������
p
� "������������
J__inference_hidden_layer01_layer_call_and_return_conditional_losses_105189]/�,
%�"
 �
inputs���������
� "&�#
�
0����������
� �
/__inference_hidden_layer01_layer_call_fn_105178P/�,
%�"
 �
inputs���������
� "������������
J__inference_hidden_layer02_layer_call_and_return_conditional_losses_105209^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
/__inference_hidden_layer02_layer_call_fn_105198Q0�-
&�#
!�
inputs����������
� "������������
J__inference_hidden_layer03_layer_call_and_return_conditional_losses_105256^$%0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
/__inference_hidden_layer03_layer_call_fn_105245Q$%0�-
&�#
!�
inputs����������
� "������������
J__inference_hidden_layer04_layer_call_and_return_conditional_losses_105276^+,0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
/__inference_hidden_layer04_layer_call_fn_105265Q+,0�-
&�#
!�
inputs����������
� "������������
J__inference_hidden_layer05_layer_call_and_return_conditional_losses_105323^670�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
/__inference_hidden_layer05_layer_call_fn_105312Q670�-
&�#
!�
inputs����������
� "������������
J__inference_hidden_layer06_layer_call_and_return_conditional_losses_105343^=>0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
/__inference_hidden_layer06_layer_call_fn_105332Q=>0�-
&�#
!�
inputs����������
� "������������
J__inference_hidden_layer07_layer_call_and_return_conditional_losses_105363^DE0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� �
/__inference_hidden_layer07_layer_call_fn_105352QDE0�-
&�#
!�
inputs����������
� "������������
H__inference_output_layer_layer_call_and_return_conditional_losses_105383]JK0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� �
-__inference_output_layer_layer_call_fn_105372PJK0�-
&�#
!�
inputs����������
� "�����������
F__inference_sequential_layer_call_and_return_conditional_losses_104868w$%+,67=>DEJK<�9
2�/
%�"
input_layer���������
p 

 
� "%�"
�
0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_104914w$%+,67=>DEJK<�9
2�/
%�"
input_layer���������
p

 
� "%�"
�
0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_105093r$%+,67=>DEJK7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
F__inference_sequential_layer_call_and_return_conditional_losses_105169r$%+,67=>DEJK7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
+__inference_sequential_layer_call_fn_104539j$%+,67=>DEJK<�9
2�/
%�"
input_layer���������
p 

 
� "�����������
+__inference_sequential_layer_call_fn_104822j$%+,67=>DEJK<�9
2�/
%�"
input_layer���������
p

 
� "�����������
+__inference_sequential_layer_call_fn_104994e$%+,67=>DEJK7�4
-�*
 �
inputs���������
p 

 
� "�����������
+__inference_sequential_layer_call_fn_105031e$%+,67=>DEJK7�4
-�*
 �
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_104957�$%+,67=>DEJKC�@
� 
9�6
4
input_layer%�"
input_layer���������";�8
6
output_layer&�#
output_layer���������