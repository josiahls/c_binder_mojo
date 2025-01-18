
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
	#PlaceHolder (not a comment): BlankSpace(line_num=14)
	#PlaceHolder (not a comment): IfNDef(line_num=15) #ifndef MUJOCO_MJMODEL_H_ 
		#PlaceHolder (not a comment): Define(line_num=16) #define MUJOCO_MJMODEL_H_ 
		#PlaceHolder (not a comment): BlankSpace(line_num=17)
		#PlaceHolder (not a comment): Include(line_num=18) #include <stddef.h> 
		#PlaceHolder (not a comment): Include(line_num=19) #include <stdint.h> 
		#PlaceHolder (not a comment): BlankSpace(line_num=20)
		#PlaceHolder (not a comment): BlankSpace(line_num=21)
		#PlaceHolder (not a comment): Include(line_num=22) #include <mujoco/mjtnum.h> 
		#PlaceHolder (not a comment): BlankSpace(line_num=23)
		# global constants 
		#PlaceHolder (not a comment): Define(line_num=25) #define mjPI            3.14159265358979323846 
		#PlaceHolder (not a comment): Define(line_num=26) #define mjMAXVAL        1E+10     
		# maximum value in qpos, qvel, qacc 
		#PlaceHolder (not a comment): Define(line_num=27) #define mjMINMU         1E-5      
		# minimum friction coefficient 
		#PlaceHolder (not a comment): Define(line_num=28) #define mjMINIMP        0.0001    
		# minimum constraint impedance 
		#PlaceHolder (not a comment): Define(line_num=29) #define mjMAXIMP        0.9999    
		# maximum constraint impedance 
		#PlaceHolder (not a comment): Define(line_num=30) #define mjMAXCONPAIR    50        
		# maximum number of contacts per geom pair 
		#PlaceHolder (not a comment): Define(line_num=31) #define mjMAXTREEDEPTH  50        
		# maximum bounding volume hierarchy depth 
		#PlaceHolder (not a comment): BlankSpace(line_num=32)
		#PlaceHolder (not a comment): BlankSpace(line_num=33)
		#---------------------------------- sizes --------------------------------------------------------- 
		#PlaceHolder (not a comment): BlankSpace(line_num=35)
		#PlaceHolder (not a comment): Define(line_num=36) #define mjNEQDATA       11        
		# number of eq_data fields 
		#PlaceHolder (not a comment): Define(line_num=37) #define mjNDYN          10        
		# number of actuator dynamics parameters 
		#PlaceHolder (not a comment): Define(line_num=38) #define mjNGAIN         10        
		# number of actuator gain parameters 
		#PlaceHolder (not a comment): Define(line_num=39) #define mjNBIAS         10        
		# number of actuator bias parameters 
		#PlaceHolder (not a comment): Define(line_num=40) #define mjNFLUID        12        
		# number of fluid interaction parameters 
		#PlaceHolder (not a comment): Define(line_num=41) #define mjNREF          2         
		# number of solver reference parameters 
		#PlaceHolder (not a comment): Define(line_num=42) #define mjNIMP          5         
		# number of solver impedance parameters 
		#PlaceHolder (not a comment): Define(line_num=43) #define mjNSOLVER       200       
		# size of one mjData.solver array 
		#PlaceHolder (not a comment): Define(line_num=44) #define mjNISLAND       20        
		# number of mjData.solver arrays 
		#PlaceHolder (not a comment): BlankSpace(line_num=45)
		#---------------------------------- enum types (mjt) ---------------------------------------------- 
		#PlaceHolder (not a comment): BlankSpace(line_num=47)
		#PlaceHolder (not a comment): TypeDef(line_num=48) typedef enum mjtDisableBit_ 
			#PlaceHolder (not a comment): Scope(line_num=48,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=48)
				# disable default feature bitflags 
				#PlaceHolder (not a comment): BlankSpace(line_num=49)
				#PlaceHolder (not a comment): EnumField(line_num=49) mjDSBL_CONSTRAINT   = 1<<0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=49)
				# entire constraint solver 
				#PlaceHolder (not a comment): BlankSpace(line_num=50)
				#PlaceHolder (not a comment): EnumField(line_num=50) mjDSBL_EQUALITY     = 1<<1, 
				#PlaceHolder (not a comment): BlankSpace(line_num=50)
				# equality constraints 
				#PlaceHolder (not a comment): BlankSpace(line_num=51)
				#PlaceHolder (not a comment): EnumField(line_num=51) mjDSBL_FRICTIONLOSS = 1<<2, 
				#PlaceHolder (not a comment): BlankSpace(line_num=51)
				# joint and tendon frictionloss constraints 
				#PlaceHolder (not a comment): BlankSpace(line_num=52)
				#PlaceHolder (not a comment): EnumField(line_num=52) mjDSBL_LIMIT        = 1<<3, 
				#PlaceHolder (not a comment): BlankSpace(line_num=52)
				# joint and tendon limit constraints 
				#PlaceHolder (not a comment): BlankSpace(line_num=53)
				#PlaceHolder (not a comment): EnumField(line_num=53) mjDSBL_CONTACT      = 1<<4, 
				#PlaceHolder (not a comment): BlankSpace(line_num=53)
				# contact constraints 
				#PlaceHolder (not a comment): BlankSpace(line_num=54)
				#PlaceHolder (not a comment): EnumField(line_num=54) mjDSBL_PASSIVE      = 1<<5, 
				#PlaceHolder (not a comment): BlankSpace(line_num=54)
				# passive forces 
				#PlaceHolder (not a comment): BlankSpace(line_num=55)
				#PlaceHolder (not a comment): EnumField(line_num=55) mjDSBL_GRAVITY      = 1<<6, 
				#PlaceHolder (not a comment): BlankSpace(line_num=55)
				# gravitational forces 
				#PlaceHolder (not a comment): BlankSpace(line_num=56)
				#PlaceHolder (not a comment): EnumField(line_num=56) mjDSBL_CLAMPCTRL    = 1<<7, 
				#PlaceHolder (not a comment): BlankSpace(line_num=56)
				# clamp control to specified range 
				#PlaceHolder (not a comment): BlankSpace(line_num=57)
				#PlaceHolder (not a comment): EnumField(line_num=57) mjDSBL_WARMSTART    = 1<<8, 
				#PlaceHolder (not a comment): BlankSpace(line_num=57)
				# warmstart constraint solver 
				#PlaceHolder (not a comment): BlankSpace(line_num=58)
				#PlaceHolder (not a comment): EnumField(line_num=58) mjDSBL_FILTERPARENT = 1<<9, 
				#PlaceHolder (not a comment): BlankSpace(line_num=58)
				# remove collisions with parent body 
				#PlaceHolder (not a comment): BlankSpace(line_num=59)
				#PlaceHolder (not a comment): EnumField(line_num=59) mjDSBL_ACTUATION    = 1<<10, 
				#PlaceHolder (not a comment): BlankSpace(line_num=59)
				# apply actuation forces 
				#PlaceHolder (not a comment): BlankSpace(line_num=60)
				#PlaceHolder (not a comment): EnumField(line_num=60) mjDSBL_REFSAFE      = 1<<11, 
				#PlaceHolder (not a comment): BlankSpace(line_num=60)
				# integrator safety: make ref[0]>=2*timestep 
				#PlaceHolder (not a comment): BlankSpace(line_num=61)
				#PlaceHolder (not a comment): EnumField(line_num=61) mjDSBL_SENSOR       = 1<<12, 
				#PlaceHolder (not a comment): BlankSpace(line_num=61)
				# sensors 
				#PlaceHolder (not a comment): BlankSpace(line_num=62)
				#PlaceHolder (not a comment): EnumField(line_num=62) mjDSBL_MIDPHASE     = 1<<13, 
				#PlaceHolder (not a comment): BlankSpace(line_num=62)
				# mid-phase collision filtering 
				#PlaceHolder (not a comment): BlankSpace(line_num=63)
				#PlaceHolder (not a comment): EnumField(line_num=63) mjDSBL_EULERDAMP    = 1<<14, 
				#PlaceHolder (not a comment): BlankSpace(line_num=63)
				# implicit integration of joint damping in Euler integrator 
				#PlaceHolder (not a comment): BlankSpace(line_num=64)
				#PlaceHolder (not a comment): EnumField(line_num=64) mjDSBL_AUTORESET    = 1<<15, 
				#PlaceHolder (not a comment): BlankSpace(line_num=64)
				# automatic reset when numerical issues are detected 
				#PlaceHolder (not a comment): BlankSpace(line_num=65)
				#PlaceHolder (not a comment): BlankSpace(line_num=66)
				#PlaceHolder (not a comment): EnumField(line_num=66) mjNDISABLE          = 16        // number of disable flags 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtDisableBit ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=67)
		#PlaceHolder (not a comment): BlankSpace(line_num=68)
		#PlaceHolder (not a comment): BlankSpace(line_num=69)
		#PlaceHolder (not a comment): TypeDef(line_num=70) typedef enum mjtEnableBit_ 
			#PlaceHolder (not a comment): Scope(line_num=70,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=70)
				# enable optional feature bitflags 
				#PlaceHolder (not a comment): BlankSpace(line_num=71)
				#PlaceHolder (not a comment): EnumField(line_num=71) mjENBL_OVERRIDE     = 1<<0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=71)
				# override contact parameters 
				#PlaceHolder (not a comment): BlankSpace(line_num=72)
				#PlaceHolder (not a comment): EnumField(line_num=72) mjENBL_ENERGY       = 1<<1, 
				#PlaceHolder (not a comment): BlankSpace(line_num=72)
				# energy computation 
				#PlaceHolder (not a comment): BlankSpace(line_num=73)
				#PlaceHolder (not a comment): EnumField(line_num=73) mjENBL_FWDINV       = 1<<2, 
				#PlaceHolder (not a comment): BlankSpace(line_num=73)
				# record solver statistics 
				#PlaceHolder (not a comment): BlankSpace(line_num=74)
				#PlaceHolder (not a comment): EnumField(line_num=74) mjENBL_INVDISCRETE  = 1<<3, 
				#PlaceHolder (not a comment): BlankSpace(line_num=74)
				# discrete-time inverse dynamics 
				#PlaceHolder (not a comment): BlankSpace(line_num=75)
				# experimental features: 
				#PlaceHolder (not a comment): BlankSpace(line_num=76)
				#PlaceHolder (not a comment): EnumField(line_num=76) mjENBL_MULTICCD     = 1<<4, 
				#PlaceHolder (not a comment): BlankSpace(line_num=76)
				# multi-point convex collision detection 
				#PlaceHolder (not a comment): BlankSpace(line_num=77)
				#PlaceHolder (not a comment): EnumField(line_num=77) mjENBL_ISLAND       = 1<<5, 
				#PlaceHolder (not a comment): BlankSpace(line_num=77)
				# constraint island discovery 
				#PlaceHolder (not a comment): BlankSpace(line_num=78)
				#PlaceHolder (not a comment): EnumField(line_num=78) mjENBL_NATIVECCD    = 1<<6, 
				#PlaceHolder (not a comment): BlankSpace(line_num=78)
				# native convex collision detection 
				#PlaceHolder (not a comment): BlankSpace(line_num=79)
				#PlaceHolder (not a comment): BlankSpace(line_num=80)
				#PlaceHolder (not a comment): EnumField(line_num=80) mjNENABLE           = 7         // number of enable flags 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtEnableBit ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=81)
		#PlaceHolder (not a comment): BlankSpace(line_num=82)
		#PlaceHolder (not a comment): BlankSpace(line_num=83)
		#PlaceHolder (not a comment): TypeDef(line_num=84) typedef enum mjtJoint_ 
			#PlaceHolder (not a comment): Scope(line_num=84,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=84)
				# type of degree of freedom 
				#PlaceHolder (not a comment): BlankSpace(line_num=85)
				#PlaceHolder (not a comment): EnumField(line_num=85) mjJNT_FREE          = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=85)
				# global position and orientation (quat)       (7) 
				#PlaceHolder (not a comment): BlankSpace(line_num=86)
				#PlaceHolder (not a comment): EnumField(line_num=86) mjJNT_BALL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=86)
				# orientation (quat) relative to parent        (4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=87)
				#PlaceHolder (not a comment): EnumField(line_num=87) mjJNT_SLIDE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=87)
				# sliding distance along body-fixed axis       (1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=88)
				#PlaceHolder (not a comment): EnumField(line_num=88) mjJNT_HINGE                     // rotation angle (rad) around body-fixed axis  (1) 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtJoint ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=89)
		#PlaceHolder (not a comment): BlankSpace(line_num=90)
		#PlaceHolder (not a comment): BlankSpace(line_num=91)
		#PlaceHolder (not a comment): TypeDef(line_num=92) typedef enum mjtGeom_ 
			#PlaceHolder (not a comment): Scope(line_num=92,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=92)
				# type of geometric shape 
				#PlaceHolder (not a comment): BlankSpace(line_num=93)
				# regular geom types 
				#PlaceHolder (not a comment): BlankSpace(line_num=94)
				#PlaceHolder (not a comment): EnumField(line_num=94) mjGEOM_PLANE        = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=94)
				# plane 
				#PlaceHolder (not a comment): BlankSpace(line_num=95)
				#PlaceHolder (not a comment): EnumField(line_num=95) mjGEOM_HFIELD, 
				#PlaceHolder (not a comment): BlankSpace(line_num=95)
				# height field 
				#PlaceHolder (not a comment): BlankSpace(line_num=96)
				#PlaceHolder (not a comment): EnumField(line_num=96) mjGEOM_SPHERE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=96)
				# sphere 
				#PlaceHolder (not a comment): BlankSpace(line_num=97)
				#PlaceHolder (not a comment): EnumField(line_num=97) mjGEOM_CAPSULE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=97)
				# capsule 
				#PlaceHolder (not a comment): BlankSpace(line_num=98)
				#PlaceHolder (not a comment): EnumField(line_num=98) mjGEOM_ELLIPSOID, 
				#PlaceHolder (not a comment): BlankSpace(line_num=98)
				# ellipsoid 
				#PlaceHolder (not a comment): BlankSpace(line_num=99)
				#PlaceHolder (not a comment): EnumField(line_num=99) mjGEOM_CYLINDER, 
				#PlaceHolder (not a comment): BlankSpace(line_num=99)
				# cylinder 
				#PlaceHolder (not a comment): BlankSpace(line_num=100)
				#PlaceHolder (not a comment): EnumField(line_num=100) mjGEOM_BOX, 
				#PlaceHolder (not a comment): BlankSpace(line_num=100)
				# box 
				#PlaceHolder (not a comment): BlankSpace(line_num=101)
				#PlaceHolder (not a comment): EnumField(line_num=101) mjGEOM_MESH, 
				#PlaceHolder (not a comment): BlankSpace(line_num=101)
				# mesh 
				#PlaceHolder (not a comment): BlankSpace(line_num=102)
				#PlaceHolder (not a comment): EnumField(line_num=102) mjGEOM_SDF, 
				#PlaceHolder (not a comment): BlankSpace(line_num=102)
				# signed distance field 
				#PlaceHolder (not a comment): BlankSpace(line_num=103)
				#PlaceHolder (not a comment): BlankSpace(line_num=104)
				#PlaceHolder (not a comment): EnumField(line_num=104) mjNGEOMTYPES, 
				#PlaceHolder (not a comment): BlankSpace(line_num=104)
				# number of regular geom types 
				#PlaceHolder (not a comment): BlankSpace(line_num=105)
				#PlaceHolder (not a comment): BlankSpace(line_num=106)
				# rendering-only geom types: not used in mjModel, not counted in mjNGEOMTYPES 
				#PlaceHolder (not a comment): BlankSpace(line_num=107)
				#PlaceHolder (not a comment): EnumField(line_num=107) mjGEOM_ARROW        = 100, 
				#PlaceHolder (not a comment): BlankSpace(line_num=107)
				# arrow 
				#PlaceHolder (not a comment): BlankSpace(line_num=108)
				#PlaceHolder (not a comment): EnumField(line_num=108) mjGEOM_ARROW1, 
				#PlaceHolder (not a comment): BlankSpace(line_num=108)
				# arrow without wedges 
				#PlaceHolder (not a comment): BlankSpace(line_num=109)
				#PlaceHolder (not a comment): EnumField(line_num=109) mjGEOM_ARROW2, 
				#PlaceHolder (not a comment): BlankSpace(line_num=109)
				# arrow in both directions 
				#PlaceHolder (not a comment): BlankSpace(line_num=110)
				#PlaceHolder (not a comment): EnumField(line_num=110) mjGEOM_LINE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=110)
				# line 
				#PlaceHolder (not a comment): BlankSpace(line_num=111)
				#PlaceHolder (not a comment): EnumField(line_num=111) mjGEOM_LINEBOX, 
				#PlaceHolder (not a comment): BlankSpace(line_num=111)
				# box with line edges 
				#PlaceHolder (not a comment): BlankSpace(line_num=112)
				#PlaceHolder (not a comment): EnumField(line_num=112) mjGEOM_FLEX, 
				#PlaceHolder (not a comment): BlankSpace(line_num=112)
				# flex 
				#PlaceHolder (not a comment): BlankSpace(line_num=113)
				#PlaceHolder (not a comment): EnumField(line_num=113) mjGEOM_SKIN, 
				#PlaceHolder (not a comment): BlankSpace(line_num=113)
				# skin 
				#PlaceHolder (not a comment): BlankSpace(line_num=114)
				#PlaceHolder (not a comment): EnumField(line_num=114) mjGEOM_LABEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=114)
				# text label 
				#PlaceHolder (not a comment): BlankSpace(line_num=115)
				#PlaceHolder (not a comment): EnumField(line_num=115) mjGEOM_TRIANGLE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=115)
				# triangle 
				#PlaceHolder (not a comment): BlankSpace(line_num=116)
				#PlaceHolder (not a comment): BlankSpace(line_num=117)
				#PlaceHolder (not a comment): EnumField(line_num=117) mjGEOM_NONE         = 1001      // missing geom type 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtGeom ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=118)
		#PlaceHolder (not a comment): BlankSpace(line_num=119)
		#PlaceHolder (not a comment): BlankSpace(line_num=120)
		#PlaceHolder (not a comment): TypeDef(line_num=121) typedef enum mjtCamLight_ 
			#PlaceHolder (not a comment): Scope(line_num=121,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=121)
				# tracking mode for camera and light 
				#PlaceHolder (not a comment): BlankSpace(line_num=122)
				#PlaceHolder (not a comment): EnumField(line_num=122) mjCAMLIGHT_FIXED    = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=122)
				# pos and rot fixed in body 
				#PlaceHolder (not a comment): BlankSpace(line_num=123)
				#PlaceHolder (not a comment): EnumField(line_num=123) mjCAMLIGHT_TRACK, 
				#PlaceHolder (not a comment): BlankSpace(line_num=123)
				# pos tracks body, rot fixed in global 
				#PlaceHolder (not a comment): BlankSpace(line_num=124)
				#PlaceHolder (not a comment): EnumField(line_num=124) mjCAMLIGHT_TRACKCOM, 
				#PlaceHolder (not a comment): BlankSpace(line_num=124)
				# pos tracks subtree com, rot fixed in body 
				#PlaceHolder (not a comment): BlankSpace(line_num=125)
				#PlaceHolder (not a comment): EnumField(line_num=125) mjCAMLIGHT_TARGETBODY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=125)
				# pos fixed in body, rot tracks target body 
				#PlaceHolder (not a comment): BlankSpace(line_num=126)
				#PlaceHolder (not a comment): EnumField(line_num=126) mjCAMLIGHT_TARGETBODYCOM        // pos fixed in body, 
				#PlaceHolder (not a comment): EnumField(line_num=126) rot tracks target subtree com 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtCamLight ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=127)
		#PlaceHolder (not a comment): BlankSpace(line_num=128)
		#PlaceHolder (not a comment): BlankSpace(line_num=129)
		#PlaceHolder (not a comment): TypeDef(line_num=130) typedef enum mjtTexture_ 
			#PlaceHolder (not a comment): Scope(line_num=130,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=130)
				# type of texture 
				#PlaceHolder (not a comment): BlankSpace(line_num=131)
				#PlaceHolder (not a comment): EnumField(line_num=131) mjTEXTURE_2D        = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=131)
				# 2d texture, suitable for planes and hfields 
				#PlaceHolder (not a comment): BlankSpace(line_num=132)
				#PlaceHolder (not a comment): EnumField(line_num=132) mjTEXTURE_CUBE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=132)
				# cube texture, suitable for all other geom types 
				#PlaceHolder (not a comment): BlankSpace(line_num=133)
				#PlaceHolder (not a comment): EnumField(line_num=133) mjTEXTURE_SKYBOX                // cube texture used as skybox 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtTexture ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=134)
		#PlaceHolder (not a comment): BlankSpace(line_num=135)
		#PlaceHolder (not a comment): BlankSpace(line_num=136)
		#PlaceHolder (not a comment): TypeDef(line_num=137) typedef enum mjtTextureRole_ 
			#PlaceHolder (not a comment): Scope(line_num=137,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=137)
				# role of texture map in rendering 
				#PlaceHolder (not a comment): BlankSpace(line_num=138)
				#PlaceHolder (not a comment): EnumField(line_num=138) mjTEXROLE_USER      = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=138)
				# unspecified 
				#PlaceHolder (not a comment): BlankSpace(line_num=139)
				#PlaceHolder (not a comment): EnumField(line_num=139) mjTEXROLE_RGB, 
				#PlaceHolder (not a comment): BlankSpace(line_num=139)
				# base color (albedo) 
				#PlaceHolder (not a comment): BlankSpace(line_num=140)
				#PlaceHolder (not a comment): EnumField(line_num=140) mjTEXROLE_OCCLUSION, 
				#PlaceHolder (not a comment): BlankSpace(line_num=140)
				# ambient occlusion 
				#PlaceHolder (not a comment): BlankSpace(line_num=141)
				#PlaceHolder (not a comment): EnumField(line_num=141) mjTEXROLE_ROUGHNESS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=141)
				# roughness 
				#PlaceHolder (not a comment): BlankSpace(line_num=142)
				#PlaceHolder (not a comment): EnumField(line_num=142) mjTEXROLE_METALLIC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=142)
				# metallic 
				#PlaceHolder (not a comment): BlankSpace(line_num=143)
				#PlaceHolder (not a comment): EnumField(line_num=143) mjTEXROLE_NORMAL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=143)
				# normal (bump) map 
				#PlaceHolder (not a comment): BlankSpace(line_num=144)
				#PlaceHolder (not a comment): EnumField(line_num=144) mjTEXROLE_OPACITY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=144)
				# transperancy 
				#PlaceHolder (not a comment): BlankSpace(line_num=145)
				#PlaceHolder (not a comment): EnumField(line_num=145) mjTEXROLE_EMISSIVE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=145)
				# light emission 
				#PlaceHolder (not a comment): BlankSpace(line_num=146)
				#PlaceHolder (not a comment): EnumField(line_num=146) mjTEXROLE_RGBA, 
				#PlaceHolder (not a comment): BlankSpace(line_num=146)
				# base color, opacity 
				#PlaceHolder (not a comment): BlankSpace(line_num=147)
				#PlaceHolder (not a comment): EnumField(line_num=147) mjTEXROLE_ORM, 
				#PlaceHolder (not a comment): BlankSpace(line_num=147)
				# occlusion, roughness, metallic 
				#PlaceHolder (not a comment): BlankSpace(line_num=148)
				#PlaceHolder (not a comment): EnumField(line_num=148) mjNTEXROLE 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtTextureRole ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=149)
		#PlaceHolder (not a comment): BlankSpace(line_num=150)
		#PlaceHolder (not a comment): BlankSpace(line_num=151)
		#PlaceHolder (not a comment): TypeDef(line_num=152) typedef enum mjtIntegrator_ 
			#PlaceHolder (not a comment): Scope(line_num=152,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=152)
				# integrator mode 
				#PlaceHolder (not a comment): BlankSpace(line_num=153)
				#PlaceHolder (not a comment): EnumField(line_num=153) mjINT_EULER         = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=153)
				# semi-implicit Euler 
				#PlaceHolder (not a comment): BlankSpace(line_num=154)
				#PlaceHolder (not a comment): EnumField(line_num=154) mjINT_RK4, 
				#PlaceHolder (not a comment): BlankSpace(line_num=154)
				# 4th-order Runge Kutta 
				#PlaceHolder (not a comment): BlankSpace(line_num=155)
				#PlaceHolder (not a comment): EnumField(line_num=155) mjINT_IMPLICIT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=155)
				# implicit in velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=156)
				#PlaceHolder (not a comment): EnumField(line_num=156) mjINT_IMPLICITFAST              // implicit in velocity, 
				#PlaceHolder (not a comment): EnumField(line_num=156) no rne derivative 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtIntegrator ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=157)
		#PlaceHolder (not a comment): BlankSpace(line_num=158)
		#PlaceHolder (not a comment): BlankSpace(line_num=159)
		#PlaceHolder (not a comment): TypeDef(line_num=160) typedef enum mjtCone_ 
			#PlaceHolder (not a comment): Scope(line_num=160,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=160)
				# type of friction cone 
				#PlaceHolder (not a comment): BlankSpace(line_num=161)
				#PlaceHolder (not a comment): EnumField(line_num=161) mjCONE_PYRAMIDAL     = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=161)
				# pyramidal 
				#PlaceHolder (not a comment): BlankSpace(line_num=162)
				#PlaceHolder (not a comment): EnumField(line_num=162) mjCONE_ELLIPTIC                 // elliptic 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtCone ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=163)
		#PlaceHolder (not a comment): BlankSpace(line_num=164)
		#PlaceHolder (not a comment): BlankSpace(line_num=165)
		#PlaceHolder (not a comment): TypeDef(line_num=166) typedef enum mjtJacobian_ 
			#PlaceHolder (not a comment): Scope(line_num=166,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=166)
				# type of constraint Jacobian 
				#PlaceHolder (not a comment): BlankSpace(line_num=167)
				#PlaceHolder (not a comment): EnumField(line_num=167) mjJAC_DENSE          = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=167)
				# dense 
				#PlaceHolder (not a comment): BlankSpace(line_num=168)
				#PlaceHolder (not a comment): EnumField(line_num=168) mjJAC_SPARSE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=168)
				# sparse 
				#PlaceHolder (not a comment): BlankSpace(line_num=169)
				#PlaceHolder (not a comment): EnumField(line_num=169) mjJAC_AUTO                      // dense if nv<60, 
				#PlaceHolder (not a comment): EnumField(line_num=169) sparse otherwise 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtJacobian ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=170)
		#PlaceHolder (not a comment): BlankSpace(line_num=171)
		#PlaceHolder (not a comment): BlankSpace(line_num=172)
		#PlaceHolder (not a comment): TypeDef(line_num=173) typedef enum mjtSolver_ 
			#PlaceHolder (not a comment): Scope(line_num=173,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=173)
				# constraint solver algorithm 
				#PlaceHolder (not a comment): BlankSpace(line_num=174)
				#PlaceHolder (not a comment): EnumField(line_num=174) mjSOL_PGS            = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=174)
				# PGS    (dual) 
				#PlaceHolder (not a comment): BlankSpace(line_num=175)
				#PlaceHolder (not a comment): EnumField(line_num=175) mjSOL_CG, 
				#PlaceHolder (not a comment): BlankSpace(line_num=175)
				# CG     (primal) 
				#PlaceHolder (not a comment): BlankSpace(line_num=176)
				#PlaceHolder (not a comment): EnumField(line_num=176) mjSOL_NEWTON                    // Newton (primal) 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtSolver ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=177)
		#PlaceHolder (not a comment): BlankSpace(line_num=178)
		#PlaceHolder (not a comment): BlankSpace(line_num=179)
		#PlaceHolder (not a comment): TypeDef(line_num=180) typedef enum mjtEq_ 
			#PlaceHolder (not a comment): Scope(line_num=180,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=180)
				# type of equality constraint 
				#PlaceHolder (not a comment): BlankSpace(line_num=181)
				#PlaceHolder (not a comment): EnumField(line_num=181) mjEQ_CONNECT        = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=181)
				# connect two bodies at a point (ball joint) 
				#PlaceHolder (not a comment): BlankSpace(line_num=182)
				#PlaceHolder (not a comment): EnumField(line_num=182) mjEQ_WELD, 
				#PlaceHolder (not a comment): BlankSpace(line_num=182)
				# fix relative position and orientation of two bodies 
				#PlaceHolder (not a comment): BlankSpace(line_num=183)
				#PlaceHolder (not a comment): EnumField(line_num=183) mjEQ_JOINT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=183)
				# couple the values of two scalar joints with cubic 
				#PlaceHolder (not a comment): BlankSpace(line_num=184)
				#PlaceHolder (not a comment): EnumField(line_num=184) mjEQ_TENDON, 
				#PlaceHolder (not a comment): BlankSpace(line_num=184)
				# couple the lengths of two tendons with cubic 
				#PlaceHolder (not a comment): BlankSpace(line_num=185)
				#PlaceHolder (not a comment): EnumField(line_num=185) mjEQ_FLEX, 
				#PlaceHolder (not a comment): BlankSpace(line_num=185)
				# fix all edge lengths of a flex 
				#PlaceHolder (not a comment): BlankSpace(line_num=186)
				#PlaceHolder (not a comment): EnumField(line_num=186) mjEQ_DISTANCE                   // unsupported, 
				#PlaceHolder (not a comment): EnumField(line_num=186) will cause an error if used 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtEq ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=187)
		#PlaceHolder (not a comment): BlankSpace(line_num=188)
		#PlaceHolder (not a comment): BlankSpace(line_num=189)
		#PlaceHolder (not a comment): TypeDef(line_num=190) typedef enum mjtWrap_ 
			#PlaceHolder (not a comment): Scope(line_num=190,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=190)
				# type of tendon wrap object 
				#PlaceHolder (not a comment): BlankSpace(line_num=191)
				#PlaceHolder (not a comment): EnumField(line_num=191) mjWRAP_NONE         = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=191)
				# null object 
				#PlaceHolder (not a comment): BlankSpace(line_num=192)
				#PlaceHolder (not a comment): EnumField(line_num=192) mjWRAP_JOINT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=192)
				# constant moment arm 
				#PlaceHolder (not a comment): BlankSpace(line_num=193)
				#PlaceHolder (not a comment): EnumField(line_num=193) mjWRAP_PULLEY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=193)
				# pulley used to split tendon 
				#PlaceHolder (not a comment): BlankSpace(line_num=194)
				#PlaceHolder (not a comment): EnumField(line_num=194) mjWRAP_SITE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=194)
				# pass through site 
				#PlaceHolder (not a comment): BlankSpace(line_num=195)
				#PlaceHolder (not a comment): EnumField(line_num=195) mjWRAP_SPHERE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=195)
				# wrap around sphere 
				#PlaceHolder (not a comment): BlankSpace(line_num=196)
				#PlaceHolder (not a comment): EnumField(line_num=196) mjWRAP_CYLINDER                 // wrap around (infinite) cylinder 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtWrap ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=197)
		#PlaceHolder (not a comment): BlankSpace(line_num=198)
		#PlaceHolder (not a comment): BlankSpace(line_num=199)
		#PlaceHolder (not a comment): TypeDef(line_num=200) typedef enum mjtTrn_ 
			#PlaceHolder (not a comment): Scope(line_num=200,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=200)
				# type of actuator transmission 
				#PlaceHolder (not a comment): BlankSpace(line_num=201)
				#PlaceHolder (not a comment): EnumField(line_num=201) mjTRN_JOINT         = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=201)
				# force on joint 
				#PlaceHolder (not a comment): BlankSpace(line_num=202)
				#PlaceHolder (not a comment): EnumField(line_num=202) mjTRN_JOINTINPARENT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=202)
				# force on joint, expressed in parent frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=203)
				#PlaceHolder (not a comment): EnumField(line_num=203) mjTRN_SLIDERCRANK, 
				#PlaceHolder (not a comment): BlankSpace(line_num=203)
				# force via slider-crank linkage 
				#PlaceHolder (not a comment): BlankSpace(line_num=204)
				#PlaceHolder (not a comment): EnumField(line_num=204) mjTRN_TENDON, 
				#PlaceHolder (not a comment): BlankSpace(line_num=204)
				# force on tendon 
				#PlaceHolder (not a comment): BlankSpace(line_num=205)
				#PlaceHolder (not a comment): EnumField(line_num=205) mjTRN_SITE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=205)
				# force on site 
				#PlaceHolder (not a comment): BlankSpace(line_num=206)
				#PlaceHolder (not a comment): EnumField(line_num=206) mjTRN_BODY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=206)
				# adhesion force on a body's geoms 
				#PlaceHolder (not a comment): BlankSpace(line_num=207)
				#PlaceHolder (not a comment): BlankSpace(line_num=208)
				#PlaceHolder (not a comment): EnumField(line_num=208) mjTRN_UNDEFINED     = 1000      // undefined transmission type 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtTrn ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=209)
		#PlaceHolder (not a comment): BlankSpace(line_num=210)
		#PlaceHolder (not a comment): BlankSpace(line_num=211)
		#PlaceHolder (not a comment): TypeDef(line_num=212) typedef enum mjtDyn_ 
			#PlaceHolder (not a comment): Scope(line_num=212,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=212)
				# type of actuator dynamics 
				#PlaceHolder (not a comment): BlankSpace(line_num=213)
				#PlaceHolder (not a comment): EnumField(line_num=213) mjDYN_NONE          = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=213)
				# no internal dynamics ;  ctrl specifies force 
				#PlaceHolder (not a comment): BlankSpace(line_num=214)
				#PlaceHolder (not a comment): EnumField(line_num=214) mjDYN_INTEGRATOR, 
				#PlaceHolder (not a comment): BlankSpace(line_num=214)
				# integrator: da/dt = u 
				#PlaceHolder (not a comment): BlankSpace(line_num=215)
				#PlaceHolder (not a comment): EnumField(line_num=215) mjDYN_FILTER, 
				#PlaceHolder (not a comment): BlankSpace(line_num=215)
				# linear filter: da/dt = (u-a) / tau 
				#PlaceHolder (not a comment): BlankSpace(line_num=216)
				#PlaceHolder (not a comment): EnumField(line_num=216) mjDYN_FILTEREXACT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=216)
				# linear filter: da/dt = (u-a) / tau, with exact integration 
				#PlaceHolder (not a comment): BlankSpace(line_num=217)
				#PlaceHolder (not a comment): EnumField(line_num=217) mjDYN_MUSCLE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=217)
				# piece-wise linear filter with two time constants 
				#PlaceHolder (not a comment): BlankSpace(line_num=218)
				#PlaceHolder (not a comment): EnumField(line_num=218) mjDYN_USER                      // user-defined dynamics type 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtDyn ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=219)
		#PlaceHolder (not a comment): BlankSpace(line_num=220)
		#PlaceHolder (not a comment): BlankSpace(line_num=221)
		#PlaceHolder (not a comment): TypeDef(line_num=222) typedef enum mjtGain_ 
			#PlaceHolder (not a comment): Scope(line_num=222,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=222)
				# type of actuator gain 
				#PlaceHolder (not a comment): BlankSpace(line_num=223)
				#PlaceHolder (not a comment): EnumField(line_num=223) mjGAIN_FIXED        = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=223)
				# fixed gain 
				#PlaceHolder (not a comment): BlankSpace(line_num=224)
				#PlaceHolder (not a comment): EnumField(line_num=224) mjGAIN_AFFINE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=224)
				# const + kp*length + kv*velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=225)
				#PlaceHolder (not a comment): EnumField(line_num=225) mjGAIN_MUSCLE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=225)
				# muscle FLV curve computed by mju_muscleGain() 
				#PlaceHolder (not a comment): BlankSpace(line_num=226)
				#PlaceHolder (not a comment): EnumField(line_num=226) mjGAIN_USER                     // user-defined gain type 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtGain ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=227)
		#PlaceHolder (not a comment): BlankSpace(line_num=228)
		#PlaceHolder (not a comment): BlankSpace(line_num=229)
		#PlaceHolder (not a comment): TypeDef(line_num=230) typedef enum mjtBias_ 
			#PlaceHolder (not a comment): Scope(line_num=230,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=230)
				# type of actuator bias 
				#PlaceHolder (not a comment): BlankSpace(line_num=231)
				#PlaceHolder (not a comment): EnumField(line_num=231) mjBIAS_NONE         = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=231)
				# no bias 
				#PlaceHolder (not a comment): BlankSpace(line_num=232)
				#PlaceHolder (not a comment): EnumField(line_num=232) mjBIAS_AFFINE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=232)
				# const + kp*length + kv*velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=233)
				#PlaceHolder (not a comment): EnumField(line_num=233) mjBIAS_MUSCLE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=233)
				# muscle passive force computed by mju_muscleBias() 
				#PlaceHolder (not a comment): BlankSpace(line_num=234)
				#PlaceHolder (not a comment): EnumField(line_num=234) mjBIAS_USER                     // user-defined bias type 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtBias ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=235)
		#PlaceHolder (not a comment): BlankSpace(line_num=236)
		#PlaceHolder (not a comment): BlankSpace(line_num=237)
		#PlaceHolder (not a comment): TypeDef(line_num=238) typedef enum mjtObj_ 
			#PlaceHolder (not a comment): Scope(line_num=238,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=238)
				# type of MujoCo object 
				#PlaceHolder (not a comment): BlankSpace(line_num=239)
				#PlaceHolder (not a comment): EnumField(line_num=239) mjOBJ_UNKNOWN       = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=239)
				# unknown object type 
				#PlaceHolder (not a comment): BlankSpace(line_num=240)
				#PlaceHolder (not a comment): EnumField(line_num=240) mjOBJ_BODY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=240)
				# body 
				#PlaceHolder (not a comment): BlankSpace(line_num=241)
				#PlaceHolder (not a comment): EnumField(line_num=241) mjOBJ_XBODY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=241)
				# body, used to access regular frame instead of i-frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=242)
				#PlaceHolder (not a comment): EnumField(line_num=242) mjOBJ_JOINT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=242)
				# joint 
				#PlaceHolder (not a comment): BlankSpace(line_num=243)
				#PlaceHolder (not a comment): EnumField(line_num=243) mjOBJ_DOF, 
				#PlaceHolder (not a comment): BlankSpace(line_num=243)
				# dof 
				#PlaceHolder (not a comment): BlankSpace(line_num=244)
				#PlaceHolder (not a comment): EnumField(line_num=244) mjOBJ_GEOM, 
				#PlaceHolder (not a comment): BlankSpace(line_num=244)
				# geom 
				#PlaceHolder (not a comment): BlankSpace(line_num=245)
				#PlaceHolder (not a comment): EnumField(line_num=245) mjOBJ_SITE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=245)
				# site 
				#PlaceHolder (not a comment): BlankSpace(line_num=246)
				#PlaceHolder (not a comment): EnumField(line_num=246) mjOBJ_CAMERA, 
				#PlaceHolder (not a comment): BlankSpace(line_num=246)
				# camera 
				#PlaceHolder (not a comment): BlankSpace(line_num=247)
				#PlaceHolder (not a comment): EnumField(line_num=247) mjOBJ_LIGHT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=247)
				# light 
				#PlaceHolder (not a comment): BlankSpace(line_num=248)
				#PlaceHolder (not a comment): EnumField(line_num=248) mjOBJ_FLEX, 
				#PlaceHolder (not a comment): BlankSpace(line_num=248)
				# flex 
				#PlaceHolder (not a comment): BlankSpace(line_num=249)
				#PlaceHolder (not a comment): EnumField(line_num=249) mjOBJ_MESH, 
				#PlaceHolder (not a comment): BlankSpace(line_num=249)
				# mesh 
				#PlaceHolder (not a comment): BlankSpace(line_num=250)
				#PlaceHolder (not a comment): EnumField(line_num=250) mjOBJ_SKIN, 
				#PlaceHolder (not a comment): BlankSpace(line_num=250)
				# skin 
				#PlaceHolder (not a comment): BlankSpace(line_num=251)
				#PlaceHolder (not a comment): EnumField(line_num=251) mjOBJ_HFIELD, 
				#PlaceHolder (not a comment): BlankSpace(line_num=251)
				# heightfield 
				#PlaceHolder (not a comment): BlankSpace(line_num=252)
				#PlaceHolder (not a comment): EnumField(line_num=252) mjOBJ_TEXTURE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=252)
				# texture 
				#PlaceHolder (not a comment): BlankSpace(line_num=253)
				#PlaceHolder (not a comment): EnumField(line_num=253) mjOBJ_MATERIAL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=253)
				# material for rendering 
				#PlaceHolder (not a comment): BlankSpace(line_num=254)
				#PlaceHolder (not a comment): EnumField(line_num=254) mjOBJ_PAIR, 
				#PlaceHolder (not a comment): BlankSpace(line_num=254)
				# geom pair to include 
				#PlaceHolder (not a comment): BlankSpace(line_num=255)
				#PlaceHolder (not a comment): EnumField(line_num=255) mjOBJ_EXCLUDE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=255)
				# body pair to exclude 
				#PlaceHolder (not a comment): BlankSpace(line_num=256)
				#PlaceHolder (not a comment): EnumField(line_num=256) mjOBJ_EQUALITY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=256)
				# equality constraint 
				#PlaceHolder (not a comment): BlankSpace(line_num=257)
				#PlaceHolder (not a comment): EnumField(line_num=257) mjOBJ_TENDON, 
				#PlaceHolder (not a comment): BlankSpace(line_num=257)
				# tendon 
				#PlaceHolder (not a comment): BlankSpace(line_num=258)
				#PlaceHolder (not a comment): EnumField(line_num=258) mjOBJ_ACTUATOR, 
				#PlaceHolder (not a comment): BlankSpace(line_num=258)
				# actuator 
				#PlaceHolder (not a comment): BlankSpace(line_num=259)
				#PlaceHolder (not a comment): EnumField(line_num=259) mjOBJ_SENSOR, 
				#PlaceHolder (not a comment): BlankSpace(line_num=259)
				# sensor 
				#PlaceHolder (not a comment): BlankSpace(line_num=260)
				#PlaceHolder (not a comment): EnumField(line_num=260) mjOBJ_NUMERIC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=260)
				# numeric 
				#PlaceHolder (not a comment): BlankSpace(line_num=261)
				#PlaceHolder (not a comment): EnumField(line_num=261) mjOBJ_TEXT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=261)
				# text 
				#PlaceHolder (not a comment): BlankSpace(line_num=262)
				#PlaceHolder (not a comment): EnumField(line_num=262) mjOBJ_TUPLE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=262)
				# tuple 
				#PlaceHolder (not a comment): BlankSpace(line_num=263)
				#PlaceHolder (not a comment): EnumField(line_num=263) mjOBJ_KEY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=263)
				# keyframe 
				#PlaceHolder (not a comment): BlankSpace(line_num=264)
				#PlaceHolder (not a comment): EnumField(line_num=264) mjOBJ_PLUGIN, 
				#PlaceHolder (not a comment): BlankSpace(line_num=264)
				# plugin instance 
				#PlaceHolder (not a comment): BlankSpace(line_num=265)
				#PlaceHolder (not a comment): BlankSpace(line_num=266)
				#PlaceHolder (not a comment): EnumField(line_num=266) mjNOBJECT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=266)
				# number of object types 
				#PlaceHolder (not a comment): BlankSpace(line_num=267)
				#PlaceHolder (not a comment): BlankSpace(line_num=268)
				# meta elements, do not appear in mjModel 
				#PlaceHolder (not a comment): BlankSpace(line_num=269)
				#PlaceHolder (not a comment): EnumField(line_num=269) mjOBJ_FRAME         = 100       // frame 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtObj ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=270)
		#PlaceHolder (not a comment): BlankSpace(line_num=271)
		#PlaceHolder (not a comment): BlankSpace(line_num=272)
		#PlaceHolder (not a comment): TypeDef(line_num=273) typedef enum mjtConstraint_ 
			#PlaceHolder (not a comment): Scope(line_num=273,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=273)
				# type of constraint 
				#PlaceHolder (not a comment): BlankSpace(line_num=274)
				#PlaceHolder (not a comment): EnumField(line_num=274) mjCNSTR_EQUALITY    = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=274)
				# equality constraint 
				#PlaceHolder (not a comment): BlankSpace(line_num=275)
				#PlaceHolder (not a comment): EnumField(line_num=275) mjCNSTR_FRICTION_DOF, 
				#PlaceHolder (not a comment): BlankSpace(line_num=275)
				# dof friction 
				#PlaceHolder (not a comment): BlankSpace(line_num=276)
				#PlaceHolder (not a comment): EnumField(line_num=276) mjCNSTR_FRICTION_TENDON, 
				#PlaceHolder (not a comment): BlankSpace(line_num=276)
				# tendon friction 
				#PlaceHolder (not a comment): BlankSpace(line_num=277)
				#PlaceHolder (not a comment): EnumField(line_num=277) mjCNSTR_LIMIT_JOINT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=277)
				# joint limit 
				#PlaceHolder (not a comment): BlankSpace(line_num=278)
				#PlaceHolder (not a comment): EnumField(line_num=278) mjCNSTR_LIMIT_TENDON, 
				#PlaceHolder (not a comment): BlankSpace(line_num=278)
				# tendon limit 
				#PlaceHolder (not a comment): BlankSpace(line_num=279)
				#PlaceHolder (not a comment): EnumField(line_num=279) mjCNSTR_CONTACT_FRICTIONLESS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=279)
				# frictionless contact 
				#PlaceHolder (not a comment): BlankSpace(line_num=280)
				#PlaceHolder (not a comment): EnumField(line_num=280) mjCNSTR_CONTACT_PYRAMIDAL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=280)
				# frictional contact, pyramidal friction cone 
				#PlaceHolder (not a comment): BlankSpace(line_num=281)
				#PlaceHolder (not a comment): EnumField(line_num=281) mjCNSTR_CONTACT_ELLIPTIC        // frictional contact, 
				#PlaceHolder (not a comment): EnumField(line_num=281) elliptic friction cone 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtConstraint ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=282)
		#PlaceHolder (not a comment): BlankSpace(line_num=283)
		#PlaceHolder (not a comment): BlankSpace(line_num=284)
		#PlaceHolder (not a comment): TypeDef(line_num=285) typedef enum mjtConstraintState_ 
			#PlaceHolder (not a comment): Scope(line_num=285,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=285)
				# constraint state 
				#PlaceHolder (not a comment): BlankSpace(line_num=286)
				#PlaceHolder (not a comment): EnumField(line_num=286) mjCNSTRSTATE_SATISFIED = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=286)
				# constraint satisfied, zero cost (limit, contact) 
				#PlaceHolder (not a comment): BlankSpace(line_num=287)
				#PlaceHolder (not a comment): EnumField(line_num=287) mjCNSTRSTATE_QUADRATIC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=287)
				# quadratic cost (equality, friction, limit, contact) 
				#PlaceHolder (not a comment): BlankSpace(line_num=288)
				#PlaceHolder (not a comment): EnumField(line_num=288) mjCNSTRSTATE_LINEARNEG, 
				#PlaceHolder (not a comment): BlankSpace(line_num=288)
				# linear cost, negative side (friction) 
				#PlaceHolder (not a comment): BlankSpace(line_num=289)
				#PlaceHolder (not a comment): EnumField(line_num=289) mjCNSTRSTATE_LINEARPOS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=289)
				# linear cost, positive side (friction) 
				#PlaceHolder (not a comment): BlankSpace(line_num=290)
				#PlaceHolder (not a comment): EnumField(line_num=290) mjCNSTRSTATE_CONE                 // squared distance to cone cost (elliptic contact) 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtConstraintState ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=291)
		#PlaceHolder (not a comment): BlankSpace(line_num=292)
		#PlaceHolder (not a comment): BlankSpace(line_num=293)
		#PlaceHolder (not a comment): TypeDef(line_num=294) typedef enum mjtSensor_ 
			#PlaceHolder (not a comment): Scope(line_num=294,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=294)
				# type of sensor 
				#PlaceHolder (not a comment): BlankSpace(line_num=295)
				# common robotic sensors, attached to a site 
				#PlaceHolder (not a comment): BlankSpace(line_num=296)
				#PlaceHolder (not a comment): EnumField(line_num=296) mjSENS_TOUCH        = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=296)
				# scalar contact normal forces summed over sensor zone 
				#PlaceHolder (not a comment): BlankSpace(line_num=297)
				#PlaceHolder (not a comment): EnumField(line_num=297) mjSENS_ACCELEROMETER, 
				#PlaceHolder (not a comment): BlankSpace(line_num=297)
				# 3D linear acceleration, in local frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=298)
				#PlaceHolder (not a comment): EnumField(line_num=298) mjSENS_VELOCIMETER, 
				#PlaceHolder (not a comment): BlankSpace(line_num=298)
				# 3D linear velocity, in local frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=299)
				#PlaceHolder (not a comment): EnumField(line_num=299) mjSENS_GYRO, 
				#PlaceHolder (not a comment): BlankSpace(line_num=299)
				# 3D angular velocity, in local frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=300)
				#PlaceHolder (not a comment): EnumField(line_num=300) mjSENS_FORCE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=300)
				# 3D force between site's body and its parent body 
				#PlaceHolder (not a comment): BlankSpace(line_num=301)
				#PlaceHolder (not a comment): EnumField(line_num=301) mjSENS_TORQUE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=301)
				# 3D torque between site's body and its parent body 
				#PlaceHolder (not a comment): BlankSpace(line_num=302)
				#PlaceHolder (not a comment): EnumField(line_num=302) mjSENS_MAGNETOMETER, 
				#PlaceHolder (not a comment): BlankSpace(line_num=302)
				# 3D magnetometer 
				#PlaceHolder (not a comment): BlankSpace(line_num=303)
				#PlaceHolder (not a comment): EnumField(line_num=303) mjSENS_RANGEFINDER, 
				#PlaceHolder (not a comment): BlankSpace(line_num=303)
				# scalar distance to nearest geom or site along z-axis 
				#PlaceHolder (not a comment): BlankSpace(line_num=304)
				#PlaceHolder (not a comment): EnumField(line_num=304) mjSENS_CAMPROJECTION, 
				#PlaceHolder (not a comment): BlankSpace(line_num=304)
				# pixel coordinates of a site in the camera image 
				#PlaceHolder (not a comment): BlankSpace(line_num=305)
				#PlaceHolder (not a comment): BlankSpace(line_num=306)
				# sensors related to scalar joints, tendons, actuators 
				#PlaceHolder (not a comment): BlankSpace(line_num=307)
				#PlaceHolder (not a comment): EnumField(line_num=307) mjSENS_JOINTPOS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=307)
				# scalar joint position (hinge and slide only) 
				#PlaceHolder (not a comment): BlankSpace(line_num=308)
				#PlaceHolder (not a comment): EnumField(line_num=308) mjSENS_JOINTVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=308)
				# scalar joint velocity (hinge and slide only) 
				#PlaceHolder (not a comment): BlankSpace(line_num=309)
				#PlaceHolder (not a comment): EnumField(line_num=309) mjSENS_TENDONPOS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=309)
				# scalar tendon position 
				#PlaceHolder (not a comment): BlankSpace(line_num=310)
				#PlaceHolder (not a comment): EnumField(line_num=310) mjSENS_TENDONVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=310)
				# scalar tendon velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=311)
				#PlaceHolder (not a comment): EnumField(line_num=311) mjSENS_ACTUATORPOS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=311)
				# scalar actuator position 
				#PlaceHolder (not a comment): BlankSpace(line_num=312)
				#PlaceHolder (not a comment): EnumField(line_num=312) mjSENS_ACTUATORVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=312)
				# scalar actuator velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=313)
				#PlaceHolder (not a comment): EnumField(line_num=313) mjSENS_ACTUATORFRC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=313)
				# scalar actuator force 
				#PlaceHolder (not a comment): BlankSpace(line_num=314)
				#PlaceHolder (not a comment): EnumField(line_num=314) mjSENS_JOINTACTFRC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=314)
				# scalar actuator force, measured at the joint 
				#PlaceHolder (not a comment): BlankSpace(line_num=315)
				#PlaceHolder (not a comment): BlankSpace(line_num=316)
				# sensors related to ball joints 
				#PlaceHolder (not a comment): BlankSpace(line_num=317)
				#PlaceHolder (not a comment): EnumField(line_num=317) mjSENS_BALLQUAT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=317)
				# 4D ball joint quaternion 
				#PlaceHolder (not a comment): BlankSpace(line_num=318)
				#PlaceHolder (not a comment): EnumField(line_num=318) mjSENS_BALLANGVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=318)
				# 3D ball joint angular velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=319)
				#PlaceHolder (not a comment): BlankSpace(line_num=320)
				# joint and tendon limit sensors, in constraint space 
				#PlaceHolder (not a comment): BlankSpace(line_num=321)
				#PlaceHolder (not a comment): EnumField(line_num=321) mjSENS_JOINTLIMITPOS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=321)
				# joint limit distance-margin 
				#PlaceHolder (not a comment): BlankSpace(line_num=322)
				#PlaceHolder (not a comment): EnumField(line_num=322) mjSENS_JOINTLIMITVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=322)
				# joint limit velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=323)
				#PlaceHolder (not a comment): EnumField(line_num=323) mjSENS_JOINTLIMITFRC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=323)
				# joint limit force 
				#PlaceHolder (not a comment): BlankSpace(line_num=324)
				#PlaceHolder (not a comment): EnumField(line_num=324) mjSENS_TENDONLIMITPOS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=324)
				# tendon limit distance-margin 
				#PlaceHolder (not a comment): BlankSpace(line_num=325)
				#PlaceHolder (not a comment): EnumField(line_num=325) mjSENS_TENDONLIMITVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=325)
				# tendon limit velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=326)
				#PlaceHolder (not a comment): EnumField(line_num=326) mjSENS_TENDONLIMITFRC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=326)
				# tendon limit force 
				#PlaceHolder (not a comment): BlankSpace(line_num=327)
				#PlaceHolder (not a comment): BlankSpace(line_num=328)
				# sensors attached to an object with spatial frame: (x)body, geom, site, camera 
				#PlaceHolder (not a comment): BlankSpace(line_num=329)
				#PlaceHolder (not a comment): EnumField(line_num=329) mjSENS_FRAMEPOS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=329)
				# 3D position 
				#PlaceHolder (not a comment): BlankSpace(line_num=330)
				#PlaceHolder (not a comment): EnumField(line_num=330) mjSENS_FRAMEQUAT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=330)
				# 4D unit quaternion orientation 
				#PlaceHolder (not a comment): BlankSpace(line_num=331)
				#PlaceHolder (not a comment): EnumField(line_num=331) mjSENS_FRAMEXAXIS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=331)
				# 3D unit vector: x-axis of object's frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=332)
				#PlaceHolder (not a comment): EnumField(line_num=332) mjSENS_FRAMEYAXIS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=332)
				# 3D unit vector: y-axis of object's frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=333)
				#PlaceHolder (not a comment): EnumField(line_num=333) mjSENS_FRAMEZAXIS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=333)
				# 3D unit vector: z-axis of object's frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=334)
				#PlaceHolder (not a comment): EnumField(line_num=334) mjSENS_FRAMELINVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=334)
				# 3D linear velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=335)
				#PlaceHolder (not a comment): EnumField(line_num=335) mjSENS_FRAMEANGVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=335)
				# 3D angular velocity 
				#PlaceHolder (not a comment): BlankSpace(line_num=336)
				#PlaceHolder (not a comment): EnumField(line_num=336) mjSENS_FRAMELINACC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=336)
				# 3D linear acceleration 
				#PlaceHolder (not a comment): BlankSpace(line_num=337)
				#PlaceHolder (not a comment): EnumField(line_num=337) mjSENS_FRAMEANGACC, 
				#PlaceHolder (not a comment): BlankSpace(line_num=337)
				# 3D angular acceleration 
				#PlaceHolder (not a comment): BlankSpace(line_num=338)
				#PlaceHolder (not a comment): BlankSpace(line_num=339)
				# sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) 
				#PlaceHolder (not a comment): BlankSpace(line_num=340)
				#PlaceHolder (not a comment): EnumField(line_num=340) mjSENS_SUBTREECOM, 
				#PlaceHolder (not a comment): BlankSpace(line_num=340)
				# 3D center of mass of subtree 
				#PlaceHolder (not a comment): BlankSpace(line_num=341)
				#PlaceHolder (not a comment): EnumField(line_num=341) mjSENS_SUBTREELINVEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=341)
				# 3D linear velocity of subtree 
				#PlaceHolder (not a comment): BlankSpace(line_num=342)
				#PlaceHolder (not a comment): EnumField(line_num=342) mjSENS_SUBTREEANGMOM, 
				#PlaceHolder (not a comment): BlankSpace(line_num=342)
				# 3D angular momentum of subtree 
				#PlaceHolder (not a comment): BlankSpace(line_num=343)
				#PlaceHolder (not a comment): BlankSpace(line_num=344)
				# sensors for geometric distance ;  attached to geoms or bodies 
				#PlaceHolder (not a comment): BlankSpace(line_num=345)
				#PlaceHolder (not a comment): EnumField(line_num=345) mjSENS_GEOMDIST, 
				#PlaceHolder (not a comment): BlankSpace(line_num=345)
				# signed distance between two geoms 
				#PlaceHolder (not a comment): BlankSpace(line_num=346)
				#PlaceHolder (not a comment): EnumField(line_num=346) mjSENS_GEOMNORMAL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=346)
				# normal direction between two geoms 
				#PlaceHolder (not a comment): BlankSpace(line_num=347)
				#PlaceHolder (not a comment): EnumField(line_num=347) mjSENS_GEOMFROMTO, 
				#PlaceHolder (not a comment): BlankSpace(line_num=347)
				# segment between two geoms 
				#PlaceHolder (not a comment): BlankSpace(line_num=348)
				#PlaceHolder (not a comment): BlankSpace(line_num=349)
				# global sensors 
				#PlaceHolder (not a comment): BlankSpace(line_num=350)
				#PlaceHolder (not a comment): EnumField(line_num=350) mjSENS_CLOCK, 
				#PlaceHolder (not a comment): BlankSpace(line_num=350)
				# simulation time 
				#PlaceHolder (not a comment): BlankSpace(line_num=351)
				#PlaceHolder (not a comment): BlankSpace(line_num=352)
				# plugin-controlled sensors 
				#PlaceHolder (not a comment): BlankSpace(line_num=353)
				#PlaceHolder (not a comment): EnumField(line_num=353) mjSENS_PLUGIN, 
				#PlaceHolder (not a comment): BlankSpace(line_num=353)
				# plugin-controlled 
				#PlaceHolder (not a comment): BlankSpace(line_num=354)
				#PlaceHolder (not a comment): BlankSpace(line_num=355)
				# user-defined sensor 
				#PlaceHolder (not a comment): BlankSpace(line_num=356)
				#PlaceHolder (not a comment): EnumField(line_num=356) mjSENS_USER                     // sensor data provided by mjcb_sensor callback 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtSensor ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=357)
		#PlaceHolder (not a comment): BlankSpace(line_num=358)
		#PlaceHolder (not a comment): BlankSpace(line_num=359)
		#PlaceHolder (not a comment): TypeDef(line_num=360) typedef enum mjtStage_ 
			#PlaceHolder (not a comment): Scope(line_num=360,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=360)
				# computation stage 
				#PlaceHolder (not a comment): BlankSpace(line_num=361)
				#PlaceHolder (not a comment): EnumField(line_num=361) mjSTAGE_NONE        = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=361)
				# no computations 
				#PlaceHolder (not a comment): BlankSpace(line_num=362)
				#PlaceHolder (not a comment): EnumField(line_num=362) mjSTAGE_POS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=362)
				# position-dependent computations 
				#PlaceHolder (not a comment): BlankSpace(line_num=363)
				#PlaceHolder (not a comment): EnumField(line_num=363) mjSTAGE_VEL, 
				#PlaceHolder (not a comment): BlankSpace(line_num=363)
				# velocity-dependent computations 
				#PlaceHolder (not a comment): BlankSpace(line_num=364)
				#PlaceHolder (not a comment): EnumField(line_num=364) mjSTAGE_ACC                     // acceleration/force-dependent computations 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtStage ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=365)
		#PlaceHolder (not a comment): BlankSpace(line_num=366)
		#PlaceHolder (not a comment): BlankSpace(line_num=367)
		#PlaceHolder (not a comment): TypeDef(line_num=368) typedef enum mjtDataType_ 
			#PlaceHolder (not a comment): Scope(line_num=368,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=368)
				# data type for sensors 
				#PlaceHolder (not a comment): BlankSpace(line_num=369)
				#PlaceHolder (not a comment): EnumField(line_num=369) mjDATATYPE_REAL     = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=369)
				# real values, no constraints 
				#PlaceHolder (not a comment): BlankSpace(line_num=370)
				#PlaceHolder (not a comment): EnumField(line_num=370) mjDATATYPE_POSITIVE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=370)
				# positive values ;  0 or negative: inactive 
				#PlaceHolder (not a comment): BlankSpace(line_num=371)
				#PlaceHolder (not a comment): EnumField(line_num=371) mjDATATYPE_AXIS, 
				#PlaceHolder (not a comment): BlankSpace(line_num=371)
				# 3D unit vector 
				#PlaceHolder (not a comment): BlankSpace(line_num=372)
				#PlaceHolder (not a comment): EnumField(line_num=372) mjDATATYPE_QUATERNION           // unit quaternion 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtDataType ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=373)
		#PlaceHolder (not a comment): BlankSpace(line_num=374)
		#PlaceHolder (not a comment): BlankSpace(line_num=375)
		#PlaceHolder (not a comment): TypeDef(line_num=376) typedef enum mjtSameFrame_ 
			#PlaceHolder (not a comment): Scope(line_num=376,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=376)
				# frame alignment of bodies with their children 
				#PlaceHolder (not a comment): BlankSpace(line_num=377)
				#PlaceHolder (not a comment): EnumField(line_num=377) mjSAMEFRAME_NONE    = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=377)
				# no alignment 
				#PlaceHolder (not a comment): BlankSpace(line_num=378)
				#PlaceHolder (not a comment): EnumField(line_num=378) mjSAMEFRAME_BODY, 
				#PlaceHolder (not a comment): BlankSpace(line_num=378)
				# frame is same as body frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=379)
				#PlaceHolder (not a comment): EnumField(line_num=379) mjSAMEFRAME_INERTIA, 
				#PlaceHolder (not a comment): BlankSpace(line_num=379)
				# frame is same as inertial frame 
				#PlaceHolder (not a comment): BlankSpace(line_num=380)
				#PlaceHolder (not a comment): EnumField(line_num=380) mjSAMEFRAME_BODYROT, 
				#PlaceHolder (not a comment): BlankSpace(line_num=380)
				# frame orientation is same as body orientation 
				#PlaceHolder (not a comment): BlankSpace(line_num=381)
				#PlaceHolder (not a comment): EnumField(line_num=381) mjSAMEFRAME_INERTIAROT          // frame orientation is same as inertia orientation 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtSameFrame ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=382)
		#PlaceHolder (not a comment): BlankSpace(line_num=383)
		#PlaceHolder (not a comment): BlankSpace(line_num=384)
		#PlaceHolder (not a comment): TypeDef(line_num=385) typedef enum mjtLRMode_ 
			#PlaceHolder (not a comment): Scope(line_num=385,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=385)
				# mode for actuator length range computation 
				#PlaceHolder (not a comment): BlankSpace(line_num=386)
				#PlaceHolder (not a comment): EnumField(line_num=386) mjLRMODE_NONE   = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=386)
				# do not process any actuators 
				#PlaceHolder (not a comment): BlankSpace(line_num=387)
				#PlaceHolder (not a comment): EnumField(line_num=387) mjLRMODE_MUSCLE, 
				#PlaceHolder (not a comment): BlankSpace(line_num=387)
				# process muscle actuators 
				#PlaceHolder (not a comment): BlankSpace(line_num=388)
				#PlaceHolder (not a comment): EnumField(line_num=388) mjLRMODE_MUSCLEUSER, 
				#PlaceHolder (not a comment): BlankSpace(line_num=388)
				# process muscle and user actuators 
				#PlaceHolder (not a comment): BlankSpace(line_num=389)
				#PlaceHolder (not a comment): EnumField(line_num=389) mjLRMODE_ALL                    // process all actuators 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtLRMode ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=390)
		#PlaceHolder (not a comment): BlankSpace(line_num=391)
		#PlaceHolder (not a comment): BlankSpace(line_num=392)
		#PlaceHolder (not a comment): TypeDef(line_num=393) typedef enum mjtFlexSelf_ 
			#PlaceHolder (not a comment): Scope(line_num=393,scope_type=type_def) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=393)
				# mode for flex selfcollide 
				#PlaceHolder (not a comment): BlankSpace(line_num=394)
				#PlaceHolder (not a comment): EnumField(line_num=394) mjFLEXSELF_NONE   = 0, 
				#PlaceHolder (not a comment): BlankSpace(line_num=394)
				# no self-collisions 
				#PlaceHolder (not a comment): BlankSpace(line_num=395)
				#PlaceHolder (not a comment): EnumField(line_num=395) mjFLEXSELF_NARROW, 
				#PlaceHolder (not a comment): BlankSpace(line_num=395)
				# skip midphase, go directly to narrowphase 
				#PlaceHolder (not a comment): BlankSpace(line_num=396)
				#PlaceHolder (not a comment): EnumField(line_num=396) mjFLEXSELF_BVH, 
				#PlaceHolder (not a comment): BlankSpace(line_num=396)
				# use BVH in midphase (if midphase enabled) 
				#PlaceHolder (not a comment): BlankSpace(line_num=397)
				#PlaceHolder (not a comment): EnumField(line_num=397) mjFLEXSELF_SAP, 
				#PlaceHolder (not a comment): BlankSpace(line_num=397)
				# use SAP in midphase 
				#PlaceHolder (not a comment): BlankSpace(line_num=398)
				#PlaceHolder (not a comment): EnumField(line_num=398) mjFLEXSELF_AUTO                 // choose between BVH and SAP automatically 
			<AST-SPLIT>  } 
		<AST-SPLIT>  mjtFlexSelf ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=399)
		#PlaceHolder (not a comment): BlankSpace(line_num=400)
		#PlaceHolder (not a comment): BlankSpace(line_num=401)
		#---------------------------------- mjLROpt ------------------------------------------------------- 
		#PlaceHolder (not a comment): BlankSpace(line_num=403)
		#PlaceHolder (not a comment): CStruct(line_num=404) struct mjLROpt_ 
			#PlaceHolder (not a comment): Scope(line_num=404,scope_type=struct) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=404)
				# options for mj_setLengthRange() 
				#PlaceHolder (not a comment): BlankSpace(line_num=405)
				# flags 
				#PlaceHolder (not a comment): BlankSpace(line_num=406)
				#PlaceHolder (not a comment): CStructField(line_num=406) int mode ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=406)
				# which actuators to process (mjtLRMode) 
				#PlaceHolder (not a comment): BlankSpace(line_num=407)
				#PlaceHolder (not a comment): CStructField(line_num=407) int useexisting ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=407)
				# use existing length range if available 
				#PlaceHolder (not a comment): BlankSpace(line_num=408)
				#PlaceHolder (not a comment): CStructField(line_num=408) int uselimit ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=408)
				# use joint and tendon limits if available 
				#PlaceHolder (not a comment): BlankSpace(line_num=409)
				#PlaceHolder (not a comment): BlankSpace(line_num=410)
				# algorithm parameters 
				#PlaceHolder (not a comment): BlankSpace(line_num=411)
				#PlaceHolder (not a comment): CStructField(line_num=411) mjtNum accel ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=411)
				# target acceleration used to compute force 
				#PlaceHolder (not a comment): BlankSpace(line_num=412)
				#PlaceHolder (not a comment): CStructField(line_num=412) mjtNum maxforce ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=412)
				# maximum force ;  0: no limit 
				#PlaceHolder (not a comment): BlankSpace(line_num=413)
				#PlaceHolder (not a comment): CStructField(line_num=413) mjtNum timeconst ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=413)
				# time constant for velocity reduction ;  min 0.01 
				#PlaceHolder (not a comment): BlankSpace(line_num=414)
				#PlaceHolder (not a comment): CStructField(line_num=414) mjtNum timestep ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=414)
				# simulation timestep ;  0: use mjOption.timestep 
				#PlaceHolder (not a comment): BlankSpace(line_num=415)
				#PlaceHolder (not a comment): CStructField(line_num=415) mjtNum inttotal ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=415)
				# total simulation time interval 
				#PlaceHolder (not a comment): BlankSpace(line_num=416)
				#PlaceHolder (not a comment): CStructField(line_num=416) mjtNum interval ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=416)
				# evaluation time interval (at the end) 
				#PlaceHolder (not a comment): BlankSpace(line_num=417)
				#PlaceHolder (not a comment): CStructField(line_num=417) mjtNum tolrange ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=417)
				# convergence tolerance (relative to range) 
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=418)
		#PlaceHolder (not a comment): TypeDef(line_num=419) typedef struct mjLROpt_ mjLROpt ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=419)
		#PlaceHolder (not a comment): BlankSpace(line_num=420)
		#PlaceHolder (not a comment): BlankSpace(line_num=421)
		#---------------------------------- mjVFS --------------------------------------------------------- 
		#PlaceHolder (not a comment): BlankSpace(line_num=423)
		#PlaceHolder (not a comment): CStruct(line_num=424) struct mjVFS_ 
			#PlaceHolder (not a comment): Scope(line_num=424,scope_type=struct) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=424)
				# virtual file system for loading from memory 
				#PlaceHolder (not a comment): BlankSpace(line_num=425)
				#PlaceHolder (not a comment): CStructField(line_num=425) void* impl_ ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=425)
				# internal pointer to VFS memory 
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=426)
		#PlaceHolder (not a comment): TypeDef(line_num=427) typedef struct mjVFS_ mjVFS ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=427)
		#PlaceHolder (not a comment): BlankSpace(line_num=428)
		#---------------------------------- mjOption ------------------------------------------------------ 
		#PlaceHolder (not a comment): BlankSpace(line_num=430)
		#PlaceHolder (not a comment): CStruct(line_num=431) struct mjOption_ 
			#PlaceHolder (not a comment): Scope(line_num=431,scope_type=struct) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=431)
				# physics options 
				#PlaceHolder (not a comment): BlankSpace(line_num=432)
				# timing parameters 
				#PlaceHolder (not a comment): BlankSpace(line_num=433)
				#PlaceHolder (not a comment): CStructField(line_num=433) mjtNum timestep ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=433)
				# timestep 
				#PlaceHolder (not a comment): BlankSpace(line_num=434)
				#PlaceHolder (not a comment): CStructField(line_num=434) mjtNum apirate ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=434)
				# update rate for remote API (Hz) 
				#PlaceHolder (not a comment): BlankSpace(line_num=435)
				#PlaceHolder (not a comment): BlankSpace(line_num=436)
				# solver parameters 
				#PlaceHolder (not a comment): BlankSpace(line_num=437)
				#PlaceHolder (not a comment): CStructField(line_num=437) mjtNum impratio ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=437)
				# ratio of friction-to-normal contact impedance 
				#PlaceHolder (not a comment): BlankSpace(line_num=438)
				#PlaceHolder (not a comment): CStructField(line_num=438) mjtNum tolerance ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=438)
				# main solver tolerance 
				#PlaceHolder (not a comment): BlankSpace(line_num=439)
				#PlaceHolder (not a comment): CStructField(line_num=439) mjtNum ls_tolerance ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=439)
				# CG/Newton linesearch tolerance 
				#PlaceHolder (not a comment): BlankSpace(line_num=440)
				#PlaceHolder (not a comment): CStructField(line_num=440) mjtNum noslip_tolerance ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=440)
				# noslip solver tolerance 
				#PlaceHolder (not a comment): BlankSpace(line_num=441)
				#PlaceHolder (not a comment): CStructField(line_num=441) mjtNum ccd_tolerance ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=441)
				# convex collision solver tolerance 
				#PlaceHolder (not a comment): BlankSpace(line_num=442)
				#PlaceHolder (not a comment): BlankSpace(line_num=443)
				# physical constants 
				#PlaceHolder (not a comment): BlankSpace(line_num=444)
				#PlaceHolder (not a comment): CStructField(line_num=444) mjtNum gravity[3] ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=444)
				# gravitational acceleration 
				#PlaceHolder (not a comment): BlankSpace(line_num=445)
				#PlaceHolder (not a comment): CStructField(line_num=445) mjtNum wind[3] ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=445)
				# wind (for lift, drag and viscosity) 
				#PlaceHolder (not a comment): BlankSpace(line_num=446)
				#PlaceHolder (not a comment): CStructField(line_num=446) mjtNum magnetic[3] ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=446)
				# global magnetic flux 
				#PlaceHolder (not a comment): BlankSpace(line_num=447)
				#PlaceHolder (not a comment): CStructField(line_num=447) mjtNum density ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=447)
				# density of medium 
				#PlaceHolder (not a comment): BlankSpace(line_num=448)
				#PlaceHolder (not a comment): CStructField(line_num=448) mjtNum viscosity ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=448)
				# viscosity of medium 
				#PlaceHolder (not a comment): BlankSpace(line_num=449)
				#PlaceHolder (not a comment): BlankSpace(line_num=450)
				# override contact solver parameters (if enabled) 
				#PlaceHolder (not a comment): BlankSpace(line_num=451)
				#PlaceHolder (not a comment): CStructField(line_num=451) mjtNum o_margin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=451)
				# margin 
				#PlaceHolder (not a comment): BlankSpace(line_num=452)
				#PlaceHolder (not a comment): CStructField(line_num=452) mjtNum o_solref[mjNREF] ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=452)
				# solref 
				#PlaceHolder (not a comment): BlankSpace(line_num=453)
				#PlaceHolder (not a comment): CStructField(line_num=453) mjtNum o_solimp[mjNIMP] ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=453)
				# solimp 
				#PlaceHolder (not a comment): BlankSpace(line_num=454)
				#PlaceHolder (not a comment): CStructField(line_num=454) mjtNum o_friction[5] ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=454)
				# friction 
				#PlaceHolder (not a comment): BlankSpace(line_num=455)
				#PlaceHolder (not a comment): BlankSpace(line_num=456)
				# discrete settings 
				#PlaceHolder (not a comment): BlankSpace(line_num=457)
				#PlaceHolder (not a comment): CStructField(line_num=457) int integrator ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=457)
				# integration mode (mjtIntegrator) 
				#PlaceHolder (not a comment): BlankSpace(line_num=458)
				#PlaceHolder (not a comment): CStructField(line_num=458) int cone ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=458)
				# type of friction cone (mjtCone) 
				#PlaceHolder (not a comment): BlankSpace(line_num=459)
				#PlaceHolder (not a comment): CStructField(line_num=459) int jacobian ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=459)
				# type of Jacobian (mjtJacobian) 
				#PlaceHolder (not a comment): BlankSpace(line_num=460)
				#PlaceHolder (not a comment): CStructField(line_num=460) int solver ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=460)
				# solver algorithm (mjtSolver) 
				#PlaceHolder (not a comment): BlankSpace(line_num=461)
				#PlaceHolder (not a comment): CStructField(line_num=461) int iterations ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=461)
				# maximum number of main solver iterations 
				#PlaceHolder (not a comment): BlankSpace(line_num=462)
				#PlaceHolder (not a comment): CStructField(line_num=462) int ls_iterations ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=462)
				# maximum number of CG/Newton linesearch iterations 
				#PlaceHolder (not a comment): BlankSpace(line_num=463)
				#PlaceHolder (not a comment): CStructField(line_num=463) int noslip_iterations ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=463)
				# maximum number of noslip solver iterations 
				#PlaceHolder (not a comment): BlankSpace(line_num=464)
				#PlaceHolder (not a comment): CStructField(line_num=464) int ccd_iterations ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=464)
				# maximum number of convex collision solver iterations 
				#PlaceHolder (not a comment): BlankSpace(line_num=465)
				#PlaceHolder (not a comment): CStructField(line_num=465) int disableflags ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=465)
				# bit flags for disabling standard features 
				#PlaceHolder (not a comment): BlankSpace(line_num=466)
				#PlaceHolder (not a comment): CStructField(line_num=466) int enableflags ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=466)
				# bit flags for enabling optional features 
				#PlaceHolder (not a comment): BlankSpace(line_num=467)
				#PlaceHolder (not a comment): CStructField(line_num=467) int disableactuator ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=467)
				# bit flags for disabling actuators by group id 
				#PlaceHolder (not a comment): BlankSpace(line_num=468)
				#PlaceHolder (not a comment): BlankSpace(line_num=469)
				# sdf collision settings 
				#PlaceHolder (not a comment): BlankSpace(line_num=470)
				#PlaceHolder (not a comment): CStructField(line_num=470) int sdf_initpoints ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=470)
				# number of starting points for gradient descent 
				#PlaceHolder (not a comment): BlankSpace(line_num=471)
				#PlaceHolder (not a comment): CStructField(line_num=471) int sdf_iterations ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=471)
				# max number of iterations for gradient descent 
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=472)
		#PlaceHolder (not a comment): TypeDef(line_num=473) typedef struct mjOption_ mjOption ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=473)
		#PlaceHolder (not a comment): BlankSpace(line_num=474)
		#PlaceHolder (not a comment): BlankSpace(line_num=475)
		#---------------------------------- mjVisual ------------------------------------------------------ 
		#PlaceHolder (not a comment): BlankSpace(line_num=477)
		#PlaceHolder (not a comment): CStruct(line_num=478) struct mjVisual_ 
			#PlaceHolder (not a comment): Scope(line_num=478,scope_type=struct) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=478)
				# visualization options 
				#PlaceHolder (not a comment): BlankSpace(line_num=479)
				#PlaceHolder (not a comment): CStruct(line_num=479) struct global 
					#PlaceHolder (not a comment): Scope(line_num=479,scope_type=struct) { 
						#PlaceHolder (not a comment): BlankSpace(line_num=479)
						# global parameters 
						#PlaceHolder (not a comment): BlankSpace(line_num=480)
						#PlaceHolder (not a comment): CStructField(line_num=480) int orthographic ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=480)
						# is the free camera orthographic (0: no, 1: yes) 
						#PlaceHolder (not a comment): BlankSpace(line_num=481)
						#PlaceHolder (not a comment): CStructField(line_num=481) float fovy ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=481)
						# y field-of-view of free camera (orthographic ? length : degree) 
						#PlaceHolder (not a comment): BlankSpace(line_num=482)
						#PlaceHolder (not a comment): CStructField(line_num=482) float ipd ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=482)
						# inter-pupilary distance for free camera 
						#PlaceHolder (not a comment): BlankSpace(line_num=483)
						#PlaceHolder (not a comment): CStructField(line_num=483) float azimuth ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=483)
						# initial azimuth of free camera (degrees) 
						#PlaceHolder (not a comment): BlankSpace(line_num=484)
						#PlaceHolder (not a comment): CStructField(line_num=484) float elevation ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=484)
						# initial elevation of free camera (degrees) 
						#PlaceHolder (not a comment): BlankSpace(line_num=485)
						#PlaceHolder (not a comment): CStructField(line_num=485) float linewidth ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=485)
						# line width for wireframe and ray rendering 
						#PlaceHolder (not a comment): BlankSpace(line_num=486)
						#PlaceHolder (not a comment): CStructField(line_num=486) float glow ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=486)
						# glow coefficient for selected body 
						#PlaceHolder (not a comment): BlankSpace(line_num=487)
						#PlaceHolder (not a comment): CStructField(line_num=487) float realtime ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=487)
						# initial real-time factor (1: real time) 
						#PlaceHolder (not a comment): BlankSpace(line_num=488)
						#PlaceHolder (not a comment): CStructField(line_num=488) int   offwidth ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=488)
						# width of offscreen buffer 
						#PlaceHolder (not a comment): BlankSpace(line_num=489)
						#PlaceHolder (not a comment): CStructField(line_num=489) int   offheight ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=489)
						# height of offscreen buffer 
						#PlaceHolder (not a comment): BlankSpace(line_num=490)
						#PlaceHolder (not a comment): CStructField(line_num=490) int   ellipsoidinertia ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=490)
						# geom for inertia visualization (0: box, 1: ellipsoid) 
						#PlaceHolder (not a comment): BlankSpace(line_num=491)
						#PlaceHolder (not a comment): CStructField(line_num=491) int   bvactive ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=491)
						# visualize active bounding volumes (0: no, 1: yes) 
						#PlaceHolder (not a comment): BlankSpace(line_num=492)
					<AST-SPLIT>  } 
				<AST-SPLIT>  ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=492)
				#PlaceHolder (not a comment): BlankSpace(line_num=493)
				#PlaceHolder (not a comment): BlankSpace(line_num=494)
				#PlaceHolder (not a comment): CStruct(line_num=494) struct quality 
					#PlaceHolder (not a comment): Scope(line_num=494,scope_type=struct) { 
						#PlaceHolder (not a comment): BlankSpace(line_num=494)
						# rendering quality 
						#PlaceHolder (not a comment): BlankSpace(line_num=495)
						#PlaceHolder (not a comment): CStructField(line_num=495) int   shadowsize ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=495)
						# size of shadowmap texture 
						#PlaceHolder (not a comment): BlankSpace(line_num=496)
						#PlaceHolder (not a comment): CStructField(line_num=496) int   offsamples ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=496)
						# number of multisamples for offscreen rendering 
						#PlaceHolder (not a comment): BlankSpace(line_num=497)
						#PlaceHolder (not a comment): CStructField(line_num=497) int   numslices ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=497)
						# number of slices for builtin geom drawing 
						#PlaceHolder (not a comment): BlankSpace(line_num=498)
						#PlaceHolder (not a comment): CStructField(line_num=498) int   numstacks ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=498)
						# number of stacks for builtin geom drawing 
						#PlaceHolder (not a comment): BlankSpace(line_num=499)
						#PlaceHolder (not a comment): CStructField(line_num=499) int   numquads ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=499)
						# number of quads for box rendering 
						#PlaceHolder (not a comment): BlankSpace(line_num=500)
					<AST-SPLIT>  } 
				<AST-SPLIT>  ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=500)
				#PlaceHolder (not a comment): BlankSpace(line_num=501)
				#PlaceHolder (not a comment): BlankSpace(line_num=502)
				#PlaceHolder (not a comment): CStruct(line_num=502) struct headlight 
					#PlaceHolder (not a comment): Scope(line_num=502,scope_type=struct) { 
						#PlaceHolder (not a comment): BlankSpace(line_num=502)
						# head light 
						#PlaceHolder (not a comment): BlankSpace(line_num=503)
						#PlaceHolder (not a comment): CStructField(line_num=503) float ambient[3] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=503)
						# ambient rgb (alpha=1) 
						#PlaceHolder (not a comment): BlankSpace(line_num=504)
						#PlaceHolder (not a comment): CStructField(line_num=504) float diffuse[3] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=504)
						# diffuse rgb (alpha=1) 
						#PlaceHolder (not a comment): BlankSpace(line_num=505)
						#PlaceHolder (not a comment): CStructField(line_num=505) float specular[3] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=505)
						# specular rgb (alpha=1) 
						#PlaceHolder (not a comment): BlankSpace(line_num=506)
						#PlaceHolder (not a comment): CStructField(line_num=506) int   active ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=506)
						# is headlight active 
						#PlaceHolder (not a comment): BlankSpace(line_num=507)
					<AST-SPLIT>  } 
				<AST-SPLIT>  ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=507)
				#PlaceHolder (not a comment): BlankSpace(line_num=508)
				#PlaceHolder (not a comment): BlankSpace(line_num=509)
				#PlaceHolder (not a comment): CStruct(line_num=509) struct map 
					#PlaceHolder (not a comment): Scope(line_num=509,scope_type=struct) { 
						#PlaceHolder (not a comment): BlankSpace(line_num=509)
						# mapping 
						#PlaceHolder (not a comment): BlankSpace(line_num=510)
						#PlaceHolder (not a comment): CStructField(line_num=510) float stiffness ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=510)
						# mouse perturbation stiffness (space->force) 
						#PlaceHolder (not a comment): BlankSpace(line_num=511)
						#PlaceHolder (not a comment): CStructField(line_num=511) float stiffnessrot ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=511)
						# mouse perturbation stiffness (space->torque) 
						#PlaceHolder (not a comment): BlankSpace(line_num=512)
						#PlaceHolder (not a comment): CStructField(line_num=512) float force ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=512)
						# from force units to space units 
						#PlaceHolder (not a comment): BlankSpace(line_num=513)
						#PlaceHolder (not a comment): CStructField(line_num=513) float torque ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=513)
						# from torque units to space units 
						#PlaceHolder (not a comment): BlankSpace(line_num=514)
						#PlaceHolder (not a comment): CStructField(line_num=514) float alpha ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=514)
						# scale geom alphas when transparency is enabled 
						#PlaceHolder (not a comment): BlankSpace(line_num=515)
						#PlaceHolder (not a comment): CStructField(line_num=515) float fogstart ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=515)
						# OpenGL fog starts at fogstart * mjModel.stat.extent 
						#PlaceHolder (not a comment): BlankSpace(line_num=516)
						#PlaceHolder (not a comment): CStructField(line_num=516) float fogend ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=516)
						# OpenGL fog ends at fogend * mjModel.stat.extent 
						#PlaceHolder (not a comment): BlankSpace(line_num=517)
						#PlaceHolder (not a comment): CStructField(line_num=517) float znear ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=517)
						# near clipping plane = znear * mjModel.stat.extent 
						#PlaceHolder (not a comment): BlankSpace(line_num=518)
						#PlaceHolder (not a comment): CStructField(line_num=518) float zfar ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=518)
						# far clipping plane = zfar * mjModel.stat.extent 
						#PlaceHolder (not a comment): BlankSpace(line_num=519)
						#PlaceHolder (not a comment): CStructField(line_num=519) float haze ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=519)
						# haze ratio 
						#PlaceHolder (not a comment): BlankSpace(line_num=520)
						#PlaceHolder (not a comment): CStructField(line_num=520) float shadowclip ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=520)
						# directional light: shadowclip * mjModel.stat.extent 
						#PlaceHolder (not a comment): BlankSpace(line_num=521)
						#PlaceHolder (not a comment): CStructField(line_num=521) float shadowscale ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=521)
						# spot light: shadowscale * light.cutoff 
						#PlaceHolder (not a comment): BlankSpace(line_num=522)
						#PlaceHolder (not a comment): CStructField(line_num=522) float actuatortendon ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=522)
						# scale tendon width 
						#PlaceHolder (not a comment): BlankSpace(line_num=523)
					<AST-SPLIT>  } 
				<AST-SPLIT>  ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=523)
				#PlaceHolder (not a comment): BlankSpace(line_num=524)
				#PlaceHolder (not a comment): BlankSpace(line_num=525)
				#PlaceHolder (not a comment): CStruct(line_num=525) struct scale 
					#PlaceHolder (not a comment): Scope(line_num=525,scope_type=struct) { 
						#PlaceHolder (not a comment): BlankSpace(line_num=525)
						# scale of decor elements relative to mean body size 
						#PlaceHolder (not a comment): BlankSpace(line_num=526)
						#PlaceHolder (not a comment): CStructField(line_num=526) float forcewidth ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=526)
						# width of force arrow 
						#PlaceHolder (not a comment): BlankSpace(line_num=527)
						#PlaceHolder (not a comment): CStructField(line_num=527) float contactwidth ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=527)
						# contact width 
						#PlaceHolder (not a comment): BlankSpace(line_num=528)
						#PlaceHolder (not a comment): CStructField(line_num=528) float contactheight ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=528)
						# contact height 
						#PlaceHolder (not a comment): BlankSpace(line_num=529)
						#PlaceHolder (not a comment): CStructField(line_num=529) float connect ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=529)
						# autoconnect capsule width 
						#PlaceHolder (not a comment): BlankSpace(line_num=530)
						#PlaceHolder (not a comment): CStructField(line_num=530) float com ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=530)
						# com radius 
						#PlaceHolder (not a comment): BlankSpace(line_num=531)
						#PlaceHolder (not a comment): CStructField(line_num=531) float camera ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=531)
						# camera object 
						#PlaceHolder (not a comment): BlankSpace(line_num=532)
						#PlaceHolder (not a comment): CStructField(line_num=532) float light ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=532)
						# light object 
						#PlaceHolder (not a comment): BlankSpace(line_num=533)
						#PlaceHolder (not a comment): CStructField(line_num=533) float selectpoint ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=533)
						# selection point 
						#PlaceHolder (not a comment): BlankSpace(line_num=534)
						#PlaceHolder (not a comment): CStructField(line_num=534) float jointlength ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=534)
						# joint length 
						#PlaceHolder (not a comment): BlankSpace(line_num=535)
						#PlaceHolder (not a comment): CStructField(line_num=535) float jointwidth ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=535)
						# joint width 
						#PlaceHolder (not a comment): BlankSpace(line_num=536)
						#PlaceHolder (not a comment): CStructField(line_num=536) float actuatorlength ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=536)
						# actuator length 
						#PlaceHolder (not a comment): BlankSpace(line_num=537)
						#PlaceHolder (not a comment): CStructField(line_num=537) float actuatorwidth ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=537)
						# actuator width 
						#PlaceHolder (not a comment): BlankSpace(line_num=538)
						#PlaceHolder (not a comment): CStructField(line_num=538) float framelength ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=538)
						# bodyframe axis length 
						#PlaceHolder (not a comment): BlankSpace(line_num=539)
						#PlaceHolder (not a comment): CStructField(line_num=539) float framewidth ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=539)
						# bodyframe axis width 
						#PlaceHolder (not a comment): BlankSpace(line_num=540)
						#PlaceHolder (not a comment): CStructField(line_num=540) float constraint ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=540)
						# constraint width 
						#PlaceHolder (not a comment): BlankSpace(line_num=541)
						#PlaceHolder (not a comment): CStructField(line_num=541) float slidercrank ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=541)
						# slidercrank width 
						#PlaceHolder (not a comment): BlankSpace(line_num=542)
						#PlaceHolder (not a comment): CStructField(line_num=542) float frustum ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=542)
						# frustum zfar plane 
						#PlaceHolder (not a comment): BlankSpace(line_num=543)
					<AST-SPLIT>  } 
				<AST-SPLIT>  ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=543)
				#PlaceHolder (not a comment): BlankSpace(line_num=544)
				#PlaceHolder (not a comment): BlankSpace(line_num=545)
				#PlaceHolder (not a comment): CStruct(line_num=545) struct rgba 
					#PlaceHolder (not a comment): Scope(line_num=545,scope_type=struct) { 
						#PlaceHolder (not a comment): BlankSpace(line_num=545)
						# color of decor elements 
						#PlaceHolder (not a comment): BlankSpace(line_num=546)
						#PlaceHolder (not a comment): CStructField(line_num=546) float fog[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=546)
						# fog 
						#PlaceHolder (not a comment): BlankSpace(line_num=547)
						#PlaceHolder (not a comment): CStructField(line_num=547) float haze[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=547)
						# haze 
						#PlaceHolder (not a comment): BlankSpace(line_num=548)
						#PlaceHolder (not a comment): CStructField(line_num=548) float force[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=548)
						# external force 
						#PlaceHolder (not a comment): BlankSpace(line_num=549)
						#PlaceHolder (not a comment): CStructField(line_num=549) float inertia[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=549)
						# inertia box 
						#PlaceHolder (not a comment): BlankSpace(line_num=550)
						#PlaceHolder (not a comment): CStructField(line_num=550) float joint[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=550)
						# joint 
						#PlaceHolder (not a comment): BlankSpace(line_num=551)
						#PlaceHolder (not a comment): CStructField(line_num=551) float actuator[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=551)
						# actuator, neutral 
						#PlaceHolder (not a comment): BlankSpace(line_num=552)
						#PlaceHolder (not a comment): CStructField(line_num=552) float actuatornegative[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=552)
						# actuator, negative limit 
						#PlaceHolder (not a comment): BlankSpace(line_num=553)
						#PlaceHolder (not a comment): CStructField(line_num=553) float actuatorpositive[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=553)
						# actuator, positive limit 
						#PlaceHolder (not a comment): BlankSpace(line_num=554)
						#PlaceHolder (not a comment): CStructField(line_num=554) float com[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=554)
						# center of mass 
						#PlaceHolder (not a comment): BlankSpace(line_num=555)
						#PlaceHolder (not a comment): CStructField(line_num=555) float camera[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=555)
						# camera object 
						#PlaceHolder (not a comment): BlankSpace(line_num=556)
						#PlaceHolder (not a comment): CStructField(line_num=556) float light[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=556)
						# light object 
						#PlaceHolder (not a comment): BlankSpace(line_num=557)
						#PlaceHolder (not a comment): CStructField(line_num=557) float selectpoint[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=557)
						# selection point 
						#PlaceHolder (not a comment): BlankSpace(line_num=558)
						#PlaceHolder (not a comment): CStructField(line_num=558) float connect[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=558)
						# auto connect 
						#PlaceHolder (not a comment): BlankSpace(line_num=559)
						#PlaceHolder (not a comment): CStructField(line_num=559) float contactpoint[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=559)
						# contact point 
						#PlaceHolder (not a comment): BlankSpace(line_num=560)
						#PlaceHolder (not a comment): CStructField(line_num=560) float contactforce[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=560)
						# contact force 
						#PlaceHolder (not a comment): BlankSpace(line_num=561)
						#PlaceHolder (not a comment): CStructField(line_num=561) float contactfriction[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=561)
						# contact friction force 
						#PlaceHolder (not a comment): BlankSpace(line_num=562)
						#PlaceHolder (not a comment): CStructField(line_num=562) float contacttorque[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=562)
						# contact torque 
						#PlaceHolder (not a comment): BlankSpace(line_num=563)
						#PlaceHolder (not a comment): CStructField(line_num=563) float contactgap[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=563)
						# contact point in gap 
						#PlaceHolder (not a comment): BlankSpace(line_num=564)
						#PlaceHolder (not a comment): CStructField(line_num=564) float rangefinder[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=564)
						# rangefinder ray 
						#PlaceHolder (not a comment): BlankSpace(line_num=565)
						#PlaceHolder (not a comment): CStructField(line_num=565) float constraint[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=565)
						# constraint 
						#PlaceHolder (not a comment): BlankSpace(line_num=566)
						#PlaceHolder (not a comment): CStructField(line_num=566) float slidercrank[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=566)
						# slidercrank 
						#PlaceHolder (not a comment): BlankSpace(line_num=567)
						#PlaceHolder (not a comment): CStructField(line_num=567) float crankbroken[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=567)
						# used when crank must be stretched/broken 
						#PlaceHolder (not a comment): BlankSpace(line_num=568)
						#PlaceHolder (not a comment): CStructField(line_num=568) float frustum[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=568)
						# camera frustum 
						#PlaceHolder (not a comment): BlankSpace(line_num=569)
						#PlaceHolder (not a comment): CStructField(line_num=569) float bv[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=569)
						# bounding volume 
						#PlaceHolder (not a comment): BlankSpace(line_num=570)
						#PlaceHolder (not a comment): CStructField(line_num=570) float bvactive[4] ; 
						#PlaceHolder (not a comment): BlankSpace(line_num=570)
						# active bounding volume 
						#PlaceHolder (not a comment): BlankSpace(line_num=571)
					<AST-SPLIT>  } 
				<AST-SPLIT>  ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=571)
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=572)
		#PlaceHolder (not a comment): TypeDef(line_num=573) typedef struct mjVisual_ mjVisual ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=573)
		#PlaceHolder (not a comment): BlankSpace(line_num=574)
		#PlaceHolder (not a comment): BlankSpace(line_num=575)
		#---------------------------------- mjStatistic --------------------------------------------------- 
		#PlaceHolder (not a comment): BlankSpace(line_num=577)
		#PlaceHolder (not a comment): CStruct(line_num=578) struct mjStatistic_ 
			#PlaceHolder (not a comment): Scope(line_num=578,scope_type=struct) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=578)
				# model statistics (in qpos0) 
				#PlaceHolder (not a comment): BlankSpace(line_num=579)
				#PlaceHolder (not a comment): CStructField(line_num=579) mjtNum meaninertia ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=579)
				# mean diagonal inertia 
				#PlaceHolder (not a comment): BlankSpace(line_num=580)
				#PlaceHolder (not a comment): CStructField(line_num=580) mjtNum meanmass ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=580)
				# mean body mass 
				#PlaceHolder (not a comment): BlankSpace(line_num=581)
				#PlaceHolder (not a comment): CStructField(line_num=581) mjtNum meansize ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=581)
				# mean body size 
				#PlaceHolder (not a comment): BlankSpace(line_num=582)
				#PlaceHolder (not a comment): CStructField(line_num=582) mjtNum extent ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=582)
				# spatial extent 
				#PlaceHolder (not a comment): BlankSpace(line_num=583)
				#PlaceHolder (not a comment): CStructField(line_num=583) mjtNum center[3] ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=583)
				# center of model 
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=584)
		#PlaceHolder (not a comment): TypeDef(line_num=585) typedef struct mjStatistic_ mjStatistic ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=585)
		#PlaceHolder (not a comment): BlankSpace(line_num=586)
		#PlaceHolder (not a comment): BlankSpace(line_num=587)
		#---------------------------------- mjModel ------------------------------------------------------- 
		#PlaceHolder (not a comment): BlankSpace(line_num=589)
		#PlaceHolder (not a comment): CStruct(line_num=590) struct mjModel_ 
			#PlaceHolder (not a comment): Scope(line_num=590,scope_type=struct) { 
				#PlaceHolder (not a comment): BlankSpace(line_num=591)
				# ------------------------------- sizes 
				#PlaceHolder (not a comment): BlankSpace(line_num=592)
				#PlaceHolder (not a comment): BlankSpace(line_num=593)
				# sizes needed at mjModel construction 
				#PlaceHolder (not a comment): BlankSpace(line_num=594)
				#PlaceHolder (not a comment): CStructField(line_num=594) int nq ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=594)
				# number of generalized coordinates = dim(qpos) 
				#PlaceHolder (not a comment): BlankSpace(line_num=595)
				#PlaceHolder (not a comment): CStructField(line_num=595) int nv ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=595)
				# number of degrees of freedom = dim(qvel) 
				#PlaceHolder (not a comment): BlankSpace(line_num=596)
				#PlaceHolder (not a comment): CStructField(line_num=596) int nu ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=596)
				# number of actuators/controls = dim(ctrl) 
				#PlaceHolder (not a comment): BlankSpace(line_num=597)
				#PlaceHolder (not a comment): CStructField(line_num=597) int na ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=597)
				# number of activation states = dim(act) 
				#PlaceHolder (not a comment): BlankSpace(line_num=598)
				#PlaceHolder (not a comment): CStructField(line_num=598) int nbody ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=598)
				# number of bodies 
				#PlaceHolder (not a comment): BlankSpace(line_num=599)
				#PlaceHolder (not a comment): CStructField(line_num=599) int nbvh ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=599)
				# number of total bounding volumes in all bodies 
				#PlaceHolder (not a comment): BlankSpace(line_num=600)
				#PlaceHolder (not a comment): CStructField(line_num=600) int nbvhstatic ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=600)
				# number of static bounding volumes (aabb stored in mjModel) 
				#PlaceHolder (not a comment): BlankSpace(line_num=601)
				#PlaceHolder (not a comment): CStructField(line_num=601) int nbvhdynamic ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=601)
				# number of dynamic bounding volumes (aabb stored in mjData) 
				#PlaceHolder (not a comment): BlankSpace(line_num=602)
				#PlaceHolder (not a comment): CStructField(line_num=602) int njnt ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=602)
				# number of joints 
				#PlaceHolder (not a comment): BlankSpace(line_num=603)
				#PlaceHolder (not a comment): CStructField(line_num=603) int ngeom ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=603)
				# number of geoms 
				#PlaceHolder (not a comment): BlankSpace(line_num=604)
				#PlaceHolder (not a comment): CStructField(line_num=604) int nsite ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=604)
				# number of sites 
				#PlaceHolder (not a comment): BlankSpace(line_num=605)
				#PlaceHolder (not a comment): CStructField(line_num=605) int ncam ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=605)
				# number of cameras 
				#PlaceHolder (not a comment): BlankSpace(line_num=606)
				#PlaceHolder (not a comment): CStructField(line_num=606) int nlight ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=606)
				# number of lights 
				#PlaceHolder (not a comment): BlankSpace(line_num=607)
				#PlaceHolder (not a comment): CStructField(line_num=607) int nflex ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=607)
				# number of flexes 
				#PlaceHolder (not a comment): BlankSpace(line_num=608)
				#PlaceHolder (not a comment): CStructField(line_num=608) int nflexvert ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=608)
				# number of vertices in all flexes 
				#PlaceHolder (not a comment): BlankSpace(line_num=609)
				#PlaceHolder (not a comment): CStructField(line_num=609) int nflexedge ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=609)
				# number of edges in all flexes 
				#PlaceHolder (not a comment): BlankSpace(line_num=610)
				#PlaceHolder (not a comment): CStructField(line_num=610) int nflexelem ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=610)
				# number of elements in all flexes 
				#PlaceHolder (not a comment): BlankSpace(line_num=611)
				#PlaceHolder (not a comment): CStructField(line_num=611) int nflexelemdata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=611)
				# number of element vertex ids in all flexes 
				#PlaceHolder (not a comment): BlankSpace(line_num=612)
				#PlaceHolder (not a comment): CStructField(line_num=612) int nflexelemedge ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=612)
				# number of element edge ids in all flexes 
				#PlaceHolder (not a comment): BlankSpace(line_num=613)
				#PlaceHolder (not a comment): CStructField(line_num=613) int nflexshelldata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=613)
				# number of shell fragment vertex ids in all flexes 
				#PlaceHolder (not a comment): BlankSpace(line_num=614)
				#PlaceHolder (not a comment): CStructField(line_num=614) int nflexevpair ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=614)
				# number of element-vertex pairs in all flexes 
				#PlaceHolder (not a comment): BlankSpace(line_num=615)
				#PlaceHolder (not a comment): CStructField(line_num=615) int nflextexcoord ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=615)
				# number of vertices with texture coordinates 
				#PlaceHolder (not a comment): BlankSpace(line_num=616)
				#PlaceHolder (not a comment): CStructField(line_num=616) int nmesh ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=616)
				# number of meshes 
				#PlaceHolder (not a comment): BlankSpace(line_num=617)
				#PlaceHolder (not a comment): CStructField(line_num=617) int nmeshvert ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=617)
				# number of vertices in all meshes 
				#PlaceHolder (not a comment): BlankSpace(line_num=618)
				#PlaceHolder (not a comment): CStructField(line_num=618) int nmeshnormal ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=618)
				# number of normals in all meshes 
				#PlaceHolder (not a comment): BlankSpace(line_num=619)
				#PlaceHolder (not a comment): CStructField(line_num=619) int nmeshtexcoord ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=619)
				# number of texcoords in all meshes 
				#PlaceHolder (not a comment): BlankSpace(line_num=620)
				#PlaceHolder (not a comment): CStructField(line_num=620) int nmeshface ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=620)
				# number of triangular faces in all meshes 
				#PlaceHolder (not a comment): BlankSpace(line_num=621)
				#PlaceHolder (not a comment): CStructField(line_num=621) int nmeshgraph ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=621)
				# number of ints in mesh auxiliary data 
				#PlaceHolder (not a comment): BlankSpace(line_num=622)
				#PlaceHolder (not a comment): CStructField(line_num=622) int nskin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=622)
				# number of skins 
				#PlaceHolder (not a comment): BlankSpace(line_num=623)
				#PlaceHolder (not a comment): CStructField(line_num=623) int nskinvert ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=623)
				# number of vertices in all skins 
				#PlaceHolder (not a comment): BlankSpace(line_num=624)
				#PlaceHolder (not a comment): CStructField(line_num=624) int nskintexvert ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=624)
				# number of vertiex with texcoords in all skins 
				#PlaceHolder (not a comment): BlankSpace(line_num=625)
				#PlaceHolder (not a comment): CStructField(line_num=625) int nskinface ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=625)
				# number of triangular faces in all skins 
				#PlaceHolder (not a comment): BlankSpace(line_num=626)
				#PlaceHolder (not a comment): CStructField(line_num=626) int nskinbone ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=626)
				# number of bones in all skins 
				#PlaceHolder (not a comment): BlankSpace(line_num=627)
				#PlaceHolder (not a comment): CStructField(line_num=627) int nskinbonevert ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=627)
				# number of vertices in all skin bones 
				#PlaceHolder (not a comment): BlankSpace(line_num=628)
				#PlaceHolder (not a comment): CStructField(line_num=628) int nhfield ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=628)
				# number of heightfields 
				#PlaceHolder (not a comment): BlankSpace(line_num=629)
				#PlaceHolder (not a comment): CStructField(line_num=629) int nhfielddata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=629)
				# number of data points in all heightfields 
				#PlaceHolder (not a comment): BlankSpace(line_num=630)
				#PlaceHolder (not a comment): CStructField(line_num=630) int ntex ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=630)
				# number of textures 
				#PlaceHolder (not a comment): BlankSpace(line_num=631)
				#PlaceHolder (not a comment): CStructField(line_num=631) int ntexdata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=631)
				# number of bytes in texture rgb data 
				#PlaceHolder (not a comment): BlankSpace(line_num=632)
				#PlaceHolder (not a comment): CStructField(line_num=632) int nmat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=632)
				# number of materials 
				#PlaceHolder (not a comment): BlankSpace(line_num=633)
				#PlaceHolder (not a comment): CStructField(line_num=633) int npair ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=633)
				# number of predefined geom pairs 
				#PlaceHolder (not a comment): BlankSpace(line_num=634)
				#PlaceHolder (not a comment): CStructField(line_num=634) int nexclude ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=634)
				# number of excluded geom pairs 
				#PlaceHolder (not a comment): BlankSpace(line_num=635)
				#PlaceHolder (not a comment): CStructField(line_num=635) int neq ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=635)
				# number of equality constraints 
				#PlaceHolder (not a comment): BlankSpace(line_num=636)
				#PlaceHolder (not a comment): CStructField(line_num=636) int ntendon ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=636)
				# number of tendons 
				#PlaceHolder (not a comment): BlankSpace(line_num=637)
				#PlaceHolder (not a comment): CStructField(line_num=637) int nwrap ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=637)
				# number of wrap objects in all tendon paths 
				#PlaceHolder (not a comment): BlankSpace(line_num=638)
				#PlaceHolder (not a comment): CStructField(line_num=638) int nsensor ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=638)
				# number of sensors 
				#PlaceHolder (not a comment): BlankSpace(line_num=639)
				#PlaceHolder (not a comment): CStructField(line_num=639) int nnumeric ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=639)
				# number of numeric custom fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=640)
				#PlaceHolder (not a comment): CStructField(line_num=640) int nnumericdata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=640)
				# number of mjtNums in all numeric fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=641)
				#PlaceHolder (not a comment): CStructField(line_num=641) int ntext ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=641)
				# number of text custom fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=642)
				#PlaceHolder (not a comment): CStructField(line_num=642) int ntextdata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=642)
				# number of mjtBytes in all text fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=643)
				#PlaceHolder (not a comment): CStructField(line_num=643) int ntuple ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=643)
				# number of tuple custom fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=644)
				#PlaceHolder (not a comment): CStructField(line_num=644) int ntupledata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=644)
				# number of objects in all tuple fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=645)
				#PlaceHolder (not a comment): CStructField(line_num=645) int nkey ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=645)
				# number of keyframes 
				#PlaceHolder (not a comment): BlankSpace(line_num=646)
				#PlaceHolder (not a comment): CStructField(line_num=646) int nmocap ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=646)
				# number of mocap bodies 
				#PlaceHolder (not a comment): BlankSpace(line_num=647)
				#PlaceHolder (not a comment): CStructField(line_num=647) int nplugin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=647)
				# number of plugin instances 
				#PlaceHolder (not a comment): BlankSpace(line_num=648)
				#PlaceHolder (not a comment): CStructField(line_num=648) int npluginattr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=648)
				# number of chars in all plugin config attributes 
				#PlaceHolder (not a comment): BlankSpace(line_num=649)
				#PlaceHolder (not a comment): CStructField(line_num=649) int nuser_body ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=649)
				# number of mjtNums in body_user 
				#PlaceHolder (not a comment): BlankSpace(line_num=650)
				#PlaceHolder (not a comment): CStructField(line_num=650) int nuser_jnt ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=650)
				# number of mjtNums in jnt_user 
				#PlaceHolder (not a comment): BlankSpace(line_num=651)
				#PlaceHolder (not a comment): CStructField(line_num=651) int nuser_geom ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=651)
				# number of mjtNums in geom_user 
				#PlaceHolder (not a comment): BlankSpace(line_num=652)
				#PlaceHolder (not a comment): CStructField(line_num=652) int nuser_site ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=652)
				# number of mjtNums in site_user 
				#PlaceHolder (not a comment): BlankSpace(line_num=653)
				#PlaceHolder (not a comment): CStructField(line_num=653) int nuser_cam ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=653)
				# number of mjtNums in cam_user 
				#PlaceHolder (not a comment): BlankSpace(line_num=654)
				#PlaceHolder (not a comment): CStructField(line_num=654) int nuser_tendon ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=654)
				# number of mjtNums in tendon_user 
				#PlaceHolder (not a comment): BlankSpace(line_num=655)
				#PlaceHolder (not a comment): CStructField(line_num=655) int nuser_actuator ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=655)
				# number of mjtNums in actuator_user 
				#PlaceHolder (not a comment): BlankSpace(line_num=656)
				#PlaceHolder (not a comment): CStructField(line_num=656) int nuser_sensor ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=656)
				# number of mjtNums in sensor_user 
				#PlaceHolder (not a comment): BlankSpace(line_num=657)
				#PlaceHolder (not a comment): CStructField(line_num=657) int nnames ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=657)
				# number of chars in all names 
				#PlaceHolder (not a comment): BlankSpace(line_num=658)
				#PlaceHolder (not a comment): CStructField(line_num=658) int nnames_map ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=658)
				# number of slots in the names hash map 
				#PlaceHolder (not a comment): BlankSpace(line_num=659)
				#PlaceHolder (not a comment): CStructField(line_num=659) int npaths ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=659)
				# number of chars in all paths 
				#PlaceHolder (not a comment): BlankSpace(line_num=660)
				#PlaceHolder (not a comment): BlankSpace(line_num=661)
				# sizes set after mjModel construction (only affect mjData) 
				#PlaceHolder (not a comment): BlankSpace(line_num=662)
				#PlaceHolder (not a comment): CStructField(line_num=662) int nM ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=662)
				# number of non-zeros in sparse inertia matrix 
				#PlaceHolder (not a comment): BlankSpace(line_num=663)
				#PlaceHolder (not a comment): CStructField(line_num=663) int nB ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=663)
				# number of non-zeros in sparse body-dof matrix 
				#PlaceHolder (not a comment): BlankSpace(line_num=664)
				#PlaceHolder (not a comment): CStructField(line_num=664) int nC ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=664)
				# number of non-zeros in sparse reduced dof-dof matrix 
				#PlaceHolder (not a comment): BlankSpace(line_num=665)
				#PlaceHolder (not a comment): CStructField(line_num=665) int nD ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=665)
				# number of non-zeros in sparse dof-dof matrix 
				#PlaceHolder (not a comment): BlankSpace(line_num=666)
				#PlaceHolder (not a comment): CStructField(line_num=666) int ntree ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=666)
				# number of kinematic trees under world body 
				#PlaceHolder (not a comment): BlankSpace(line_num=667)
				#PlaceHolder (not a comment): CStructField(line_num=667) int ngravcomp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=667)
				# number of bodies with nonzero gravcomp 
				#PlaceHolder (not a comment): BlankSpace(line_num=668)
				#PlaceHolder (not a comment): CStructField(line_num=668) int nemax ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=668)
				# number of potential equality-constraint rows 
				#PlaceHolder (not a comment): BlankSpace(line_num=669)
				#PlaceHolder (not a comment): CStructField(line_num=669) int njmax ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=669)
				# number of available rows in constraint Jacobian 
				#PlaceHolder (not a comment): BlankSpace(line_num=670)
				#PlaceHolder (not a comment): CStructField(line_num=670) int nconmax ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=670)
				# number of potential contacts in contact list 
				#PlaceHolder (not a comment): BlankSpace(line_num=671)
				#PlaceHolder (not a comment): CStructField(line_num=671) int nuserdata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=671)
				# number of mjtNums reserved for the user 
				#PlaceHolder (not a comment): BlankSpace(line_num=672)
				#PlaceHolder (not a comment): CStructField(line_num=672) int nsensordata ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=672)
				# number of mjtNums in sensor data vector 
				#PlaceHolder (not a comment): BlankSpace(line_num=673)
				#PlaceHolder (not a comment): CStructField(line_num=673) int npluginstate ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=673)
				# number of mjtNums in plugin state vector 
				#PlaceHolder (not a comment): BlankSpace(line_num=674)
				#PlaceHolder (not a comment): BlankSpace(line_num=675)
				#PlaceHolder (not a comment): CStructField(line_num=675) size_t narena ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=675)
				# number of bytes in the mjData arena (inclusive of stack) 
				#PlaceHolder (not a comment): BlankSpace(line_num=676)
				#PlaceHolder (not a comment): CStructField(line_num=676) size_t nbuffer ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=676)
				# number of bytes in buffer 
				#PlaceHolder (not a comment): BlankSpace(line_num=677)
				#PlaceHolder (not a comment): BlankSpace(line_num=678)
				# ------------------------------- options and statistics 
				#PlaceHolder (not a comment): BlankSpace(line_num=679)
				#PlaceHolder (not a comment): BlankSpace(line_num=680)
				#PlaceHolder (not a comment): CStructField(line_num=680) mjOption opt ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=680)
				# physics options 
				#PlaceHolder (not a comment): BlankSpace(line_num=681)
				#PlaceHolder (not a comment): CStructField(line_num=681) mjVisual vis ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=681)
				# visualization options 
				#PlaceHolder (not a comment): BlankSpace(line_num=682)
				#PlaceHolder (not a comment): CStructField(line_num=682) mjStatistic stat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=682)
				# model statistics 
				#PlaceHolder (not a comment): BlankSpace(line_num=683)
				#PlaceHolder (not a comment): BlankSpace(line_num=684)
				# ------------------------------- buffers 
				#PlaceHolder (not a comment): BlankSpace(line_num=685)
				#PlaceHolder (not a comment): BlankSpace(line_num=686)
				# main buffer 
				#PlaceHolder (not a comment): BlankSpace(line_num=687)
				#PlaceHolder (not a comment): CStructField(line_num=687) void*     buffer ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=687)
				# main buffer ;  all pointers point in it    (nbuffer) 
				#PlaceHolder (not a comment): BlankSpace(line_num=688)
				#PlaceHolder (not a comment): BlankSpace(line_num=689)
				# default generalized coordinates 
				#PlaceHolder (not a comment): BlankSpace(line_num=690)
				#PlaceHolder (not a comment): CStructField(line_num=690) mjtNum*   qpos0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=690)
				# qpos values at default pose              (nq x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=691)
				#PlaceHolder (not a comment): CStructField(line_num=691) mjtNum*   qpos_spring ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=691)
				# reference pose for springs               (nq x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=692)
				#PlaceHolder (not a comment): BlankSpace(line_num=693)
				# bodies 
				#PlaceHolder (not a comment): BlankSpace(line_num=694)
				#PlaceHolder (not a comment): CStructField(line_num=694) int*      body_parentid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=694)
				# id of body's parent                      (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=695)
				#PlaceHolder (not a comment): CStructField(line_num=695) int*      body_rootid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=695)
				# id of root above body                    (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=696)
				#PlaceHolder (not a comment): CStructField(line_num=696) int*      body_weldid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=696)
				# id of body that this body is welded to   (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=697)
				#PlaceHolder (not a comment): CStructField(line_num=697) int*      body_mocapid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=697)
				# id of mocap data ;  -1: none               (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=698)
				#PlaceHolder (not a comment): CStructField(line_num=698) int*      body_jntnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=698)
				# number of joints for this body           (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=699)
				#PlaceHolder (not a comment): CStructField(line_num=699) int*      body_jntadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=699)
				# start addr of joints ;  -1: no joints      (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=700)
				#PlaceHolder (not a comment): CStructField(line_num=700) int*      body_dofnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=700)
				# number of motion degrees of freedom      (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=701)
				#PlaceHolder (not a comment): CStructField(line_num=701) int*      body_dofadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=701)
				# start addr of dofs ;  -1: no dofs          (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=702)
				#PlaceHolder (not a comment): CStructField(line_num=702) int*      body_treeid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=702)
				# id of body's kinematic tree ;  -1: static  (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=703)
				#PlaceHolder (not a comment): CStructField(line_num=703) int*      body_geomnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=703)
				# number of geoms                          (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=704)
				#PlaceHolder (not a comment): CStructField(line_num=704) int*      body_geomadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=704)
				# start addr of geoms ;  -1: no geoms        (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=705)
				#PlaceHolder (not a comment): CStructField(line_num=705) mjtByte*  body_simple ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=705)
				# 1: diag M ;  2: diag M, sliders only       (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=706)
				#PlaceHolder (not a comment): CStructField(line_num=706) mjtByte*  body_sameframe ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=706)
				# same frame as inertia (mjtSameframe)     (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=707)
				#PlaceHolder (not a comment): CStructField(line_num=707) mjtNum*   body_pos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=707)
				# position offset rel. to parent body      (nbody x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=708)
				#PlaceHolder (not a comment): CStructField(line_num=708) mjtNum*   body_quat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=708)
				# orientation offset rel. to parent body   (nbody x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=709)
				#PlaceHolder (not a comment): CStructField(line_num=709) mjtNum*   body_ipos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=709)
				# local position of center of mass         (nbody x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=710)
				#PlaceHolder (not a comment): CStructField(line_num=710) mjtNum*   body_iquat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=710)
				# local orientation of inertia ellipsoid   (nbody x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=711)
				#PlaceHolder (not a comment): CStructField(line_num=711) mjtNum*   body_mass ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=711)
				# mass                                     (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=712)
				#PlaceHolder (not a comment): CStructField(line_num=712) mjtNum*   body_subtreemass ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=712)
				# mass of subtree starting at this body    (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=713)
				#PlaceHolder (not a comment): CStructField(line_num=713) mjtNum*   body_inertia ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=713)
				# diagonal inertia in ipos/iquat frame     (nbody x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=714)
				#PlaceHolder (not a comment): CStructField(line_num=714) mjtNum*   body_invweight0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=714)
				# mean inv inert in qpos0 (trn, rot)       (nbody x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=715)
				#PlaceHolder (not a comment): CStructField(line_num=715) mjtNum*   body_gravcomp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=715)
				# antigravity force, units of body weight  (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=716)
				#PlaceHolder (not a comment): CStructField(line_num=716) mjtNum*   body_margin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=716)
				# MAX over all geom margins                (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=717)
				#PlaceHolder (not a comment): CStructField(line_num=717) mjtNum*   body_user ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=717)
				# user data                                (nbody x nuser_body) 
				#PlaceHolder (not a comment): BlankSpace(line_num=718)
				#PlaceHolder (not a comment): CStructField(line_num=718) int*      body_plugin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=718)
				# plugin instance id ;  -1: not in use       (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=719)
				#PlaceHolder (not a comment): CStructField(line_num=719) int*      body_contype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=719)
				# OR over all geom contypes                (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=720)
				#PlaceHolder (not a comment): CStructField(line_num=720) int*      body_conaffinity ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=720)
				# OR over all geom conaffinities           (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=721)
				#PlaceHolder (not a comment): CStructField(line_num=721) int*      body_bvhadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=721)
				# address of bvh root                      (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=722)
				#PlaceHolder (not a comment): CStructField(line_num=722) int*      body_bvhnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=722)
				# number of bounding volumes               (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=723)
				#PlaceHolder (not a comment): BlankSpace(line_num=724)
				# bounding volume hierarchy 
				#PlaceHolder (not a comment): BlankSpace(line_num=725)
				#PlaceHolder (not a comment): CStructField(line_num=725) int*      bvh_depth ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=725)
				# depth in the bounding volume hierarchy   (nbvh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=726)
				#PlaceHolder (not a comment): CStructField(line_num=726) int*      bvh_child ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=726)
				# left and right children in tree          (nbvh x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=727)
				#PlaceHolder (not a comment): CStructField(line_num=727) int*      bvh_nodeid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=727)
				# geom or elem id of node ;  -1: non-leaf    (nbvh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=728)
				#PlaceHolder (not a comment): CStructField(line_num=728) mjtNum*   bvh_aabb ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=728)
				# local bounding box (center, size)        (nbvhstatic x 6) 
				#PlaceHolder (not a comment): BlankSpace(line_num=729)
				#PlaceHolder (not a comment): BlankSpace(line_num=730)
				# joints 
				#PlaceHolder (not a comment): BlankSpace(line_num=731)
				#PlaceHolder (not a comment): CStructField(line_num=731) int*      jnt_type ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=731)
				# type of joint (mjtJoint)                 (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=732)
				#PlaceHolder (not a comment): CStructField(line_num=732) int*      jnt_qposadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=732)
				# start addr in 'qpos' for joint's data    (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=733)
				#PlaceHolder (not a comment): CStructField(line_num=733) int*      jnt_dofadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=733)
				# start addr in 'qvel' for joint's data    (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=734)
				#PlaceHolder (not a comment): CStructField(line_num=734) int*      jnt_bodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=734)
				# id of joint's body                       (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=735)
				#PlaceHolder (not a comment): CStructField(line_num=735) int*      jnt_group ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=735)
				# group for visibility                     (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=736)
				#PlaceHolder (not a comment): CStructField(line_num=736) mjtByte*  jnt_limited ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=736)
				# does joint have limits                   (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=737)
				#PlaceHolder (not a comment): CStructField(line_num=737) mjtByte*  jnt_actfrclimited ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=737)
				# does joint have actuator force limits    (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=738)
				#PlaceHolder (not a comment): CStructField(line_num=738) mjtByte*  jnt_actgravcomp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=738)
				# is gravcomp force applied via actuators  (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=739)
				#PlaceHolder (not a comment): CStructField(line_num=739) mjtNum*   jnt_solref ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=739)
				# constraint solver reference: limit       (njnt x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=740)
				#PlaceHolder (not a comment): CStructField(line_num=740) mjtNum*   jnt_solimp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=740)
				# constraint solver impedance: limit       (njnt x mjNIMP) 
				#PlaceHolder (not a comment): BlankSpace(line_num=741)
				#PlaceHolder (not a comment): CStructField(line_num=741) mjtNum*   jnt_pos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=741)
				# local anchor position                    (njnt x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=742)
				#PlaceHolder (not a comment): CStructField(line_num=742) mjtNum*   jnt_axis ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=742)
				# local joint axis                         (njnt x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=743)
				#PlaceHolder (not a comment): CStructField(line_num=743) mjtNum*   jnt_stiffness ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=743)
				# stiffness coefficient                    (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=744)
				#PlaceHolder (not a comment): CStructField(line_num=744) mjtNum*   jnt_range ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=744)
				# joint limits                             (njnt x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=745)
				#PlaceHolder (not a comment): CStructField(line_num=745) mjtNum*   jnt_actfrcrange ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=745)
				# range of total actuator force            (njnt x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=746)
				#PlaceHolder (not a comment): CStructField(line_num=746) mjtNum*   jnt_margin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=746)
				# min distance for limit detection         (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=747)
				#PlaceHolder (not a comment): CStructField(line_num=747) mjtNum*   jnt_user ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=747)
				# user data                                (njnt x nuser_jnt) 
				#PlaceHolder (not a comment): BlankSpace(line_num=748)
				#PlaceHolder (not a comment): BlankSpace(line_num=749)
				# dofs 
				#PlaceHolder (not a comment): BlankSpace(line_num=750)
				#PlaceHolder (not a comment): CStructField(line_num=750) int*      dof_bodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=750)
				# id of dof's body                         (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=751)
				#PlaceHolder (not a comment): CStructField(line_num=751) int*      dof_jntid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=751)
				# id of dof's joint                        (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=752)
				#PlaceHolder (not a comment): CStructField(line_num=752) int*      dof_parentid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=752)
				# id of dof's parent ;  -1: none             (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=753)
				#PlaceHolder (not a comment): CStructField(line_num=753) int*      dof_treeid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=753)
				# id of dof's kinematic tree               (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=754)
				#PlaceHolder (not a comment): CStructField(line_num=754) int*      dof_Madr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=754)
				# dof address in M-diagonal                (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=755)
				#PlaceHolder (not a comment): CStructField(line_num=755) int*      dof_simplenum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=755)
				# number of consecutive simple dofs        (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=756)
				#PlaceHolder (not a comment): CStructField(line_num=756) mjtNum*   dof_solref ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=756)
				# constraint solver reference:frictionloss (nv x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=757)
				#PlaceHolder (not a comment): CStructField(line_num=757) mjtNum*   dof_solimp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=757)
				# constraint solver impedance:frictionloss (nv x mjNIMP) 
				#PlaceHolder (not a comment): BlankSpace(line_num=758)
				#PlaceHolder (not a comment): CStructField(line_num=758) mjtNum*   dof_frictionloss ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=758)
				# dof friction loss                        (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=759)
				#PlaceHolder (not a comment): CStructField(line_num=759) mjtNum*   dof_armature ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=759)
				# dof armature inertia/mass                (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=760)
				#PlaceHolder (not a comment): CStructField(line_num=760) mjtNum*   dof_damping ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=760)
				# damping coefficient                      (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=761)
				#PlaceHolder (not a comment): CStructField(line_num=761) mjtNum*   dof_invweight0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=761)
				# diag. inverse inertia in qpos0           (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=762)
				#PlaceHolder (not a comment): CStructField(line_num=762) mjtNum*   dof_M0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=762)
				# diag. inertia in qpos0                   (nv x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=763)
				#PlaceHolder (not a comment): BlankSpace(line_num=764)
				# geoms 
				#PlaceHolder (not a comment): BlankSpace(line_num=765)
				#PlaceHolder (not a comment): CStructField(line_num=765) int*      geom_type ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=765)
				# geometric type (mjtGeom)                 (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=766)
				#PlaceHolder (not a comment): CStructField(line_num=766) int*      geom_contype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=766)
				# geom contact type                        (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=767)
				#PlaceHolder (not a comment): CStructField(line_num=767) int*      geom_conaffinity ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=767)
				# geom contact affinity                    (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=768)
				#PlaceHolder (not a comment): CStructField(line_num=768) int*      geom_condim ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=768)
				# contact dimensionality (1, 3, 4, 6)      (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=769)
				#PlaceHolder (not a comment): CStructField(line_num=769) int*      geom_bodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=769)
				# id of geom's body                        (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=770)
				#PlaceHolder (not a comment): CStructField(line_num=770) int*      geom_dataid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=770)
				# id of geom's mesh/hfield ;  -1: none       (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=771)
				#PlaceHolder (not a comment): CStructField(line_num=771) int*      geom_matid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=771)
				# material id for rendering ;  -1: none      (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=772)
				#PlaceHolder (not a comment): CStructField(line_num=772) int*      geom_group ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=772)
				# group for visibility                     (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=773)
				#PlaceHolder (not a comment): CStructField(line_num=773) int*      geom_priority ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=773)
				# geom contact priority                    (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=774)
				#PlaceHolder (not a comment): CStructField(line_num=774) int*      geom_plugin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=774)
				# plugin instance id ;  -1: not in use       (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=775)
				#PlaceHolder (not a comment): CStructField(line_num=775) mjtByte*  geom_sameframe ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=775)
				# same frame as body (mjtSameframe)        (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=776)
				#PlaceHolder (not a comment): CStructField(line_num=776) mjtNum*   geom_solmix ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=776)
				# mixing coef for solref/imp in geom pair  (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=777)
				#PlaceHolder (not a comment): CStructField(line_num=777) mjtNum*   geom_solref ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=777)
				# constraint solver reference: contact     (ngeom x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=778)
				#PlaceHolder (not a comment): CStructField(line_num=778) mjtNum*   geom_solimp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=778)
				# constraint solver impedance: contact     (ngeom x mjNIMP) 
				#PlaceHolder (not a comment): BlankSpace(line_num=779)
				#PlaceHolder (not a comment): CStructField(line_num=779) mjtNum*   geom_size ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=779)
				# geom-specific size parameters            (ngeom x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=780)
				#PlaceHolder (not a comment): CStructField(line_num=780) mjtNum*   geom_aabb ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=780)
				# bounding box, (center, size)             (ngeom x 6) 
				#PlaceHolder (not a comment): BlankSpace(line_num=781)
				#PlaceHolder (not a comment): CStructField(line_num=781) mjtNum*   geom_rbound ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=781)
				# radius of bounding sphere                (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=782)
				#PlaceHolder (not a comment): CStructField(line_num=782) mjtNum*   geom_pos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=782)
				# local position offset rel. to body       (ngeom x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=783)
				#PlaceHolder (not a comment): CStructField(line_num=783) mjtNum*   geom_quat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=783)
				# local orientation offset rel. to body    (ngeom x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=784)
				#PlaceHolder (not a comment): CStructField(line_num=784) mjtNum*   geom_friction ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=784)
				# friction for (slide, spin, roll)         (ngeom x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=785)
				#PlaceHolder (not a comment): CStructField(line_num=785) mjtNum*   geom_margin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=785)
				# detect contact if dist<margin            (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=786)
				#PlaceHolder (not a comment): CStructField(line_num=786) mjtNum*   geom_gap ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=786)
				# include in solver if dist<margin-gap     (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=787)
				#PlaceHolder (not a comment): CStructField(line_num=787) mjtNum*   geom_fluid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=787)
				# fluid interaction parameters             (ngeom x mjNFLUID) 
				#PlaceHolder (not a comment): BlankSpace(line_num=788)
				#PlaceHolder (not a comment): CStructField(line_num=788) mjtNum*   geom_user ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=788)
				# user data                                (ngeom x nuser_geom) 
				#PlaceHolder (not a comment): BlankSpace(line_num=789)
				#PlaceHolder (not a comment): CStructField(line_num=789) float*    geom_rgba ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=789)
				# rgba when material is omitted            (ngeom x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=790)
				#PlaceHolder (not a comment): BlankSpace(line_num=791)
				# sites 
				#PlaceHolder (not a comment): BlankSpace(line_num=792)
				#PlaceHolder (not a comment): CStructField(line_num=792) int*      site_type ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=792)
				# geom type for rendering (mjtGeom)        (nsite x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=793)
				#PlaceHolder (not a comment): CStructField(line_num=793) int*      site_bodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=793)
				# id of site's body                        (nsite x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=794)
				#PlaceHolder (not a comment): CStructField(line_num=794) int*      site_matid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=794)
				# material id for rendering ;  -1: none      (nsite x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=795)
				#PlaceHolder (not a comment): CStructField(line_num=795) int*      site_group ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=795)
				# group for visibility                     (nsite x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=796)
				#PlaceHolder (not a comment): CStructField(line_num=796) mjtByte*  site_sameframe ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=796)
				# same frame as body (mjtSameframe)        (nsite x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=797)
				#PlaceHolder (not a comment): CStructField(line_num=797) mjtNum*   site_size ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=797)
				# geom size for rendering                  (nsite x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=798)
				#PlaceHolder (not a comment): CStructField(line_num=798) mjtNum*   site_pos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=798)
				# local position offset rel. to body       (nsite x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=799)
				#PlaceHolder (not a comment): CStructField(line_num=799) mjtNum*   site_quat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=799)
				# local orientation offset rel. to body    (nsite x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=800)
				#PlaceHolder (not a comment): CStructField(line_num=800) mjtNum*   site_user ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=800)
				# user data                                (nsite x nuser_site) 
				#PlaceHolder (not a comment): BlankSpace(line_num=801)
				#PlaceHolder (not a comment): CStructField(line_num=801) float*    site_rgba ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=801)
				# rgba when material is omitted            (nsite x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=802)
				#PlaceHolder (not a comment): BlankSpace(line_num=803)
				# cameras 
				#PlaceHolder (not a comment): BlankSpace(line_num=804)
				#PlaceHolder (not a comment): CStructField(line_num=804) int*      cam_mode ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=804)
				# camera tracking mode (mjtCamLight)       (ncam x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=805)
				#PlaceHolder (not a comment): CStructField(line_num=805) int*      cam_bodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=805)
				# id of camera's body                      (ncam x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=806)
				#PlaceHolder (not a comment): CStructField(line_num=806) int*      cam_targetbodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=806)
				# id of targeted body ;  -1: none            (ncam x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=807)
				#PlaceHolder (not a comment): CStructField(line_num=807) mjtNum*   cam_pos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=807)
				# position rel. to body frame              (ncam x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=808)
				#PlaceHolder (not a comment): CStructField(line_num=808) mjtNum*   cam_quat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=808)
				# orientation rel. to body frame           (ncam x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=809)
				#PlaceHolder (not a comment): CStructField(line_num=809) mjtNum*   cam_poscom0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=809)
				# global position rel. to sub-com in qpos0 (ncam x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=810)
				#PlaceHolder (not a comment): CStructField(line_num=810) mjtNum*   cam_pos0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=810)
				# global position rel. to body in qpos0    (ncam x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=811)
				#PlaceHolder (not a comment): CStructField(line_num=811) mjtNum*   cam_mat0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=811)
				# global orientation in qpos0              (ncam x 9) 
				#PlaceHolder (not a comment): BlankSpace(line_num=812)
				#PlaceHolder (not a comment): CStructField(line_num=812) int*      cam_orthographic ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=812)
				# orthographic camera ;  0: no, 1: yes       (ncam x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=813)
				#PlaceHolder (not a comment): CStructField(line_num=813) mjtNum*   cam_fovy ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=813)
				# y field-of-view (ortho ? len : deg)      (ncam x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=814)
				#PlaceHolder (not a comment): CStructField(line_num=814) mjtNum*   cam_ipd ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=814)
				# inter-pupilary distance                  (ncam x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=815)
				#PlaceHolder (not a comment): CStructField(line_num=815) int*      cam_resolution ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=815)
				# resolution: pixels [width, height]       (ncam x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=816)
				#PlaceHolder (not a comment): CStructField(line_num=816) float*    cam_sensorsize ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=816)
				# sensor size: length [width, height]      (ncam x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=817)
				#PlaceHolder (not a comment): CStructField(line_num=817) float*    cam_intrinsic ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=817)
				# [focal length ;  principal point]          (ncam x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=818)
				#PlaceHolder (not a comment): CStructField(line_num=818) mjtNum*   cam_user ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=818)
				# user data                                (ncam x nuser_cam) 
				#PlaceHolder (not a comment): BlankSpace(line_num=819)
				#PlaceHolder (not a comment): BlankSpace(line_num=820)
				# lights 
				#PlaceHolder (not a comment): BlankSpace(line_num=821)
				#PlaceHolder (not a comment): CStructField(line_num=821) int*      light_mode ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=821)
				# light tracking mode (mjtCamLight)        (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=822)
				#PlaceHolder (not a comment): CStructField(line_num=822) int*      light_bodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=822)
				# id of light's body                       (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=823)
				#PlaceHolder (not a comment): CStructField(line_num=823) int*      light_targetbodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=823)
				# id of targeted body ;  -1: none            (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=824)
				#PlaceHolder (not a comment): CStructField(line_num=824) mjtByte*  light_directional ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=824)
				# directional light                        (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=825)
				#PlaceHolder (not a comment): CStructField(line_num=825) mjtByte*  light_castshadow ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=825)
				# does light cast shadows                  (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=826)
				#PlaceHolder (not a comment): CStructField(line_num=826) float*    light_bulbradius ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=826)
				# light radius for soft shadows            (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=827)
				#PlaceHolder (not a comment): CStructField(line_num=827) mjtByte*  light_active ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=827)
				# is light on                              (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=828)
				#PlaceHolder (not a comment): CStructField(line_num=828) mjtNum*   light_pos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=828)
				# position rel. to body frame              (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=829)
				#PlaceHolder (not a comment): CStructField(line_num=829) mjtNum*   light_dir ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=829)
				# direction rel. to body frame             (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=830)
				#PlaceHolder (not a comment): CStructField(line_num=830) mjtNum*   light_poscom0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=830)
				# global position rel. to sub-com in qpos0 (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=831)
				#PlaceHolder (not a comment): CStructField(line_num=831) mjtNum*   light_pos0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=831)
				# global position rel. to body in qpos0    (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=832)
				#PlaceHolder (not a comment): CStructField(line_num=832) mjtNum*   light_dir0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=832)
				# global direction in qpos0                (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=833)
				#PlaceHolder (not a comment): CStructField(line_num=833) float*    light_attenuation ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=833)
				# OpenGL attenuation (quadratic model)     (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=834)
				#PlaceHolder (not a comment): CStructField(line_num=834) float*    light_cutoff ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=834)
				# OpenGL cutoff                            (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=835)
				#PlaceHolder (not a comment): CStructField(line_num=835) float*    light_exponent ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=835)
				# OpenGL exponent                          (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=836)
				#PlaceHolder (not a comment): CStructField(line_num=836) float*    light_ambient ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=836)
				# ambient rgb (alpha=1)                    (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=837)
				#PlaceHolder (not a comment): CStructField(line_num=837) float*    light_diffuse ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=837)
				# diffuse rgb (alpha=1)                    (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=838)
				#PlaceHolder (not a comment): CStructField(line_num=838) float*    light_specular ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=838)
				# specular rgb (alpha=1)                   (nlight x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=839)
				#PlaceHolder (not a comment): BlankSpace(line_num=840)
				# flexes: contact properties 
				#PlaceHolder (not a comment): BlankSpace(line_num=841)
				#PlaceHolder (not a comment): CStructField(line_num=841) int*      flex_contype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=841)
				# flex contact type                        (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=842)
				#PlaceHolder (not a comment): CStructField(line_num=842) int*      flex_conaffinity ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=842)
				# flex contact affinity                    (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=843)
				#PlaceHolder (not a comment): CStructField(line_num=843) int*      flex_condim ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=843)
				# contact dimensionality (1, 3, 4, 6)      (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=844)
				#PlaceHolder (not a comment): CStructField(line_num=844) int*      flex_priority ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=844)
				# flex contact priority                    (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=845)
				#PlaceHolder (not a comment): CStructField(line_num=845) mjtNum*   flex_solmix ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=845)
				# mix coef for solref/imp in contact pair  (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=846)
				#PlaceHolder (not a comment): CStructField(line_num=846) mjtNum*   flex_solref ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=846)
				# constraint solver reference: contact     (nflex x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=847)
				#PlaceHolder (not a comment): CStructField(line_num=847) mjtNum*   flex_solimp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=847)
				# constraint solver impedance: contact     (nflex x mjNIMP) 
				#PlaceHolder (not a comment): BlankSpace(line_num=848)
				#PlaceHolder (not a comment): CStructField(line_num=848) mjtNum*   flex_friction ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=848)
				# friction for (slide, spin, roll)         (nflex x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=849)
				#PlaceHolder (not a comment): CStructField(line_num=849) mjtNum*   flex_margin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=849)
				# detect contact if dist<margin            (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=850)
				#PlaceHolder (not a comment): CStructField(line_num=850) mjtNum*   flex_gap ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=850)
				# include in solver if dist<margin-gap     (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=851)
				#PlaceHolder (not a comment): CStructField(line_num=851) mjtByte*  flex_internal ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=851)
				# internal flex collision enabled          (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=852)
				#PlaceHolder (not a comment): CStructField(line_num=852) int*      flex_selfcollide ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=852)
				# self collision mode (mjtFlexSelf)        (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=853)
				#PlaceHolder (not a comment): CStructField(line_num=853) int*      flex_activelayers ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=853)
				# number of active element layers, 3D only (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=854)
				#PlaceHolder (not a comment): BlankSpace(line_num=855)
				# flexes: other properties 
				#PlaceHolder (not a comment): BlankSpace(line_num=856)
				#PlaceHolder (not a comment): CStructField(line_num=856) int*      flex_dim ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=856)
				# 1: lines, 2: triangles, 3: tetrahedra    (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=857)
				#PlaceHolder (not a comment): CStructField(line_num=857) int*      flex_matid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=857)
				# material id for rendering                (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=858)
				#PlaceHolder (not a comment): CStructField(line_num=858) int*      flex_group ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=858)
				# group for visibility                     (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=859)
				#PlaceHolder (not a comment): CStructField(line_num=859) int*      flex_vertadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=859)
				# first vertex address                     (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=860)
				#PlaceHolder (not a comment): CStructField(line_num=860) int*      flex_vertnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=860)
				# number of vertices                       (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=861)
				#PlaceHolder (not a comment): CStructField(line_num=861) int*      flex_edgeadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=861)
				# first edge address                       (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=862)
				#PlaceHolder (not a comment): CStructField(line_num=862) int*      flex_edgenum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=862)
				# number of edges                          (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=863)
				#PlaceHolder (not a comment): CStructField(line_num=863) int*      flex_elemadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=863)
				# first element address                    (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=864)
				#PlaceHolder (not a comment): CStructField(line_num=864) int*      flex_elemnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=864)
				# number of elements                       (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=865)
				#PlaceHolder (not a comment): CStructField(line_num=865) int*      flex_elemdataadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=865)
				# first element vertex id address          (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=866)
				#PlaceHolder (not a comment): CStructField(line_num=866) int*      flex_elemedgeadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=866)
				# first element edge id address            (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=867)
				#PlaceHolder (not a comment): CStructField(line_num=867) int*      flex_shellnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=867)
				# number of shells                         (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=868)
				#PlaceHolder (not a comment): CStructField(line_num=868) int*      flex_shelldataadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=868)
				# first shell data address                 (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=869)
				#PlaceHolder (not a comment): CStructField(line_num=869) int*      flex_evpairadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=869)
				# first evpair address                     (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=870)
				#PlaceHolder (not a comment): CStructField(line_num=870) int*      flex_evpairnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=870)
				# number of evpairs                        (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=871)
				#PlaceHolder (not a comment): CStructField(line_num=871) int*      flex_texcoordadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=871)
				# address in flex_texcoord ;  -1: none       (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=872)
				#PlaceHolder (not a comment): CStructField(line_num=872) int*      flex_vertbodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=872)
				# vertex body ids                          (nflexvert x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=873)
				#PlaceHolder (not a comment): CStructField(line_num=873) int*      flex_edge ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=873)
				# edge vertex ids (2 per edge)             (nflexedge x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=874)
				#PlaceHolder (not a comment): CStructField(line_num=874) int*      flex_elem ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=874)
				# element vertex ids (dim+1 per elem)      (nflexelemdata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=875)
				#PlaceHolder (not a comment): CStructField(line_num=875) int*      flex_elemedge ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=875)
				# element edge ids                         (nflexelemedge x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=876)
				#PlaceHolder (not a comment): CStructField(line_num=876) int*      flex_elemlayer ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=876)
				# element distance from surface, 3D only   (nflexelem x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=877)
				#PlaceHolder (not a comment): CStructField(line_num=877) int*      flex_shell ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=877)
				# shell fragment vertex ids (dim per frag) (nflexshelldata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=878)
				#PlaceHolder (not a comment): CStructField(line_num=878) int*      flex_evpair ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=878)
				# (element, vertex) collision pairs        (nflexevpair x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=879)
				#PlaceHolder (not a comment): CStructField(line_num=879) mjtNum*   flex_vert ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=879)
				# vertex positions in local body frames    (nflexvert x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=880)
				#PlaceHolder (not a comment): CStructField(line_num=880) mjtNum*   flex_xvert0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=880)
				# Cartesian vertex positions in qpos0      (nflexvert x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=881)
				#PlaceHolder (not a comment): CStructField(line_num=881) mjtNum*   flexedge_length0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=881)
				# edge lengths in qpos0                    (nflexedge x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=882)
				#PlaceHolder (not a comment): CStructField(line_num=882) mjtNum*   flexedge_invweight0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=882)
				# edge inv. weight in qpos0                (nflexedge x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=883)
				#PlaceHolder (not a comment): CStructField(line_num=883) mjtNum*   flex_radius ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=883)
				# radius around primitive element          (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=884)
				#PlaceHolder (not a comment): CStructField(line_num=884) mjtNum*   flex_stiffness ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=884)
				# finite element stiffness matrix          (nflexelem x 21) 
				#PlaceHolder (not a comment): BlankSpace(line_num=885)
				#PlaceHolder (not a comment): CStructField(line_num=885) mjtNum*   flex_damping ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=885)
				# Rayleigh's damping coefficient           (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=886)
				#PlaceHolder (not a comment): CStructField(line_num=886) mjtNum*   flex_edgestiffness ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=886)
				# edge stiffness                           (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=887)
				#PlaceHolder (not a comment): CStructField(line_num=887) mjtNum*   flex_edgedamping ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=887)
				# edge damping                             (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=888)
				#PlaceHolder (not a comment): CStructField(line_num=888) mjtByte*  flex_edgeequality ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=888)
				# is edge equality constraint defined      (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=889)
				#PlaceHolder (not a comment): CStructField(line_num=889) mjtByte*  flex_rigid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=889)
				# are all verices in the same body         (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=890)
				#PlaceHolder (not a comment): CStructField(line_num=890) mjtByte*  flexedge_rigid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=890)
				# are both edge vertices in same body      (nflexedge x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=891)
				#PlaceHolder (not a comment): CStructField(line_num=891) mjtByte*  flex_centered ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=891)
				# are all vertex coordinates (0,0,0)       (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=892)
				#PlaceHolder (not a comment): CStructField(line_num=892) mjtByte*  flex_flatskin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=892)
				# render flex skin with flat shading       (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=893)
				#PlaceHolder (not a comment): CStructField(line_num=893) int*      flex_bvhadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=893)
				# address of bvh root ;  -1: no bvh          (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=894)
				#PlaceHolder (not a comment): CStructField(line_num=894) int*      flex_bvhnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=894)
				# number of bounding volumes               (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=895)
				#PlaceHolder (not a comment): CStructField(line_num=895) float*    flex_rgba ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=895)
				# rgba when material is omitted            (nflex x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=896)
				#PlaceHolder (not a comment): CStructField(line_num=896) float*    flex_texcoord ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=896)
				# vertex texture coordinates               (nflextexcoord x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=897)
				#PlaceHolder (not a comment): BlankSpace(line_num=898)
				# meshes 
				#PlaceHolder (not a comment): BlankSpace(line_num=899)
				#PlaceHolder (not a comment): CStructField(line_num=899) int*      mesh_vertadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=899)
				# first vertex address                     (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=900)
				#PlaceHolder (not a comment): CStructField(line_num=900) int*      mesh_vertnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=900)
				# number of vertices                       (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=901)
				#PlaceHolder (not a comment): CStructField(line_num=901) int*      mesh_faceadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=901)
				# first face address                       (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=902)
				#PlaceHolder (not a comment): CStructField(line_num=902) int*      mesh_facenum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=902)
				# number of faces                          (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=903)
				#PlaceHolder (not a comment): CStructField(line_num=903) int*      mesh_bvhadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=903)
				# address of bvh root                      (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=904)
				#PlaceHolder (not a comment): CStructField(line_num=904) int*      mesh_bvhnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=904)
				# number of bvh                            (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=905)
				#PlaceHolder (not a comment): CStructField(line_num=905) int*      mesh_normaladr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=905)
				# first normal address                     (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=906)
				#PlaceHolder (not a comment): CStructField(line_num=906) int*      mesh_normalnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=906)
				# number of normals                        (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=907)
				#PlaceHolder (not a comment): CStructField(line_num=907) int*      mesh_texcoordadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=907)
				# texcoord data address ;  -1: no texcoord   (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=908)
				#PlaceHolder (not a comment): CStructField(line_num=908) int*      mesh_texcoordnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=908)
				# number of texcoord                       (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=909)
				#PlaceHolder (not a comment): CStructField(line_num=909) int*      mesh_graphadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=909)
				# graph data address ;  -1: no graph         (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=910)
				#PlaceHolder (not a comment): CStructField(line_num=910) float*    mesh_vert ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=910)
				# vertex positions for all meshes          (nmeshvert x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=911)
				#PlaceHolder (not a comment): CStructField(line_num=911) float*    mesh_normal ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=911)
				# normals for all meshes                   (nmeshnormal x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=912)
				#PlaceHolder (not a comment): CStructField(line_num=912) float*    mesh_texcoord ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=912)
				# vertex texcoords for all meshes          (nmeshtexcoord x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=913)
				#PlaceHolder (not a comment): CStructField(line_num=913) int*      mesh_face ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=913)
				# vertex face data                         (nmeshface x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=914)
				#PlaceHolder (not a comment): CStructField(line_num=914) int*      mesh_facenormal ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=914)
				# normal face data                         (nmeshface x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=915)
				#PlaceHolder (not a comment): CStructField(line_num=915) int*      mesh_facetexcoord ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=915)
				# texture face data                        (nmeshface x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=916)
				#PlaceHolder (not a comment): CStructField(line_num=916) int*      mesh_graph ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=916)
				# convex graph data                        (nmeshgraph x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=917)
				#PlaceHolder (not a comment): CStructField(line_num=917) mjtNum*   mesh_scale ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=917)
				# scaling applied to asset vertices        (nmesh x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=918)
				#PlaceHolder (not a comment): CStructField(line_num=918) mjtNum*   mesh_pos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=918)
				# translation applied to asset vertices    (nmesh x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=919)
				#PlaceHolder (not a comment): CStructField(line_num=919) mjtNum*   mesh_quat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=919)
				# rotation applied to asset vertices       (nmesh x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=920)
				#PlaceHolder (not a comment): CStructField(line_num=920) int*      mesh_pathadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=920)
				# address of asset path for mesh ;  -1: none (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=921)
				#PlaceHolder (not a comment): BlankSpace(line_num=922)
				# skins 
				#PlaceHolder (not a comment): BlankSpace(line_num=923)
				#PlaceHolder (not a comment): CStructField(line_num=923) int*      skin_matid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=923)
				# skin material id ;  -1: none               (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=924)
				#PlaceHolder (not a comment): CStructField(line_num=924) int*      skin_group ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=924)
				# group for visibility                     (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=925)
				#PlaceHolder (not a comment): CStructField(line_num=925) float*    skin_rgba ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=925)
				# skin rgba                                (nskin x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=926)
				#PlaceHolder (not a comment): CStructField(line_num=926) float*    skin_inflate ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=926)
				# inflate skin in normal direction         (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=927)
				#PlaceHolder (not a comment): CStructField(line_num=927) int*      skin_vertadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=927)
				# first vertex address                     (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=928)
				#PlaceHolder (not a comment): CStructField(line_num=928) int*      skin_vertnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=928)
				# number of vertices                       (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=929)
				#PlaceHolder (not a comment): CStructField(line_num=929) int*      skin_texcoordadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=929)
				# texcoord data address ;  -1: no texcoord   (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=930)
				#PlaceHolder (not a comment): CStructField(line_num=930) int*      skin_faceadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=930)
				# first face address                       (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=931)
				#PlaceHolder (not a comment): CStructField(line_num=931) int*      skin_facenum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=931)
				# number of faces                          (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=932)
				#PlaceHolder (not a comment): CStructField(line_num=932) int*      skin_boneadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=932)
				# first bone in skin                       (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=933)
				#PlaceHolder (not a comment): CStructField(line_num=933) int*      skin_bonenum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=933)
				# number of bones in skin                  (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=934)
				#PlaceHolder (not a comment): CStructField(line_num=934) float*    skin_vert ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=934)
				# vertex positions for all skin meshes     (nskinvert x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=935)
				#PlaceHolder (not a comment): CStructField(line_num=935) float*    skin_texcoord ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=935)
				# vertex texcoords for all skin meshes     (nskintexvert x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=936)
				#PlaceHolder (not a comment): CStructField(line_num=936) int*      skin_face ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=936)
				# triangle faces for all skin meshes       (nskinface x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=937)
				#PlaceHolder (not a comment): CStructField(line_num=937) int*      skin_bonevertadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=937)
				# first vertex in each bone                (nskinbone x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=938)
				#PlaceHolder (not a comment): CStructField(line_num=938) int*      skin_bonevertnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=938)
				# number of vertices in each bone          (nskinbone x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=939)
				#PlaceHolder (not a comment): CStructField(line_num=939) float*    skin_bonebindpos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=939)
				# bind pos of each bone                    (nskinbone x 3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=940)
				#PlaceHolder (not a comment): CStructField(line_num=940) float*    skin_bonebindquat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=940)
				# bind quat of each bone                   (nskinbone x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=941)
				#PlaceHolder (not a comment): CStructField(line_num=941) int*      skin_bonebodyid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=941)
				# body id of each bone                     (nskinbone x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=942)
				#PlaceHolder (not a comment): CStructField(line_num=942) int*      skin_bonevertid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=942)
				# mesh ids of vertices in each bone        (nskinbonevert x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=943)
				#PlaceHolder (not a comment): CStructField(line_num=943) float*    skin_bonevertweight ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=943)
				# weights of vertices in each bone         (nskinbonevert x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=944)
				#PlaceHolder (not a comment): CStructField(line_num=944) int*      skin_pathadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=944)
				# address of asset path for skin ;  -1: none (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=945)
				#PlaceHolder (not a comment): BlankSpace(line_num=946)
				# height fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=947)
				#PlaceHolder (not a comment): CStructField(line_num=947) mjtNum*   hfield_size ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=947)
				# (x, y, z_top, z_bottom)                  (nhfield x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=948)
				#PlaceHolder (not a comment): CStructField(line_num=948) int*      hfield_nrow ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=948)
				# number of rows in grid                   (nhfield x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=949)
				#PlaceHolder (not a comment): CStructField(line_num=949) int*      hfield_ncol ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=949)
				# number of columns in grid                (nhfield x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=950)
				#PlaceHolder (not a comment): CStructField(line_num=950) int*      hfield_adr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=950)
				# address in hfield_data                   (nhfield x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=951)
				#PlaceHolder (not a comment): CStructField(line_num=951) float*    hfield_data ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=951)
				# elevation data                           (nhfielddata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=952)
				#PlaceHolder (not a comment): CStructField(line_num=952) int*      hfield_pathadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=952)
				# address of hfield asset path ;  -1: none   (nhfield x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=953)
				#PlaceHolder (not a comment): BlankSpace(line_num=954)
				# textures 
				#PlaceHolder (not a comment): BlankSpace(line_num=955)
				#PlaceHolder (not a comment): CStructField(line_num=955) int*      tex_type ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=955)
				# texture type (mjtTexture)                (ntex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=956)
				#PlaceHolder (not a comment): CStructField(line_num=956) int*      tex_height ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=956)
				# number of rows in texture image          (ntex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=957)
				#PlaceHolder (not a comment): CStructField(line_num=957) int*      tex_width ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=957)
				# number of columns in texture image       (ntex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=958)
				#PlaceHolder (not a comment): CStructField(line_num=958) int*      tex_nchannel ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=958)
				# number of channels in texture image      (ntex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=959)
				#PlaceHolder (not a comment): CStructField(line_num=959) int*      tex_adr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=959)
				# start address in tex_data                (ntex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=960)
				#PlaceHolder (not a comment): CStructField(line_num=960) mjtByte*  tex_data ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=960)
				# pixel values                             (ntexdata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=961)
				#PlaceHolder (not a comment): CStructField(line_num=961) int*      tex_pathadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=961)
				# address of texture asset path ;  -1: none  (ntex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=962)
				#PlaceHolder (not a comment): BlankSpace(line_num=963)
				# materials 
				#PlaceHolder (not a comment): BlankSpace(line_num=964)
				#PlaceHolder (not a comment): CStructField(line_num=964) int*      mat_texid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=964)
				# indices of textures ;  -1: none            (nmat x mjNTEXROLE) 
				#PlaceHolder (not a comment): BlankSpace(line_num=965)
				#PlaceHolder (not a comment): CStructField(line_num=965) mjtByte*  mat_texuniform ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=965)
				# make texture cube uniform                (nmat x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=966)
				#PlaceHolder (not a comment): CStructField(line_num=966) float*    mat_texrepeat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=966)
				# texture repetition for 2d mapping        (nmat x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=967)
				#PlaceHolder (not a comment): CStructField(line_num=967) float*    mat_emission ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=967)
				# emission (x rgb)                         (nmat x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=968)
				#PlaceHolder (not a comment): CStructField(line_num=968) float*    mat_specular ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=968)
				# specular (x white)                       (nmat x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=969)
				#PlaceHolder (not a comment): CStructField(line_num=969) float*    mat_shininess ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=969)
				# shininess coef                           (nmat x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=970)
				#PlaceHolder (not a comment): CStructField(line_num=970) float*    mat_reflectance ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=970)
				# reflectance (0: disable)                 (nmat x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=971)
				#PlaceHolder (not a comment): CStructField(line_num=971) float*    mat_metallic ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=971)
				# metallic coef                            (nmat x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=972)
				#PlaceHolder (not a comment): CStructField(line_num=972) float*    mat_roughness ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=972)
				# roughness coef                           (nmat x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=973)
				#PlaceHolder (not a comment): CStructField(line_num=973) float*    mat_rgba ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=973)
				# rgba                                     (nmat x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=974)
				#PlaceHolder (not a comment): BlankSpace(line_num=975)
				# predefined geom pairs for collision detection ;  has precedence over exclude 
				#PlaceHolder (not a comment): BlankSpace(line_num=976)
				#PlaceHolder (not a comment): CStructField(line_num=976) int*      pair_dim ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=976)
				# contact dimensionality                   (npair x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=977)
				#PlaceHolder (not a comment): CStructField(line_num=977) int*      pair_geom1 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=977)
				# id of geom1                              (npair x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=978)
				#PlaceHolder (not a comment): CStructField(line_num=978) int*      pair_geom2 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=978)
				# id of geom2                              (npair x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=979)
				#PlaceHolder (not a comment): CStructField(line_num=979) int*      pair_signature ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=979)
				# body1 << 16 + body2                      (npair x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=980)
				#PlaceHolder (not a comment): CStructField(line_num=980) mjtNum*   pair_solref ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=980)
				# solver reference: contact normal         (npair x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=981)
				#PlaceHolder (not a comment): CStructField(line_num=981) mjtNum*   pair_solreffriction ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=981)
				# solver reference: contact friction       (npair x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=982)
				#PlaceHolder (not a comment): CStructField(line_num=982) mjtNum*   pair_solimp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=982)
				# solver impedance: contact                (npair x mjNIMP) 
				#PlaceHolder (not a comment): BlankSpace(line_num=983)
				#PlaceHolder (not a comment): CStructField(line_num=983) mjtNum*   pair_margin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=983)
				# detect contact if dist<margin            (npair x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=984)
				#PlaceHolder (not a comment): CStructField(line_num=984) mjtNum*   pair_gap ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=984)
				# include in solver if dist<margin-gap     (npair x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=985)
				#PlaceHolder (not a comment): CStructField(line_num=985) mjtNum*   pair_friction ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=985)
				# tangent1, 2, spin, roll1, 2              (npair x 5) 
				#PlaceHolder (not a comment): BlankSpace(line_num=986)
				#PlaceHolder (not a comment): BlankSpace(line_num=987)
				# excluded body pairs for collision detection 
				#PlaceHolder (not a comment): BlankSpace(line_num=988)
				#PlaceHolder (not a comment): CStructField(line_num=988) int*      exclude_signature ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=988)
				# body1 << 16 + body2                      (nexclude x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=989)
				#PlaceHolder (not a comment): BlankSpace(line_num=990)
				# equality constraints 
				#PlaceHolder (not a comment): BlankSpace(line_num=991)
				#PlaceHolder (not a comment): CStructField(line_num=991) int*      eq_type ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=991)
				# constraint type (mjtEq)                  (neq x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=992)
				#PlaceHolder (not a comment): CStructField(line_num=992) int*      eq_obj1id ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=992)
				# id of object 1                           (neq x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=993)
				#PlaceHolder (not a comment): CStructField(line_num=993) int*      eq_obj2id ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=993)
				# id of object 2                           (neq x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=994)
				#PlaceHolder (not a comment): CStructField(line_num=994) int*      eq_objtype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=994)
				# type of both objects (mjtObj)            (neq x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=995)
				#PlaceHolder (not a comment): CStructField(line_num=995) mjtByte*  eq_active0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=995)
				# initial enable/disable constraint state  (neq x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=996)
				#PlaceHolder (not a comment): CStructField(line_num=996) mjtNum*   eq_solref ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=996)
				# constraint solver reference              (neq x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=997)
				#PlaceHolder (not a comment): CStructField(line_num=997) mjtNum*   eq_solimp ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=997)
				# constraint solver impedance              (neq x mjNIMP) 
				#PlaceHolder (not a comment): BlankSpace(line_num=998)
				#PlaceHolder (not a comment): CStructField(line_num=998) mjtNum*   eq_data ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=998)
				# numeric data for constraint              (neq x mjNEQDATA) 
				#PlaceHolder (not a comment): BlankSpace(line_num=999)
				#PlaceHolder (not a comment): BlankSpace(line_num=1000)
				# tendons 
				#PlaceHolder (not a comment): BlankSpace(line_num=1001)
				#PlaceHolder (not a comment): CStructField(line_num=1001) int*      tendon_adr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1001)
				# address of first object in tendon's path (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1002)
				#PlaceHolder (not a comment): CStructField(line_num=1002) int*      tendon_num ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1002)
				# number of objects in tendon's path       (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1003)
				#PlaceHolder (not a comment): CStructField(line_num=1003) int*      tendon_matid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1003)
				# material id for rendering                (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1004)
				#PlaceHolder (not a comment): CStructField(line_num=1004) int*      tendon_group ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1004)
				# group for visibility                     (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1005)
				#PlaceHolder (not a comment): CStructField(line_num=1005) mjtByte*  tendon_limited ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1005)
				# does tendon have length limits           (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1006)
				#PlaceHolder (not a comment): CStructField(line_num=1006) mjtNum*   tendon_width ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1006)
				# width for rendering                      (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1007)
				#PlaceHolder (not a comment): CStructField(line_num=1007) mjtNum*   tendon_solref_lim ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1007)
				# constraint solver reference: limit       (ntendon x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1008)
				#PlaceHolder (not a comment): CStructField(line_num=1008) mjtNum*   tendon_solimp_lim ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1008)
				# constraint solver impedance: limit       (ntendon x mjNIMP) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1009)
				#PlaceHolder (not a comment): CStructField(line_num=1009) mjtNum*   tendon_solref_fri ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1009)
				# constraint solver reference: friction    (ntendon x mjNREF) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1010)
				#PlaceHolder (not a comment): CStructField(line_num=1010) mjtNum*   tendon_solimp_fri ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1010)
				# constraint solver impedance: friction    (ntendon x mjNIMP) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1011)
				#PlaceHolder (not a comment): CStructField(line_num=1011) mjtNum*   tendon_range ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1011)
				# tendon length limits                     (ntendon x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1012)
				#PlaceHolder (not a comment): CStructField(line_num=1012) mjtNum*   tendon_margin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1012)
				# min distance for limit detection         (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1013)
				#PlaceHolder (not a comment): CStructField(line_num=1013) mjtNum*   tendon_stiffness ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1013)
				# stiffness coefficient                    (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1014)
				#PlaceHolder (not a comment): CStructField(line_num=1014) mjtNum*   tendon_damping ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1014)
				# damping coefficient                      (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1015)
				#PlaceHolder (not a comment): CStructField(line_num=1015) mjtNum*   tendon_frictionloss ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1015)
				# loss due to friction                     (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1016)
				#PlaceHolder (not a comment): CStructField(line_num=1016) mjtNum*   tendon_lengthspring ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1016)
				# spring resting length range              (ntendon x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1017)
				#PlaceHolder (not a comment): CStructField(line_num=1017) mjtNum*   tendon_length0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1017)
				# tendon length in qpos0                   (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1018)
				#PlaceHolder (not a comment): CStructField(line_num=1018) mjtNum*   tendon_invweight0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1018)
				# inv. weight in qpos0                     (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1019)
				#PlaceHolder (not a comment): CStructField(line_num=1019) mjtNum*   tendon_user ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1019)
				# user data                                (ntendon x nuser_tendon) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1020)
				#PlaceHolder (not a comment): CStructField(line_num=1020) float*    tendon_rgba ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1020)
				# rgba when material is omitted            (ntendon x 4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1021)
				#PlaceHolder (not a comment): BlankSpace(line_num=1022)
				# list of all wrap objects in tendon paths 
				#PlaceHolder (not a comment): BlankSpace(line_num=1023)
				#PlaceHolder (not a comment): CStructField(line_num=1023) int*      wrap_type ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1023)
				# wrap object type (mjtWrap)               (nwrap x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1024)
				#PlaceHolder (not a comment): CStructField(line_num=1024) int*      wrap_objid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1024)
				# object id: geom, site, joint             (nwrap x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1025)
				#PlaceHolder (not a comment): CStructField(line_num=1025) mjtNum*   wrap_prm ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1025)
				# divisor, joint coef, or site id          (nwrap x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1026)
				#PlaceHolder (not a comment): BlankSpace(line_num=1027)
				# actuators 
				#PlaceHolder (not a comment): BlankSpace(line_num=1028)
				#PlaceHolder (not a comment): CStructField(line_num=1028) int*      actuator_trntype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1028)
				# transmission type (mjtTrn)               (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1029)
				#PlaceHolder (not a comment): CStructField(line_num=1029) int*      actuator_dyntype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1029)
				# dynamics type (mjtDyn)                   (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1030)
				#PlaceHolder (not a comment): CStructField(line_num=1030) int*      actuator_gaintype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1030)
				# gain type (mjtGain)                      (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1031)
				#PlaceHolder (not a comment): CStructField(line_num=1031) int*      actuator_biastype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1031)
				# bias type (mjtBias)                      (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1032)
				#PlaceHolder (not a comment): CStructField(line_num=1032) int*      actuator_trnid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1032)
				# transmission id: joint, tendon, site     (nu x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1033)
				#PlaceHolder (not a comment): CStructField(line_num=1033) int*      actuator_actadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1033)
				# first activation address ;  -1: stateless  (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1034)
				#PlaceHolder (not a comment): CStructField(line_num=1034) int*      actuator_actnum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1034)
				# number of activation variables           (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1035)
				#PlaceHolder (not a comment): CStructField(line_num=1035) int*      actuator_group ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1035)
				# group for visibility                     (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1036)
				#PlaceHolder (not a comment): CStructField(line_num=1036) mjtByte*  actuator_ctrllimited ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1036)
				# is control limited                       (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1037)
				#PlaceHolder (not a comment): CStructField(line_num=1037) mjtByte*  actuator_forcelimited ; 
				# is force limited                         (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1038)
				#PlaceHolder (not a comment): CStructField(line_num=1038) mjtByte*  actuator_actlimited ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1038)
				# is activation limited                    (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1039)
				#PlaceHolder (not a comment): CStructField(line_num=1039) mjtNum*   actuator_dynprm ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1039)
				# dynamics parameters                      (nu x mjNDYN) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1040)
				#PlaceHolder (not a comment): CStructField(line_num=1040) mjtNum*   actuator_gainprm ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1040)
				# gain parameters                          (nu x mjNGAIN) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1041)
				#PlaceHolder (not a comment): CStructField(line_num=1041) mjtNum*   actuator_biasprm ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1041)
				# bias parameters                          (nu x mjNBIAS) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1042)
				#PlaceHolder (not a comment): CStructField(line_num=1042) mjtByte*  actuator_actearly ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1042)
				# step activation before force             (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1043)
				#PlaceHolder (not a comment): CStructField(line_num=1043) mjtNum*   actuator_ctrlrange ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1043)
				# range of controls                        (nu x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1044)
				#PlaceHolder (not a comment): CStructField(line_num=1044) mjtNum*   actuator_forcerange ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1044)
				# range of forces                          (nu x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1045)
				#PlaceHolder (not a comment): CStructField(line_num=1045) mjtNum*   actuator_actrange ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1045)
				# range of activations                     (nu x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1046)
				#PlaceHolder (not a comment): CStructField(line_num=1046) mjtNum*   actuator_gear ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1046)
				# scale length and transmitted force       (nu x 6) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1047)
				#PlaceHolder (not a comment): CStructField(line_num=1047) mjtNum*   actuator_cranklength ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1047)
				# crank length for slider-crank            (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1048)
				#PlaceHolder (not a comment): CStructField(line_num=1048) mjtNum*   actuator_acc0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1048)
				# acceleration from unit force in qpos0    (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1049)
				#PlaceHolder (not a comment): CStructField(line_num=1049) mjtNum*   actuator_length0 ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1049)
				# actuator length in qpos0                 (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1050)
				#PlaceHolder (not a comment): CStructField(line_num=1050) mjtNum*   actuator_lengthrange ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1050)
				# feasible actuator length range           (nu x 2) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1051)
				#PlaceHolder (not a comment): CStructField(line_num=1051) mjtNum*   actuator_user ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1051)
				# user data                                (nu x nuser_actuator) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1052)
				#PlaceHolder (not a comment): CStructField(line_num=1052) int*      actuator_plugin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1052)
				# plugin instance id ;  -1: not a plugin     (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1053)
				#PlaceHolder (not a comment): BlankSpace(line_num=1054)
				# sensors 
				#PlaceHolder (not a comment): BlankSpace(line_num=1055)
				#PlaceHolder (not a comment): CStructField(line_num=1055) int*      sensor_type ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1055)
				# sensor type (mjtSensor)                  (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1056)
				#PlaceHolder (not a comment): CStructField(line_num=1056) int*      sensor_datatype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1056)
				# numeric data type (mjtDataType)          (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1057)
				#PlaceHolder (not a comment): CStructField(line_num=1057) int*      sensor_needstage ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1057)
				# required compute stage (mjtStage)        (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1058)
				#PlaceHolder (not a comment): CStructField(line_num=1058) int*      sensor_objtype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1058)
				# type of sensorized object (mjtObj)       (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1059)
				#PlaceHolder (not a comment): CStructField(line_num=1059) int*      sensor_objid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1059)
				# id of sensorized object                  (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1060)
				#PlaceHolder (not a comment): CStructField(line_num=1060) int*      sensor_reftype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1060)
				# type of reference frame (mjtObj)         (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1061)
				#PlaceHolder (not a comment): CStructField(line_num=1061) int*      sensor_refid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1061)
				# id of reference frame ;  -1: global frame  (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1062)
				#PlaceHolder (not a comment): CStructField(line_num=1062) int*      sensor_dim ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1062)
				# number of scalar outputs                 (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1063)
				#PlaceHolder (not a comment): CStructField(line_num=1063) int*      sensor_adr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1063)
				# address in sensor array                  (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1064)
				#PlaceHolder (not a comment): CStructField(line_num=1064) mjtNum*   sensor_cutoff ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1064)
				# cutoff for real and positive ;  0: ignore  (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1065)
				#PlaceHolder (not a comment): CStructField(line_num=1065) mjtNum*   sensor_noise ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1065)
				# noise standard deviation                 (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1066)
				#PlaceHolder (not a comment): CStructField(line_num=1066) mjtNum*   sensor_user ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1066)
				# user data                                (nsensor x nuser_sensor) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1067)
				#PlaceHolder (not a comment): CStructField(line_num=1067) int*      sensor_plugin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1067)
				# plugin instance id ;  -1: not a plugin     (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1068)
				#PlaceHolder (not a comment): BlankSpace(line_num=1069)
				# plugin instances 
				#PlaceHolder (not a comment): BlankSpace(line_num=1070)
				#PlaceHolder (not a comment): CStructField(line_num=1070) int*      plugin ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1070)
				# globally registered plugin slot number   (nplugin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1071)
				#PlaceHolder (not a comment): CStructField(line_num=1071) int*      plugin_stateadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1071)
				# address in the plugin state array        (nplugin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1072)
				#PlaceHolder (not a comment): CStructField(line_num=1072) int*      plugin_statenum ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1072)
				# number of states in the plugin instance  (nplugin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1073)
				#PlaceHolder (not a comment): CStructField(line_num=1073) char*     plugin_attr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1073)
				# config attributes of plugin instances    (npluginattr x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1074)
				#PlaceHolder (not a comment): CStructField(line_num=1074) int*      plugin_attradr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1074)
				# address to each instance's config attrib (nplugin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1075)
				#PlaceHolder (not a comment): BlankSpace(line_num=1076)
				# custom numeric fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=1077)
				#PlaceHolder (not a comment): CStructField(line_num=1077) int*      numeric_adr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1077)
				# address of field in numeric_data         (nnumeric x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1078)
				#PlaceHolder (not a comment): CStructField(line_num=1078) int*      numeric_size ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1078)
				# size of numeric field                    (nnumeric x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1079)
				#PlaceHolder (not a comment): CStructField(line_num=1079) mjtNum*   numeric_data ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1079)
				# array of all numeric fields              (nnumericdata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1080)
				#PlaceHolder (not a comment): BlankSpace(line_num=1081)
				# custom text fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=1082)
				#PlaceHolder (not a comment): CStructField(line_num=1082) int*      text_adr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1082)
				# address of text in text_data             (ntext x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1083)
				#PlaceHolder (not a comment): CStructField(line_num=1083) int*      text_size ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1083)
				# size of text field (strlen+1)            (ntext x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1084)
				#PlaceHolder (not a comment): CStructField(line_num=1084) char*     text_data ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1084)
				# array of all text fields (0-terminated)  (ntextdata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1085)
				#PlaceHolder (not a comment): BlankSpace(line_num=1086)
				# custom tuple fields 
				#PlaceHolder (not a comment): BlankSpace(line_num=1087)
				#PlaceHolder (not a comment): CStructField(line_num=1087) int*      tuple_adr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1087)
				# address of text in text_data             (ntuple x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1088)
				#PlaceHolder (not a comment): CStructField(line_num=1088) int*      tuple_size ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1088)
				# number of objects in tuple               (ntuple x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1089)
				#PlaceHolder (not a comment): CStructField(line_num=1089) int*      tuple_objtype ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1089)
				# array of object types in all tuples      (ntupledata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1090)
				#PlaceHolder (not a comment): CStructField(line_num=1090) int*      tuple_objid ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1090)
				# array of object ids in all tuples        (ntupledata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1091)
				#PlaceHolder (not a comment): CStructField(line_num=1091) mjtNum*   tuple_objprm ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1091)
				# array of object params in all tuples     (ntupledata x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1092)
				#PlaceHolder (not a comment): BlankSpace(line_num=1093)
				# keyframes 
				#PlaceHolder (not a comment): BlankSpace(line_num=1094)
				#PlaceHolder (not a comment): CStructField(line_num=1094) mjtNum*   key_time ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1094)
				# key time                                 (nkey x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1095)
				#PlaceHolder (not a comment): CStructField(line_num=1095) mjtNum*   key_qpos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1095)
				# key position                             (nkey x nq) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1096)
				#PlaceHolder (not a comment): CStructField(line_num=1096) mjtNum*   key_qvel ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1096)
				# key velocity                             (nkey x nv) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1097)
				#PlaceHolder (not a comment): CStructField(line_num=1097) mjtNum*   key_act ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1097)
				# key activation                           (nkey x na) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1098)
				#PlaceHolder (not a comment): CStructField(line_num=1098) mjtNum*   key_mpos ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1098)
				# key mocap position                       (nkey x nmocap*3) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1099)
				#PlaceHolder (not a comment): CStructField(line_num=1099) mjtNum*   key_mquat ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1099)
				# key mocap quaternion                     (nkey x nmocap*4) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1100)
				#PlaceHolder (not a comment): CStructField(line_num=1100) mjtNum*   key_ctrl ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1100)
				# key control                              (nkey x nu) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1101)
				#PlaceHolder (not a comment): BlankSpace(line_num=1102)
				# names 
				#PlaceHolder (not a comment): BlankSpace(line_num=1103)
				#PlaceHolder (not a comment): CStructField(line_num=1103) int*      name_bodyadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1103)
				# body name pointers                       (nbody x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1104)
				#PlaceHolder (not a comment): CStructField(line_num=1104) int*      name_jntadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1104)
				# joint name pointers                      (njnt x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1105)
				#PlaceHolder (not a comment): CStructField(line_num=1105) int*      name_geomadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1105)
				# geom name pointers                       (ngeom x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1106)
				#PlaceHolder (not a comment): CStructField(line_num=1106) int*      name_siteadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1106)
				# site name pointers                       (nsite x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1107)
				#PlaceHolder (not a comment): CStructField(line_num=1107) int*      name_camadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1107)
				# camera name pointers                     (ncam x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1108)
				#PlaceHolder (not a comment): CStructField(line_num=1108) int*      name_lightadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1108)
				# light name pointers                      (nlight x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1109)
				#PlaceHolder (not a comment): CStructField(line_num=1109) int*      name_flexadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1109)
				# flex name pointers                       (nflex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1110)
				#PlaceHolder (not a comment): CStructField(line_num=1110) int*      name_meshadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1110)
				# mesh name pointers                       (nmesh x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1111)
				#PlaceHolder (not a comment): CStructField(line_num=1111) int*      name_skinadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1111)
				# skin name pointers                       (nskin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1112)
				#PlaceHolder (not a comment): CStructField(line_num=1112) int*      name_hfieldadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1112)
				# hfield name pointers                     (nhfield x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1113)
				#PlaceHolder (not a comment): CStructField(line_num=1113) int*      name_texadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1113)
				# texture name pointers                    (ntex x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1114)
				#PlaceHolder (not a comment): CStructField(line_num=1114) int*      name_matadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1114)
				# material name pointers                   (nmat x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1115)
				#PlaceHolder (not a comment): CStructField(line_num=1115) int*      name_pairadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1115)
				# geom pair name pointers                  (npair x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1116)
				#PlaceHolder (not a comment): CStructField(line_num=1116) int*      name_excludeadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1116)
				# exclude name pointers                    (nexclude x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1117)
				#PlaceHolder (not a comment): CStructField(line_num=1117) int*      name_eqadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1117)
				# equality constraint name pointers        (neq x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1118)
				#PlaceHolder (not a comment): CStructField(line_num=1118) int*      name_tendonadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1118)
				# tendon name pointers                     (ntendon x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1119)
				#PlaceHolder (not a comment): CStructField(line_num=1119) int*      name_actuatoradr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1119)
				# actuator name pointers                   (nu x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1120)
				#PlaceHolder (not a comment): CStructField(line_num=1120) int*      name_sensoradr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1120)
				# sensor name pointers                     (nsensor x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1121)
				#PlaceHolder (not a comment): CStructField(line_num=1121) int*      name_numericadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1121)
				# numeric name pointers                    (nnumeric x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1122)
				#PlaceHolder (not a comment): CStructField(line_num=1122) int*      name_textadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1122)
				# text name pointers                       (ntext x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1123)
				#PlaceHolder (not a comment): CStructField(line_num=1123) int*      name_tupleadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1123)
				# tuple name pointers                      (ntuple x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1124)
				#PlaceHolder (not a comment): CStructField(line_num=1124) int*      name_keyadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1124)
				# keyframe name pointers                   (nkey x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1125)
				#PlaceHolder (not a comment): CStructField(line_num=1125) int*      name_pluginadr ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1125)
				# plugin instance name pointers            (nplugin x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1126)
				#PlaceHolder (not a comment): CStructField(line_num=1126) char*     names ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1126)
				# names of all objects, 0-terminated       (nnames x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1127)
				#PlaceHolder (not a comment): CStructField(line_num=1127) int*      names_map ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1127)
				# internal hash map of names               (nnames_map x 1) 
				#PlaceHolder (not a comment): BlankSpace(line_num=1128)
				#PlaceHolder (not a comment): BlankSpace(line_num=1129)
				# paths 
				#PlaceHolder (not a comment): BlankSpace(line_num=1130)
				#PlaceHolder (not a comment): CStructField(line_num=1130) char*     paths ; 
				#PlaceHolder (not a comment): BlankSpace(line_num=1130)
				# paths to assets, 0-terminated            (npaths x 1) 
			<AST-SPLIT>  } 
		<AST-SPLIT>  ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=1131)
		#PlaceHolder (not a comment): TypeDef(line_num=1132) typedef struct mjModel_ mjModel ; 
		#PlaceHolder (not a comment): BlankSpace(line_num=1132)
		#PlaceHolder (not a comment): BlankSpace(line_num=1133)
	#PlaceHolder (not a comment): EndIf(line_num=1134) #endif
	#PlaceHolder (not a comment): BlankSpace(line_num=1134)
	# MUJOCO_MJMODEL_H_ 
	#PlaceHolder (not a comment): BlankSpace(line_num=1135)