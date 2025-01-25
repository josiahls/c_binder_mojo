
# Copyright 2021 DeepMind Technologies Limited 
# 
# Licensed under the Apache License, Version 2.0 (the "License") ;  
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at 
# 
#     http://www.apache.org/licenses/LICENSE-2.0 
# 
# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, 
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
# See the License for the specific language governing permissions and 
# limitations under the License. 
# Skip() unsupported in mojo: #ifndef MUJOCO_MJMODEL_H_ 
# Skip() unsupported in mojo: #define MUJOCO_MJMODEL_H_ 
# PlaceHolder (not a comment): Include(line_num=18) #include <stddef.h> 
# PlaceHolder (not a comment): Include(line_num=19) #include <stdint.h> 
# PlaceHolder (not a comment): Include(line_num=22) #include <mujoco/mjtnum.h> 
# global constants 
# PlaceHolder (not a comment): Define(line_num=25) #define mjPI            3.14159265358979323846 
# PlaceHolder (not a comment): Define(line_num=26) #define mjMAXVAL        1E+10     
# maximum value in qpos, qvel, qacc 
# PlaceHolder (not a comment): Define(line_num=27) #define mjMINMU         1E-5      
# minimum friction coefficient 
# PlaceHolder (not a comment): Define(line_num=28) #define mjMINIMP        0.0001    
# minimum constraint impedance 
# PlaceHolder (not a comment): Define(line_num=29) #define mjMAXIMP        0.9999    
# maximum constraint impedance 
# PlaceHolder (not a comment): Define(line_num=30) #define mjMAXCONPAIR    50        
# maximum number of contacts per geom pair 
# PlaceHolder (not a comment): Define(line_num=31) #define mjMAXTREEDEPTH  50        
# maximum bounding volume hierarchy depth 
#---------------------------------- sizes --------------------------------------------------------- 
# PlaceHolder (not a comment): Define(line_num=36) #define mjNEQDATA       11        
# number of eq_data fields 
# PlaceHolder (not a comment): Define(line_num=37) #define mjNDYN          10        
# number of actuator dynamics parameters 
# PlaceHolder (not a comment): Define(line_num=38) #define mjNGAIN         10        
# number of actuator gain parameters 
# PlaceHolder (not a comment): Define(line_num=39) #define mjNBIAS         10        
# number of actuator bias parameters 
# PlaceHolder (not a comment): Define(line_num=40) #define mjNFLUID        12        
# number of fluid interaction parameters 
# PlaceHolder (not a comment): Define(line_num=41) #define mjNREF          2         
# number of solver reference parameters 
# PlaceHolder (not a comment): Define(line_num=42) #define mjNIMP          5         
# number of solver impedance parameters 
# PlaceHolder (not a comment): Define(line_num=43) #define mjNSOLVER       200       
# size of one mjData.solver array 
# PlaceHolder (not a comment): Define(line_num=44) #define mjNISLAND       20        
# number of mjData.solver arrays 
#---------------------------------- enum types (mjt) ---------------------------------------------- 
# PlaceHolder (not a comment): TypeDef(line_num=48) typedef enum mjtDisableBit_ 
	# PlaceHolder (not a comment): Scope(line_num=48,scope_type=type_def) { 
		
		# disable default feature bitflags 
		
		# PlaceHolder (not a comment): EnumField(line_num=49) mjDSBL_CONSTRAINT   = 1<<0, 
		
		# entire constraint solver 
		
		# PlaceHolder (not a comment): EnumField(line_num=50) mjDSBL_EQUALITY     = 1<<1, 
		
		# equality constraints 
		
		# PlaceHolder (not a comment): EnumField(line_num=51) mjDSBL_FRICTIONLOSS = 1<<2, 
		
		# joint and tendon frictionloss constraints 
		
		# PlaceHolder (not a comment): EnumField(line_num=52) mjDSBL_LIMIT        = 1<<3, 
		
		# joint and tendon limit constraints 
		
		# PlaceHolder (not a comment): EnumField(line_num=53) mjDSBL_CONTACT      = 1<<4, 
		
		# contact constraints 
		
		# PlaceHolder (not a comment): EnumField(line_num=54) mjDSBL_PASSIVE      = 1<<5, 
		
		# passive forces 
		
		# PlaceHolder (not a comment): EnumField(line_num=55) mjDSBL_GRAVITY      = 1<<6, 
		
		# gravitational forces 
		
		# PlaceHolder (not a comment): EnumField(line_num=56) mjDSBL_CLAMPCTRL    = 1<<7, 
		
		# clamp control to specified range 
		
		# PlaceHolder (not a comment): EnumField(line_num=57) mjDSBL_WARMSTART    = 1<<8, 
		
		# warmstart constraint solver 
		
		# PlaceHolder (not a comment): EnumField(line_num=58) mjDSBL_FILTERPARENT = 1<<9, 
		
		# remove collisions with parent body 
		
		# PlaceHolder (not a comment): EnumField(line_num=59) mjDSBL_ACTUATION    = 1<<10, 
		
		# apply actuation forces 
		
		# PlaceHolder (not a comment): EnumField(line_num=60) mjDSBL_REFSAFE      = 1<<11, 
		
		# integrator safety: make ref[0]>=2*timestep 
		
		# PlaceHolder (not a comment): EnumField(line_num=61) mjDSBL_SENSOR       = 1<<12, 
		
		# sensors 
		
		# PlaceHolder (not a comment): EnumField(line_num=62) mjDSBL_MIDPHASE     = 1<<13, 
		
		# mid-phase collision filtering 
		
		# PlaceHolder (not a comment): EnumField(line_num=63) mjDSBL_EULERDAMP    = 1<<14, 
		
		# implicit integration of joint damping in Euler integrator 
		
		# PlaceHolder (not a comment): EnumField(line_num=64) mjDSBL_AUTORESET    = 1<<15, 
		
		# automatic reset when numerical issues are detected 
		
		
		# PlaceHolder (not a comment): EnumField(line_num=66) mjNDISABLE          = 16        // number of disable flags 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtDisableBit ; 
# PlaceHolder (not a comment): TypeDef(line_num=70) typedef enum mjtEnableBit_ 
	# PlaceHolder (not a comment): Scope(line_num=70,scope_type=type_def) { 
		
		# enable optional feature bitflags 
		
		# PlaceHolder (not a comment): EnumField(line_num=71) mjENBL_OVERRIDE     = 1<<0, 
		
		# override contact parameters 
		
		# PlaceHolder (not a comment): EnumField(line_num=72) mjENBL_ENERGY       = 1<<1, 
		
		# energy computation 
		
		# PlaceHolder (not a comment): EnumField(line_num=73) mjENBL_FWDINV       = 1<<2, 
		
		# record solver statistics 
		
		# PlaceHolder (not a comment): EnumField(line_num=74) mjENBL_INVDISCRETE  = 1<<3, 
		
		# discrete-time inverse dynamics 
		
		# experimental features: 
		
		# PlaceHolder (not a comment): EnumField(line_num=76) mjENBL_MULTICCD     = 1<<4, 
		
		# multi-point convex collision detection 
		
		# PlaceHolder (not a comment): EnumField(line_num=77) mjENBL_ISLAND       = 1<<5, 
		
		# constraint island discovery 
		
		# PlaceHolder (not a comment): EnumField(line_num=78) mjENBL_NATIVECCD    = 1<<6, 
		
		# native convex collision detection 
		
		
		# PlaceHolder (not a comment): EnumField(line_num=80) mjNENABLE           = 7         // number of enable flags 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtEnableBit ; 
# PlaceHolder (not a comment): TypeDef(line_num=84) typedef enum mjtJoint_ 
	# PlaceHolder (not a comment): Scope(line_num=84,scope_type=type_def) { 
		
		# type of degree of freedom 
		
		# PlaceHolder (not a comment): EnumField(line_num=85) mjJNT_FREE          = 0, 
		
		# global position and orientation (quat)       (7) 
		
		# PlaceHolder (not a comment): EnumField(line_num=86) mjJNT_BALL, 
		
		# orientation (quat) relative to parent        (4) 
		
		# PlaceHolder (not a comment): EnumField(line_num=87) mjJNT_SLIDE, 
		
		# sliding distance along body-fixed axis       (1) 
		
		# PlaceHolder (not a comment): EnumField(line_num=88) mjJNT_HINGE                     // rotation angle (rad) around body-fixed axis  (1) 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtJoint ; 
# PlaceHolder (not a comment): TypeDef(line_num=92) typedef enum mjtGeom_ 
	# PlaceHolder (not a comment): Scope(line_num=92,scope_type=type_def) { 
		
		# type of geometric shape 
		
		# regular geom types 
		
		# PlaceHolder (not a comment): EnumField(line_num=94) mjGEOM_PLANE        = 0, 
		
		# plane 
		
		# PlaceHolder (not a comment): EnumField(line_num=95) mjGEOM_HFIELD, 
		
		# height field 
		
		# PlaceHolder (not a comment): EnumField(line_num=96) mjGEOM_SPHERE, 
		
		# sphere 
		
		# PlaceHolder (not a comment): EnumField(line_num=97) mjGEOM_CAPSULE, 
		
		# capsule 
		
		# PlaceHolder (not a comment): EnumField(line_num=98) mjGEOM_ELLIPSOID, 
		
		# ellipsoid 
		
		# PlaceHolder (not a comment): EnumField(line_num=99) mjGEOM_CYLINDER, 
		
		# cylinder 
		
		# PlaceHolder (not a comment): EnumField(line_num=100) mjGEOM_BOX, 
		
		# box 
		
		# PlaceHolder (not a comment): EnumField(line_num=101) mjGEOM_MESH, 
		
		# mesh 
		
		# PlaceHolder (not a comment): EnumField(line_num=102) mjGEOM_SDF, 
		
		# signed distance field 
		
		
		# PlaceHolder (not a comment): EnumField(line_num=104) mjNGEOMTYPES, 
		
		# number of regular geom types 
		
		
		# rendering-only geom types: not used in mjModel, not counted in mjNGEOMTYPES 
		
		# PlaceHolder (not a comment): EnumField(line_num=107) mjGEOM_ARROW        = 100, 
		
		# arrow 
		
		# PlaceHolder (not a comment): EnumField(line_num=108) mjGEOM_ARROW1, 
		
		# arrow without wedges 
		
		# PlaceHolder (not a comment): EnumField(line_num=109) mjGEOM_ARROW2, 
		
		# arrow in both directions 
		
		# PlaceHolder (not a comment): EnumField(line_num=110) mjGEOM_LINE, 
		
		# line 
		
		# PlaceHolder (not a comment): EnumField(line_num=111) mjGEOM_LINEBOX, 
		
		# box with line edges 
		
		# PlaceHolder (not a comment): EnumField(line_num=112) mjGEOM_FLEX, 
		
		# flex 
		
		# PlaceHolder (not a comment): EnumField(line_num=113) mjGEOM_SKIN, 
		
		# skin 
		
		# PlaceHolder (not a comment): EnumField(line_num=114) mjGEOM_LABEL, 
		
		# text label 
		
		# PlaceHolder (not a comment): EnumField(line_num=115) mjGEOM_TRIANGLE, 
		
		# triangle 
		
		
		# PlaceHolder (not a comment): EnumField(line_num=117) mjGEOM_NONE         = 1001      // missing geom type 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtGeom ; 
# PlaceHolder (not a comment): TypeDef(line_num=121) typedef enum mjtCamLight_ 
	# PlaceHolder (not a comment): Scope(line_num=121,scope_type=type_def) { 
		
		# tracking mode for camera and light 
		
		# PlaceHolder (not a comment): EnumField(line_num=122) mjCAMLIGHT_FIXED    = 0, 
		
		# pos and rot fixed in body 
		
		# PlaceHolder (not a comment): EnumField(line_num=123) mjCAMLIGHT_TRACK, 
		
		# pos tracks body, rot fixed in global 
		
		# PlaceHolder (not a comment): EnumField(line_num=124) mjCAMLIGHT_TRACKCOM, 
		
		# pos tracks subtree com, rot fixed in body 
		
		# PlaceHolder (not a comment): EnumField(line_num=125) mjCAMLIGHT_TARGETBODY, 
		
		# pos fixed in body, rot tracks target body 
		
		# PlaceHolder (not a comment): EnumField(line_num=126) mjCAMLIGHT_TARGETBODYCOM        // pos fixed in body, 
		# PlaceHolder (not a comment): EnumField(line_num=126) rot tracks target subtree com 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtCamLight ; 
# PlaceHolder (not a comment): TypeDef(line_num=130) typedef enum mjtTexture_ 
	# PlaceHolder (not a comment): Scope(line_num=130,scope_type=type_def) { 
		
		# type of texture 
		
		# PlaceHolder (not a comment): EnumField(line_num=131) mjTEXTURE_2D        = 0, 
		
		# 2d texture, suitable for planes and hfields 
		
		# PlaceHolder (not a comment): EnumField(line_num=132) mjTEXTURE_CUBE, 
		
		# cube texture, suitable for all other geom types 
		
		# PlaceHolder (not a comment): EnumField(line_num=133) mjTEXTURE_SKYBOX                // cube texture used as skybox 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtTexture ; 
# PlaceHolder (not a comment): TypeDef(line_num=137) typedef enum mjtTextureRole_ 
	# PlaceHolder (not a comment): Scope(line_num=137,scope_type=type_def) { 
		
		# role of texture map in rendering 
		
		# PlaceHolder (not a comment): EnumField(line_num=138) mjTEXROLE_USER      = 0, 
		
		# unspecified 
		
		# PlaceHolder (not a comment): EnumField(line_num=139) mjTEXROLE_RGB, 
		
		# base color (albedo) 
		
		# PlaceHolder (not a comment): EnumField(line_num=140) mjTEXROLE_OCCLUSION, 
		
		# ambient occlusion 
		
		# PlaceHolder (not a comment): EnumField(line_num=141) mjTEXROLE_ROUGHNESS, 
		
		# roughness 
		
		# PlaceHolder (not a comment): EnumField(line_num=142) mjTEXROLE_METALLIC, 
		
		# metallic 
		
		# PlaceHolder (not a comment): EnumField(line_num=143) mjTEXROLE_NORMAL, 
		
		# normal (bump) map 
		
		# PlaceHolder (not a comment): EnumField(line_num=144) mjTEXROLE_OPACITY, 
		
		# transperancy 
		
		# PlaceHolder (not a comment): EnumField(line_num=145) mjTEXROLE_EMISSIVE, 
		
		# light emission 
		
		# PlaceHolder (not a comment): EnumField(line_num=146) mjTEXROLE_RGBA, 
		
		# base color, opacity 
		
		# PlaceHolder (not a comment): EnumField(line_num=147) mjTEXROLE_ORM, 
		
		# occlusion, roughness, metallic 
		
		# PlaceHolder (not a comment): EnumField(line_num=148) mjNTEXROLE 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtTextureRole ; 
# PlaceHolder (not a comment): TypeDef(line_num=152) typedef enum mjtIntegrator_ 
	# PlaceHolder (not a comment): Scope(line_num=152,scope_type=type_def) { 
		
		# integrator mode 
		
		# PlaceHolder (not a comment): EnumField(line_num=153) mjINT_EULER         = 0, 
		
		# semi-implicit Euler 
		
		# PlaceHolder (not a comment): EnumField(line_num=154) mjINT_RK4, 
		
		# 4th-order Runge Kutta 
		
		# PlaceHolder (not a comment): EnumField(line_num=155) mjINT_IMPLICIT, 
		
		# implicit in velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=156) mjINT_IMPLICITFAST              // implicit in velocity, 
		# PlaceHolder (not a comment): EnumField(line_num=156) no rne derivative 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtIntegrator ; 
# PlaceHolder (not a comment): TypeDef(line_num=160) typedef enum mjtCone_ 
	# PlaceHolder (not a comment): Scope(line_num=160,scope_type=type_def) { 
		
		# type of friction cone 
		
		# PlaceHolder (not a comment): EnumField(line_num=161) mjCONE_PYRAMIDAL     = 0, 
		
		# pyramidal 
		
		# PlaceHolder (not a comment): EnumField(line_num=162) mjCONE_ELLIPTIC                 // elliptic 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtCone ; 
# PlaceHolder (not a comment): TypeDef(line_num=166) typedef enum mjtJacobian_ 
	# PlaceHolder (not a comment): Scope(line_num=166,scope_type=type_def) { 
		
		# type of constraint Jacobian 
		
		# PlaceHolder (not a comment): EnumField(line_num=167) mjJAC_DENSE          = 0, 
		
		# dense 
		
		# PlaceHolder (not a comment): EnumField(line_num=168) mjJAC_SPARSE, 
		
		# sparse 
		
		# PlaceHolder (not a comment): EnumField(line_num=169) mjJAC_AUTO                      // dense if nv<60, 
		# PlaceHolder (not a comment): EnumField(line_num=169) sparse otherwise 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtJacobian ; 
# PlaceHolder (not a comment): TypeDef(line_num=173) typedef enum mjtSolver_ 
	# PlaceHolder (not a comment): Scope(line_num=173,scope_type=type_def) { 
		
		# constraint solver algorithm 
		
		# PlaceHolder (not a comment): EnumField(line_num=174) mjSOL_PGS            = 0, 
		
		# PGS    (dual) 
		
		# PlaceHolder (not a comment): EnumField(line_num=175) mjSOL_CG, 
		
		# CG     (primal) 
		
		# PlaceHolder (not a comment): EnumField(line_num=176) mjSOL_NEWTON                    // Newton (primal) 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtSolver ; 
# PlaceHolder (not a comment): TypeDef(line_num=180) typedef enum mjtEq_ 
	# PlaceHolder (not a comment): Scope(line_num=180,scope_type=type_def) { 
		
		# type of equality constraint 
		
		# PlaceHolder (not a comment): EnumField(line_num=181) mjEQ_CONNECT        = 0, 
		
		# connect two bodies at a point (ball joint) 
		
		# PlaceHolder (not a comment): EnumField(line_num=182) mjEQ_WELD, 
		
		# fix relative position and orientation of two bodies 
		
		# PlaceHolder (not a comment): EnumField(line_num=183) mjEQ_JOINT, 
		
		# couple the values of two scalar joints with cubic 
		
		# PlaceHolder (not a comment): EnumField(line_num=184) mjEQ_TENDON, 
		
		# couple the lengths of two tendons with cubic 
		
		# PlaceHolder (not a comment): EnumField(line_num=185) mjEQ_FLEX, 
		
		# fix all edge lengths of a flex 
		
		# PlaceHolder (not a comment): EnumField(line_num=186) mjEQ_DISTANCE                   // unsupported, 
		# PlaceHolder (not a comment): EnumField(line_num=186) will cause an error if used 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtEq ; 
# PlaceHolder (not a comment): TypeDef(line_num=190) typedef enum mjtWrap_ 
	# PlaceHolder (not a comment): Scope(line_num=190,scope_type=type_def) { 
		
		# type of tendon wrap object 
		
		# PlaceHolder (not a comment): EnumField(line_num=191) mjWRAP_NONE         = 0, 
		
		# null object 
		
		# PlaceHolder (not a comment): EnumField(line_num=192) mjWRAP_JOINT, 
		
		# constant moment arm 
		
		# PlaceHolder (not a comment): EnumField(line_num=193) mjWRAP_PULLEY, 
		
		# pulley used to split tendon 
		
		# PlaceHolder (not a comment): EnumField(line_num=194) mjWRAP_SITE, 
		
		# pass through site 
		
		# PlaceHolder (not a comment): EnumField(line_num=195) mjWRAP_SPHERE, 
		
		# wrap around sphere 
		
		# PlaceHolder (not a comment): EnumField(line_num=196) mjWRAP_CYLINDER                 // wrap around (infinite) cylinder 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtWrap ; 
# PlaceHolder (not a comment): TypeDef(line_num=200) typedef enum mjtTrn_ 
	# PlaceHolder (not a comment): Scope(line_num=200,scope_type=type_def) { 
		
		# type of actuator transmission 
		
		# PlaceHolder (not a comment): EnumField(line_num=201) mjTRN_JOINT         = 0, 
		
		# force on joint 
		
		# PlaceHolder (not a comment): EnumField(line_num=202) mjTRN_JOINTINPARENT, 
		
		# force on joint, expressed in parent frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=203) mjTRN_SLIDERCRANK, 
		
		# force via slider-crank linkage 
		
		# PlaceHolder (not a comment): EnumField(line_num=204) mjTRN_TENDON, 
		
		# force on tendon 
		
		# PlaceHolder (not a comment): EnumField(line_num=205) mjTRN_SITE, 
		
		# force on site 
		
		# PlaceHolder (not a comment): EnumField(line_num=206) mjTRN_BODY, 
		
		# adhesion force on a body's geoms 
		
		
		# PlaceHolder (not a comment): EnumField(line_num=208) mjTRN_UNDEFINED     = 1000      // undefined transmission type 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtTrn ; 
# PlaceHolder (not a comment): TypeDef(line_num=212) typedef enum mjtDyn_ 
	# PlaceHolder (not a comment): Scope(line_num=212,scope_type=type_def) { 
		
		# type of actuator dynamics 
		
		# PlaceHolder (not a comment): EnumField(line_num=213) mjDYN_NONE          = 0, 
		
		# no internal dynamics ;  ctrl specifies force 
		
		# PlaceHolder (not a comment): EnumField(line_num=214) mjDYN_INTEGRATOR, 
		
		# integrator: da/dt = u 
		
		# PlaceHolder (not a comment): EnumField(line_num=215) mjDYN_FILTER, 
		
		# linear filter: da/dt = (u-a) / tau 
		
		# PlaceHolder (not a comment): EnumField(line_num=216) mjDYN_FILTEREXACT, 
		
		# linear filter: da/dt = (u-a) / tau, with exact integration 
		
		# PlaceHolder (not a comment): EnumField(line_num=217) mjDYN_MUSCLE, 
		
		# piece-wise linear filter with two time constants 
		
		# PlaceHolder (not a comment): EnumField(line_num=218) mjDYN_USER                      // user-defined dynamics type 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtDyn ; 
# PlaceHolder (not a comment): TypeDef(line_num=222) typedef enum mjtGain_ 
	# PlaceHolder (not a comment): Scope(line_num=222,scope_type=type_def) { 
		
		# type of actuator gain 
		
		# PlaceHolder (not a comment): EnumField(line_num=223) mjGAIN_FIXED        = 0, 
		
		# fixed gain 
		
		# PlaceHolder (not a comment): EnumField(line_num=224) mjGAIN_AFFINE, 
		
		# const + kp*length + kv*velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=225) mjGAIN_MUSCLE, 
		
		# muscle FLV curve computed by mju_muscleGain() 
		
		# PlaceHolder (not a comment): EnumField(line_num=226) mjGAIN_USER                     // user-defined gain type 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtGain ; 
# PlaceHolder (not a comment): TypeDef(line_num=230) typedef enum mjtBias_ 
	# PlaceHolder (not a comment): Scope(line_num=230,scope_type=type_def) { 
		
		# type of actuator bias 
		
		# PlaceHolder (not a comment): EnumField(line_num=231) mjBIAS_NONE         = 0, 
		
		# no bias 
		
		# PlaceHolder (not a comment): EnumField(line_num=232) mjBIAS_AFFINE, 
		
		# const + kp*length + kv*velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=233) mjBIAS_MUSCLE, 
		
		# muscle passive force computed by mju_muscleBias() 
		
		# PlaceHolder (not a comment): EnumField(line_num=234) mjBIAS_USER                     // user-defined bias type 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtBias ; 
# PlaceHolder (not a comment): TypeDef(line_num=238) typedef enum mjtObj_ 
	# PlaceHolder (not a comment): Scope(line_num=238,scope_type=type_def) { 
		
		# type of MujoCo object 
		
		# PlaceHolder (not a comment): EnumField(line_num=239) mjOBJ_UNKNOWN       = 0, 
		
		# unknown object type 
		
		# PlaceHolder (not a comment): EnumField(line_num=240) mjOBJ_BODY, 
		
		# body 
		
		# PlaceHolder (not a comment): EnumField(line_num=241) mjOBJ_XBODY, 
		
		# body, used to access regular frame instead of i-frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=242) mjOBJ_JOINT, 
		
		# joint 
		
		# PlaceHolder (not a comment): EnumField(line_num=243) mjOBJ_DOF, 
		
		# dof 
		
		# PlaceHolder (not a comment): EnumField(line_num=244) mjOBJ_GEOM, 
		
		# geom 
		
		# PlaceHolder (not a comment): EnumField(line_num=245) mjOBJ_SITE, 
		
		# site 
		
		# PlaceHolder (not a comment): EnumField(line_num=246) mjOBJ_CAMERA, 
		
		# camera 
		
		# PlaceHolder (not a comment): EnumField(line_num=247) mjOBJ_LIGHT, 
		
		# light 
		
		# PlaceHolder (not a comment): EnumField(line_num=248) mjOBJ_FLEX, 
		
		# flex 
		
		# PlaceHolder (not a comment): EnumField(line_num=249) mjOBJ_MESH, 
		
		# mesh 
		
		# PlaceHolder (not a comment): EnumField(line_num=250) mjOBJ_SKIN, 
		
		# skin 
		
		# PlaceHolder (not a comment): EnumField(line_num=251) mjOBJ_HFIELD, 
		
		# heightfield 
		
		# PlaceHolder (not a comment): EnumField(line_num=252) mjOBJ_TEXTURE, 
		
		# texture 
		
		# PlaceHolder (not a comment): EnumField(line_num=253) mjOBJ_MATERIAL, 
		
		# material for rendering 
		
		# PlaceHolder (not a comment): EnumField(line_num=254) mjOBJ_PAIR, 
		
		# geom pair to include 
		
		# PlaceHolder (not a comment): EnumField(line_num=255) mjOBJ_EXCLUDE, 
		
		# body pair to exclude 
		
		# PlaceHolder (not a comment): EnumField(line_num=256) mjOBJ_EQUALITY, 
		
		# equality constraint 
		
		# PlaceHolder (not a comment): EnumField(line_num=257) mjOBJ_TENDON, 
		
		# tendon 
		
		# PlaceHolder (not a comment): EnumField(line_num=258) mjOBJ_ACTUATOR, 
		
		# actuator 
		
		# PlaceHolder (not a comment): EnumField(line_num=259) mjOBJ_SENSOR, 
		
		# sensor 
		
		# PlaceHolder (not a comment): EnumField(line_num=260) mjOBJ_NUMERIC, 
		
		# numeric 
		
		# PlaceHolder (not a comment): EnumField(line_num=261) mjOBJ_TEXT, 
		
		# text 
		
		# PlaceHolder (not a comment): EnumField(line_num=262) mjOBJ_TUPLE, 
		
		# tuple 
		
		# PlaceHolder (not a comment): EnumField(line_num=263) mjOBJ_KEY, 
		
		# keyframe 
		
		# PlaceHolder (not a comment): EnumField(line_num=264) mjOBJ_PLUGIN, 
		
		# plugin instance 
		
		
		# PlaceHolder (not a comment): EnumField(line_num=266) mjNOBJECT, 
		
		# number of object types 
		
		
		# meta elements, do not appear in mjModel 
		
		# PlaceHolder (not a comment): EnumField(line_num=269) mjOBJ_FRAME         = 100       // frame 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtObj ; 
# PlaceHolder (not a comment): TypeDef(line_num=273) typedef enum mjtConstraint_ 
	# PlaceHolder (not a comment): Scope(line_num=273,scope_type=type_def) { 
		
		# type of constraint 
		
		# PlaceHolder (not a comment): EnumField(line_num=274) mjCNSTR_EQUALITY    = 0, 
		
		# equality constraint 
		
		# PlaceHolder (not a comment): EnumField(line_num=275) mjCNSTR_FRICTION_DOF, 
		
		# dof friction 
		
		# PlaceHolder (not a comment): EnumField(line_num=276) mjCNSTR_FRICTION_TENDON, 
		
		# tendon friction 
		
		# PlaceHolder (not a comment): EnumField(line_num=277) mjCNSTR_LIMIT_JOINT, 
		
		# joint limit 
		
		# PlaceHolder (not a comment): EnumField(line_num=278) mjCNSTR_LIMIT_TENDON, 
		
		# tendon limit 
		
		# PlaceHolder (not a comment): EnumField(line_num=279) mjCNSTR_CONTACT_FRICTIONLESS, 
		
		# frictionless contact 
		
		# PlaceHolder (not a comment): EnumField(line_num=280) mjCNSTR_CONTACT_PYRAMIDAL, 
		
		# frictional contact, pyramidal friction cone 
		
		# PlaceHolder (not a comment): EnumField(line_num=281) mjCNSTR_CONTACT_ELLIPTIC        // frictional contact, 
		# PlaceHolder (not a comment): EnumField(line_num=281) elliptic friction cone 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtConstraint ; 
# PlaceHolder (not a comment): TypeDef(line_num=285) typedef enum mjtConstraintState_ 
	# PlaceHolder (not a comment): Scope(line_num=285,scope_type=type_def) { 
		
		# constraint state 
		
		# PlaceHolder (not a comment): EnumField(line_num=286) mjCNSTRSTATE_SATISFIED = 0, 
		
		# constraint satisfied, zero cost (limit, contact) 
		
		# PlaceHolder (not a comment): EnumField(line_num=287) mjCNSTRSTATE_QUADRATIC, 
		
		# quadratic cost (equality, friction, limit, contact) 
		
		# PlaceHolder (not a comment): EnumField(line_num=288) mjCNSTRSTATE_LINEARNEG, 
		
		# linear cost, negative side (friction) 
		
		# PlaceHolder (not a comment): EnumField(line_num=289) mjCNSTRSTATE_LINEARPOS, 
		
		# linear cost, positive side (friction) 
		
		# PlaceHolder (not a comment): EnumField(line_num=290) mjCNSTRSTATE_CONE                 // squared distance to cone cost (elliptic contact) 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtConstraintState ; 
# PlaceHolder (not a comment): TypeDef(line_num=294) typedef enum mjtSensor_ 
	# PlaceHolder (not a comment): Scope(line_num=294,scope_type=type_def) { 
		
		# type of sensor 
		
		# common robotic sensors, attached to a site 
		
		# PlaceHolder (not a comment): EnumField(line_num=296) mjSENS_TOUCH        = 0, 
		
		# scalar contact normal forces summed over sensor zone 
		
		# PlaceHolder (not a comment): EnumField(line_num=297) mjSENS_ACCELEROMETER, 
		
		# 3D linear acceleration, in local frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=298) mjSENS_VELOCIMETER, 
		
		# 3D linear velocity, in local frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=299) mjSENS_GYRO, 
		
		# 3D angular velocity, in local frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=300) mjSENS_FORCE, 
		
		# 3D force between site's body and its parent body 
		
		# PlaceHolder (not a comment): EnumField(line_num=301) mjSENS_TORQUE, 
		
		# 3D torque between site's body and its parent body 
		
		# PlaceHolder (not a comment): EnumField(line_num=302) mjSENS_MAGNETOMETER, 
		
		# 3D magnetometer 
		
		# PlaceHolder (not a comment): EnumField(line_num=303) mjSENS_RANGEFINDER, 
		
		# scalar distance to nearest geom or site along z-axis 
		
		# PlaceHolder (not a comment): EnumField(line_num=304) mjSENS_CAMPROJECTION, 
		
		# pixel coordinates of a site in the camera image 
		
		
		# sensors related to scalar joints, tendons, actuators 
		
		# PlaceHolder (not a comment): EnumField(line_num=307) mjSENS_JOINTPOS, 
		
		# scalar joint position (hinge and slide only) 
		
		# PlaceHolder (not a comment): EnumField(line_num=308) mjSENS_JOINTVEL, 
		
		# scalar joint velocity (hinge and slide only) 
		
		# PlaceHolder (not a comment): EnumField(line_num=309) mjSENS_TENDONPOS, 
		
		# scalar tendon position 
		
		# PlaceHolder (not a comment): EnumField(line_num=310) mjSENS_TENDONVEL, 
		
		# scalar tendon velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=311) mjSENS_ACTUATORPOS, 
		
		# scalar actuator position 
		
		# PlaceHolder (not a comment): EnumField(line_num=312) mjSENS_ACTUATORVEL, 
		
		# scalar actuator velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=313) mjSENS_ACTUATORFRC, 
		
		# scalar actuator force 
		
		# PlaceHolder (not a comment): EnumField(line_num=314) mjSENS_JOINTACTFRC, 
		
		# scalar actuator force, measured at the joint 
		
		
		# sensors related to ball joints 
		
		# PlaceHolder (not a comment): EnumField(line_num=317) mjSENS_BALLQUAT, 
		
		# 4D ball joint quaternion 
		
		# PlaceHolder (not a comment): EnumField(line_num=318) mjSENS_BALLANGVEL, 
		
		# 3D ball joint angular velocity 
		
		
		# joint and tendon limit sensors, in constraint space 
		
		# PlaceHolder (not a comment): EnumField(line_num=321) mjSENS_JOINTLIMITPOS, 
		
		# joint limit distance-margin 
		
		# PlaceHolder (not a comment): EnumField(line_num=322) mjSENS_JOINTLIMITVEL, 
		
		# joint limit velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=323) mjSENS_JOINTLIMITFRC, 
		
		# joint limit force 
		
		# PlaceHolder (not a comment): EnumField(line_num=324) mjSENS_TENDONLIMITPOS, 
		
		# tendon limit distance-margin 
		
		# PlaceHolder (not a comment): EnumField(line_num=325) mjSENS_TENDONLIMITVEL, 
		
		# tendon limit velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=326) mjSENS_TENDONLIMITFRC, 
		
		# tendon limit force 
		
		
		# sensors attached to an object with spatial frame: (x)body, geom, site, camera 
		
		# PlaceHolder (not a comment): EnumField(line_num=329) mjSENS_FRAMEPOS, 
		
		# 3D position 
		
		# PlaceHolder (not a comment): EnumField(line_num=330) mjSENS_FRAMEQUAT, 
		
		# 4D unit quaternion orientation 
		
		# PlaceHolder (not a comment): EnumField(line_num=331) mjSENS_FRAMEXAXIS, 
		
		# 3D unit vector: x-axis of object's frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=332) mjSENS_FRAMEYAXIS, 
		
		# 3D unit vector: y-axis of object's frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=333) mjSENS_FRAMEZAXIS, 
		
		# 3D unit vector: z-axis of object's frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=334) mjSENS_FRAMELINVEL, 
		
		# 3D linear velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=335) mjSENS_FRAMEANGVEL, 
		
		# 3D angular velocity 
		
		# PlaceHolder (not a comment): EnumField(line_num=336) mjSENS_FRAMELINACC, 
		
		# 3D linear acceleration 
		
		# PlaceHolder (not a comment): EnumField(line_num=337) mjSENS_FRAMEANGACC, 
		
		# 3D angular acceleration 
		
		
		# sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) 
		
		# PlaceHolder (not a comment): EnumField(line_num=340) mjSENS_SUBTREECOM, 
		
		# 3D center of mass of subtree 
		
		# PlaceHolder (not a comment): EnumField(line_num=341) mjSENS_SUBTREELINVEL, 
		
		# 3D linear velocity of subtree 
		
		# PlaceHolder (not a comment): EnumField(line_num=342) mjSENS_SUBTREEANGMOM, 
		
		# 3D angular momentum of subtree 
		
		
		# sensors for geometric distance ;  attached to geoms or bodies 
		
		# PlaceHolder (not a comment): EnumField(line_num=345) mjSENS_GEOMDIST, 
		
		# signed distance between two geoms 
		
		# PlaceHolder (not a comment): EnumField(line_num=346) mjSENS_GEOMNORMAL, 
		
		# normal direction between two geoms 
		
		# PlaceHolder (not a comment): EnumField(line_num=347) mjSENS_GEOMFROMTO, 
		
		# segment between two geoms 
		
		
		# global sensors 
		
		# PlaceHolder (not a comment): EnumField(line_num=350) mjSENS_CLOCK, 
		
		# simulation time 
		
		
		# plugin-controlled sensors 
		
		# PlaceHolder (not a comment): EnumField(line_num=353) mjSENS_PLUGIN, 
		
		# plugin-controlled 
		
		
		# user-defined sensor 
		
		# PlaceHolder (not a comment): EnumField(line_num=356) mjSENS_USER                     // sensor data provided by mjcb_sensor callback 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtSensor ; 
# PlaceHolder (not a comment): TypeDef(line_num=360) typedef enum mjtStage_ 
	# PlaceHolder (not a comment): Scope(line_num=360,scope_type=type_def) { 
		
		# computation stage 
		
		# PlaceHolder (not a comment): EnumField(line_num=361) mjSTAGE_NONE        = 0, 
		
		# no computations 
		
		# PlaceHolder (not a comment): EnumField(line_num=362) mjSTAGE_POS, 
		
		# position-dependent computations 
		
		# PlaceHolder (not a comment): EnumField(line_num=363) mjSTAGE_VEL, 
		
		# velocity-dependent computations 
		
		# PlaceHolder (not a comment): EnumField(line_num=364) mjSTAGE_ACC                     // acceleration/force-dependent computations 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtStage ; 
# PlaceHolder (not a comment): TypeDef(line_num=368) typedef enum mjtDataType_ 
	# PlaceHolder (not a comment): Scope(line_num=368,scope_type=type_def) { 
		
		# data type for sensors 
		
		# PlaceHolder (not a comment): EnumField(line_num=369) mjDATATYPE_REAL     = 0, 
		
		# real values, no constraints 
		
		# PlaceHolder (not a comment): EnumField(line_num=370) mjDATATYPE_POSITIVE, 
		
		# positive values ;  0 or negative: inactive 
		
		# PlaceHolder (not a comment): EnumField(line_num=371) mjDATATYPE_AXIS, 
		
		# 3D unit vector 
		
		# PlaceHolder (not a comment): EnumField(line_num=372) mjDATATYPE_QUATERNION           // unit quaternion 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtDataType ; 
# PlaceHolder (not a comment): TypeDef(line_num=376) typedef enum mjtSameFrame_ 
	# PlaceHolder (not a comment): Scope(line_num=376,scope_type=type_def) { 
		
		# frame alignment of bodies with their children 
		
		# PlaceHolder (not a comment): EnumField(line_num=377) mjSAMEFRAME_NONE    = 0, 
		
		# no alignment 
		
		# PlaceHolder (not a comment): EnumField(line_num=378) mjSAMEFRAME_BODY, 
		
		# frame is same as body frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=379) mjSAMEFRAME_INERTIA, 
		
		# frame is same as inertial frame 
		
		# PlaceHolder (not a comment): EnumField(line_num=380) mjSAMEFRAME_BODYROT, 
		
		# frame orientation is same as body orientation 
		
		# PlaceHolder (not a comment): EnumField(line_num=381) mjSAMEFRAME_INERTIAROT          // frame orientation is same as inertia orientation 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtSameFrame ; 
# PlaceHolder (not a comment): TypeDef(line_num=385) typedef enum mjtLRMode_ 
	# PlaceHolder (not a comment): Scope(line_num=385,scope_type=type_def) { 
		
		# mode for actuator length range computation 
		
		# PlaceHolder (not a comment): EnumField(line_num=386) mjLRMODE_NONE   = 0, 
		
		# do not process any actuators 
		
		# PlaceHolder (not a comment): EnumField(line_num=387) mjLRMODE_MUSCLE, 
		
		# process muscle actuators 
		
		# PlaceHolder (not a comment): EnumField(line_num=388) mjLRMODE_MUSCLEUSER, 
		
		# process muscle and user actuators 
		
		# PlaceHolder (not a comment): EnumField(line_num=389) mjLRMODE_ALL                    // process all actuators 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtLRMode ; 
# PlaceHolder (not a comment): TypeDef(line_num=393) typedef enum mjtFlexSelf_ 
	# PlaceHolder (not a comment): Scope(line_num=393,scope_type=type_def) { 
		
		# mode for flex selfcollide 
		
		# PlaceHolder (not a comment): EnumField(line_num=394) mjFLEXSELF_NONE   = 0, 
		
		# no self-collisions 
		
		# PlaceHolder (not a comment): EnumField(line_num=395) mjFLEXSELF_NARROW, 
		
		# skip midphase, go directly to narrowphase 
		
		# PlaceHolder (not a comment): EnumField(line_num=396) mjFLEXSELF_BVH, 
		
		# use BVH in midphase (if midphase enabled) 
		
		# PlaceHolder (not a comment): EnumField(line_num=397) mjFLEXSELF_SAP, 
		
		# use SAP in midphase 
		
		# PlaceHolder (not a comment): EnumField(line_num=398) mjFLEXSELF_AUTO                 // choose between BVH and SAP automatically 
	<AST-SPLIT>  } 
<AST-SPLIT>  mjtFlexSelf ; 
#---------------------------------- mjLROpt ------------------------------------------------------- 
# PlaceHolder (not a comment): CStruct(line_num=404) struct mjLROpt_ 
	# PlaceHolder (not a comment): Scope(line_num=404,scope_type=struct) { 
		
		# options for mj_setLengthRange() 
		
		# flags 
		
		# PlaceHolder (not a comment): CStructField(line_num=406) int mode ; 
		
		# which actuators to process (mjtLRMode) 
		
		# PlaceHolder (not a comment): CStructField(line_num=407) int useexisting ; 
		
		# use existing length range if available 
		
		# PlaceHolder (not a comment): CStructField(line_num=408) int uselimit ; 
		
		# use joint and tendon limits if available 
		
		
		# algorithm parameters 
		
		# PlaceHolder (not a comment): CStructField(line_num=411) mjtNum accel ; 
		
		# target acceleration used to compute force 
		
		# PlaceHolder (not a comment): CStructField(line_num=412) mjtNum maxforce ; 
		
		# maximum force ;  0: no limit 
		
		# PlaceHolder (not a comment): CStructField(line_num=413) mjtNum timeconst ; 
		
		# time constant for velocity reduction ;  min 0.01 
		
		# PlaceHolder (not a comment): CStructField(line_num=414) mjtNum timestep ; 
		
		# simulation timestep ;  0: use mjOption.timestep 
		
		# PlaceHolder (not a comment): CStructField(line_num=415) mjtNum inttotal ; 
		
		# total simulation time interval 
		
		# PlaceHolder (not a comment): CStructField(line_num=416) mjtNum interval ; 
		
		# evaluation time interval (at the end) 
		
		# PlaceHolder (not a comment): CStructField(line_num=417) mjtNum tolrange ; 
		
		# convergence tolerance (relative to range) 
	<AST-SPLIT>  } 
<AST-SPLIT>  ; 
# PlaceHolder (not a comment): TypeDef(line_num=419) typedef struct mjLROpt_ mjLROpt ; 
#---------------------------------- mjVFS --------------------------------------------------------- 
# PlaceHolder (not a comment): CStruct(line_num=424) struct mjVFS_ 
	# PlaceHolder (not a comment): Scope(line_num=424,scope_type=struct) { 
		
		# virtual file system for loading from memory 
		
		# PlaceHolder (not a comment): CStructField(line_num=425) void* impl_ ; 
		
		# internal pointer to VFS memory 
	<AST-SPLIT>  } 
<AST-SPLIT>  ; 
# PlaceHolder (not a comment): TypeDef(line_num=427) typedef struct mjVFS_ mjVFS ; 
#---------------------------------- mjOption ------------------------------------------------------ 
# PlaceHolder (not a comment): CStruct(line_num=431) struct mjOption_ 
	# PlaceHolder (not a comment): Scope(line_num=431,scope_type=struct) { 
		
		# physics options 
		
		# timing parameters 
		
		# PlaceHolder (not a comment): CStructField(line_num=433) mjtNum timestep ; 
		
		# timestep 
		
		# PlaceHolder (not a comment): CStructField(line_num=434) mjtNum apirate ; 
		
		# update rate for remote API (Hz) 
		
		
		# solver parameters 
		
		# PlaceHolder (not a comment): CStructField(line_num=437) mjtNum impratio ; 
		
		# ratio of friction-to-normal contact impedance 
		
		# PlaceHolder (not a comment): CStructField(line_num=438) mjtNum tolerance ; 
		
		# main solver tolerance 
		
		# PlaceHolder (not a comment): CStructField(line_num=439) mjtNum ls_tolerance ; 
		
		# CG/Newton linesearch tolerance 
		
		# PlaceHolder (not a comment): CStructField(line_num=440) mjtNum noslip_tolerance ; 
		
		# noslip solver tolerance 
		
		# PlaceHolder (not a comment): CStructField(line_num=441) mjtNum ccd_tolerance ; 
		
		# convex collision solver tolerance 
		
		
		# physical constants 
		
		# PlaceHolder (not a comment): CStructField(line_num=444) mjtNum gravity[3] ; 
		
		# gravitational acceleration 
		
		# PlaceHolder (not a comment): CStructField(line_num=445) mjtNum wind[3] ; 
		
		# wind (for lift, drag and viscosity) 
		
		# PlaceHolder (not a comment): CStructField(line_num=446) mjtNum magnetic[3] ; 
		
		# global magnetic flux 
		
		# PlaceHolder (not a comment): CStructField(line_num=447) mjtNum density ; 
		
		# density of medium 
		
		# PlaceHolder (not a comment): CStructField(line_num=448) mjtNum viscosity ; 
		
		# viscosity of medium 
		
		
		# override contact solver parameters (if enabled) 
		
		# PlaceHolder (not a comment): CStructField(line_num=451) mjtNum o_margin ; 
		
		# margin 
		
		# PlaceHolder (not a comment): CStructField(line_num=452) mjtNum o_solref[mjNREF] ; 
		
		# solref 
		
		# PlaceHolder (not a comment): CStructField(line_num=453) mjtNum o_solimp[mjNIMP] ; 
		
		# solimp 
		
		# PlaceHolder (not a comment): CStructField(line_num=454) mjtNum o_friction[5] ; 
		
		# friction 
		
		
		# discrete settings 
		
		# PlaceHolder (not a comment): CStructField(line_num=457) int integrator ; 
		
		# integration mode (mjtIntegrator) 
		
		# PlaceHolder (not a comment): CStructField(line_num=458) int cone ; 
		
		# type of friction cone (mjtCone) 
		
		# PlaceHolder (not a comment): CStructField(line_num=459) int jacobian ; 
		
		# type of Jacobian (mjtJacobian) 
		
		# PlaceHolder (not a comment): CStructField(line_num=460) int solver ; 
		
		# solver algorithm (mjtSolver) 
		
		# PlaceHolder (not a comment): CStructField(line_num=461) int iterations ; 
		
		# maximum number of main solver iterations 
		
		# PlaceHolder (not a comment): CStructField(line_num=462) int ls_iterations ; 
		
		# maximum number of CG/Newton linesearch iterations 
		
		# PlaceHolder (not a comment): CStructField(line_num=463) int noslip_iterations ; 
		
		# maximum number of noslip solver iterations 
		
		# PlaceHolder (not a comment): CStructField(line_num=464) int ccd_iterations ; 
		
		# maximum number of convex collision solver iterations 
		
		# PlaceHolder (not a comment): CStructField(line_num=465) int disableflags ; 
		
		# bit flags for disabling standard features 
		
		# PlaceHolder (not a comment): CStructField(line_num=466) int enableflags ; 
		
		# bit flags for enabling optional features 
		
		# PlaceHolder (not a comment): CStructField(line_num=467) int disableactuator ; 
		
		# bit flags for disabling actuators by group id 
		
		
		# sdf collision settings 
		
		# PlaceHolder (not a comment): CStructField(line_num=470) int sdf_initpoints ; 
		
		# number of starting points for gradient descent 
		
		# PlaceHolder (not a comment): CStructField(line_num=471) int sdf_iterations ; 
		
		# max number of iterations for gradient descent 
	<AST-SPLIT>  } 
<AST-SPLIT>  ; 
# PlaceHolder (not a comment): TypeDef(line_num=473) typedef struct mjOption_ mjOption ; 
#---------------------------------- mjVisual ------------------------------------------------------ 
# PlaceHolder (not a comment): CStruct(line_num=478) struct mjVisual_ 
	# PlaceHolder (not a comment): Scope(line_num=478,scope_type=struct) { 
		
		# visualization options 
		
		# PlaceHolder (not a comment): CStruct(line_num=479) struct global 
			# PlaceHolder (not a comment): Scope(line_num=479,scope_type=struct) { 
				
				# global parameters 
				
				# PlaceHolder (not a comment): CStructField(line_num=480) int orthographic ; 
				
				# is the free camera orthographic (0: no, 1: yes) 
				
				# PlaceHolder (not a comment): CStructField(line_num=481) float fovy ; 
				
				# y field-of-view of free camera (orthographic ? length : degree) 
				
				# PlaceHolder (not a comment): CStructField(line_num=482) float ipd ; 
				
				# inter-pupilary distance for free camera 
				
				# PlaceHolder (not a comment): CStructField(line_num=483) float azimuth ; 
				
				# initial azimuth of free camera (degrees) 
				
				# PlaceHolder (not a comment): CStructField(line_num=484) float elevation ; 
				
				# initial elevation of free camera (degrees) 
				
				# PlaceHolder (not a comment): CStructField(line_num=485) float linewidth ; 
				
				# line width for wireframe and ray rendering 
				
				# PlaceHolder (not a comment): CStructField(line_num=486) float glow ; 
				
				# glow coefficient for selected body 
				
				# PlaceHolder (not a comment): CStructField(line_num=487) float realtime ; 
				
				# initial real-time factor (1: real time) 
				
				# PlaceHolder (not a comment): CStructField(line_num=488) int   offwidth ; 
				
				# width of offscreen buffer 
				
				# PlaceHolder (not a comment): CStructField(line_num=489) int   offheight ; 
				
				# height of offscreen buffer 
				
				# PlaceHolder (not a comment): CStructField(line_num=490) int   ellipsoidinertia ; 
				
				# geom for inertia visualization (0: box, 1: ellipsoid) 
				
				# PlaceHolder (not a comment): CStructField(line_num=491) int   bvactive ; 
				
				# visualize active bounding volumes (0: no, 1: yes) 
				
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		
		
		
		# PlaceHolder (not a comment): CStruct(line_num=494) struct quality 
			# PlaceHolder (not a comment): Scope(line_num=494,scope_type=struct) { 
				
				# rendering quality 
				
				# PlaceHolder (not a comment): CStructField(line_num=495) int   shadowsize ; 
				
				# size of shadowmap texture 
				
				# PlaceHolder (not a comment): CStructField(line_num=496) int   offsamples ; 
				
				# number of multisamples for offscreen rendering 
				
				# PlaceHolder (not a comment): CStructField(line_num=497) int   numslices ; 
				
				# number of slices for builtin geom drawing 
				
				# PlaceHolder (not a comment): CStructField(line_num=498) int   numstacks ; 
				
				# number of stacks for builtin geom drawing 
				
				# PlaceHolder (not a comment): CStructField(line_num=499) int   numquads ; 
				
				# number of quads for box rendering 
				
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		
		
		
		# PlaceHolder (not a comment): CStruct(line_num=502) struct headlight 
			# PlaceHolder (not a comment): Scope(line_num=502,scope_type=struct) { 
				
				# head light 
				
				# PlaceHolder (not a comment): CStructField(line_num=503) float ambient[3] ; 
				
				# ambient rgb (alpha=1) 
				
				# PlaceHolder (not a comment): CStructField(line_num=504) float diffuse[3] ; 
				
				# diffuse rgb (alpha=1) 
				
				# PlaceHolder (not a comment): CStructField(line_num=505) float specular[3] ; 
				
				# specular rgb (alpha=1) 
				
				# PlaceHolder (not a comment): CStructField(line_num=506) int   active ; 
				
				# is headlight active 
				
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		
		
		
		# PlaceHolder (not a comment): CStruct(line_num=509) struct map 
			# PlaceHolder (not a comment): Scope(line_num=509,scope_type=struct) { 
				
				# mapping 
				
				# PlaceHolder (not a comment): CStructField(line_num=510) float stiffness ; 
				
				# mouse perturbation stiffness (space->force) 
				
				# PlaceHolder (not a comment): CStructField(line_num=511) float stiffnessrot ; 
				
				# mouse perturbation stiffness (space->torque) 
				
				# PlaceHolder (not a comment): CStructField(line_num=512) float force ; 
				
				# from force units to space units 
				
				# PlaceHolder (not a comment): CStructField(line_num=513) float torque ; 
				
				# from torque units to space units 
				
				# PlaceHolder (not a comment): CStructField(line_num=514) float alpha ; 
				
				# scale geom alphas when transparency is enabled 
				
				# PlaceHolder (not a comment): CStructField(line_num=515) float fogstart ; 
				
				# OpenGL fog starts at fogstart * mjModel.stat.extent 
				
				# PlaceHolder (not a comment): CStructField(line_num=516) float fogend ; 
				
				# OpenGL fog ends at fogend * mjModel.stat.extent 
				
				# PlaceHolder (not a comment): CStructField(line_num=517) float znear ; 
				
				# near clipping plane = znear * mjModel.stat.extent 
				
				# PlaceHolder (not a comment): CStructField(line_num=518) float zfar ; 
				
				# far clipping plane = zfar * mjModel.stat.extent 
				
				# PlaceHolder (not a comment): CStructField(line_num=519) float haze ; 
				
				# haze ratio 
				
				# PlaceHolder (not a comment): CStructField(line_num=520) float shadowclip ; 
				
				# directional light: shadowclip * mjModel.stat.extent 
				
				# PlaceHolder (not a comment): CStructField(line_num=521) float shadowscale ; 
				
				# spot light: shadowscale * light.cutoff 
				
				# PlaceHolder (not a comment): CStructField(line_num=522) float actuatortendon ; 
				
				# scale tendon width 
				
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		
		
		
		# PlaceHolder (not a comment): CStruct(line_num=525) struct scale 
			# PlaceHolder (not a comment): Scope(line_num=525,scope_type=struct) { 
				
				# scale of decor elements relative to mean body size 
				
				# PlaceHolder (not a comment): CStructField(line_num=526) float forcewidth ; 
				
				# width of force arrow 
				
				# PlaceHolder (not a comment): CStructField(line_num=527) float contactwidth ; 
				
				# contact width 
				
				# PlaceHolder (not a comment): CStructField(line_num=528) float contactheight ; 
				
				# contact height 
				
				# PlaceHolder (not a comment): CStructField(line_num=529) float connect ; 
				
				# autoconnect capsule width 
				
				# PlaceHolder (not a comment): CStructField(line_num=530) float com ; 
				
				# com radius 
				
				# PlaceHolder (not a comment): CStructField(line_num=531) float camera ; 
				
				# camera object 
				
				# PlaceHolder (not a comment): CStructField(line_num=532) float light ; 
				
				# light object 
				
				# PlaceHolder (not a comment): CStructField(line_num=533) float selectpoint ; 
				
				# selection point 
				
				# PlaceHolder (not a comment): CStructField(line_num=534) float jointlength ; 
				
				# joint length 
				
				# PlaceHolder (not a comment): CStructField(line_num=535) float jointwidth ; 
				
				# joint width 
				
				# PlaceHolder (not a comment): CStructField(line_num=536) float actuatorlength ; 
				
				# actuator length 
				
				# PlaceHolder (not a comment): CStructField(line_num=537) float actuatorwidth ; 
				
				# actuator width 
				
				# PlaceHolder (not a comment): CStructField(line_num=538) float framelength ; 
				
				# bodyframe axis length 
				
				# PlaceHolder (not a comment): CStructField(line_num=539) float framewidth ; 
				
				# bodyframe axis width 
				
				# PlaceHolder (not a comment): CStructField(line_num=540) float constraint ; 
				
				# constraint width 
				
				# PlaceHolder (not a comment): CStructField(line_num=541) float slidercrank ; 
				
				# slidercrank width 
				
				# PlaceHolder (not a comment): CStructField(line_num=542) float frustum ; 
				
				# frustum zfar plane 
				
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		
		
		
		# PlaceHolder (not a comment): CStruct(line_num=545) struct rgba 
			# PlaceHolder (not a comment): Scope(line_num=545,scope_type=struct) { 
				
				# color of decor elements 
				
				# PlaceHolder (not a comment): CStructField(line_num=546) float fog[4] ; 
				
				# fog 
				
				# PlaceHolder (not a comment): CStructField(line_num=547) float haze[4] ; 
				
				# haze 
				
				# PlaceHolder (not a comment): CStructField(line_num=548) float force[4] ; 
				
				# external force 
				
				# PlaceHolder (not a comment): CStructField(line_num=549) float inertia[4] ; 
				
				# inertia box 
				
				# PlaceHolder (not a comment): CStructField(line_num=550) float joint[4] ; 
				
				# joint 
				
				# PlaceHolder (not a comment): CStructField(line_num=551) float actuator[4] ; 
				
				# actuator, neutral 
				
				# PlaceHolder (not a comment): CStructField(line_num=552) float actuatornegative[4] ; 
				
				# actuator, negative limit 
				
				# PlaceHolder (not a comment): CStructField(line_num=553) float actuatorpositive[4] ; 
				
				# actuator, positive limit 
				
				# PlaceHolder (not a comment): CStructField(line_num=554) float com[4] ; 
				
				# center of mass 
				
				# PlaceHolder (not a comment): CStructField(line_num=555) float camera[4] ; 
				
				# camera object 
				
				# PlaceHolder (not a comment): CStructField(line_num=556) float light[4] ; 
				
				# light object 
				
				# PlaceHolder (not a comment): CStructField(line_num=557) float selectpoint[4] ; 
				
				# selection point 
				
				# PlaceHolder (not a comment): CStructField(line_num=558) float connect[4] ; 
				
				# auto connect 
				
				# PlaceHolder (not a comment): CStructField(line_num=559) float contactpoint[4] ; 
				
				# contact point 
				
				# PlaceHolder (not a comment): CStructField(line_num=560) float contactforce[4] ; 
				
				# contact force 
				
				# PlaceHolder (not a comment): CStructField(line_num=561) float contactfriction[4] ; 
				
				# contact friction force 
				
				# PlaceHolder (not a comment): CStructField(line_num=562) float contacttorque[4] ; 
				
				# contact torque 
				
				# PlaceHolder (not a comment): CStructField(line_num=563) float contactgap[4] ; 
				
				# contact point in gap 
				
				# PlaceHolder (not a comment): CStructField(line_num=564) float rangefinder[4] ; 
				
				# rangefinder ray 
				
				# PlaceHolder (not a comment): CStructField(line_num=565) float constraint[4] ; 
				
				# constraint 
				
				# PlaceHolder (not a comment): CStructField(line_num=566) float slidercrank[4] ; 
				
				# slidercrank 
				
				# PlaceHolder (not a comment): CStructField(line_num=567) float crankbroken[4] ; 
				
				# used when crank must be stretched/broken 
				
				# PlaceHolder (not a comment): CStructField(line_num=568) float frustum[4] ; 
				
				# camera frustum 
				
				# PlaceHolder (not a comment): CStructField(line_num=569) float bv[4] ; 
				
				# bounding volume 
				
				# PlaceHolder (not a comment): CStructField(line_num=570) float bvactive[4] ; 
				
				# active bounding volume 
				
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		
	<AST-SPLIT>  } 
<AST-SPLIT>  ; 
# PlaceHolder (not a comment): TypeDef(line_num=573) typedef struct mjVisual_ mjVisual ; 
#---------------------------------- mjStatistic --------------------------------------------------- 
# PlaceHolder (not a comment): CStruct(line_num=578) struct mjStatistic_ 
	# PlaceHolder (not a comment): Scope(line_num=578,scope_type=struct) { 
		
		# model statistics (in qpos0) 
		
		# PlaceHolder (not a comment): CStructField(line_num=579) mjtNum meaninertia ; 
		
		# mean diagonal inertia 
		
		# PlaceHolder (not a comment): CStructField(line_num=580) mjtNum meanmass ; 
		
		# mean body mass 
		
		# PlaceHolder (not a comment): CStructField(line_num=581) mjtNum meansize ; 
		
		# mean body size 
		
		# PlaceHolder (not a comment): CStructField(line_num=582) mjtNum extent ; 
		
		# spatial extent 
		
		# PlaceHolder (not a comment): CStructField(line_num=583) mjtNum center[3] ; 
		
		# center of model 
	<AST-SPLIT>  } 
<AST-SPLIT>  ; 
# PlaceHolder (not a comment): TypeDef(line_num=585) typedef struct mjStatistic_ mjStatistic ; 
#---------------------------------- mjModel ------------------------------------------------------- 
# PlaceHolder (not a comment): CStruct(line_num=590) struct mjModel_ 
	# PlaceHolder (not a comment): Scope(line_num=590,scope_type=struct) { 
		
		# ------------------------------- sizes 
		
		
		# sizes needed at mjModel construction 
		
		# PlaceHolder (not a comment): CStructField(line_num=594) int nq ; 
		
		# number of generalized coordinates = dim(qpos) 
		
		# PlaceHolder (not a comment): CStructField(line_num=595) int nv ; 
		
		# number of degrees of freedom = dim(qvel) 
		
		# PlaceHolder (not a comment): CStructField(line_num=596) int nu ; 
		
		# number of actuators/controls = dim(ctrl) 
		
		# PlaceHolder (not a comment): CStructField(line_num=597) int na ; 
		
		# number of activation states = dim(act) 
		
		# PlaceHolder (not a comment): CStructField(line_num=598) int nbody ; 
		
		# number of bodies 
		
		# PlaceHolder (not a comment): CStructField(line_num=599) int nbvh ; 
		
		# number of total bounding volumes in all bodies 
		
		# PlaceHolder (not a comment): CStructField(line_num=600) int nbvhstatic ; 
		
		# number of static bounding volumes (aabb stored in mjModel) 
		
		# PlaceHolder (not a comment): CStructField(line_num=601) int nbvhdynamic ; 
		
		# number of dynamic bounding volumes (aabb stored in mjData) 
		
		# PlaceHolder (not a comment): CStructField(line_num=602) int njnt ; 
		
		# number of joints 
		
		# PlaceHolder (not a comment): CStructField(line_num=603) int ngeom ; 
		
		# number of geoms 
		
		# PlaceHolder (not a comment): CStructField(line_num=604) int nsite ; 
		
		# number of sites 
		
		# PlaceHolder (not a comment): CStructField(line_num=605) int ncam ; 
		
		# number of cameras 
		
		# PlaceHolder (not a comment): CStructField(line_num=606) int nlight ; 
		
		# number of lights 
		
		# PlaceHolder (not a comment): CStructField(line_num=607) int nflex ; 
		
		# number of flexes 
		
		# PlaceHolder (not a comment): CStructField(line_num=608) int nflexvert ; 
		
		# number of vertices in all flexes 
		
		# PlaceHolder (not a comment): CStructField(line_num=609) int nflexedge ; 
		
		# number of edges in all flexes 
		
		# PlaceHolder (not a comment): CStructField(line_num=610) int nflexelem ; 
		
		# number of elements in all flexes 
		
		# PlaceHolder (not a comment): CStructField(line_num=611) int nflexelemdata ; 
		
		# number of element vertex ids in all flexes 
		
		# PlaceHolder (not a comment): CStructField(line_num=612) int nflexelemedge ; 
		
		# number of element edge ids in all flexes 
		
		# PlaceHolder (not a comment): CStructField(line_num=613) int nflexshelldata ; 
		
		# number of shell fragment vertex ids in all flexes 
		
		# PlaceHolder (not a comment): CStructField(line_num=614) int nflexevpair ; 
		
		# number of element-vertex pairs in all flexes 
		
		# PlaceHolder (not a comment): CStructField(line_num=615) int nflextexcoord ; 
		
		# number of vertices with texture coordinates 
		
		# PlaceHolder (not a comment): CStructField(line_num=616) int nmesh ; 
		
		# number of meshes 
		
		# PlaceHolder (not a comment): CStructField(line_num=617) int nmeshvert ; 
		
		# number of vertices in all meshes 
		
		# PlaceHolder (not a comment): CStructField(line_num=618) int nmeshnormal ; 
		
		# number of normals in all meshes 
		
		# PlaceHolder (not a comment): CStructField(line_num=619) int nmeshtexcoord ; 
		
		# number of texcoords in all meshes 
		
		# PlaceHolder (not a comment): CStructField(line_num=620) int nmeshface ; 
		
		# number of triangular faces in all meshes 
		
		# PlaceHolder (not a comment): CStructField(line_num=621) int nmeshgraph ; 
		
		# number of ints in mesh auxiliary data 
		
		# PlaceHolder (not a comment): CStructField(line_num=622) int nskin ; 
		
		# number of skins 
		
		# PlaceHolder (not a comment): CStructField(line_num=623) int nskinvert ; 
		
		# number of vertices in all skins 
		
		# PlaceHolder (not a comment): CStructField(line_num=624) int nskintexvert ; 
		
		# number of vertiex with texcoords in all skins 
		
		# PlaceHolder (not a comment): CStructField(line_num=625) int nskinface ; 
		
		# number of triangular faces in all skins 
		
		# PlaceHolder (not a comment): CStructField(line_num=626) int nskinbone ; 
		
		# number of bones in all skins 
		
		# PlaceHolder (not a comment): CStructField(line_num=627) int nskinbonevert ; 
		
		# number of vertices in all skin bones 
		
		# PlaceHolder (not a comment): CStructField(line_num=628) int nhfield ; 
		
		# number of heightfields 
		
		# PlaceHolder (not a comment): CStructField(line_num=629) int nhfielddata ; 
		
		# number of data points in all heightfields 
		
		# PlaceHolder (not a comment): CStructField(line_num=630) int ntex ; 
		
		# number of textures 
		
		# PlaceHolder (not a comment): CStructField(line_num=631) int ntexdata ; 
		
		# number of bytes in texture rgb data 
		
		# PlaceHolder (not a comment): CStructField(line_num=632) int nmat ; 
		
		# number of materials 
		
		# PlaceHolder (not a comment): CStructField(line_num=633) int npair ; 
		
		# number of predefined geom pairs 
		
		# PlaceHolder (not a comment): CStructField(line_num=634) int nexclude ; 
		
		# number of excluded geom pairs 
		
		# PlaceHolder (not a comment): CStructField(line_num=635) int neq ; 
		
		# number of equality constraints 
		
		# PlaceHolder (not a comment): CStructField(line_num=636) int ntendon ; 
		
		# number of tendons 
		
		# PlaceHolder (not a comment): CStructField(line_num=637) int nwrap ; 
		
		# number of wrap objects in all tendon paths 
		
		# PlaceHolder (not a comment): CStructField(line_num=638) int nsensor ; 
		
		# number of sensors 
		
		# PlaceHolder (not a comment): CStructField(line_num=639) int nnumeric ; 
		
		# number of numeric custom fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=640) int nnumericdata ; 
		
		# number of mjtNums in all numeric fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=641) int ntext ; 
		
		# number of text custom fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=642) int ntextdata ; 
		
		# number of mjtBytes in all text fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=643) int ntuple ; 
		
		# number of tuple custom fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=644) int ntupledata ; 
		
		# number of objects in all tuple fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=645) int nkey ; 
		
		# number of keyframes 
		
		# PlaceHolder (not a comment): CStructField(line_num=646) int nmocap ; 
		
		# number of mocap bodies 
		
		# PlaceHolder (not a comment): CStructField(line_num=647) int nplugin ; 
		
		# number of plugin instances 
		
		# PlaceHolder (not a comment): CStructField(line_num=648) int npluginattr ; 
		
		# number of chars in all plugin config attributes 
		
		# PlaceHolder (not a comment): CStructField(line_num=649) int nuser_body ; 
		
		# number of mjtNums in body_user 
		
		# PlaceHolder (not a comment): CStructField(line_num=650) int nuser_jnt ; 
		
		# number of mjtNums in jnt_user 
		
		# PlaceHolder (not a comment): CStructField(line_num=651) int nuser_geom ; 
		
		# number of mjtNums in geom_user 
		
		# PlaceHolder (not a comment): CStructField(line_num=652) int nuser_site ; 
		
		# number of mjtNums in site_user 
		
		# PlaceHolder (not a comment): CStructField(line_num=653) int nuser_cam ; 
		
		# number of mjtNums in cam_user 
		
		# PlaceHolder (not a comment): CStructField(line_num=654) int nuser_tendon ; 
		
		# number of mjtNums in tendon_user 
		
		# PlaceHolder (not a comment): CStructField(line_num=655) int nuser_actuator ; 
		
		# number of mjtNums in actuator_user 
		
		# PlaceHolder (not a comment): CStructField(line_num=656) int nuser_sensor ; 
		
		# number of mjtNums in sensor_user 
		
		# PlaceHolder (not a comment): CStructField(line_num=657) int nnames ; 
		
		# number of chars in all names 
		
		# PlaceHolder (not a comment): CStructField(line_num=658) int nnames_map ; 
		
		# number of slots in the names hash map 
		
		# PlaceHolder (not a comment): CStructField(line_num=659) int npaths ; 
		
		# number of chars in all paths 
		
		
		# sizes set after mjModel construction (only affect mjData) 
		
		# PlaceHolder (not a comment): CStructField(line_num=662) int nM ; 
		
		# number of non-zeros in sparse inertia matrix 
		
		# PlaceHolder (not a comment): CStructField(line_num=663) int nB ; 
		
		# number of non-zeros in sparse body-dof matrix 
		
		# PlaceHolder (not a comment): CStructField(line_num=664) int nC ; 
		
		# number of non-zeros in sparse reduced dof-dof matrix 
		
		# PlaceHolder (not a comment): CStructField(line_num=665) int nD ; 
		
		# number of non-zeros in sparse dof-dof matrix 
		
		# PlaceHolder (not a comment): CStructField(line_num=666) int ntree ; 
		
		# number of kinematic trees under world body 
		
		# PlaceHolder (not a comment): CStructField(line_num=667) int ngravcomp ; 
		
		# number of bodies with nonzero gravcomp 
		
		# PlaceHolder (not a comment): CStructField(line_num=668) int nemax ; 
		
		# number of potential equality-constraint rows 
		
		# PlaceHolder (not a comment): CStructField(line_num=669) int njmax ; 
		
		# number of available rows in constraint Jacobian 
		
		# PlaceHolder (not a comment): CStructField(line_num=670) int nconmax ; 
		
		# number of potential contacts in contact list 
		
		# PlaceHolder (not a comment): CStructField(line_num=671) int nuserdata ; 
		
		# number of mjtNums reserved for the user 
		
		# PlaceHolder (not a comment): CStructField(line_num=672) int nsensordata ; 
		
		# number of mjtNums in sensor data vector 
		
		# PlaceHolder (not a comment): CStructField(line_num=673) int npluginstate ; 
		
		# number of mjtNums in plugin state vector 
		
		
		# PlaceHolder (not a comment): CStructField(line_num=675) size_t narena ; 
		
		# number of bytes in the mjData arena (inclusive of stack) 
		
		# PlaceHolder (not a comment): CStructField(line_num=676) size_t nbuffer ; 
		
		# number of bytes in buffer 
		
		
		# ------------------------------- options and statistics 
		
		
		# PlaceHolder (not a comment): CStructField(line_num=680) mjOption opt ; 
		
		# physics options 
		
		# PlaceHolder (not a comment): CStructField(line_num=681) mjVisual vis ; 
		
		# visualization options 
		
		# PlaceHolder (not a comment): CStructField(line_num=682) mjStatistic stat ; 
		
		# model statistics 
		
		
		# ------------------------------- buffers 
		
		
		# main buffer 
		
		# PlaceHolder (not a comment): CStructField(line_num=687) void*     buffer ; 
		
		# main buffer ;  all pointers point in it    (nbuffer) 
		
		
		# default generalized coordinates 
		
		# PlaceHolder (not a comment): CStructField(line_num=690) mjtNum*   qpos0 ; 
		
		# qpos values at default pose              (nq x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=691) mjtNum*   qpos_spring ; 
		
		# reference pose for springs               (nq x 1) 
		
		
		# bodies 
		
		# PlaceHolder (not a comment): CStructField(line_num=694) int*      body_parentid ; 
		
		# id of body's parent                      (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=695) int*      body_rootid ; 
		
		# id of root above body                    (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=696) int*      body_weldid ; 
		
		# id of body that this body is welded to   (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=697) int*      body_mocapid ; 
		
		# id of mocap data ;  -1: none               (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=698) int*      body_jntnum ; 
		
		# number of joints for this body           (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=699) int*      body_jntadr ; 
		
		# start addr of joints ;  -1: no joints      (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=700) int*      body_dofnum ; 
		
		# number of motion degrees of freedom      (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=701) int*      body_dofadr ; 
		
		# start addr of dofs ;  -1: no dofs          (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=702) int*      body_treeid ; 
		
		# id of body's kinematic tree ;  -1: static  (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=703) int*      body_geomnum ; 
		
		# number of geoms                          (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=704) int*      body_geomadr ; 
		
		# start addr of geoms ;  -1: no geoms        (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=705) mjtByte*  body_simple ; 
		
		# 1: diag M ;  2: diag M, sliders only       (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=706) mjtByte*  body_sameframe ; 
		
		# same frame as inertia (mjtSameframe)     (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=707) mjtNum*   body_pos ; 
		
		# position offset rel. to parent body      (nbody x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=708) mjtNum*   body_quat ; 
		
		# orientation offset rel. to parent body   (nbody x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=709) mjtNum*   body_ipos ; 
		
		# local position of center of mass         (nbody x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=710) mjtNum*   body_iquat ; 
		
		# local orientation of inertia ellipsoid   (nbody x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=711) mjtNum*   body_mass ; 
		
		# mass                                     (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=712) mjtNum*   body_subtreemass ; 
		
		# mass of subtree starting at this body    (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=713) mjtNum*   body_inertia ; 
		
		# diagonal inertia in ipos/iquat frame     (nbody x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=714) mjtNum*   body_invweight0 ; 
		
		# mean inv inert in qpos0 (trn, rot)       (nbody x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=715) mjtNum*   body_gravcomp ; 
		
		# antigravity force, units of body weight  (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=716) mjtNum*   body_margin ; 
		
		# MAX over all geom margins                (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=717) mjtNum*   body_user ; 
		
		# user data                                (nbody x nuser_body) 
		
		# PlaceHolder (not a comment): CStructField(line_num=718) int*      body_plugin ; 
		
		# plugin instance id ;  -1: not in use       (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=719) int*      body_contype ; 
		
		# OR over all geom contypes                (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=720) int*      body_conaffinity ; 
		
		# OR over all geom conaffinities           (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=721) int*      body_bvhadr ; 
		
		# address of bvh root                      (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=722) int*      body_bvhnum ; 
		
		# number of bounding volumes               (nbody x 1) 
		
		
		# bounding volume hierarchy 
		
		# PlaceHolder (not a comment): CStructField(line_num=725) int*      bvh_depth ; 
		
		# depth in the bounding volume hierarchy   (nbvh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=726) int*      bvh_child ; 
		
		# left and right children in tree          (nbvh x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=727) int*      bvh_nodeid ; 
		
		# geom or elem id of node ;  -1: non-leaf    (nbvh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=728) mjtNum*   bvh_aabb ; 
		
		# local bounding box (center, size)        (nbvhstatic x 6) 
		
		
		# joints 
		
		# PlaceHolder (not a comment): CStructField(line_num=731) int*      jnt_type ; 
		
		# type of joint (mjtJoint)                 (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=732) int*      jnt_qposadr ; 
		
		# start addr in 'qpos' for joint's data    (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=733) int*      jnt_dofadr ; 
		
		# start addr in 'qvel' for joint's data    (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=734) int*      jnt_bodyid ; 
		
		# id of joint's body                       (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=735) int*      jnt_group ; 
		
		# group for visibility                     (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=736) mjtByte*  jnt_limited ; 
		
		# does joint have limits                   (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=737) mjtByte*  jnt_actfrclimited ; 
		
		# does joint have actuator force limits    (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=738) mjtByte*  jnt_actgravcomp ; 
		
		# is gravcomp force applied via actuators  (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=739) mjtNum*   jnt_solref ; 
		
		# constraint solver reference: limit       (njnt x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=740) mjtNum*   jnt_solimp ; 
		
		# constraint solver impedance: limit       (njnt x mjNIMP) 
		
		# PlaceHolder (not a comment): CStructField(line_num=741) mjtNum*   jnt_pos ; 
		
		# local anchor position                    (njnt x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=742) mjtNum*   jnt_axis ; 
		
		# local joint axis                         (njnt x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=743) mjtNum*   jnt_stiffness ; 
		
		# stiffness coefficient                    (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=744) mjtNum*   jnt_range ; 
		
		# joint limits                             (njnt x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=745) mjtNum*   jnt_actfrcrange ; 
		
		# range of total actuator force            (njnt x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=746) mjtNum*   jnt_margin ; 
		
		# min distance for limit detection         (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=747) mjtNum*   jnt_user ; 
		
		# user data                                (njnt x nuser_jnt) 
		
		
		# dofs 
		
		# PlaceHolder (not a comment): CStructField(line_num=750) int*      dof_bodyid ; 
		
		# id of dof's body                         (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=751) int*      dof_jntid ; 
		
		# id of dof's joint                        (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=752) int*      dof_parentid ; 
		
		# id of dof's parent ;  -1: none             (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=753) int*      dof_treeid ; 
		
		# id of dof's kinematic tree               (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=754) int*      dof_Madr ; 
		
		# dof address in M-diagonal                (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=755) int*      dof_simplenum ; 
		
		# number of consecutive simple dofs        (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=756) mjtNum*   dof_solref ; 
		
		# constraint solver reference:frictionloss (nv x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=757) mjtNum*   dof_solimp ; 
		
		# constraint solver impedance:frictionloss (nv x mjNIMP) 
		
		# PlaceHolder (not a comment): CStructField(line_num=758) mjtNum*   dof_frictionloss ; 
		
		# dof friction loss                        (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=759) mjtNum*   dof_armature ; 
		
		# dof armature inertia/mass                (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=760) mjtNum*   dof_damping ; 
		
		# damping coefficient                      (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=761) mjtNum*   dof_invweight0 ; 
		
		# diag. inverse inertia in qpos0           (nv x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=762) mjtNum*   dof_M0 ; 
		
		# diag. inertia in qpos0                   (nv x 1) 
		
		
		# geoms 
		
		# PlaceHolder (not a comment): CStructField(line_num=765) int*      geom_type ; 
		
		# geometric type (mjtGeom)                 (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=766) int*      geom_contype ; 
		
		# geom contact type                        (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=767) int*      geom_conaffinity ; 
		
		# geom contact affinity                    (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=768) int*      geom_condim ; 
		
		# contact dimensionality (1, 3, 4, 6)      (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=769) int*      geom_bodyid ; 
		
		# id of geom's body                        (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=770) int*      geom_dataid ; 
		
		# id of geom's mesh/hfield ;  -1: none       (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=771) int*      geom_matid ; 
		
		# material id for rendering ;  -1: none      (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=772) int*      geom_group ; 
		
		# group for visibility                     (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=773) int*      geom_priority ; 
		
		# geom contact priority                    (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=774) int*      geom_plugin ; 
		
		# plugin instance id ;  -1: not in use       (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=775) mjtByte*  geom_sameframe ; 
		
		# same frame as body (mjtSameframe)        (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=776) mjtNum*   geom_solmix ; 
		
		# mixing coef for solref/imp in geom pair  (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=777) mjtNum*   geom_solref ; 
		
		# constraint solver reference: contact     (ngeom x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=778) mjtNum*   geom_solimp ; 
		
		# constraint solver impedance: contact     (ngeom x mjNIMP) 
		
		# PlaceHolder (not a comment): CStructField(line_num=779) mjtNum*   geom_size ; 
		
		# geom-specific size parameters            (ngeom x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=780) mjtNum*   geom_aabb ; 
		
		# bounding box, (center, size)             (ngeom x 6) 
		
		# PlaceHolder (not a comment): CStructField(line_num=781) mjtNum*   geom_rbound ; 
		
		# radius of bounding sphere                (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=782) mjtNum*   geom_pos ; 
		
		# local position offset rel. to body       (ngeom x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=783) mjtNum*   geom_quat ; 
		
		# local orientation offset rel. to body    (ngeom x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=784) mjtNum*   geom_friction ; 
		
		# friction for (slide, spin, roll)         (ngeom x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=785) mjtNum*   geom_margin ; 
		
		# detect contact if dist<margin            (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=786) mjtNum*   geom_gap ; 
		
		# include in solver if dist<margin-gap     (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=787) mjtNum*   geom_fluid ; 
		
		# fluid interaction parameters             (ngeom x mjNFLUID) 
		
		# PlaceHolder (not a comment): CStructField(line_num=788) mjtNum*   geom_user ; 
		
		# user data                                (ngeom x nuser_geom) 
		
		# PlaceHolder (not a comment): CStructField(line_num=789) float*    geom_rgba ; 
		
		# rgba when material is omitted            (ngeom x 4) 
		
		
		# sites 
		
		# PlaceHolder (not a comment): CStructField(line_num=792) int*      site_type ; 
		
		# geom type for rendering (mjtGeom)        (nsite x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=793) int*      site_bodyid ; 
		
		# id of site's body                        (nsite x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=794) int*      site_matid ; 
		
		# material id for rendering ;  -1: none      (nsite x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=795) int*      site_group ; 
		
		# group for visibility                     (nsite x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=796) mjtByte*  site_sameframe ; 
		
		# same frame as body (mjtSameframe)        (nsite x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=797) mjtNum*   site_size ; 
		
		# geom size for rendering                  (nsite x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=798) mjtNum*   site_pos ; 
		
		# local position offset rel. to body       (nsite x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=799) mjtNum*   site_quat ; 
		
		# local orientation offset rel. to body    (nsite x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=800) mjtNum*   site_user ; 
		
		# user data                                (nsite x nuser_site) 
		
		# PlaceHolder (not a comment): CStructField(line_num=801) float*    site_rgba ; 
		
		# rgba when material is omitted            (nsite x 4) 
		
		
		# cameras 
		
		# PlaceHolder (not a comment): CStructField(line_num=804) int*      cam_mode ; 
		
		# camera tracking mode (mjtCamLight)       (ncam x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=805) int*      cam_bodyid ; 
		
		# id of camera's body                      (ncam x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=806) int*      cam_targetbodyid ; 
		
		# id of targeted body ;  -1: none            (ncam x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=807) mjtNum*   cam_pos ; 
		
		# position rel. to body frame              (ncam x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=808) mjtNum*   cam_quat ; 
		
		# orientation rel. to body frame           (ncam x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=809) mjtNum*   cam_poscom0 ; 
		
		# global position rel. to sub-com in qpos0 (ncam x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=810) mjtNum*   cam_pos0 ; 
		
		# global position rel. to body in qpos0    (ncam x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=811) mjtNum*   cam_mat0 ; 
		
		# global orientation in qpos0              (ncam x 9) 
		
		# PlaceHolder (not a comment): CStructField(line_num=812) int*      cam_orthographic ; 
		
		# orthographic camera ;  0: no, 1: yes       (ncam x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=813) mjtNum*   cam_fovy ; 
		
		# y field-of-view (ortho ? len : deg)      (ncam x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=814) mjtNum*   cam_ipd ; 
		
		# inter-pupilary distance                  (ncam x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=815) int*      cam_resolution ; 
		
		# resolution: pixels [width, height]       (ncam x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=816) float*    cam_sensorsize ; 
		
		# sensor size: length [width, height]      (ncam x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=817) float*    cam_intrinsic ; 
		
		# [focal length ;  principal point]          (ncam x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=818) mjtNum*   cam_user ; 
		
		# user data                                (ncam x nuser_cam) 
		
		
		# lights 
		
		# PlaceHolder (not a comment): CStructField(line_num=821) int*      light_mode ; 
		
		# light tracking mode (mjtCamLight)        (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=822) int*      light_bodyid ; 
		
		# id of light's body                       (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=823) int*      light_targetbodyid ; 
		
		# id of targeted body ;  -1: none            (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=824) mjtByte*  light_directional ; 
		
		# directional light                        (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=825) mjtByte*  light_castshadow ; 
		
		# does light cast shadows                  (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=826) float*    light_bulbradius ; 
		
		# light radius for soft shadows            (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=827) mjtByte*  light_active ; 
		
		# is light on                              (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=828) mjtNum*   light_pos ; 
		
		# position rel. to body frame              (nlight x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=829) mjtNum*   light_dir ; 
		
		# direction rel. to body frame             (nlight x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=830) mjtNum*   light_poscom0 ; 
		
		# global position rel. to sub-com in qpos0 (nlight x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=831) mjtNum*   light_pos0 ; 
		
		# global position rel. to body in qpos0    (nlight x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=832) mjtNum*   light_dir0 ; 
		
		# global direction in qpos0                (nlight x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=833) float*    light_attenuation ; 
		
		# OpenGL attenuation (quadratic model)     (nlight x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=834) float*    light_cutoff ; 
		
		# OpenGL cutoff                            (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=835) float*    light_exponent ; 
		
		# OpenGL exponent                          (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=836) float*    light_ambient ; 
		
		# ambient rgb (alpha=1)                    (nlight x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=837) float*    light_diffuse ; 
		
		# diffuse rgb (alpha=1)                    (nlight x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=838) float*    light_specular ; 
		
		# specular rgb (alpha=1)                   (nlight x 3) 
		
		
		# flexes: contact properties 
		
		# PlaceHolder (not a comment): CStructField(line_num=841) int*      flex_contype ; 
		
		# flex contact type                        (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=842) int*      flex_conaffinity ; 
		
		# flex contact affinity                    (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=843) int*      flex_condim ; 
		
		# contact dimensionality (1, 3, 4, 6)      (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=844) int*      flex_priority ; 
		
		# flex contact priority                    (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=845) mjtNum*   flex_solmix ; 
		
		# mix coef for solref/imp in contact pair  (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=846) mjtNum*   flex_solref ; 
		
		# constraint solver reference: contact     (nflex x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=847) mjtNum*   flex_solimp ; 
		
		# constraint solver impedance: contact     (nflex x mjNIMP) 
		
		# PlaceHolder (not a comment): CStructField(line_num=848) mjtNum*   flex_friction ; 
		
		# friction for (slide, spin, roll)         (nflex x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=849) mjtNum*   flex_margin ; 
		
		# detect contact if dist<margin            (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=850) mjtNum*   flex_gap ; 
		
		# include in solver if dist<margin-gap     (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=851) mjtByte*  flex_internal ; 
		
		# internal flex collision enabled          (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=852) int*      flex_selfcollide ; 
		
		# self collision mode (mjtFlexSelf)        (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=853) int*      flex_activelayers ; 
		
		# number of active element layers, 3D only (nflex x 1) 
		
		
		# flexes: other properties 
		
		# PlaceHolder (not a comment): CStructField(line_num=856) int*      flex_dim ; 
		
		# 1: lines, 2: triangles, 3: tetrahedra    (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=857) int*      flex_matid ; 
		
		# material id for rendering                (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=858) int*      flex_group ; 
		
		# group for visibility                     (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=859) int*      flex_vertadr ; 
		
		# first vertex address                     (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=860) int*      flex_vertnum ; 
		
		# number of vertices                       (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=861) int*      flex_edgeadr ; 
		
		# first edge address                       (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=862) int*      flex_edgenum ; 
		
		# number of edges                          (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=863) int*      flex_elemadr ; 
		
		# first element address                    (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=864) int*      flex_elemnum ; 
		
		# number of elements                       (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=865) int*      flex_elemdataadr ; 
		
		# first element vertex id address          (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=866) int*      flex_elemedgeadr ; 
		
		# first element edge id address            (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=867) int*      flex_shellnum ; 
		
		# number of shells                         (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=868) int*      flex_shelldataadr ; 
		
		# first shell data address                 (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=869) int*      flex_evpairadr ; 
		
		# first evpair address                     (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=870) int*      flex_evpairnum ; 
		
		# number of evpairs                        (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=871) int*      flex_texcoordadr ; 
		
		# address in flex_texcoord ;  -1: none       (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=872) int*      flex_vertbodyid ; 
		
		# vertex body ids                          (nflexvert x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=873) int*      flex_edge ; 
		
		# edge vertex ids (2 per edge)             (nflexedge x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=874) int*      flex_elem ; 
		
		# element vertex ids (dim+1 per elem)      (nflexelemdata x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=875) int*      flex_elemedge ; 
		
		# element edge ids                         (nflexelemedge x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=876) int*      flex_elemlayer ; 
		
		# element distance from surface, 3D only   (nflexelem x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=877) int*      flex_shell ; 
		
		# shell fragment vertex ids (dim per frag) (nflexshelldata x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=878) int*      flex_evpair ; 
		
		# (element, vertex) collision pairs        (nflexevpair x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=879) mjtNum*   flex_vert ; 
		
		# vertex positions in local body frames    (nflexvert x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=880) mjtNum*   flex_xvert0 ; 
		
		# Cartesian vertex positions in qpos0      (nflexvert x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=881) mjtNum*   flexedge_length0 ; 
		
		# edge lengths in qpos0                    (nflexedge x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=882) mjtNum*   flexedge_invweight0 ; 
		
		# edge inv. weight in qpos0                (nflexedge x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=883) mjtNum*   flex_radius ; 
		
		# radius around primitive element          (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=884) mjtNum*   flex_stiffness ; 
		
		# finite element stiffness matrix          (nflexelem x 21) 
		
		# PlaceHolder (not a comment): CStructField(line_num=885) mjtNum*   flex_damping ; 
		
		# Rayleigh's damping coefficient           (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=886) mjtNum*   flex_edgestiffness ; 
		
		# edge stiffness                           (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=887) mjtNum*   flex_edgedamping ; 
		
		# edge damping                             (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=888) mjtByte*  flex_edgeequality ; 
		
		# is edge equality constraint defined      (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=889) mjtByte*  flex_rigid ; 
		
		# are all verices in the same body         (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=890) mjtByte*  flexedge_rigid ; 
		
		# are both edge vertices in same body      (nflexedge x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=891) mjtByte*  flex_centered ; 
		
		# are all vertex coordinates (0,0,0)       (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=892) mjtByte*  flex_flatskin ; 
		
		# render flex skin with flat shading       (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=893) int*      flex_bvhadr ; 
		
		# address of bvh root ;  -1: no bvh          (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=894) int*      flex_bvhnum ; 
		
		# number of bounding volumes               (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=895) float*    flex_rgba ; 
		
		# rgba when material is omitted            (nflex x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=896) float*    flex_texcoord ; 
		
		# vertex texture coordinates               (nflextexcoord x 2) 
		
		
		# meshes 
		
		# PlaceHolder (not a comment): CStructField(line_num=899) int*      mesh_vertadr ; 
		
		# first vertex address                     (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=900) int*      mesh_vertnum ; 
		
		# number of vertices                       (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=901) int*      mesh_faceadr ; 
		
		# first face address                       (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=902) int*      mesh_facenum ; 
		
		# number of faces                          (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=903) int*      mesh_bvhadr ; 
		
		# address of bvh root                      (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=904) int*      mesh_bvhnum ; 
		
		# number of bvh                            (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=905) int*      mesh_normaladr ; 
		
		# first normal address                     (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=906) int*      mesh_normalnum ; 
		
		# number of normals                        (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=907) int*      mesh_texcoordadr ; 
		
		# texcoord data address ;  -1: no texcoord   (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=908) int*      mesh_texcoordnum ; 
		
		# number of texcoord                       (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=909) int*      mesh_graphadr ; 
		
		# graph data address ;  -1: no graph         (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=910) float*    mesh_vert ; 
		
		# vertex positions for all meshes          (nmeshvert x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=911) float*    mesh_normal ; 
		
		# normals for all meshes                   (nmeshnormal x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=912) float*    mesh_texcoord ; 
		
		# vertex texcoords for all meshes          (nmeshtexcoord x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=913) int*      mesh_face ; 
		
		# vertex face data                         (nmeshface x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=914) int*      mesh_facenormal ; 
		
		# normal face data                         (nmeshface x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=915) int*      mesh_facetexcoord ; 
		
		# texture face data                        (nmeshface x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=916) int*      mesh_graph ; 
		
		# convex graph data                        (nmeshgraph x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=917) mjtNum*   mesh_scale ; 
		
		# scaling applied to asset vertices        (nmesh x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=918) mjtNum*   mesh_pos ; 
		
		# translation applied to asset vertices    (nmesh x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=919) mjtNum*   mesh_quat ; 
		
		# rotation applied to asset vertices       (nmesh x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=920) int*      mesh_pathadr ; 
		
		# address of asset path for mesh ;  -1: none (nmesh x 1) 
		
		
		# skins 
		
		# PlaceHolder (not a comment): CStructField(line_num=923) int*      skin_matid ; 
		
		# skin material id ;  -1: none               (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=924) int*      skin_group ; 
		
		# group for visibility                     (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=925) float*    skin_rgba ; 
		
		# skin rgba                                (nskin x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=926) float*    skin_inflate ; 
		
		# inflate skin in normal direction         (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=927) int*      skin_vertadr ; 
		
		# first vertex address                     (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=928) int*      skin_vertnum ; 
		
		# number of vertices                       (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=929) int*      skin_texcoordadr ; 
		
		# texcoord data address ;  -1: no texcoord   (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=930) int*      skin_faceadr ; 
		
		# first face address                       (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=931) int*      skin_facenum ; 
		
		# number of faces                          (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=932) int*      skin_boneadr ; 
		
		# first bone in skin                       (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=933) int*      skin_bonenum ; 
		
		# number of bones in skin                  (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=934) float*    skin_vert ; 
		
		# vertex positions for all skin meshes     (nskinvert x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=935) float*    skin_texcoord ; 
		
		# vertex texcoords for all skin meshes     (nskintexvert x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=936) int*      skin_face ; 
		
		# triangle faces for all skin meshes       (nskinface x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=937) int*      skin_bonevertadr ; 
		
		# first vertex in each bone                (nskinbone x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=938) int*      skin_bonevertnum ; 
		
		# number of vertices in each bone          (nskinbone x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=939) float*    skin_bonebindpos ; 
		
		# bind pos of each bone                    (nskinbone x 3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=940) float*    skin_bonebindquat ; 
		
		# bind quat of each bone                   (nskinbone x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=941) int*      skin_bonebodyid ; 
		
		# body id of each bone                     (nskinbone x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=942) int*      skin_bonevertid ; 
		
		# mesh ids of vertices in each bone        (nskinbonevert x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=943) float*    skin_bonevertweight ; 
		
		# weights of vertices in each bone         (nskinbonevert x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=944) int*      skin_pathadr ; 
		
		# address of asset path for skin ;  -1: none (nskin x 1) 
		
		
		# height fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=947) mjtNum*   hfield_size ; 
		
		# (x, y, z_top, z_bottom)                  (nhfield x 4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=948) int*      hfield_nrow ; 
		
		# number of rows in grid                   (nhfield x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=949) int*      hfield_ncol ; 
		
		# number of columns in grid                (nhfield x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=950) int*      hfield_adr ; 
		
		# address in hfield_data                   (nhfield x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=951) float*    hfield_data ; 
		
		# elevation data                           (nhfielddata x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=952) int*      hfield_pathadr ; 
		
		# address of hfield asset path ;  -1: none   (nhfield x 1) 
		
		
		# textures 
		
		# PlaceHolder (not a comment): CStructField(line_num=955) int*      tex_type ; 
		
		# texture type (mjtTexture)                (ntex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=956) int*      tex_height ; 
		
		# number of rows in texture image          (ntex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=957) int*      tex_width ; 
		
		# number of columns in texture image       (ntex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=958) int*      tex_nchannel ; 
		
		# number of channels in texture image      (ntex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=959) int*      tex_adr ; 
		
		# start address in tex_data                (ntex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=960) mjtByte*  tex_data ; 
		
		# pixel values                             (ntexdata x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=961) int*      tex_pathadr ; 
		
		# address of texture asset path ;  -1: none  (ntex x 1) 
		
		
		# materials 
		
		# PlaceHolder (not a comment): CStructField(line_num=964) int*      mat_texid ; 
		
		# indices of textures ;  -1: none            (nmat x mjNTEXROLE) 
		
		# PlaceHolder (not a comment): CStructField(line_num=965) mjtByte*  mat_texuniform ; 
		
		# make texture cube uniform                (nmat x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=966) float*    mat_texrepeat ; 
		
		# texture repetition for 2d mapping        (nmat x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=967) float*    mat_emission ; 
		
		# emission (x rgb)                         (nmat x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=968) float*    mat_specular ; 
		
		# specular (x white)                       (nmat x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=969) float*    mat_shininess ; 
		
		# shininess coef                           (nmat x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=970) float*    mat_reflectance ; 
		
		# reflectance (0: disable)                 (nmat x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=971) float*    mat_metallic ; 
		
		# metallic coef                            (nmat x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=972) float*    mat_roughness ; 
		
		# roughness coef                           (nmat x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=973) float*    mat_rgba ; 
		
		# rgba                                     (nmat x 4) 
		
		
		# predefined geom pairs for collision detection ;  has precedence over exclude 
		
		# PlaceHolder (not a comment): CStructField(line_num=976) int*      pair_dim ; 
		
		# contact dimensionality                   (npair x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=977) int*      pair_geom1 ; 
		
		# id of geom1                              (npair x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=978) int*      pair_geom2 ; 
		
		# id of geom2                              (npair x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=979) int*      pair_signature ; 
		
		# body1 << 16 + body2                      (npair x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=980) mjtNum*   pair_solref ; 
		
		# solver reference: contact normal         (npair x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=981) mjtNum*   pair_solreffriction ; 
		
		# solver reference: contact friction       (npair x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=982) mjtNum*   pair_solimp ; 
		
		# solver impedance: contact                (npair x mjNIMP) 
		
		# PlaceHolder (not a comment): CStructField(line_num=983) mjtNum*   pair_margin ; 
		
		# detect contact if dist<margin            (npair x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=984) mjtNum*   pair_gap ; 
		
		# include in solver if dist<margin-gap     (npair x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=985) mjtNum*   pair_friction ; 
		
		# tangent1, 2, spin, roll1, 2              (npair x 5) 
		
		
		# excluded body pairs for collision detection 
		
		# PlaceHolder (not a comment): CStructField(line_num=988) int*      exclude_signature ; 
		
		# body1 << 16 + body2                      (nexclude x 1) 
		
		
		# equality constraints 
		
		# PlaceHolder (not a comment): CStructField(line_num=991) int*      eq_type ; 
		
		# constraint type (mjtEq)                  (neq x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=992) int*      eq_obj1id ; 
		
		# id of object 1                           (neq x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=993) int*      eq_obj2id ; 
		
		# id of object 2                           (neq x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=994) int*      eq_objtype ; 
		
		# type of both objects (mjtObj)            (neq x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=995) mjtByte*  eq_active0 ; 
		
		# initial enable/disable constraint state  (neq x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=996) mjtNum*   eq_solref ; 
		
		# constraint solver reference              (neq x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=997) mjtNum*   eq_solimp ; 
		
		# constraint solver impedance              (neq x mjNIMP) 
		
		# PlaceHolder (not a comment): CStructField(line_num=998) mjtNum*   eq_data ; 
		
		# numeric data for constraint              (neq x mjNEQDATA) 
		
		
		# tendons 
		
		# PlaceHolder (not a comment): CStructField(line_num=1001) int*      tendon_adr ; 
		
		# address of first object in tendon's path (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1002) int*      tendon_num ; 
		
		# number of objects in tendon's path       (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1003) int*      tendon_matid ; 
		
		# material id for rendering                (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1004) int*      tendon_group ; 
		
		# group for visibility                     (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1005) mjtByte*  tendon_limited ; 
		
		# does tendon have length limits           (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1006) mjtNum*   tendon_width ; 
		
		# width for rendering                      (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1007) mjtNum*   tendon_solref_lim ; 
		
		# constraint solver reference: limit       (ntendon x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1008) mjtNum*   tendon_solimp_lim ; 
		
		# constraint solver impedance: limit       (ntendon x mjNIMP) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1009) mjtNum*   tendon_solref_fri ; 
		
		# constraint solver reference: friction    (ntendon x mjNREF) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1010) mjtNum*   tendon_solimp_fri ; 
		
		# constraint solver impedance: friction    (ntendon x mjNIMP) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1011) mjtNum*   tendon_range ; 
		
		# tendon length limits                     (ntendon x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1012) mjtNum*   tendon_margin ; 
		
		# min distance for limit detection         (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1013) mjtNum*   tendon_stiffness ; 
		
		# stiffness coefficient                    (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1014) mjtNum*   tendon_damping ; 
		
		# damping coefficient                      (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1015) mjtNum*   tendon_frictionloss ; 
		
		# loss due to friction                     (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1016) mjtNum*   tendon_lengthspring ; 
		
		# spring resting length range              (ntendon x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1017) mjtNum*   tendon_length0 ; 
		
		# tendon length in qpos0                   (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1018) mjtNum*   tendon_invweight0 ; 
		
		# inv. weight in qpos0                     (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1019) mjtNum*   tendon_user ; 
		
		# user data                                (ntendon x nuser_tendon) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1020) float*    tendon_rgba ; 
		
		# rgba when material is omitted            (ntendon x 4) 
		
		
		# list of all wrap objects in tendon paths 
		
		# PlaceHolder (not a comment): CStructField(line_num=1023) int*      wrap_type ; 
		
		# wrap object type (mjtWrap)               (nwrap x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1024) int*      wrap_objid ; 
		
		# object id: geom, site, joint             (nwrap x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1025) mjtNum*   wrap_prm ; 
		
		# divisor, joint coef, or site id          (nwrap x 1) 
		
		
		# actuators 
		
		# PlaceHolder (not a comment): CStructField(line_num=1028) int*      actuator_trntype ; 
		
		# transmission type (mjtTrn)               (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1029) int*      actuator_dyntype ; 
		
		# dynamics type (mjtDyn)                   (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1030) int*      actuator_gaintype ; 
		
		# gain type (mjtGain)                      (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1031) int*      actuator_biastype ; 
		
		# bias type (mjtBias)                      (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1032) int*      actuator_trnid ; 
		
		# transmission id: joint, tendon, site     (nu x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1033) int*      actuator_actadr ; 
		
		# first activation address ;  -1: stateless  (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1034) int*      actuator_actnum ; 
		
		# number of activation variables           (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1035) int*      actuator_group ; 
		
		# group for visibility                     (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1036) mjtByte*  actuator_ctrllimited ; 
		
		# is control limited                       (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1037) mjtByte*  actuator_forcelimited ; 
		# is force limited                         (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1038) mjtByte*  actuator_actlimited ; 
		
		# is activation limited                    (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1039) mjtNum*   actuator_dynprm ; 
		
		# dynamics parameters                      (nu x mjNDYN) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1040) mjtNum*   actuator_gainprm ; 
		
		# gain parameters                          (nu x mjNGAIN) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1041) mjtNum*   actuator_biasprm ; 
		
		# bias parameters                          (nu x mjNBIAS) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1042) mjtByte*  actuator_actearly ; 
		
		# step activation before force             (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1043) mjtNum*   actuator_ctrlrange ; 
		
		# range of controls                        (nu x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1044) mjtNum*   actuator_forcerange ; 
		
		# range of forces                          (nu x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1045) mjtNum*   actuator_actrange ; 
		
		# range of activations                     (nu x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1046) mjtNum*   actuator_gear ; 
		
		# scale length and transmitted force       (nu x 6) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1047) mjtNum*   actuator_cranklength ; 
		
		# crank length for slider-crank            (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1048) mjtNum*   actuator_acc0 ; 
		
		# acceleration from unit force in qpos0    (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1049) mjtNum*   actuator_length0 ; 
		
		# actuator length in qpos0                 (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1050) mjtNum*   actuator_lengthrange ; 
		
		# feasible actuator length range           (nu x 2) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1051) mjtNum*   actuator_user ; 
		
		# user data                                (nu x nuser_actuator) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1052) int*      actuator_plugin ; 
		
		# plugin instance id ;  -1: not a plugin     (nu x 1) 
		
		
		# sensors 
		
		# PlaceHolder (not a comment): CStructField(line_num=1055) int*      sensor_type ; 
		
		# sensor type (mjtSensor)                  (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1056) int*      sensor_datatype ; 
		
		# numeric data type (mjtDataType)          (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1057) int*      sensor_needstage ; 
		
		# required compute stage (mjtStage)        (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1058) int*      sensor_objtype ; 
		
		# type of sensorized object (mjtObj)       (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1059) int*      sensor_objid ; 
		
		# id of sensorized object                  (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1060) int*      sensor_reftype ; 
		
		# type of reference frame (mjtObj)         (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1061) int*      sensor_refid ; 
		
		# id of reference frame ;  -1: global frame  (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1062) int*      sensor_dim ; 
		
		# number of scalar outputs                 (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1063) int*      sensor_adr ; 
		
		# address in sensor array                  (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1064) mjtNum*   sensor_cutoff ; 
		
		# cutoff for real and positive ;  0: ignore  (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1065) mjtNum*   sensor_noise ; 
		
		# noise standard deviation                 (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1066) mjtNum*   sensor_user ; 
		
		# user data                                (nsensor x nuser_sensor) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1067) int*      sensor_plugin ; 
		
		# plugin instance id ;  -1: not a plugin     (nsensor x 1) 
		
		
		# plugin instances 
		
		# PlaceHolder (not a comment): CStructField(line_num=1070) int*      plugin ; 
		
		# globally registered plugin slot number   (nplugin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1071) int*      plugin_stateadr ; 
		
		# address in the plugin state array        (nplugin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1072) int*      plugin_statenum ; 
		
		# number of states in the plugin instance  (nplugin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1073) char*     plugin_attr ; 
		
		# config attributes of plugin instances    (npluginattr x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1074) int*      plugin_attradr ; 
		
		# address to each instance's config attrib (nplugin x 1) 
		
		
		# custom numeric fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=1077) int*      numeric_adr ; 
		
		# address of field in numeric_data         (nnumeric x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1078) int*      numeric_size ; 
		
		# size of numeric field                    (nnumeric x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1079) mjtNum*   numeric_data ; 
		
		# array of all numeric fields              (nnumericdata x 1) 
		
		
		# custom text fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=1082) int*      text_adr ; 
		
		# address of text in text_data             (ntext x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1083) int*      text_size ; 
		
		# size of text field (strlen+1)            (ntext x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1084) char*     text_data ; 
		
		# array of all text fields (0-terminated)  (ntextdata x 1) 
		
		
		# custom tuple fields 
		
		# PlaceHolder (not a comment): CStructField(line_num=1087) int*      tuple_adr ; 
		
		# address of text in text_data             (ntuple x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1088) int*      tuple_size ; 
		
		# number of objects in tuple               (ntuple x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1089) int*      tuple_objtype ; 
		
		# array of object types in all tuples      (ntupledata x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1090) int*      tuple_objid ; 
		
		# array of object ids in all tuples        (ntupledata x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1091) mjtNum*   tuple_objprm ; 
		
		# array of object params in all tuples     (ntupledata x 1) 
		
		
		# keyframes 
		
		# PlaceHolder (not a comment): CStructField(line_num=1094) mjtNum*   key_time ; 
		
		# key time                                 (nkey x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1095) mjtNum*   key_qpos ; 
		
		# key position                             (nkey x nq) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1096) mjtNum*   key_qvel ; 
		
		# key velocity                             (nkey x nv) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1097) mjtNum*   key_act ; 
		
		# key activation                           (nkey x na) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1098) mjtNum*   key_mpos ; 
		
		# key mocap position                       (nkey x nmocap*3) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1099) mjtNum*   key_mquat ; 
		
		# key mocap quaternion                     (nkey x nmocap*4) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1100) mjtNum*   key_ctrl ; 
		
		# key control                              (nkey x nu) 
		
		
		# names 
		
		# PlaceHolder (not a comment): CStructField(line_num=1103) int*      name_bodyadr ; 
		
		# body name pointers                       (nbody x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1104) int*      name_jntadr ; 
		
		# joint name pointers                      (njnt x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1105) int*      name_geomadr ; 
		
		# geom name pointers                       (ngeom x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1106) int*      name_siteadr ; 
		
		# site name pointers                       (nsite x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1107) int*      name_camadr ; 
		
		# camera name pointers                     (ncam x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1108) int*      name_lightadr ; 
		
		# light name pointers                      (nlight x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1109) int*      name_flexadr ; 
		
		# flex name pointers                       (nflex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1110) int*      name_meshadr ; 
		
		# mesh name pointers                       (nmesh x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1111) int*      name_skinadr ; 
		
		# skin name pointers                       (nskin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1112) int*      name_hfieldadr ; 
		
		# hfield name pointers                     (nhfield x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1113) int*      name_texadr ; 
		
		# texture name pointers                    (ntex x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1114) int*      name_matadr ; 
		
		# material name pointers                   (nmat x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1115) int*      name_pairadr ; 
		
		# geom pair name pointers                  (npair x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1116) int*      name_excludeadr ; 
		
		# exclude name pointers                    (nexclude x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1117) int*      name_eqadr ; 
		
		# equality constraint name pointers        (neq x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1118) int*      name_tendonadr ; 
		
		# tendon name pointers                     (ntendon x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1119) int*      name_actuatoradr ; 
		
		# actuator name pointers                   (nu x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1120) int*      name_sensoradr ; 
		
		# sensor name pointers                     (nsensor x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1121) int*      name_numericadr ; 
		
		# numeric name pointers                    (nnumeric x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1122) int*      name_textadr ; 
		
		# text name pointers                       (ntext x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1123) int*      name_tupleadr ; 
		
		# tuple name pointers                      (ntuple x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1124) int*      name_keyadr ; 
		
		# keyframe name pointers                   (nkey x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1125) int*      name_pluginadr ; 
		
		# plugin instance name pointers            (nplugin x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1126) char*     names ; 
		
		# names of all objects, 0-terminated       (nnames x 1) 
		
		# PlaceHolder (not a comment): CStructField(line_num=1127) int*      names_map ; 
		
		# internal hash map of names               (nnames_map x 1) 
		
		
		# paths 
		
		# PlaceHolder (not a comment): CStructField(line_num=1130) char*     paths ; 
		
		# paths to assets, 0-terminated            (npaths x 1) 
	<AST-SPLIT>  } 
<AST-SPLIT>  ; 
# PlaceHolder (not a comment): TypeDef(line_num=1132) typedef struct mjModel_ mjModel ; 
# PlaceHolder (not a comment): EndIf(line_num=1134) #endif
# MUJOCO_MJMODEL_H_ 