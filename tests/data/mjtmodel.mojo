RootNode(children=3686) 
SingleLineCommentNode(current_idx=1,parent_idx=0) # Copyright 2021 DeepMind Technologies Limited 
SingleLineCommentNode(current_idx=2,parent_idx=0) # 
SingleLineCommentNode(current_idx=3,parent_idx=0) # Licensed under the Apache License ,  Version 2.0 (the "License") ;  
SingleLineCommentNode(current_idx=4,parent_idx=0) # you may not use this file except in compliance with the License. 
SingleLineCommentNode(current_idx=5,parent_idx=0) # You may obtain a copy of the License at 
SingleLineCommentNode(current_idx=6,parent_idx=0) # 
SingleLineCommentNode(current_idx=7,parent_idx=0) #     http://www.apache.org/licenses/LICENSE-2.0 
SingleLineCommentNode(current_idx=8,parent_idx=0) # 
SingleLineCommentNode(current_idx=9,parent_idx=0) # Unless required by applicable law or agreed to in writing ,  software 
SingleLineCommentNode(current_idx=10,parent_idx=0) # distributed under the License is distributed on an "AS IS" BASIS ,  
SingleLineCommentNode(current_idx=11,parent_idx=0) # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. 
SingleLineCommentNode(current_idx=12,parent_idx=0) # See the License for the specific language governing permissions and 
SingleLineCommentNode(current_idx=13,parent_idx=0) # limitations under the License. 
WhitespaceNode(current_idx=14,parent_idx=0)  
PlaceHolderNode(parent_idx=0,current_idx=15) #ifndef MUJOCO_MJMODEL_H_ 
PlaceHolderNode(parent_idx=15,current_idx=16) #define MUJOCO_MJMODEL_H_ 
 
PlaceHolderNode(parent_idx=15,current_idx=17) #include <stddef.h> 
PlaceHolderNode(parent_idx=15,current_idx=18) #include <stdint.h> 
WhitespaceNode(current_idx=19,parent_idx=15)  
 
PlaceHolderNode(parent_idx=15,current_idx=20) #include <mujoco/mjtnum.h> 
WhitespaceNode(current_idx=21,parent_idx=15)  
SingleLineCommentNode(current_idx=22,parent_idx=15) # global constants 
PlaceHolderNode(parent_idx=15,current_idx=23) #define mjPI            3.14159265358979323846 
PlaceHolderNode(parent_idx=15,current_idx=24) #define mjMAXVAL        1E+10     
SingleLineCommentNode(current_idx=25,parent_idx=15) # maximum value in qpos ,  qvel ,  qacc 
PlaceHolderNode(parent_idx=15,current_idx=26) #define mjMINMU         1E-5      
SingleLineCommentNode(current_idx=27,parent_idx=15) # minimum friction coefficient 
PlaceHolderNode(parent_idx=15,current_idx=28) #define mjMINIMP        0.0001    
SingleLineCommentNode(current_idx=29,parent_idx=15) # minimum constraint impedance 
PlaceHolderNode(parent_idx=15,current_idx=30) #define mjMAXIMP        0.9999    
SingleLineCommentNode(current_idx=31,parent_idx=15) # maximum constraint impedance 
PlaceHolderNode(parent_idx=15,current_idx=32) #define mjMAXCONPAIR    50        
SingleLineCommentNode(current_idx=33,parent_idx=15) # maximum number of contacts per geom pair 
PlaceHolderNode(parent_idx=15,current_idx=34) #define mjMAXTREEDEPTH  50        
SingleLineCommentNode(current_idx=35,parent_idx=15) # maximum bounding volume hierarchy depth 
WhitespaceNode(current_idx=36,parent_idx=15)  
 
SingleLineCommentNode(current_idx=37,parent_idx=15) # ---------------------------------- sizes --------------------------------------------------------- 
WhitespaceNode(current_idx=38,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=39) #define mjNEQDATA       11        
SingleLineCommentNode(current_idx=40,parent_idx=15) # number of eq_data fields 
PlaceHolderNode(parent_idx=15,current_idx=41) #define mjNDYN          10        
SingleLineCommentNode(current_idx=42,parent_idx=15) # number of actuator dynamics parameters 
PlaceHolderNode(parent_idx=15,current_idx=43) #define mjNGAIN         10        
SingleLineCommentNode(current_idx=44,parent_idx=15) # number of actuator gain parameters 
PlaceHolderNode(parent_idx=15,current_idx=45) #define mjNBIAS         10        
SingleLineCommentNode(current_idx=46,parent_idx=15) # number of actuator bias parameters 
PlaceHolderNode(parent_idx=15,current_idx=47) #define mjNFLUID        12        
SingleLineCommentNode(current_idx=48,parent_idx=15) # number of fluid interaction parameters 
PlaceHolderNode(parent_idx=15,current_idx=49) #define mjNREF          2         
SingleLineCommentNode(current_idx=50,parent_idx=15) # number of solver reference parameters 
PlaceHolderNode(parent_idx=15,current_idx=51) #define mjNIMP          5         
SingleLineCommentNode(current_idx=52,parent_idx=15) # number of solver impedance parameters 
PlaceHolderNode(parent_idx=15,current_idx=53) #define mjNSOLVER       200       
SingleLineCommentNode(current_idx=54,parent_idx=15) # size of one mjData.solver array 
PlaceHolderNode(parent_idx=15,current_idx=55) #define mjNISLAND       20        
SingleLineCommentNode(current_idx=56,parent_idx=15) # number of mjData.solver arrays 
WhitespaceNode(current_idx=57,parent_idx=15)  
SingleLineCommentNode(current_idx=58,parent_idx=15) # ---------------------------------- enum types (mjt) ---------------------------------------------- 
WhitespaceNode(current_idx=59,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=60) typedef <children> 
mjtDisableBit ; 
PlaceHolderNode(parent_idx=60,current_idx=61) enum mjtDisableBit_ 
PlaceHolderNode(parent_idx=61,current_idx=62) { 
<children> } 
WhitespaceNode(current_idx=63,parent_idx=62)     
SingleLineCommentNode(current_idx=64,parent_idx=62) # disable default feature bitflags 
WhitespaceNode(current_idx=65,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=66) mjDSBL_CONSTRAINT   = 1<<0 , 
WhitespaceNode(current_idx=67,parent_idx=62)      
SingleLineCommentNode(current_idx=68,parent_idx=62) # entire constraint solver 
WhitespaceNode(current_idx=69,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=70) mjDSBL_EQUALITY     = 1<<1 , 
WhitespaceNode(current_idx=71,parent_idx=62)      
SingleLineCommentNode(current_idx=72,parent_idx=62) # equality constraints 
WhitespaceNode(current_idx=73,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=74) mjDSBL_FRICTIONLOSS = 1<<2 , 
WhitespaceNode(current_idx=75,parent_idx=62)      
SingleLineCommentNode(current_idx=76,parent_idx=62) # joint and tendon frictionloss constraints 
WhitespaceNode(current_idx=77,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=78) mjDSBL_LIMIT        = 1<<3 , 
WhitespaceNode(current_idx=79,parent_idx=62)      
SingleLineCommentNode(current_idx=80,parent_idx=62) # joint and tendon limit constraints 
WhitespaceNode(current_idx=81,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=82) mjDSBL_CONTACT      = 1<<4 , 
WhitespaceNode(current_idx=83,parent_idx=62)      
SingleLineCommentNode(current_idx=84,parent_idx=62) # contact constraints 
WhitespaceNode(current_idx=85,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=86) mjDSBL_PASSIVE      = 1<<5 , 
WhitespaceNode(current_idx=87,parent_idx=62)      
SingleLineCommentNode(current_idx=88,parent_idx=62) # passive forces 
WhitespaceNode(current_idx=89,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=90) mjDSBL_GRAVITY      = 1<<6 , 
WhitespaceNode(current_idx=91,parent_idx=62)      
SingleLineCommentNode(current_idx=92,parent_idx=62) # gravitational forces 
WhitespaceNode(current_idx=93,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=94) mjDSBL_CLAMPCTRL    = 1<<7 , 
WhitespaceNode(current_idx=95,parent_idx=62)      
SingleLineCommentNode(current_idx=96,parent_idx=62) # clamp control to specified range 
WhitespaceNode(current_idx=97,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=98) mjDSBL_WARMSTART    = 1<<8 , 
WhitespaceNode(current_idx=99,parent_idx=62)      
SingleLineCommentNode(current_idx=100,parent_idx=62) # warmstart constraint solver 
WhitespaceNode(current_idx=101,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=102) mjDSBL_FILTERPARENT = 1<<9 , 
WhitespaceNode(current_idx=103,parent_idx=62)      
SingleLineCommentNode(current_idx=104,parent_idx=62) # remove collisions with parent body 
WhitespaceNode(current_idx=105,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=106) mjDSBL_ACTUATION    = 1<<10 , 
WhitespaceNode(current_idx=107,parent_idx=62)     
SingleLineCommentNode(current_idx=108,parent_idx=62) # apply actuation forces 
WhitespaceNode(current_idx=109,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=110) mjDSBL_REFSAFE      = 1<<11 , 
WhitespaceNode(current_idx=111,parent_idx=62)     
SingleLineCommentNode(current_idx=112,parent_idx=62) # integrator safety: make ref[0]>=2*timestep 
WhitespaceNode(current_idx=113,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=114) mjDSBL_SENSOR       = 1<<12 , 
WhitespaceNode(current_idx=115,parent_idx=62)     
SingleLineCommentNode(current_idx=116,parent_idx=62) # sensors 
WhitespaceNode(current_idx=117,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=118) mjDSBL_MIDPHASE     = 1<<13 , 
WhitespaceNode(current_idx=119,parent_idx=62)     
SingleLineCommentNode(current_idx=120,parent_idx=62) # mid-phase collision filtering 
WhitespaceNode(current_idx=121,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=122) mjDSBL_EULERDAMP    = 1<<14 , 
WhitespaceNode(current_idx=123,parent_idx=62)     
SingleLineCommentNode(current_idx=124,parent_idx=62) # implicit integration of joint damping in Euler integrator 
WhitespaceNode(current_idx=125,parent_idx=62)   
PlaceHolderNode(parent_idx=62,current_idx=126) mjDSBL_AUTORESET    = 1<<15 , 
WhitespaceNode(current_idx=127,parent_idx=62)     
SingleLineCommentNode(current_idx=128,parent_idx=62) # automatic reset when numerical issues are detected 
WhitespaceNode(current_idx=129,parent_idx=62)  
  
PlaceHolderNode(parent_idx=62,current_idx=130) mjNDISABLE          = 16 
WhitespaceNode(current_idx=131,parent_idx=62)        
SingleLineCommentNode(current_idx=132,parent_idx=62) # number of disable flags 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtDisableBit 
WhitespaceNode(current_idx=134,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=135) typedef <children> 
mjtEnableBit ; 
PlaceHolderNode(parent_idx=135,current_idx=136) enum mjtEnableBit_ 
PlaceHolderNode(parent_idx=136,current_idx=137) { 
<children> } 
WhitespaceNode(current_idx=138,parent_idx=137)      
SingleLineCommentNode(current_idx=139,parent_idx=137) # enable optional feature bitflags 
WhitespaceNode(current_idx=140,parent_idx=137)   
PlaceHolderNode(parent_idx=137,current_idx=141) mjENBL_OVERRIDE     = 1<<0 , 
WhitespaceNode(current_idx=142,parent_idx=137)      
SingleLineCommentNode(current_idx=143,parent_idx=137) # override contact parameters 
WhitespaceNode(current_idx=144,parent_idx=137)   
PlaceHolderNode(parent_idx=137,current_idx=145) mjENBL_ENERGY       = 1<<1 , 
WhitespaceNode(current_idx=146,parent_idx=137)      
SingleLineCommentNode(current_idx=147,parent_idx=137) # energy computation 
WhitespaceNode(current_idx=148,parent_idx=137)   
PlaceHolderNode(parent_idx=137,current_idx=149) mjENBL_FWDINV       = 1<<2 , 
WhitespaceNode(current_idx=150,parent_idx=137)      
SingleLineCommentNode(current_idx=151,parent_idx=137) # record solver statistics 
WhitespaceNode(current_idx=152,parent_idx=137)   
PlaceHolderNode(parent_idx=137,current_idx=153) mjENBL_INVDISCRETE  = 1<<3 , 
WhitespaceNode(current_idx=154,parent_idx=137)      
SingleLineCommentNode(current_idx=155,parent_idx=137) # discrete-time inverse dynamics 
WhitespaceNode(current_idx=156,parent_idx=137)                                   
SingleLineCommentNode(current_idx=157,parent_idx=137) # experimental features: 
WhitespaceNode(current_idx=158,parent_idx=137)   
PlaceHolderNode(parent_idx=137,current_idx=159) mjENBL_MULTICCD     = 1<<4 , 
WhitespaceNode(current_idx=160,parent_idx=137)      
SingleLineCommentNode(current_idx=161,parent_idx=137) # multi-point convex collision detection 
WhitespaceNode(current_idx=162,parent_idx=137)   
PlaceHolderNode(parent_idx=137,current_idx=163) mjENBL_ISLAND       = 1<<5 , 
WhitespaceNode(current_idx=164,parent_idx=137)      
SingleLineCommentNode(current_idx=165,parent_idx=137) # constraint island discovery 
WhitespaceNode(current_idx=166,parent_idx=137)   
PlaceHolderNode(parent_idx=137,current_idx=167) mjENBL_NATIVECCD    = 1<<6 , 
WhitespaceNode(current_idx=168,parent_idx=137)      
SingleLineCommentNode(current_idx=169,parent_idx=137) # native convex collision detection 
WhitespaceNode(current_idx=170,parent_idx=137)  
  
PlaceHolderNode(parent_idx=137,current_idx=171) mjNENABLE           = 7 
WhitespaceNode(current_idx=172,parent_idx=137)         
SingleLineCommentNode(current_idx=173,parent_idx=137) # number of enable flags 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtEnableBit 
WhitespaceNode(current_idx=175,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=176) typedef <children> 
mjtJoint ; 
PlaceHolderNode(parent_idx=176,current_idx=177) enum mjtJoint_ 
PlaceHolderNode(parent_idx=177,current_idx=178) { 
<children> } 
WhitespaceNode(current_idx=179,parent_idx=178)          
SingleLineCommentNode(current_idx=180,parent_idx=178) # type of degree of freedom 
WhitespaceNode(current_idx=181,parent_idx=178)   
PlaceHolderNode(parent_idx=178,current_idx=182) mjJNT_FREE          = 0 , 
WhitespaceNode(current_idx=183,parent_idx=178)         
SingleLineCommentNode(current_idx=184,parent_idx=178) # global position and orientation (quat)       (7) 
WhitespaceNode(current_idx=185,parent_idx=178)   
PlaceHolderNode(parent_idx=178,current_idx=186) mjJNT_BALL , 
WhitespaceNode(current_idx=187,parent_idx=178)                      
SingleLineCommentNode(current_idx=188,parent_idx=178) # orientation (quat) relative to parent        (4) 
WhitespaceNode(current_idx=189,parent_idx=178)   
PlaceHolderNode(parent_idx=178,current_idx=190) mjJNT_SLIDE , 
WhitespaceNode(current_idx=191,parent_idx=178)                     
SingleLineCommentNode(current_idx=192,parent_idx=178) # sliding distance along body-fixed axis       (1) 
WhitespaceNode(current_idx=193,parent_idx=178)   
PlaceHolderNode(parent_idx=178,current_idx=194) mjJNT_HINGE                     
SingleLineCommentNode(current_idx=195,parent_idx=178) # rotation angle (rad) around body-fixed axis  (1) 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtJoint 
WhitespaceNode(current_idx=197,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=198) typedef <children> 
mjtGeom ; 
PlaceHolderNode(parent_idx=198,current_idx=199) enum mjtGeom_ 
PlaceHolderNode(parent_idx=199,current_idx=200) { 
<children> } 
WhitespaceNode(current_idx=201,parent_idx=200)           
SingleLineCommentNode(current_idx=202,parent_idx=200) # type of geometric shape 
WhitespaceNode(current_idx=203,parent_idx=200)   
SingleLineCommentNode(current_idx=204,parent_idx=200) # regular geom types 
WhitespaceNode(current_idx=205,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=206) mjGEOM_PLANE        = 0 , 
WhitespaceNode(current_idx=207,parent_idx=200)         
SingleLineCommentNode(current_idx=208,parent_idx=200) # plane 
WhitespaceNode(current_idx=209,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=210) mjGEOM_HFIELD , 
WhitespaceNode(current_idx=211,parent_idx=200)                   
SingleLineCommentNode(current_idx=212,parent_idx=200) # height field 
WhitespaceNode(current_idx=213,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=214) mjGEOM_SPHERE , 
WhitespaceNode(current_idx=215,parent_idx=200)                   
SingleLineCommentNode(current_idx=216,parent_idx=200) # sphere 
WhitespaceNode(current_idx=217,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=218) mjGEOM_CAPSULE , 
WhitespaceNode(current_idx=219,parent_idx=200)                  
SingleLineCommentNode(current_idx=220,parent_idx=200) # capsule 
WhitespaceNode(current_idx=221,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=222) mjGEOM_ELLIPSOID , 
WhitespaceNode(current_idx=223,parent_idx=200)                
SingleLineCommentNode(current_idx=224,parent_idx=200) # ellipsoid 
WhitespaceNode(current_idx=225,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=226) mjGEOM_CYLINDER , 
WhitespaceNode(current_idx=227,parent_idx=200)                 
SingleLineCommentNode(current_idx=228,parent_idx=200) # cylinder 
WhitespaceNode(current_idx=229,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=230) mjGEOM_BOX , 
WhitespaceNode(current_idx=231,parent_idx=200)                      
SingleLineCommentNode(current_idx=232,parent_idx=200) # box 
WhitespaceNode(current_idx=233,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=234) mjGEOM_MESH , 
WhitespaceNode(current_idx=235,parent_idx=200)                     
SingleLineCommentNode(current_idx=236,parent_idx=200) # mesh 
WhitespaceNode(current_idx=237,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=238) mjGEOM_SDF , 
WhitespaceNode(current_idx=239,parent_idx=200)                      
SingleLineCommentNode(current_idx=240,parent_idx=200) # signed distance field 
WhitespaceNode(current_idx=241,parent_idx=200)  
  
PlaceHolderNode(parent_idx=200,current_idx=242) mjNGEOMTYPES , 
WhitespaceNode(current_idx=243,parent_idx=200)                    
SingleLineCommentNode(current_idx=244,parent_idx=200) # number of regular geom types 
WhitespaceNode(current_idx=245,parent_idx=200)  
  
SingleLineCommentNode(current_idx=246,parent_idx=200) # rendering-only geom types: not used in mjModel ,  not counted in mjNGEOMTYPES 
WhitespaceNode(current_idx=247,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=248) mjGEOM_ARROW        = 100 , 
WhitespaceNode(current_idx=249,parent_idx=200)       
SingleLineCommentNode(current_idx=250,parent_idx=200) # arrow 
WhitespaceNode(current_idx=251,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=252) mjGEOM_ARROW1 , 
WhitespaceNode(current_idx=253,parent_idx=200)                   
SingleLineCommentNode(current_idx=254,parent_idx=200) # arrow without wedges 
WhitespaceNode(current_idx=255,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=256) mjGEOM_ARROW2 , 
WhitespaceNode(current_idx=257,parent_idx=200)                   
SingleLineCommentNode(current_idx=258,parent_idx=200) # arrow in both directions 
WhitespaceNode(current_idx=259,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=260) mjGEOM_LINE , 
WhitespaceNode(current_idx=261,parent_idx=200)                     
SingleLineCommentNode(current_idx=262,parent_idx=200) # line 
WhitespaceNode(current_idx=263,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=264) mjGEOM_LINEBOX , 
WhitespaceNode(current_idx=265,parent_idx=200)                  
SingleLineCommentNode(current_idx=266,parent_idx=200) # box with line edges 
WhitespaceNode(current_idx=267,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=268) mjGEOM_FLEX , 
WhitespaceNode(current_idx=269,parent_idx=200)                     
SingleLineCommentNode(current_idx=270,parent_idx=200) # flex 
WhitespaceNode(current_idx=271,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=272) mjGEOM_SKIN , 
WhitespaceNode(current_idx=273,parent_idx=200)                     
SingleLineCommentNode(current_idx=274,parent_idx=200) # skin 
WhitespaceNode(current_idx=275,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=276) mjGEOM_LABEL , 
WhitespaceNode(current_idx=277,parent_idx=200)                    
SingleLineCommentNode(current_idx=278,parent_idx=200) # text label 
WhitespaceNode(current_idx=279,parent_idx=200)   
PlaceHolderNode(parent_idx=200,current_idx=280) mjGEOM_TRIANGLE , 
WhitespaceNode(current_idx=281,parent_idx=200)                 
SingleLineCommentNode(current_idx=282,parent_idx=200) # triangle 
WhitespaceNode(current_idx=283,parent_idx=200)  
  
PlaceHolderNode(parent_idx=200,current_idx=284) mjGEOM_NONE         = 1001 
WhitespaceNode(current_idx=285,parent_idx=200)      
SingleLineCommentNode(current_idx=286,parent_idx=200) # missing geom type 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtGeom 
WhitespaceNode(current_idx=288,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=289) typedef <children> 
mjtCamLight ; 
PlaceHolderNode(parent_idx=289,current_idx=290) enum mjtCamLight_ 
PlaceHolderNode(parent_idx=290,current_idx=291) { 
<children> } 
WhitespaceNode(current_idx=292,parent_idx=291)       
SingleLineCommentNode(current_idx=293,parent_idx=291) # tracking mode for camera and light 
WhitespaceNode(current_idx=294,parent_idx=291)   
PlaceHolderNode(parent_idx=291,current_idx=295) mjCAMLIGHT_FIXED    = 0 , 
WhitespaceNode(current_idx=296,parent_idx=291)         
SingleLineCommentNode(current_idx=297,parent_idx=291) # pos and rot fixed in body 
WhitespaceNode(current_idx=298,parent_idx=291)   
PlaceHolderNode(parent_idx=291,current_idx=299) mjCAMLIGHT_TRACK , 
WhitespaceNode(current_idx=300,parent_idx=291)                
SingleLineCommentNode(current_idx=301,parent_idx=291) # pos tracks body ,  rot fixed in global 
WhitespaceNode(current_idx=302,parent_idx=291)   
PlaceHolderNode(parent_idx=291,current_idx=303) mjCAMLIGHT_TRACKCOM , 
WhitespaceNode(current_idx=304,parent_idx=291)             
SingleLineCommentNode(current_idx=305,parent_idx=291) # pos tracks subtree com ,  rot fixed in body 
WhitespaceNode(current_idx=306,parent_idx=291)   
PlaceHolderNode(parent_idx=291,current_idx=307) mjCAMLIGHT_TARGETBODY , 
WhitespaceNode(current_idx=308,parent_idx=291)           
SingleLineCommentNode(current_idx=309,parent_idx=291) # pos fixed in body ,  rot tracks target body 
WhitespaceNode(current_idx=310,parent_idx=291)   
PlaceHolderNode(parent_idx=291,current_idx=311) mjCAMLIGHT_TARGETBODYCOM        
SingleLineCommentNode(current_idx=312,parent_idx=291) # pos fixed in body ,  rot tracks target subtree com 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtCamLight 
WhitespaceNode(current_idx=314,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=315) typedef <children> 
mjtTexture ; 
PlaceHolderNode(parent_idx=315,current_idx=316) enum mjtTexture_ 
PlaceHolderNode(parent_idx=316,current_idx=317) { 
<children> } 
WhitespaceNode(current_idx=318,parent_idx=317)        
SingleLineCommentNode(current_idx=319,parent_idx=317) # type of texture 
WhitespaceNode(current_idx=320,parent_idx=317)   
PlaceHolderNode(parent_idx=317,current_idx=321) mjTEXTURE_2D        = 0 , 
WhitespaceNode(current_idx=322,parent_idx=317)         
SingleLineCommentNode(current_idx=323,parent_idx=317) # 2d texture ,  suitable for planes and hfields 
WhitespaceNode(current_idx=324,parent_idx=317)   
PlaceHolderNode(parent_idx=317,current_idx=325) mjTEXTURE_CUBE , 
WhitespaceNode(current_idx=326,parent_idx=317)                  
SingleLineCommentNode(current_idx=327,parent_idx=317) # cube texture ,  suitable for all other geom types 
WhitespaceNode(current_idx=328,parent_idx=317)   
PlaceHolderNode(parent_idx=317,current_idx=329) mjTEXTURE_SKYBOX                
SingleLineCommentNode(current_idx=330,parent_idx=317) # cube texture used as skybox 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtTexture 
WhitespaceNode(current_idx=332,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=333) typedef <children> 
mjtIntegrator ; 
PlaceHolderNode(parent_idx=333,current_idx=334) enum mjtTextureRole_ 
PlaceHolderNode(parent_idx=334,current_idx=335) { 
<children> } 
WhitespaceNode(current_idx=336,parent_idx=335)    
SingleLineCommentNode(current_idx=337,parent_idx=335) # role of texture map in rendering 
WhitespaceNode(current_idx=338,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=339) mjTEXROLE_USER      = 0 , 
WhitespaceNode(current_idx=340,parent_idx=335)         
SingleLineCommentNode(current_idx=341,parent_idx=335) # unspecified 
WhitespaceNode(current_idx=342,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=343) mjTEXROLE_RGB , 
WhitespaceNode(current_idx=344,parent_idx=335)                   
SingleLineCommentNode(current_idx=345,parent_idx=335) # base color (albedo) 
WhitespaceNode(current_idx=346,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=347) mjTEXROLE_OCCLUSION , 
WhitespaceNode(current_idx=348,parent_idx=335)             
SingleLineCommentNode(current_idx=349,parent_idx=335) # ambient occlusion 
WhitespaceNode(current_idx=350,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=351) mjTEXROLE_ROUGHNESS , 
WhitespaceNode(current_idx=352,parent_idx=335)             
SingleLineCommentNode(current_idx=353,parent_idx=335) # roughness 
WhitespaceNode(current_idx=354,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=355) mjTEXROLE_METALLIC , 
WhitespaceNode(current_idx=356,parent_idx=335)              
SingleLineCommentNode(current_idx=357,parent_idx=335) # metallic 
WhitespaceNode(current_idx=358,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=359) mjTEXROLE_NORMAL , 
WhitespaceNode(current_idx=360,parent_idx=335)                
SingleLineCommentNode(current_idx=361,parent_idx=335) # normal (bump) map 
WhitespaceNode(current_idx=362,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=363) mjTEXROLE_OPACITY , 
WhitespaceNode(current_idx=364,parent_idx=335)               
SingleLineCommentNode(current_idx=365,parent_idx=335) # transperancy 
WhitespaceNode(current_idx=366,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=367) mjTEXROLE_EMISSIVE , 
WhitespaceNode(current_idx=368,parent_idx=335)              
SingleLineCommentNode(current_idx=369,parent_idx=335) # light emission 
WhitespaceNode(current_idx=370,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=371) mjTEXROLE_RGBA , 
WhitespaceNode(current_idx=372,parent_idx=335)                  
SingleLineCommentNode(current_idx=373,parent_idx=335) # base color ,  opacity 
WhitespaceNode(current_idx=374,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=375) mjTEXROLE_ORM , 
WhitespaceNode(current_idx=376,parent_idx=335)                   
SingleLineCommentNode(current_idx=377,parent_idx=335) # occlusion ,  roughness ,  metallic 
WhitespaceNode(current_idx=378,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=379) mjNTEXROLE 
} mjtTextureRole ;  
 
 
typedef enum mjtIntegrator_ {     
SingleLineCommentNode(current_idx=380,parent_idx=335) # integrator mode 
WhitespaceNode(current_idx=381,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=382) mjINT_EULER         = 0 , 
WhitespaceNode(current_idx=383,parent_idx=335)         
SingleLineCommentNode(current_idx=384,parent_idx=335) # semi-implicit Euler 
WhitespaceNode(current_idx=385,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=386) mjINT_RK4 , 
WhitespaceNode(current_idx=387,parent_idx=335)                       
SingleLineCommentNode(current_idx=388,parent_idx=335) # 4th-order Runge Kutta 
WhitespaceNode(current_idx=389,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=390) mjINT_IMPLICIT , 
WhitespaceNode(current_idx=391,parent_idx=335)                  
SingleLineCommentNode(current_idx=392,parent_idx=335) # implicit in velocity 
WhitespaceNode(current_idx=393,parent_idx=335)   
PlaceHolderNode(parent_idx=335,current_idx=394) mjINT_IMPLICITFAST              
SingleLineCommentNode(current_idx=395,parent_idx=335) # implicit in velocity ,  no rne derivative 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtIntegrator 
WhitespaceNode(current_idx=397,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=398) typedef <children> 
mjtCone ; 
PlaceHolderNode(parent_idx=398,current_idx=399) enum mjtCone_ 
PlaceHolderNode(parent_idx=399,current_idx=400) { 
<children> } 
WhitespaceNode(current_idx=401,parent_idx=400)           
SingleLineCommentNode(current_idx=402,parent_idx=400) # type of friction cone 
WhitespaceNode(current_idx=403,parent_idx=400)   
PlaceHolderNode(parent_idx=400,current_idx=404) mjCONE_PYRAMIDAL     = 0 , 
WhitespaceNode(current_idx=405,parent_idx=400)        
SingleLineCommentNode(current_idx=406,parent_idx=400) # pyramidal 
WhitespaceNode(current_idx=407,parent_idx=400)   
PlaceHolderNode(parent_idx=400,current_idx=408) mjCONE_ELLIPTIC                 
SingleLineCommentNode(current_idx=409,parent_idx=400) # elliptic 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtCone 
WhitespaceNode(current_idx=411,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=412) typedef <children> 
mjtJacobian ; 
PlaceHolderNode(parent_idx=412,current_idx=413) enum mjtJacobian_ 
PlaceHolderNode(parent_idx=413,current_idx=414) { 
<children> } 
WhitespaceNode(current_idx=415,parent_idx=414)       
SingleLineCommentNode(current_idx=416,parent_idx=414) # type of constraint Jacobian 
WhitespaceNode(current_idx=417,parent_idx=414)   
PlaceHolderNode(parent_idx=414,current_idx=418) mjJAC_DENSE          = 0 , 
WhitespaceNode(current_idx=419,parent_idx=414)        
SingleLineCommentNode(current_idx=420,parent_idx=414) # dense 
WhitespaceNode(current_idx=421,parent_idx=414)   
PlaceHolderNode(parent_idx=414,current_idx=422) mjJAC_SPARSE , 
WhitespaceNode(current_idx=423,parent_idx=414)                    
SingleLineCommentNode(current_idx=424,parent_idx=414) # sparse 
WhitespaceNode(current_idx=425,parent_idx=414)   
PlaceHolderNode(parent_idx=414,current_idx=426) mjJAC_AUTO                      
SingleLineCommentNode(current_idx=427,parent_idx=414) # dense if nv<60 ,  sparse otherwise 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtJacobian 
WhitespaceNode(current_idx=429,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=430) typedef <children> 
mjtSolver ; 
PlaceHolderNode(parent_idx=430,current_idx=431) enum mjtSolver_ 
PlaceHolderNode(parent_idx=431,current_idx=432) { 
<children> } 
WhitespaceNode(current_idx=433,parent_idx=432)         
SingleLineCommentNode(current_idx=434,parent_idx=432) # constraint solver algorithm 
WhitespaceNode(current_idx=435,parent_idx=432)   
PlaceHolderNode(parent_idx=432,current_idx=436) mjSOL_PGS            = 0 , 
WhitespaceNode(current_idx=437,parent_idx=432)        
SingleLineCommentNode(current_idx=438,parent_idx=432) # PGS    (dual) 
WhitespaceNode(current_idx=439,parent_idx=432)   
PlaceHolderNode(parent_idx=432,current_idx=440) mjSOL_CG , 
WhitespaceNode(current_idx=441,parent_idx=432)                        
SingleLineCommentNode(current_idx=442,parent_idx=432) # CG     (primal) 
WhitespaceNode(current_idx=443,parent_idx=432)   
PlaceHolderNode(parent_idx=432,current_idx=444) mjSOL_NEWTON                    
SingleLineCommentNode(current_idx=445,parent_idx=432) # Newton (primal) 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtSolver 
WhitespaceNode(current_idx=447,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=448) typedef <children> 
mjtEq ; 
PlaceHolderNode(parent_idx=448,current_idx=449) enum mjtEq_ 
PlaceHolderNode(parent_idx=449,current_idx=450) { 
<children> } 
WhitespaceNode(current_idx=451,parent_idx=450)             
SingleLineCommentNode(current_idx=452,parent_idx=450) # type of equality constraint 
WhitespaceNode(current_idx=453,parent_idx=450)   
PlaceHolderNode(parent_idx=450,current_idx=454) mjEQ_CONNECT        = 0 , 
WhitespaceNode(current_idx=455,parent_idx=450)         
SingleLineCommentNode(current_idx=456,parent_idx=450) # connect two bodies at a point (ball joint) 
WhitespaceNode(current_idx=457,parent_idx=450)   
PlaceHolderNode(parent_idx=450,current_idx=458) mjEQ_WELD , 
WhitespaceNode(current_idx=459,parent_idx=450)                       
SingleLineCommentNode(current_idx=460,parent_idx=450) # fix relative position and orientation of two bodies 
WhitespaceNode(current_idx=461,parent_idx=450)   
PlaceHolderNode(parent_idx=450,current_idx=462) mjEQ_JOINT , 
WhitespaceNode(current_idx=463,parent_idx=450)                      
SingleLineCommentNode(current_idx=464,parent_idx=450) # couple the values of two scalar joints with cubic 
WhitespaceNode(current_idx=465,parent_idx=450)   
PlaceHolderNode(parent_idx=450,current_idx=466) mjEQ_TENDON , 
WhitespaceNode(current_idx=467,parent_idx=450)                     
SingleLineCommentNode(current_idx=468,parent_idx=450) # couple the lengths of two tendons with cubic 
WhitespaceNode(current_idx=469,parent_idx=450)   
PlaceHolderNode(parent_idx=450,current_idx=470) mjEQ_FLEX , 
WhitespaceNode(current_idx=471,parent_idx=450)                       
SingleLineCommentNode(current_idx=472,parent_idx=450) # fix all edge lengths of a flex 
WhitespaceNode(current_idx=473,parent_idx=450)   
PlaceHolderNode(parent_idx=450,current_idx=474) mjEQ_DISTANCE                   
SingleLineCommentNode(current_idx=475,parent_idx=450) # unsupported ,  will cause an error if used 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtEq 
WhitespaceNode(current_idx=477,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=478) typedef <children> 
mjtWrap ; 
PlaceHolderNode(parent_idx=478,current_idx=479) enum mjtWrap_ 
PlaceHolderNode(parent_idx=479,current_idx=480) { 
<children> } 
WhitespaceNode(current_idx=481,parent_idx=480)           
SingleLineCommentNode(current_idx=482,parent_idx=480) # type of tendon wrap object 
WhitespaceNode(current_idx=483,parent_idx=480)   
PlaceHolderNode(parent_idx=480,current_idx=484) mjWRAP_NONE         = 0 , 
WhitespaceNode(current_idx=485,parent_idx=480)         
SingleLineCommentNode(current_idx=486,parent_idx=480) # null object 
WhitespaceNode(current_idx=487,parent_idx=480)   
PlaceHolderNode(parent_idx=480,current_idx=488) mjWRAP_JOINT , 
WhitespaceNode(current_idx=489,parent_idx=480)                    
SingleLineCommentNode(current_idx=490,parent_idx=480) # constant moment arm 
WhitespaceNode(current_idx=491,parent_idx=480)   
PlaceHolderNode(parent_idx=480,current_idx=492) mjWRAP_PULLEY , 
WhitespaceNode(current_idx=493,parent_idx=480)                   
SingleLineCommentNode(current_idx=494,parent_idx=480) # pulley used to split tendon 
WhitespaceNode(current_idx=495,parent_idx=480)   
PlaceHolderNode(parent_idx=480,current_idx=496) mjWRAP_SITE , 
WhitespaceNode(current_idx=497,parent_idx=480)                     
SingleLineCommentNode(current_idx=498,parent_idx=480) # pass through site 
WhitespaceNode(current_idx=499,parent_idx=480)   
PlaceHolderNode(parent_idx=480,current_idx=500) mjWRAP_SPHERE , 
WhitespaceNode(current_idx=501,parent_idx=480)                   
SingleLineCommentNode(current_idx=502,parent_idx=480) # wrap around sphere 
WhitespaceNode(current_idx=503,parent_idx=480)   
PlaceHolderNode(parent_idx=480,current_idx=504) mjWRAP_CYLINDER                 
SingleLineCommentNode(current_idx=505,parent_idx=480) # wrap around (infinite) cylinder 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtWrap 
WhitespaceNode(current_idx=507,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=508) typedef <children> 
mjtTrn ; 
PlaceHolderNode(parent_idx=508,current_idx=509) enum mjtTrn_ 
PlaceHolderNode(parent_idx=509,current_idx=510) { 
<children> } 
WhitespaceNode(current_idx=511,parent_idx=510)            
SingleLineCommentNode(current_idx=512,parent_idx=510) # type of actuator transmission 
WhitespaceNode(current_idx=513,parent_idx=510)   
PlaceHolderNode(parent_idx=510,current_idx=514) mjTRN_JOINT         = 0 , 
WhitespaceNode(current_idx=515,parent_idx=510)         
SingleLineCommentNode(current_idx=516,parent_idx=510) # force on joint 
WhitespaceNode(current_idx=517,parent_idx=510)   
PlaceHolderNode(parent_idx=510,current_idx=518) mjTRN_JOINTINPARENT , 
WhitespaceNode(current_idx=519,parent_idx=510)             
SingleLineCommentNode(current_idx=520,parent_idx=510) # force on joint ,  expressed in parent frame 
WhitespaceNode(current_idx=521,parent_idx=510)   
PlaceHolderNode(parent_idx=510,current_idx=522) mjTRN_SLIDERCRANK , 
WhitespaceNode(current_idx=523,parent_idx=510)               
SingleLineCommentNode(current_idx=524,parent_idx=510) # force via slider-crank linkage 
WhitespaceNode(current_idx=525,parent_idx=510)   
PlaceHolderNode(parent_idx=510,current_idx=526) mjTRN_TENDON , 
WhitespaceNode(current_idx=527,parent_idx=510)                    
SingleLineCommentNode(current_idx=528,parent_idx=510) # force on tendon 
WhitespaceNode(current_idx=529,parent_idx=510)   
PlaceHolderNode(parent_idx=510,current_idx=530) mjTRN_SITE , 
WhitespaceNode(current_idx=531,parent_idx=510)                      
SingleLineCommentNode(current_idx=532,parent_idx=510) # force on site 
WhitespaceNode(current_idx=533,parent_idx=510)   
PlaceHolderNode(parent_idx=510,current_idx=534) mjTRN_BODY , 
WhitespaceNode(current_idx=535,parent_idx=510)                      
SingleLineCommentNode(current_idx=536,parent_idx=510) # adhesion force on a body's geoms 
WhitespaceNode(current_idx=537,parent_idx=510)  
  
PlaceHolderNode(parent_idx=510,current_idx=538) mjTRN_UNDEFINED     = 1000 
WhitespaceNode(current_idx=539,parent_idx=510)      
SingleLineCommentNode(current_idx=540,parent_idx=510) # undefined transmission type 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtTrn 
WhitespaceNode(current_idx=542,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=543) typedef <children> 
mjtDyn ; 
PlaceHolderNode(parent_idx=543,current_idx=544) enum mjtDyn_ 
PlaceHolderNode(parent_idx=544,current_idx=545) { 
<children> } 
WhitespaceNode(current_idx=546,parent_idx=545)            
SingleLineCommentNode(current_idx=547,parent_idx=545) # type of actuator dynamics 
WhitespaceNode(current_idx=548,parent_idx=545)   
PlaceHolderNode(parent_idx=545,current_idx=549) mjDYN_NONE          = 0 , 
WhitespaceNode(current_idx=550,parent_idx=545)         
SingleLineCommentNode(current_idx=551,parent_idx=545) # no internal dynamics ;  ctrl specifies force 
WhitespaceNode(current_idx=552,parent_idx=545)   
PlaceHolderNode(parent_idx=545,current_idx=553) mjDYN_INTEGRATOR , 
WhitespaceNode(current_idx=554,parent_idx=545)                
SingleLineCommentNode(current_idx=555,parent_idx=545) # integrator: da/dt = u 
WhitespaceNode(current_idx=556,parent_idx=545)   
PlaceHolderNode(parent_idx=545,current_idx=557) mjDYN_FILTER , 
WhitespaceNode(current_idx=558,parent_idx=545)                    
SingleLineCommentNode(current_idx=559,parent_idx=545) # linear filter: da/dt = (u-a) / tau 
WhitespaceNode(current_idx=560,parent_idx=545)   
PlaceHolderNode(parent_idx=545,current_idx=561) mjDYN_FILTEREXACT , 
WhitespaceNode(current_idx=562,parent_idx=545)               
SingleLineCommentNode(current_idx=563,parent_idx=545) # linear filter: da/dt = (u-a) / tau ,  with exact integration 
WhitespaceNode(current_idx=564,parent_idx=545)   
PlaceHolderNode(parent_idx=545,current_idx=565) mjDYN_MUSCLE , 
WhitespaceNode(current_idx=566,parent_idx=545)                    
SingleLineCommentNode(current_idx=567,parent_idx=545) # piece-wise linear filter with two time constants 
WhitespaceNode(current_idx=568,parent_idx=545)   
PlaceHolderNode(parent_idx=545,current_idx=569) mjDYN_USER                      
SingleLineCommentNode(current_idx=570,parent_idx=545) # user-defined dynamics type 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtDyn 
WhitespaceNode(current_idx=572,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=573) typedef <children> 
mjtGain ; 
PlaceHolderNode(parent_idx=573,current_idx=574) enum mjtGain_ 
PlaceHolderNode(parent_idx=574,current_idx=575) { 
<children> } 
WhitespaceNode(current_idx=576,parent_idx=575)           
SingleLineCommentNode(current_idx=577,parent_idx=575) # type of actuator gain 
WhitespaceNode(current_idx=578,parent_idx=575)   
PlaceHolderNode(parent_idx=575,current_idx=579) mjGAIN_FIXED        = 0 , 
WhitespaceNode(current_idx=580,parent_idx=575)         
SingleLineCommentNode(current_idx=581,parent_idx=575) # fixed gain 
WhitespaceNode(current_idx=582,parent_idx=575)   
PlaceHolderNode(parent_idx=575,current_idx=583) mjGAIN_AFFINE , 
WhitespaceNode(current_idx=584,parent_idx=575)                   
SingleLineCommentNode(current_idx=585,parent_idx=575) # const + kp*length + kv*velocity 
WhitespaceNode(current_idx=586,parent_idx=575)   
PlaceHolderNode(parent_idx=575,current_idx=587) mjGAIN_MUSCLE , 
WhitespaceNode(current_idx=588,parent_idx=575)                   
SingleLineCommentNode(current_idx=589,parent_idx=575) # muscle FLV curve computed by mju_muscleGain() 
WhitespaceNode(current_idx=590,parent_idx=575)   
PlaceHolderNode(parent_idx=575,current_idx=591) mjGAIN_USER                     
SingleLineCommentNode(current_idx=592,parent_idx=575) # user-defined gain type 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtGain 
WhitespaceNode(current_idx=594,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=595) typedef <children> 
mjtBias ; 
PlaceHolderNode(parent_idx=595,current_idx=596) enum mjtBias_ 
PlaceHolderNode(parent_idx=596,current_idx=597) { 
<children> } 
WhitespaceNode(current_idx=598,parent_idx=597)           
SingleLineCommentNode(current_idx=599,parent_idx=597) # type of actuator bias 
WhitespaceNode(current_idx=600,parent_idx=597)   
PlaceHolderNode(parent_idx=597,current_idx=601) mjBIAS_NONE         = 0 , 
WhitespaceNode(current_idx=602,parent_idx=597)         
SingleLineCommentNode(current_idx=603,parent_idx=597) # no bias 
WhitespaceNode(current_idx=604,parent_idx=597)   
PlaceHolderNode(parent_idx=597,current_idx=605) mjBIAS_AFFINE , 
WhitespaceNode(current_idx=606,parent_idx=597)                   
SingleLineCommentNode(current_idx=607,parent_idx=597) # const + kp*length + kv*velocity 
WhitespaceNode(current_idx=608,parent_idx=597)   
PlaceHolderNode(parent_idx=597,current_idx=609) mjBIAS_MUSCLE , 
WhitespaceNode(current_idx=610,parent_idx=597)                   
SingleLineCommentNode(current_idx=611,parent_idx=597) # muscle passive force computed by mju_muscleBias() 
WhitespaceNode(current_idx=612,parent_idx=597)   
PlaceHolderNode(parent_idx=597,current_idx=613) mjBIAS_USER                     
SingleLineCommentNode(current_idx=614,parent_idx=597) # user-defined bias type 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtBias 
WhitespaceNode(current_idx=616,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=617) typedef <children> 
mjtObj ; 
PlaceHolderNode(parent_idx=617,current_idx=618) enum mjtObj_ 
PlaceHolderNode(parent_idx=618,current_idx=619) { 
<children> } 
WhitespaceNode(current_idx=620,parent_idx=619)            
SingleLineCommentNode(current_idx=621,parent_idx=619) # type of MujoCo object 
WhitespaceNode(current_idx=622,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=623) mjOBJ_UNKNOWN       = 0 , 
WhitespaceNode(current_idx=624,parent_idx=619)         
SingleLineCommentNode(current_idx=625,parent_idx=619) # unknown object type 
WhitespaceNode(current_idx=626,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=627) mjOBJ_BODY , 
WhitespaceNode(current_idx=628,parent_idx=619)                      
SingleLineCommentNode(current_idx=629,parent_idx=619) # body 
WhitespaceNode(current_idx=630,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=631) mjOBJ_XBODY , 
WhitespaceNode(current_idx=632,parent_idx=619)                     
SingleLineCommentNode(current_idx=633,parent_idx=619) # body ,  used to access regular frame instead of i-frame 
WhitespaceNode(current_idx=634,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=635) mjOBJ_JOINT , 
WhitespaceNode(current_idx=636,parent_idx=619)                     
SingleLineCommentNode(current_idx=637,parent_idx=619) # joint 
WhitespaceNode(current_idx=638,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=639) mjOBJ_DOF , 
WhitespaceNode(current_idx=640,parent_idx=619)                       
SingleLineCommentNode(current_idx=641,parent_idx=619) # dof 
WhitespaceNode(current_idx=642,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=643) mjOBJ_GEOM , 
WhitespaceNode(current_idx=644,parent_idx=619)                      
SingleLineCommentNode(current_idx=645,parent_idx=619) # geom 
WhitespaceNode(current_idx=646,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=647) mjOBJ_SITE , 
WhitespaceNode(current_idx=648,parent_idx=619)                      
SingleLineCommentNode(current_idx=649,parent_idx=619) # site 
WhitespaceNode(current_idx=650,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=651) mjOBJ_CAMERA , 
WhitespaceNode(current_idx=652,parent_idx=619)                    
SingleLineCommentNode(current_idx=653,parent_idx=619) # camera 
WhitespaceNode(current_idx=654,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=655) mjOBJ_LIGHT , 
WhitespaceNode(current_idx=656,parent_idx=619)                     
SingleLineCommentNode(current_idx=657,parent_idx=619) # light 
WhitespaceNode(current_idx=658,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=659) mjOBJ_FLEX , 
WhitespaceNode(current_idx=660,parent_idx=619)                      
SingleLineCommentNode(current_idx=661,parent_idx=619) # flex 
WhitespaceNode(current_idx=662,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=663) mjOBJ_MESH , 
WhitespaceNode(current_idx=664,parent_idx=619)                      
SingleLineCommentNode(current_idx=665,parent_idx=619) # mesh 
WhitespaceNode(current_idx=666,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=667) mjOBJ_SKIN , 
WhitespaceNode(current_idx=668,parent_idx=619)                      
SingleLineCommentNode(current_idx=669,parent_idx=619) # skin 
WhitespaceNode(current_idx=670,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=671) mjOBJ_HFIELD , 
WhitespaceNode(current_idx=672,parent_idx=619)                    
SingleLineCommentNode(current_idx=673,parent_idx=619) # heightfield 
WhitespaceNode(current_idx=674,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=675) mjOBJ_TEXTURE , 
WhitespaceNode(current_idx=676,parent_idx=619)                   
SingleLineCommentNode(current_idx=677,parent_idx=619) # texture 
WhitespaceNode(current_idx=678,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=679) mjOBJ_MATERIAL , 
WhitespaceNode(current_idx=680,parent_idx=619)                  
SingleLineCommentNode(current_idx=681,parent_idx=619) # material for rendering 
WhitespaceNode(current_idx=682,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=683) mjOBJ_PAIR , 
WhitespaceNode(current_idx=684,parent_idx=619)                      
SingleLineCommentNode(current_idx=685,parent_idx=619) # geom pair to include 
WhitespaceNode(current_idx=686,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=687) mjOBJ_EXCLUDE , 
WhitespaceNode(current_idx=688,parent_idx=619)                   
SingleLineCommentNode(current_idx=689,parent_idx=619) # body pair to exclude 
WhitespaceNode(current_idx=690,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=691) mjOBJ_EQUALITY , 
WhitespaceNode(current_idx=692,parent_idx=619)                  
SingleLineCommentNode(current_idx=693,parent_idx=619) # equality constraint 
WhitespaceNode(current_idx=694,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=695) mjOBJ_TENDON , 
WhitespaceNode(current_idx=696,parent_idx=619)                    
SingleLineCommentNode(current_idx=697,parent_idx=619) # tendon 
WhitespaceNode(current_idx=698,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=699) mjOBJ_ACTUATOR , 
WhitespaceNode(current_idx=700,parent_idx=619)                  
SingleLineCommentNode(current_idx=701,parent_idx=619) # actuator 
WhitespaceNode(current_idx=702,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=703) mjOBJ_SENSOR , 
WhitespaceNode(current_idx=704,parent_idx=619)                    
SingleLineCommentNode(current_idx=705,parent_idx=619) # sensor 
WhitespaceNode(current_idx=706,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=707) mjOBJ_NUMERIC , 
WhitespaceNode(current_idx=708,parent_idx=619)                   
SingleLineCommentNode(current_idx=709,parent_idx=619) # numeric 
WhitespaceNode(current_idx=710,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=711) mjOBJ_TEXT , 
WhitespaceNode(current_idx=712,parent_idx=619)                      
SingleLineCommentNode(current_idx=713,parent_idx=619) # text 
WhitespaceNode(current_idx=714,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=715) mjOBJ_TUPLE , 
WhitespaceNode(current_idx=716,parent_idx=619)                     
SingleLineCommentNode(current_idx=717,parent_idx=619) # tuple 
WhitespaceNode(current_idx=718,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=719) mjOBJ_KEY , 
WhitespaceNode(current_idx=720,parent_idx=619)                       
SingleLineCommentNode(current_idx=721,parent_idx=619) # keyframe 
WhitespaceNode(current_idx=722,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=723) mjOBJ_PLUGIN , 
WhitespaceNode(current_idx=724,parent_idx=619)                    
SingleLineCommentNode(current_idx=725,parent_idx=619) # plugin instance 
WhitespaceNode(current_idx=726,parent_idx=619)  
  
PlaceHolderNode(parent_idx=619,current_idx=727) mjNOBJECT , 
WhitespaceNode(current_idx=728,parent_idx=619)                       
SingleLineCommentNode(current_idx=729,parent_idx=619) # number of object types 
WhitespaceNode(current_idx=730,parent_idx=619)  
  
SingleLineCommentNode(current_idx=731,parent_idx=619) # meta elements ,  do not appear in mjModel 
WhitespaceNode(current_idx=732,parent_idx=619)   
PlaceHolderNode(parent_idx=619,current_idx=733) mjOBJ_FRAME         = 100 
WhitespaceNode(current_idx=734,parent_idx=619)       
SingleLineCommentNode(current_idx=735,parent_idx=619) # frame 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtObj 
WhitespaceNode(current_idx=737,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=738) typedef <children> 
mjtConstraint ; 
PlaceHolderNode(parent_idx=738,current_idx=739) enum mjtConstraint_ 
PlaceHolderNode(parent_idx=739,current_idx=740) { 
<children> } 
WhitespaceNode(current_idx=741,parent_idx=740)     
SingleLineCommentNode(current_idx=742,parent_idx=740) # type of constraint 
WhitespaceNode(current_idx=743,parent_idx=740)   
PlaceHolderNode(parent_idx=740,current_idx=744) mjCNSTR_EQUALITY    = 0 , 
WhitespaceNode(current_idx=745,parent_idx=740)         
SingleLineCommentNode(current_idx=746,parent_idx=740) # equality constraint 
WhitespaceNode(current_idx=747,parent_idx=740)   
PlaceHolderNode(parent_idx=740,current_idx=748) mjCNSTR_FRICTION_DOF , 
WhitespaceNode(current_idx=749,parent_idx=740)            
SingleLineCommentNode(current_idx=750,parent_idx=740) # dof friction 
WhitespaceNode(current_idx=751,parent_idx=740)   
PlaceHolderNode(parent_idx=740,current_idx=752) mjCNSTR_FRICTION_TENDON , 
WhitespaceNode(current_idx=753,parent_idx=740)         
SingleLineCommentNode(current_idx=754,parent_idx=740) # tendon friction 
WhitespaceNode(current_idx=755,parent_idx=740)   
PlaceHolderNode(parent_idx=740,current_idx=756) mjCNSTR_LIMIT_JOINT , 
WhitespaceNode(current_idx=757,parent_idx=740)             
SingleLineCommentNode(current_idx=758,parent_idx=740) # joint limit 
WhitespaceNode(current_idx=759,parent_idx=740)   
PlaceHolderNode(parent_idx=740,current_idx=760) mjCNSTR_LIMIT_TENDON , 
WhitespaceNode(current_idx=761,parent_idx=740)            
SingleLineCommentNode(current_idx=762,parent_idx=740) # tendon limit 
WhitespaceNode(current_idx=763,parent_idx=740)   
PlaceHolderNode(parent_idx=740,current_idx=764) mjCNSTR_CONTACT_FRICTIONLESS , 
WhitespaceNode(current_idx=765,parent_idx=740)    
SingleLineCommentNode(current_idx=766,parent_idx=740) # frictionless contact 
WhitespaceNode(current_idx=767,parent_idx=740)   
PlaceHolderNode(parent_idx=740,current_idx=768) mjCNSTR_CONTACT_PYRAMIDAL , 
WhitespaceNode(current_idx=769,parent_idx=740)       
SingleLineCommentNode(current_idx=770,parent_idx=740) # frictional contact ,  pyramidal friction cone 
WhitespaceNode(current_idx=771,parent_idx=740)   
PlaceHolderNode(parent_idx=740,current_idx=772) mjCNSTR_CONTACT_ELLIPTIC        
SingleLineCommentNode(current_idx=773,parent_idx=740) # frictional contact ,  elliptic friction cone 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtConstraint 
WhitespaceNode(current_idx=775,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=776) typedef <children> 
mjtConstraintState ; 
PlaceHolderNode(parent_idx=776,current_idx=777) enum mjtConstraintState_ 
PlaceHolderNode(parent_idx=777,current_idx=778) { 
<children> } 
WhitespaceNode(current_idx=779,parent_idx=778)  
SingleLineCommentNode(current_idx=780,parent_idx=778) # constraint state 
WhitespaceNode(current_idx=781,parent_idx=778)   
PlaceHolderNode(parent_idx=778,current_idx=782) mjCNSTRSTATE_SATISFIED = 0 , 
WhitespaceNode(current_idx=783,parent_idx=778)        
SingleLineCommentNode(current_idx=784,parent_idx=778) # constraint satisfied ,  zero cost (limit ,  contact) 
WhitespaceNode(current_idx=785,parent_idx=778)   
PlaceHolderNode(parent_idx=778,current_idx=786) mjCNSTRSTATE_QUADRATIC , 
WhitespaceNode(current_idx=787,parent_idx=778)            
SingleLineCommentNode(current_idx=788,parent_idx=778) # quadratic cost (equality ,  friction ,  limit ,  contact) 
WhitespaceNode(current_idx=789,parent_idx=778)   
PlaceHolderNode(parent_idx=778,current_idx=790) mjCNSTRSTATE_LINEARNEG , 
WhitespaceNode(current_idx=791,parent_idx=778)            
SingleLineCommentNode(current_idx=792,parent_idx=778) # linear cost ,  negative side (friction) 
WhitespaceNode(current_idx=793,parent_idx=778)   
PlaceHolderNode(parent_idx=778,current_idx=794) mjCNSTRSTATE_LINEARPOS , 
WhitespaceNode(current_idx=795,parent_idx=778)            
SingleLineCommentNode(current_idx=796,parent_idx=778) # linear cost ,  positive side (friction) 
WhitespaceNode(current_idx=797,parent_idx=778)   
PlaceHolderNode(parent_idx=778,current_idx=798) mjCNSTRSTATE_CONE                 
SingleLineCommentNode(current_idx=799,parent_idx=778) # squared distance to cone cost (elliptic contact) 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtConstraintState 
WhitespaceNode(current_idx=801,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=802) typedef <children> 
mjtSensor ; 
PlaceHolderNode(parent_idx=802,current_idx=803) enum mjtSensor_ 
PlaceHolderNode(parent_idx=803,current_idx=804) { 
<children> } 
WhitespaceNode(current_idx=805,parent_idx=804)         
SingleLineCommentNode(current_idx=806,parent_idx=804) # type of sensor 
WhitespaceNode(current_idx=807,parent_idx=804)   
SingleLineCommentNode(current_idx=808,parent_idx=804) # common robotic sensors ,  attached to a site 
WhitespaceNode(current_idx=809,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=810) mjSENS_TOUCH        = 0 , 
WhitespaceNode(current_idx=811,parent_idx=804)         
SingleLineCommentNode(current_idx=812,parent_idx=804) # scalar contact normal forces summed over sensor zone 
WhitespaceNode(current_idx=813,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=814) mjSENS_ACCELEROMETER , 
WhitespaceNode(current_idx=815,parent_idx=804)            
SingleLineCommentNode(current_idx=816,parent_idx=804) # 3D linear acceleration ,  in local frame 
WhitespaceNode(current_idx=817,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=818) mjSENS_VELOCIMETER , 
WhitespaceNode(current_idx=819,parent_idx=804)              
SingleLineCommentNode(current_idx=820,parent_idx=804) # 3D linear velocity ,  in local frame 
WhitespaceNode(current_idx=821,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=822) mjSENS_GYRO , 
WhitespaceNode(current_idx=823,parent_idx=804)                     
SingleLineCommentNode(current_idx=824,parent_idx=804) # 3D angular velocity ,  in local frame 
WhitespaceNode(current_idx=825,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=826) mjSENS_FORCE , 
WhitespaceNode(current_idx=827,parent_idx=804)                    
SingleLineCommentNode(current_idx=828,parent_idx=804) # 3D force between site's body and its parent body 
WhitespaceNode(current_idx=829,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=830) mjSENS_TORQUE , 
WhitespaceNode(current_idx=831,parent_idx=804)                   
SingleLineCommentNode(current_idx=832,parent_idx=804) # 3D torque between site's body and its parent body 
WhitespaceNode(current_idx=833,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=834) mjSENS_MAGNETOMETER , 
WhitespaceNode(current_idx=835,parent_idx=804)             
SingleLineCommentNode(current_idx=836,parent_idx=804) # 3D magnetometer 
WhitespaceNode(current_idx=837,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=838) mjSENS_RANGEFINDER , 
WhitespaceNode(current_idx=839,parent_idx=804)              
SingleLineCommentNode(current_idx=840,parent_idx=804) # scalar distance to nearest geom or site along z-axis 
WhitespaceNode(current_idx=841,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=842) mjSENS_CAMPROJECTION , 
WhitespaceNode(current_idx=843,parent_idx=804)            
SingleLineCommentNode(current_idx=844,parent_idx=804) # pixel coordinates of a site in the camera image 
WhitespaceNode(current_idx=845,parent_idx=804)  
  
SingleLineCommentNode(current_idx=846,parent_idx=804) # sensors related to scalar joints ,  tendons ,  actuators 
WhitespaceNode(current_idx=847,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=848) mjSENS_JOINTPOS , 
WhitespaceNode(current_idx=849,parent_idx=804)                 
SingleLineCommentNode(current_idx=850,parent_idx=804) # scalar joint position (hinge and slide only) 
WhitespaceNode(current_idx=851,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=852) mjSENS_JOINTVEL , 
WhitespaceNode(current_idx=853,parent_idx=804)                 
SingleLineCommentNode(current_idx=854,parent_idx=804) # scalar joint velocity (hinge and slide only) 
WhitespaceNode(current_idx=855,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=856) mjSENS_TENDONPOS , 
WhitespaceNode(current_idx=857,parent_idx=804)                
SingleLineCommentNode(current_idx=858,parent_idx=804) # scalar tendon position 
WhitespaceNode(current_idx=859,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=860) mjSENS_TENDONVEL , 
WhitespaceNode(current_idx=861,parent_idx=804)                
SingleLineCommentNode(current_idx=862,parent_idx=804) # scalar tendon velocity 
WhitespaceNode(current_idx=863,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=864) mjSENS_ACTUATORPOS , 
WhitespaceNode(current_idx=865,parent_idx=804)              
SingleLineCommentNode(current_idx=866,parent_idx=804) # scalar actuator position 
WhitespaceNode(current_idx=867,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=868) mjSENS_ACTUATORVEL , 
WhitespaceNode(current_idx=869,parent_idx=804)              
SingleLineCommentNode(current_idx=870,parent_idx=804) # scalar actuator velocity 
WhitespaceNode(current_idx=871,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=872) mjSENS_ACTUATORFRC , 
WhitespaceNode(current_idx=873,parent_idx=804)              
SingleLineCommentNode(current_idx=874,parent_idx=804) # scalar actuator force 
WhitespaceNode(current_idx=875,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=876) mjSENS_JOINTACTFRC , 
WhitespaceNode(current_idx=877,parent_idx=804)              
SingleLineCommentNode(current_idx=878,parent_idx=804) # scalar actuator force ,  measured at the joint 
WhitespaceNode(current_idx=879,parent_idx=804)  
  
SingleLineCommentNode(current_idx=880,parent_idx=804) # sensors related to ball joints 
WhitespaceNode(current_idx=881,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=882) mjSENS_BALLQUAT , 
WhitespaceNode(current_idx=883,parent_idx=804)                 
SingleLineCommentNode(current_idx=884,parent_idx=804) # 4D ball joint quaternion 
WhitespaceNode(current_idx=885,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=886) mjSENS_BALLANGVEL , 
WhitespaceNode(current_idx=887,parent_idx=804)               
SingleLineCommentNode(current_idx=888,parent_idx=804) # 3D ball joint angular velocity 
WhitespaceNode(current_idx=889,parent_idx=804)  
  
SingleLineCommentNode(current_idx=890,parent_idx=804) # joint and tendon limit sensors ,  in constraint space 
WhitespaceNode(current_idx=891,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=892) mjSENS_JOINTLIMITPOS , 
WhitespaceNode(current_idx=893,parent_idx=804)            
SingleLineCommentNode(current_idx=894,parent_idx=804) # joint limit distance-margin 
WhitespaceNode(current_idx=895,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=896) mjSENS_JOINTLIMITVEL , 
WhitespaceNode(current_idx=897,parent_idx=804)            
SingleLineCommentNode(current_idx=898,parent_idx=804) # joint limit velocity 
WhitespaceNode(current_idx=899,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=900) mjSENS_JOINTLIMITFRC , 
WhitespaceNode(current_idx=901,parent_idx=804)            
SingleLineCommentNode(current_idx=902,parent_idx=804) # joint limit force 
WhitespaceNode(current_idx=903,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=904) mjSENS_TENDONLIMITPOS , 
WhitespaceNode(current_idx=905,parent_idx=804)           
SingleLineCommentNode(current_idx=906,parent_idx=804) # tendon limit distance-margin 
WhitespaceNode(current_idx=907,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=908) mjSENS_TENDONLIMITVEL , 
WhitespaceNode(current_idx=909,parent_idx=804)           
SingleLineCommentNode(current_idx=910,parent_idx=804) # tendon limit velocity 
WhitespaceNode(current_idx=911,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=912) mjSENS_TENDONLIMITFRC , 
WhitespaceNode(current_idx=913,parent_idx=804)           
SingleLineCommentNode(current_idx=914,parent_idx=804) # tendon limit force 
WhitespaceNode(current_idx=915,parent_idx=804)  
  
SingleLineCommentNode(current_idx=916,parent_idx=804) # sensors attached to an object with spatial frame: (x)body ,  geom ,  site ,  camera 
WhitespaceNode(current_idx=917,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=918) mjSENS_FRAMEPOS , 
WhitespaceNode(current_idx=919,parent_idx=804)                 
SingleLineCommentNode(current_idx=920,parent_idx=804) # 3D position 
WhitespaceNode(current_idx=921,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=922) mjSENS_FRAMEQUAT , 
WhitespaceNode(current_idx=923,parent_idx=804)                
SingleLineCommentNode(current_idx=924,parent_idx=804) # 4D unit quaternion orientation 
WhitespaceNode(current_idx=925,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=926) mjSENS_FRAMEXAXIS , 
WhitespaceNode(current_idx=927,parent_idx=804)               
SingleLineCommentNode(current_idx=928,parent_idx=804) # 3D unit vector: x-axis of object's frame 
WhitespaceNode(current_idx=929,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=930) mjSENS_FRAMEYAXIS , 
WhitespaceNode(current_idx=931,parent_idx=804)               
SingleLineCommentNode(current_idx=932,parent_idx=804) # 3D unit vector: y-axis of object's frame 
WhitespaceNode(current_idx=933,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=934) mjSENS_FRAMEZAXIS , 
WhitespaceNode(current_idx=935,parent_idx=804)               
SingleLineCommentNode(current_idx=936,parent_idx=804) # 3D unit vector: z-axis of object's frame 
WhitespaceNode(current_idx=937,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=938) mjSENS_FRAMELINVEL , 
WhitespaceNode(current_idx=939,parent_idx=804)              
SingleLineCommentNode(current_idx=940,parent_idx=804) # 3D linear velocity 
WhitespaceNode(current_idx=941,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=942) mjSENS_FRAMEANGVEL , 
WhitespaceNode(current_idx=943,parent_idx=804)              
SingleLineCommentNode(current_idx=944,parent_idx=804) # 3D angular velocity 
WhitespaceNode(current_idx=945,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=946) mjSENS_FRAMELINACC , 
WhitespaceNode(current_idx=947,parent_idx=804)              
SingleLineCommentNode(current_idx=948,parent_idx=804) # 3D linear acceleration 
WhitespaceNode(current_idx=949,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=950) mjSENS_FRAMEANGACC , 
WhitespaceNode(current_idx=951,parent_idx=804)              
SingleLineCommentNode(current_idx=952,parent_idx=804) # 3D angular acceleration 
WhitespaceNode(current_idx=953,parent_idx=804)  
  
SingleLineCommentNode(current_idx=954,parent_idx=804) # sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) 
WhitespaceNode(current_idx=955,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=956) mjSENS_SUBTREECOM , 
WhitespaceNode(current_idx=957,parent_idx=804)               
SingleLineCommentNode(current_idx=958,parent_idx=804) # 3D center of mass of subtree 
WhitespaceNode(current_idx=959,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=960) mjSENS_SUBTREELINVEL , 
WhitespaceNode(current_idx=961,parent_idx=804)            
SingleLineCommentNode(current_idx=962,parent_idx=804) # 3D linear velocity of subtree 
WhitespaceNode(current_idx=963,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=964) mjSENS_SUBTREEANGMOM , 
WhitespaceNode(current_idx=965,parent_idx=804)            
SingleLineCommentNode(current_idx=966,parent_idx=804) # 3D angular momentum of subtree 
WhitespaceNode(current_idx=967,parent_idx=804)  
  
SingleLineCommentNode(current_idx=968,parent_idx=804) # sensors for geometric distance ;  attached to geoms or bodies 
WhitespaceNode(current_idx=969,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=970) mjSENS_GEOMDIST , 
WhitespaceNode(current_idx=971,parent_idx=804)                 
SingleLineCommentNode(current_idx=972,parent_idx=804) # signed distance between two geoms 
WhitespaceNode(current_idx=973,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=974) mjSENS_GEOMNORMAL , 
WhitespaceNode(current_idx=975,parent_idx=804)               
SingleLineCommentNode(current_idx=976,parent_idx=804) # normal direction between two geoms 
WhitespaceNode(current_idx=977,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=978) mjSENS_GEOMFROMTO , 
WhitespaceNode(current_idx=979,parent_idx=804)               
SingleLineCommentNode(current_idx=980,parent_idx=804) # segment between two geoms 
WhitespaceNode(current_idx=981,parent_idx=804)  
  
SingleLineCommentNode(current_idx=982,parent_idx=804) # global sensors 
WhitespaceNode(current_idx=983,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=984) mjSENS_CLOCK , 
WhitespaceNode(current_idx=985,parent_idx=804)                    
SingleLineCommentNode(current_idx=986,parent_idx=804) # simulation time 
WhitespaceNode(current_idx=987,parent_idx=804)  
  
SingleLineCommentNode(current_idx=988,parent_idx=804) # plugin-controlled sensors 
WhitespaceNode(current_idx=989,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=990) mjSENS_PLUGIN , 
WhitespaceNode(current_idx=991,parent_idx=804)                   
SingleLineCommentNode(current_idx=992,parent_idx=804) # plugin-controlled 
WhitespaceNode(current_idx=993,parent_idx=804)  
  
SingleLineCommentNode(current_idx=994,parent_idx=804) # user-defined sensor 
WhitespaceNode(current_idx=995,parent_idx=804)   
PlaceHolderNode(parent_idx=804,current_idx=996) mjSENS_USER                     
SingleLineCommentNode(current_idx=997,parent_idx=804) # sensor data provided by mjcb_sensor callback 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtSensor 
WhitespaceNode(current_idx=999,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=1000) typedef <children> 
mjtStage ; 
PlaceHolderNode(parent_idx=1000,current_idx=1001) enum mjtStage_ 
PlaceHolderNode(parent_idx=1001,current_idx=1002) { 
<children> } 
WhitespaceNode(current_idx=1003,parent_idx=1002)          
SingleLineCommentNode(current_idx=1004,parent_idx=1002) # computation stage 
WhitespaceNode(current_idx=1005,parent_idx=1002)   
PlaceHolderNode(parent_idx=1002,current_idx=1006) mjSTAGE_NONE        = 0 , 
WhitespaceNode(current_idx=1007,parent_idx=1002)         
SingleLineCommentNode(current_idx=1008,parent_idx=1002) # no computations 
WhitespaceNode(current_idx=1009,parent_idx=1002)   
PlaceHolderNode(parent_idx=1002,current_idx=1010) mjSTAGE_POS , 
WhitespaceNode(current_idx=1011,parent_idx=1002)                     
SingleLineCommentNode(current_idx=1012,parent_idx=1002) # position-dependent computations 
WhitespaceNode(current_idx=1013,parent_idx=1002)   
PlaceHolderNode(parent_idx=1002,current_idx=1014) mjSTAGE_VEL , 
WhitespaceNode(current_idx=1015,parent_idx=1002)                     
SingleLineCommentNode(current_idx=1016,parent_idx=1002) # velocity-dependent computations 
WhitespaceNode(current_idx=1017,parent_idx=1002)   
PlaceHolderNode(parent_idx=1002,current_idx=1018) mjSTAGE_ACC                     
SingleLineCommentNode(current_idx=1019,parent_idx=1002) # acceleration/force-dependent computations 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtStage 
WhitespaceNode(current_idx=1021,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=1022) typedef <children> 
mjtDataType ; 
PlaceHolderNode(parent_idx=1022,current_idx=1023) enum mjtDataType_ 
PlaceHolderNode(parent_idx=1023,current_idx=1024) { 
<children> } 
WhitespaceNode(current_idx=1025,parent_idx=1024)       
SingleLineCommentNode(current_idx=1026,parent_idx=1024) # data type for sensors 
WhitespaceNode(current_idx=1027,parent_idx=1024)   
PlaceHolderNode(parent_idx=1024,current_idx=1028) mjDATATYPE_REAL     = 0 , 
WhitespaceNode(current_idx=1029,parent_idx=1024)         
SingleLineCommentNode(current_idx=1030,parent_idx=1024) # real values ,  no constraints 
WhitespaceNode(current_idx=1031,parent_idx=1024)   
PlaceHolderNode(parent_idx=1024,current_idx=1032) mjDATATYPE_POSITIVE , 
WhitespaceNode(current_idx=1033,parent_idx=1024)             
SingleLineCommentNode(current_idx=1034,parent_idx=1024) # positive values ;  0 or negative: inactive 
WhitespaceNode(current_idx=1035,parent_idx=1024)   
PlaceHolderNode(parent_idx=1024,current_idx=1036) mjDATATYPE_AXIS , 
WhitespaceNode(current_idx=1037,parent_idx=1024)                 
SingleLineCommentNode(current_idx=1038,parent_idx=1024) # 3D unit vector 
WhitespaceNode(current_idx=1039,parent_idx=1024)   
PlaceHolderNode(parent_idx=1024,current_idx=1040) mjDATATYPE_QUATERNION           
SingleLineCommentNode(current_idx=1041,parent_idx=1024) # unit quaternion 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtDataType 
WhitespaceNode(current_idx=1043,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=1044) typedef <children> 
mjtSameFrame ; 
PlaceHolderNode(parent_idx=1044,current_idx=1045) enum mjtSameFrame_ 
PlaceHolderNode(parent_idx=1045,current_idx=1046) { 
<children> } 
WhitespaceNode(current_idx=1047,parent_idx=1046)      
SingleLineCommentNode(current_idx=1048,parent_idx=1046) # frame alignment of bodies with their children 
WhitespaceNode(current_idx=1049,parent_idx=1046)   
PlaceHolderNode(parent_idx=1046,current_idx=1050) mjSAMEFRAME_NONE    = 0 , 
WhitespaceNode(current_idx=1051,parent_idx=1046)         
SingleLineCommentNode(current_idx=1052,parent_idx=1046) # no alignment 
WhitespaceNode(current_idx=1053,parent_idx=1046)   
PlaceHolderNode(parent_idx=1046,current_idx=1054) mjSAMEFRAME_BODY , 
WhitespaceNode(current_idx=1055,parent_idx=1046)                
SingleLineCommentNode(current_idx=1056,parent_idx=1046) # frame is same as body frame 
WhitespaceNode(current_idx=1057,parent_idx=1046)   
PlaceHolderNode(parent_idx=1046,current_idx=1058) mjSAMEFRAME_INERTIA , 
WhitespaceNode(current_idx=1059,parent_idx=1046)             
SingleLineCommentNode(current_idx=1060,parent_idx=1046) # frame is same as inertial frame 
WhitespaceNode(current_idx=1061,parent_idx=1046)   
PlaceHolderNode(parent_idx=1046,current_idx=1062) mjSAMEFRAME_BODYROT , 
WhitespaceNode(current_idx=1063,parent_idx=1046)             
SingleLineCommentNode(current_idx=1064,parent_idx=1046) # frame orientation is same as body orientation 
WhitespaceNode(current_idx=1065,parent_idx=1046)   
PlaceHolderNode(parent_idx=1046,current_idx=1066) mjSAMEFRAME_INERTIAROT          
SingleLineCommentNode(current_idx=1067,parent_idx=1046) # frame orientation is same as inertia orientation 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtSameFrame 
WhitespaceNode(current_idx=1069,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=1070) typedef <children> 
mjtLRMode ; 
PlaceHolderNode(parent_idx=1070,current_idx=1071) enum mjtLRMode_ 
PlaceHolderNode(parent_idx=1071,current_idx=1072) { 
<children> } 
WhitespaceNode(current_idx=1073,parent_idx=1072)         
SingleLineCommentNode(current_idx=1074,parent_idx=1072) # mode for actuator length range computation 
WhitespaceNode(current_idx=1075,parent_idx=1072)   
PlaceHolderNode(parent_idx=1072,current_idx=1076) mjLRMODE_NONE   = 0 , 
WhitespaceNode(current_idx=1077,parent_idx=1072)             
SingleLineCommentNode(current_idx=1078,parent_idx=1072) # do not process any actuators 
WhitespaceNode(current_idx=1079,parent_idx=1072)   
PlaceHolderNode(parent_idx=1072,current_idx=1080) mjLRMODE_MUSCLE , 
WhitespaceNode(current_idx=1081,parent_idx=1072)                 
SingleLineCommentNode(current_idx=1082,parent_idx=1072) # process muscle actuators 
WhitespaceNode(current_idx=1083,parent_idx=1072)   
PlaceHolderNode(parent_idx=1072,current_idx=1084) mjLRMODE_MUSCLEUSER , 
WhitespaceNode(current_idx=1085,parent_idx=1072)             
SingleLineCommentNode(current_idx=1086,parent_idx=1072) # process muscle and user actuators 
WhitespaceNode(current_idx=1087,parent_idx=1072)   
PlaceHolderNode(parent_idx=1072,current_idx=1088) mjLRMODE_ALL                    
SingleLineCommentNode(current_idx=1089,parent_idx=1072) # process all actuators 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtLRMode 
WhitespaceNode(current_idx=1091,parent_idx=15)  
 
 
PlaceHolderNode(parent_idx=15,current_idx=1092) typedef <children> 
mjtFlexSelf ; 
PlaceHolderNode(parent_idx=1092,current_idx=1093) enum mjtFlexSelf_ 
PlaceHolderNode(parent_idx=1093,current_idx=1094) { 
<children> } 
WhitespaceNode(current_idx=1095,parent_idx=1094)       
SingleLineCommentNode(current_idx=1096,parent_idx=1094) # mode for flex selfcollide 
WhitespaceNode(current_idx=1097,parent_idx=1094)   
PlaceHolderNode(parent_idx=1094,current_idx=1098) mjFLEXSELF_NONE   = 0 , 
WhitespaceNode(current_idx=1099,parent_idx=1094)           
SingleLineCommentNode(current_idx=1100,parent_idx=1094) # no self-collisions 
WhitespaceNode(current_idx=1101,parent_idx=1094)   
PlaceHolderNode(parent_idx=1094,current_idx=1102) mjFLEXSELF_NARROW , 
WhitespaceNode(current_idx=1103,parent_idx=1094)               
SingleLineCommentNode(current_idx=1104,parent_idx=1094) # skip midphase ,  go directly to narrowphase 
WhitespaceNode(current_idx=1105,parent_idx=1094)   
PlaceHolderNode(parent_idx=1094,current_idx=1106) mjFLEXSELF_BVH , 
WhitespaceNode(current_idx=1107,parent_idx=1094)                  
SingleLineCommentNode(current_idx=1108,parent_idx=1094) # use BVH in midphase (if midphase enabled) 
WhitespaceNode(current_idx=1109,parent_idx=1094)   
PlaceHolderNode(parent_idx=1094,current_idx=1110) mjFLEXSELF_SAP , 
WhitespaceNode(current_idx=1111,parent_idx=1094)                  
SingleLineCommentNode(current_idx=1112,parent_idx=1094) # use SAP in midphase 
WhitespaceNode(current_idx=1113,parent_idx=1094)   
PlaceHolderNode(parent_idx=1094,current_idx=1114) mjFLEXSELF_AUTO                 
SingleLineCommentNode(current_idx=1115,parent_idx=1094) # choose between BVH and SAP automatically 
PlaceHolderNode(parent_idx=15,current_idx=0) mjtFlexSelf 
WhitespaceNode(current_idx=1117,parent_idx=15)  
 
 
SingleLineCommentNode(current_idx=1118,parent_idx=15) # ---------------------------------- mjLROpt ------------------------------------------------------- 
WhitespaceNode(current_idx=1119,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1120) struct mjLROpt_ 
<children> ; 
PlaceHolderNode(parent_idx=1120,current_idx=1121) { 
<children> } 
WhitespaceNode(current_idx=1122,parent_idx=1121)                 
SingleLineCommentNode(current_idx=1123,parent_idx=1121) # options for mj_setLengthRange() 
WhitespaceNode(current_idx=1124,parent_idx=1121)   
SingleLineCommentNode(current_idx=1125,parent_idx=1121) # flags 
WhitespaceNode(current_idx=1126,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1127) int mode ; 
WhitespaceNode(current_idx=1128,parent_idx=1121)                        
SingleLineCommentNode(current_idx=1129,parent_idx=1121) # which actuators to process (mjtLRMode) 
WhitespaceNode(current_idx=1130,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1131) int useexisting ; 
WhitespaceNode(current_idx=1132,parent_idx=1121)                 
SingleLineCommentNode(current_idx=1133,parent_idx=1121) # use existing length range if available 
WhitespaceNode(current_idx=1134,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1135) int uselimit ; 
WhitespaceNode(current_idx=1136,parent_idx=1121)                    
SingleLineCommentNode(current_idx=1137,parent_idx=1121) # use joint and tendon limits if available 
WhitespaceNode(current_idx=1138,parent_idx=1121)  
  
SingleLineCommentNode(current_idx=1139,parent_idx=1121) # algorithm parameters 
WhitespaceNode(current_idx=1140,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1141) mjtNum accel ; 
WhitespaceNode(current_idx=1142,parent_idx=1121)                    
SingleLineCommentNode(current_idx=1143,parent_idx=1121) # target acceleration used to compute force 
WhitespaceNode(current_idx=1144,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1145) mjtNum maxforce ; 
WhitespaceNode(current_idx=1146,parent_idx=1121)                 
SingleLineCommentNode(current_idx=1147,parent_idx=1121) # maximum force ;  0: no limit 
WhitespaceNode(current_idx=1148,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1149) mjtNum timeconst ; 
WhitespaceNode(current_idx=1150,parent_idx=1121)                
SingleLineCommentNode(current_idx=1151,parent_idx=1121) # time constant for velocity reduction ;  min 0.01 
WhitespaceNode(current_idx=1152,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1153) mjtNum timestep ; 
WhitespaceNode(current_idx=1154,parent_idx=1121)                 
SingleLineCommentNode(current_idx=1155,parent_idx=1121) # simulation timestep ;  0: use mjOption.timestep 
WhitespaceNode(current_idx=1156,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1157) mjtNum inttotal ; 
WhitespaceNode(current_idx=1158,parent_idx=1121)                 
SingleLineCommentNode(current_idx=1159,parent_idx=1121) # total simulation time interval 
WhitespaceNode(current_idx=1160,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1161) mjtNum interval ; 
WhitespaceNode(current_idx=1162,parent_idx=1121)                 
SingleLineCommentNode(current_idx=1163,parent_idx=1121) # evaluation time interval (at the end) 
WhitespaceNode(current_idx=1164,parent_idx=1121)   
PlaceHolderNode(parent_idx=1121,current_idx=1165) mjtNum tolrange ; 
WhitespaceNode(current_idx=1166,parent_idx=1121)                 
SingleLineCommentNode(current_idx=1167,parent_idx=1121) # convergence tolerance (relative to range) 
WhitespaceNode(current_idx=1168,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1169) typedef <children> mjLROpt ; 
PlaceHolderNode(parent_idx=1169,current_idx=1170) struct mjLROpt_ 
PlaceHolderNode(parent_idx=15,current_idx=0) mjLROpt 
WhitespaceNode(current_idx=1172,parent_idx=15)  
 
 
SingleLineCommentNode(current_idx=1173,parent_idx=15) # ---------------------------------- mjVFS --------------------------------------------------------- 
WhitespaceNode(current_idx=1174,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1175) struct mjVFS_ 
<children> ; 
PlaceHolderNode(parent_idx=1175,current_idx=1176) { 
<children> } 
WhitespaceNode(current_idx=1177,parent_idx=1176)                               
SingleLineCommentNode(current_idx=1178,parent_idx=1176) # virtual file system for loading from memory 
WhitespaceNode(current_idx=1179,parent_idx=1176)   
PlaceHolderNode(parent_idx=1176,current_idx=1180) void* impl_ ; 
WhitespaceNode(current_idx=1181,parent_idx=1176)                                 
SingleLineCommentNode(current_idx=1182,parent_idx=1176) # internal pointer to VFS memory 
WhitespaceNode(current_idx=1183,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1184) typedef <children> mjVFS ; 
PlaceHolderNode(parent_idx=1184,current_idx=1185) struct mjVFS_ 
PlaceHolderNode(parent_idx=15,current_idx=0) mjVFS 
WhitespaceNode(current_idx=1187,parent_idx=15)  
 
SingleLineCommentNode(current_idx=1188,parent_idx=15) # ---------------------------------- mjOption ------------------------------------------------------ 
WhitespaceNode(current_idx=1189,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1190) struct mjOption_ 
<children> ; 
PlaceHolderNode(parent_idx=1190,current_idx=1191) { 
<children> } 
WhitespaceNode(current_idx=1192,parent_idx=1191)                
SingleLineCommentNode(current_idx=1193,parent_idx=1191) # physics options 
WhitespaceNode(current_idx=1194,parent_idx=1191)   
SingleLineCommentNode(current_idx=1195,parent_idx=1191) # timing parameters 
WhitespaceNode(current_idx=1196,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1197) mjtNum timestep ; 
WhitespaceNode(current_idx=1198,parent_idx=1191)                 
SingleLineCommentNode(current_idx=1199,parent_idx=1191) # timestep 
WhitespaceNode(current_idx=1200,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1201) mjtNum apirate ; 
WhitespaceNode(current_idx=1202,parent_idx=1191)                  
SingleLineCommentNode(current_idx=1203,parent_idx=1191) # update rate for remote API (Hz) 
WhitespaceNode(current_idx=1204,parent_idx=1191)  
  
SingleLineCommentNode(current_idx=1205,parent_idx=1191) # solver parameters 
WhitespaceNode(current_idx=1206,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1207) mjtNum impratio ; 
WhitespaceNode(current_idx=1208,parent_idx=1191)                 
SingleLineCommentNode(current_idx=1209,parent_idx=1191) # ratio of friction-to-normal contact impedance 
WhitespaceNode(current_idx=1210,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1211) mjtNum tolerance ; 
WhitespaceNode(current_idx=1212,parent_idx=1191)                
SingleLineCommentNode(current_idx=1213,parent_idx=1191) # main solver tolerance 
WhitespaceNode(current_idx=1214,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1215) mjtNum ls_tolerance ; 
WhitespaceNode(current_idx=1216,parent_idx=1191)             
SingleLineCommentNode(current_idx=1217,parent_idx=1191) # CG/Newton linesearch tolerance 
WhitespaceNode(current_idx=1218,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1219) mjtNum noslip_tolerance ; 
WhitespaceNode(current_idx=1220,parent_idx=1191)         
SingleLineCommentNode(current_idx=1221,parent_idx=1191) # noslip solver tolerance 
WhitespaceNode(current_idx=1222,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1223) mjtNum ccd_tolerance ; 
WhitespaceNode(current_idx=1224,parent_idx=1191)            
SingleLineCommentNode(current_idx=1225,parent_idx=1191) # convex collision solver tolerance 
WhitespaceNode(current_idx=1226,parent_idx=1191)  
  
SingleLineCommentNode(current_idx=1227,parent_idx=1191) # physical constants 
WhitespaceNode(current_idx=1228,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1229) mjtNum gravity[3] ; 
WhitespaceNode(current_idx=1230,parent_idx=1191)               
SingleLineCommentNode(current_idx=1231,parent_idx=1191) # gravitational acceleration 
WhitespaceNode(current_idx=1232,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1233) mjtNum wind[3] ; 
WhitespaceNode(current_idx=1234,parent_idx=1191)                  
SingleLineCommentNode(current_idx=1235,parent_idx=1191) # wind (for lift ,  drag and viscosity) 
WhitespaceNode(current_idx=1236,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1237) mjtNum magnetic[3] ; 
WhitespaceNode(current_idx=1238,parent_idx=1191)              
SingleLineCommentNode(current_idx=1239,parent_idx=1191) # global magnetic flux 
WhitespaceNode(current_idx=1240,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1241) mjtNum density ; 
WhitespaceNode(current_idx=1242,parent_idx=1191)                  
SingleLineCommentNode(current_idx=1243,parent_idx=1191) # density of medium 
WhitespaceNode(current_idx=1244,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1245) mjtNum viscosity ; 
WhitespaceNode(current_idx=1246,parent_idx=1191)                
SingleLineCommentNode(current_idx=1247,parent_idx=1191) # viscosity of medium 
WhitespaceNode(current_idx=1248,parent_idx=1191)  
  
SingleLineCommentNode(current_idx=1249,parent_idx=1191) # override contact solver parameters (if enabled) 
WhitespaceNode(current_idx=1250,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1251) mjtNum o_margin ; 
WhitespaceNode(current_idx=1252,parent_idx=1191)                 
SingleLineCommentNode(current_idx=1253,parent_idx=1191) # margin 
WhitespaceNode(current_idx=1254,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1255) mjtNum o_solref[mjNREF] ; 
WhitespaceNode(current_idx=1256,parent_idx=1191)         
SingleLineCommentNode(current_idx=1257,parent_idx=1191) # solref 
WhitespaceNode(current_idx=1258,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1259) mjtNum o_solimp[mjNIMP] ; 
WhitespaceNode(current_idx=1260,parent_idx=1191)         
SingleLineCommentNode(current_idx=1261,parent_idx=1191) # solimp 
WhitespaceNode(current_idx=1262,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1263) mjtNum o_friction[5] ; 
WhitespaceNode(current_idx=1264,parent_idx=1191)            
SingleLineCommentNode(current_idx=1265,parent_idx=1191) # friction 
WhitespaceNode(current_idx=1266,parent_idx=1191)  
  
SingleLineCommentNode(current_idx=1267,parent_idx=1191) # discrete settings 
WhitespaceNode(current_idx=1268,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1269) int integrator ; 
WhitespaceNode(current_idx=1270,parent_idx=1191)                  
SingleLineCommentNode(current_idx=1271,parent_idx=1191) # integration mode (mjtIntegrator) 
WhitespaceNode(current_idx=1272,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1273) int cone ; 
WhitespaceNode(current_idx=1274,parent_idx=1191)                        
SingleLineCommentNode(current_idx=1275,parent_idx=1191) # type of friction cone (mjtCone) 
WhitespaceNode(current_idx=1276,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1277) int jacobian ; 
WhitespaceNode(current_idx=1278,parent_idx=1191)                    
SingleLineCommentNode(current_idx=1279,parent_idx=1191) # type of Jacobian (mjtJacobian) 
WhitespaceNode(current_idx=1280,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1281) int solver ; 
WhitespaceNode(current_idx=1282,parent_idx=1191)                      
SingleLineCommentNode(current_idx=1283,parent_idx=1191) # solver algorithm (mjtSolver) 
WhitespaceNode(current_idx=1284,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1285) int iterations ; 
WhitespaceNode(current_idx=1286,parent_idx=1191)                  
SingleLineCommentNode(current_idx=1287,parent_idx=1191) # maximum number of main solver iterations 
WhitespaceNode(current_idx=1288,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1289) int ls_iterations ; 
WhitespaceNode(current_idx=1290,parent_idx=1191)               
SingleLineCommentNode(current_idx=1291,parent_idx=1191) # maximum number of CG/Newton linesearch iterations 
WhitespaceNode(current_idx=1292,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1293) int noslip_iterations ; 
WhitespaceNode(current_idx=1294,parent_idx=1191)           
SingleLineCommentNode(current_idx=1295,parent_idx=1191) # maximum number of noslip solver iterations 
WhitespaceNode(current_idx=1296,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1297) int ccd_iterations ; 
WhitespaceNode(current_idx=1298,parent_idx=1191)              
SingleLineCommentNode(current_idx=1299,parent_idx=1191) # maximum number of convex collision solver iterations 
WhitespaceNode(current_idx=1300,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1301) int disableflags ; 
WhitespaceNode(current_idx=1302,parent_idx=1191)                
SingleLineCommentNode(current_idx=1303,parent_idx=1191) # bit flags for disabling standard features 
WhitespaceNode(current_idx=1304,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1305) int enableflags ; 
WhitespaceNode(current_idx=1306,parent_idx=1191)                 
SingleLineCommentNode(current_idx=1307,parent_idx=1191) # bit flags for enabling optional features 
WhitespaceNode(current_idx=1308,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1309) int disableactuator ; 
WhitespaceNode(current_idx=1310,parent_idx=1191)             
SingleLineCommentNode(current_idx=1311,parent_idx=1191) # bit flags for disabling actuators by group id 
WhitespaceNode(current_idx=1312,parent_idx=1191)  
  
SingleLineCommentNode(current_idx=1313,parent_idx=1191) # sdf collision settings 
WhitespaceNode(current_idx=1314,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1315) int sdf_initpoints ; 
WhitespaceNode(current_idx=1316,parent_idx=1191)              
SingleLineCommentNode(current_idx=1317,parent_idx=1191) # number of starting points for gradient descent 
WhitespaceNode(current_idx=1318,parent_idx=1191)   
PlaceHolderNode(parent_idx=1191,current_idx=1319) int sdf_iterations ; 
WhitespaceNode(current_idx=1320,parent_idx=1191)              
SingleLineCommentNode(current_idx=1321,parent_idx=1191) # max number of iterations for gradient descent 
WhitespaceNode(current_idx=1322,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1323) typedef <children> mjOption ; 
PlaceHolderNode(parent_idx=1323,current_idx=1324) struct mjOption_ 
PlaceHolderNode(parent_idx=15,current_idx=0) mjOption 
WhitespaceNode(current_idx=1326,parent_idx=15)  
 
 
SingleLineCommentNode(current_idx=1327,parent_idx=15) # ---------------------------------- mjVisual ------------------------------------------------------ 
WhitespaceNode(current_idx=1328,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1329) struct mjVisual_ 
<children> ; 
PlaceHolderNode(parent_idx=1329,current_idx=1330) { 
<children> } 
WhitespaceNode(current_idx=1331,parent_idx=1330)                
SingleLineCommentNode(current_idx=1332,parent_idx=1330) # visualization options 
WhitespaceNode(current_idx=1333,parent_idx=1330)   
PlaceHolderNode(parent_idx=1330,current_idx=1334) <children> 
global ; 
PlaceHolderNode(parent_idx=1334,current_idx=1335) struct 
PlaceHolderNode(parent_idx=1335,current_idx=1336) { 
<children> } 
WhitespaceNode(current_idx=1337,parent_idx=1336)                        
SingleLineCommentNode(current_idx=1338,parent_idx=1336) # global parameters 
WhitespaceNode(current_idx=1339,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1340) int orthographic ; 
WhitespaceNode(current_idx=1341,parent_idx=1336)              
SingleLineCommentNode(current_idx=1342,parent_idx=1336) # is the free camera orthographic (0: no ,  1: yes) 
WhitespaceNode(current_idx=1343,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1344) float fovy ; 
WhitespaceNode(current_idx=1345,parent_idx=1336)                    
SingleLineCommentNode(current_idx=1346,parent_idx=1336) # y field-of-view of free camera (orthographic ? length : degree) 
WhitespaceNode(current_idx=1347,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1348) float ipd ; 
WhitespaceNode(current_idx=1349,parent_idx=1336)                     
SingleLineCommentNode(current_idx=1350,parent_idx=1336) # inter-pupilary distance for free camera 
WhitespaceNode(current_idx=1351,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1352) float azimuth ; 
WhitespaceNode(current_idx=1353,parent_idx=1336)                 
SingleLineCommentNode(current_idx=1354,parent_idx=1336) # initial azimuth of free camera (degrees) 
WhitespaceNode(current_idx=1355,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1356) float elevation ; 
WhitespaceNode(current_idx=1357,parent_idx=1336)               
SingleLineCommentNode(current_idx=1358,parent_idx=1336) # initial elevation of free camera (degrees) 
WhitespaceNode(current_idx=1359,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1360) float linewidth ; 
WhitespaceNode(current_idx=1361,parent_idx=1336)               
SingleLineCommentNode(current_idx=1362,parent_idx=1336) # line width for wireframe and ray rendering 
WhitespaceNode(current_idx=1363,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1364) float glow ; 
WhitespaceNode(current_idx=1365,parent_idx=1336)                    
SingleLineCommentNode(current_idx=1366,parent_idx=1336) # glow coefficient for selected body 
WhitespaceNode(current_idx=1367,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1368) float realtime ; 
WhitespaceNode(current_idx=1369,parent_idx=1336)                
SingleLineCommentNode(current_idx=1370,parent_idx=1336) # initial real-time factor (1: real time) 
WhitespaceNode(current_idx=1371,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1372) int   offwidth ; 
WhitespaceNode(current_idx=1373,parent_idx=1336)                
SingleLineCommentNode(current_idx=1374,parent_idx=1336) # width of offscreen buffer 
WhitespaceNode(current_idx=1375,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1376) int   offheight ; 
WhitespaceNode(current_idx=1377,parent_idx=1336)               
SingleLineCommentNode(current_idx=1378,parent_idx=1336) # height of offscreen buffer 
WhitespaceNode(current_idx=1379,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1380) int   ellipsoidinertia ; 
WhitespaceNode(current_idx=1381,parent_idx=1336)        
SingleLineCommentNode(current_idx=1382,parent_idx=1336) # geom for inertia visualization (0: box ,  1: ellipsoid) 
WhitespaceNode(current_idx=1383,parent_idx=1336)     
PlaceHolderNode(parent_idx=1336,current_idx=1384) int   bvactive ; 
WhitespaceNode(current_idx=1385,parent_idx=1336)                
SingleLineCommentNode(current_idx=1386,parent_idx=1336) # visualize active bounding volumes (0: no ,  1: yes) 
WhitespaceNode(current_idx=1387,parent_idx=1336)   
WhitespaceNode(current_idx=1388,parent_idx=1330)  
 
  
PlaceHolderNode(parent_idx=1330,current_idx=1389) <children> 
quality ; 
PlaceHolderNode(parent_idx=1389,current_idx=1390) struct 
PlaceHolderNode(parent_idx=1390,current_idx=1391) { 
<children> } 
WhitespaceNode(current_idx=1392,parent_idx=1391)                        
SingleLineCommentNode(current_idx=1393,parent_idx=1391) # rendering quality 
WhitespaceNode(current_idx=1394,parent_idx=1391)     
PlaceHolderNode(parent_idx=1391,current_idx=1395) int   shadowsize ; 
WhitespaceNode(current_idx=1396,parent_idx=1391)              
SingleLineCommentNode(current_idx=1397,parent_idx=1391) # size of shadowmap texture 
WhitespaceNode(current_idx=1398,parent_idx=1391)     
PlaceHolderNode(parent_idx=1391,current_idx=1399) int   offsamples ; 
WhitespaceNode(current_idx=1400,parent_idx=1391)              
SingleLineCommentNode(current_idx=1401,parent_idx=1391) # number of multisamples for offscreen rendering 
WhitespaceNode(current_idx=1402,parent_idx=1391)     
PlaceHolderNode(parent_idx=1391,current_idx=1403) int   numslices ; 
WhitespaceNode(current_idx=1404,parent_idx=1391)               
SingleLineCommentNode(current_idx=1405,parent_idx=1391) # number of slices for builtin geom drawing 
WhitespaceNode(current_idx=1406,parent_idx=1391)     
PlaceHolderNode(parent_idx=1391,current_idx=1407) int   numstacks ; 
WhitespaceNode(current_idx=1408,parent_idx=1391)               
SingleLineCommentNode(current_idx=1409,parent_idx=1391) # number of stacks for builtin geom drawing 
WhitespaceNode(current_idx=1410,parent_idx=1391)     
PlaceHolderNode(parent_idx=1391,current_idx=1411) int   numquads ; 
WhitespaceNode(current_idx=1412,parent_idx=1391)                
SingleLineCommentNode(current_idx=1413,parent_idx=1391) # number of quads for box rendering 
WhitespaceNode(current_idx=1414,parent_idx=1391)   
WhitespaceNode(current_idx=1415,parent_idx=1330)  
 
  
PlaceHolderNode(parent_idx=1330,current_idx=1416) <children> 
headlight ; 
PlaceHolderNode(parent_idx=1416,current_idx=1417) struct 
PlaceHolderNode(parent_idx=1417,current_idx=1418) { 
<children> } 
WhitespaceNode(current_idx=1419,parent_idx=1418)                        
SingleLineCommentNode(current_idx=1420,parent_idx=1418) # head light 
WhitespaceNode(current_idx=1421,parent_idx=1418)     
PlaceHolderNode(parent_idx=1418,current_idx=1422) float ambient[3] ; 
WhitespaceNode(current_idx=1423,parent_idx=1418)              
SingleLineCommentNode(current_idx=1424,parent_idx=1418) # ambient rgb (alpha=1) 
WhitespaceNode(current_idx=1425,parent_idx=1418)     
PlaceHolderNode(parent_idx=1418,current_idx=1426) float diffuse[3] ; 
WhitespaceNode(current_idx=1427,parent_idx=1418)              
SingleLineCommentNode(current_idx=1428,parent_idx=1418) # diffuse rgb (alpha=1) 
WhitespaceNode(current_idx=1429,parent_idx=1418)     
PlaceHolderNode(parent_idx=1418,current_idx=1430) float specular[3] ; 
WhitespaceNode(current_idx=1431,parent_idx=1418)             
SingleLineCommentNode(current_idx=1432,parent_idx=1418) # specular rgb (alpha=1) 
WhitespaceNode(current_idx=1433,parent_idx=1418)     
PlaceHolderNode(parent_idx=1418,current_idx=1434) int   active ; 
WhitespaceNode(current_idx=1435,parent_idx=1418)                  
SingleLineCommentNode(current_idx=1436,parent_idx=1418) # is headlight active 
WhitespaceNode(current_idx=1437,parent_idx=1418)   
WhitespaceNode(current_idx=1438,parent_idx=1330)  
 
  
PlaceHolderNode(parent_idx=1330,current_idx=1439) <children> 
map ; 
PlaceHolderNode(parent_idx=1439,current_idx=1440) struct 
PlaceHolderNode(parent_idx=1440,current_idx=1441) { 
<children> } 
WhitespaceNode(current_idx=1442,parent_idx=1441)                        
SingleLineCommentNode(current_idx=1443,parent_idx=1441) # mapping 
WhitespaceNode(current_idx=1444,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1445) float stiffness ; 
WhitespaceNode(current_idx=1446,parent_idx=1441)               
SingleLineCommentNode(current_idx=1447,parent_idx=1441) # mouse perturbation stiffness (space->force) 
WhitespaceNode(current_idx=1448,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1449) float stiffnessrot ; 
WhitespaceNode(current_idx=1450,parent_idx=1441)            
SingleLineCommentNode(current_idx=1451,parent_idx=1441) # mouse perturbation stiffness (space->torque) 
WhitespaceNode(current_idx=1452,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1453) float force ; 
WhitespaceNode(current_idx=1454,parent_idx=1441)                   
SingleLineCommentNode(current_idx=1455,parent_idx=1441) # from force units to space units 
WhitespaceNode(current_idx=1456,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1457) float torque ; 
WhitespaceNode(current_idx=1458,parent_idx=1441)                  
SingleLineCommentNode(current_idx=1459,parent_idx=1441) # from torque units to space units 
WhitespaceNode(current_idx=1460,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1461) float alpha ; 
WhitespaceNode(current_idx=1462,parent_idx=1441)                   
SingleLineCommentNode(current_idx=1463,parent_idx=1441) # scale geom alphas when transparency is enabled 
WhitespaceNode(current_idx=1464,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1465) float fogstart ; 
WhitespaceNode(current_idx=1466,parent_idx=1441)                
SingleLineCommentNode(current_idx=1467,parent_idx=1441) # OpenGL fog starts at fogstart * mjModel.stat.extent 
WhitespaceNode(current_idx=1468,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1469) float fogend ; 
WhitespaceNode(current_idx=1470,parent_idx=1441)                  
SingleLineCommentNode(current_idx=1471,parent_idx=1441) # OpenGL fog ends at fogend * mjModel.stat.extent 
WhitespaceNode(current_idx=1472,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1473) float znear ; 
WhitespaceNode(current_idx=1474,parent_idx=1441)                   
SingleLineCommentNode(current_idx=1475,parent_idx=1441) # near clipping plane = znear * mjModel.stat.extent 
WhitespaceNode(current_idx=1476,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1477) float zfar ; 
WhitespaceNode(current_idx=1478,parent_idx=1441)                    
SingleLineCommentNode(current_idx=1479,parent_idx=1441) # far clipping plane = zfar * mjModel.stat.extent 
WhitespaceNode(current_idx=1480,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1481) float haze ; 
WhitespaceNode(current_idx=1482,parent_idx=1441)                    
SingleLineCommentNode(current_idx=1483,parent_idx=1441) # haze ratio 
WhitespaceNode(current_idx=1484,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1485) float shadowclip ; 
WhitespaceNode(current_idx=1486,parent_idx=1441)              
SingleLineCommentNode(current_idx=1487,parent_idx=1441) # directional light: shadowclip * mjModel.stat.extent 
WhitespaceNode(current_idx=1488,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1489) float shadowscale ; 
WhitespaceNode(current_idx=1490,parent_idx=1441)             
SingleLineCommentNode(current_idx=1491,parent_idx=1441) # spot light: shadowscale * light.cutoff 
WhitespaceNode(current_idx=1492,parent_idx=1441)     
PlaceHolderNode(parent_idx=1441,current_idx=1493) float actuatortendon ; 
WhitespaceNode(current_idx=1494,parent_idx=1441)          
SingleLineCommentNode(current_idx=1495,parent_idx=1441) # scale tendon width 
WhitespaceNode(current_idx=1496,parent_idx=1441)   
WhitespaceNode(current_idx=1497,parent_idx=1330)  
 
  
PlaceHolderNode(parent_idx=1330,current_idx=1498) <children> 
scale ; 
PlaceHolderNode(parent_idx=1498,current_idx=1499) struct 
PlaceHolderNode(parent_idx=1499,current_idx=1500) { 
<children> } 
WhitespaceNode(current_idx=1501,parent_idx=1500)                        
SingleLineCommentNode(current_idx=1502,parent_idx=1500) # scale of decor elements relative to mean body size 
WhitespaceNode(current_idx=1503,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1504) float forcewidth ; 
WhitespaceNode(current_idx=1505,parent_idx=1500)              
SingleLineCommentNode(current_idx=1506,parent_idx=1500) # width of force arrow 
WhitespaceNode(current_idx=1507,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1508) float contactwidth ; 
WhitespaceNode(current_idx=1509,parent_idx=1500)            
SingleLineCommentNode(current_idx=1510,parent_idx=1500) # contact width 
WhitespaceNode(current_idx=1511,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1512) float contactheight ; 
WhitespaceNode(current_idx=1513,parent_idx=1500)           
SingleLineCommentNode(current_idx=1514,parent_idx=1500) # contact height 
WhitespaceNode(current_idx=1515,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1516) float connect ; 
WhitespaceNode(current_idx=1517,parent_idx=1500)                 
SingleLineCommentNode(current_idx=1518,parent_idx=1500) # autoconnect capsule width 
WhitespaceNode(current_idx=1519,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1520) float com ; 
WhitespaceNode(current_idx=1521,parent_idx=1500)                     
SingleLineCommentNode(current_idx=1522,parent_idx=1500) # com radius 
WhitespaceNode(current_idx=1523,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1524) float camera ; 
WhitespaceNode(current_idx=1525,parent_idx=1500)                  
SingleLineCommentNode(current_idx=1526,parent_idx=1500) # camera object 
WhitespaceNode(current_idx=1527,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1528) float light ; 
WhitespaceNode(current_idx=1529,parent_idx=1500)                   
SingleLineCommentNode(current_idx=1530,parent_idx=1500) # light object 
WhitespaceNode(current_idx=1531,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1532) float selectpoint ; 
WhitespaceNode(current_idx=1533,parent_idx=1500)             
SingleLineCommentNode(current_idx=1534,parent_idx=1500) # selection point 
WhitespaceNode(current_idx=1535,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1536) float jointlength ; 
WhitespaceNode(current_idx=1537,parent_idx=1500)             
SingleLineCommentNode(current_idx=1538,parent_idx=1500) # joint length 
WhitespaceNode(current_idx=1539,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1540) float jointwidth ; 
WhitespaceNode(current_idx=1541,parent_idx=1500)              
SingleLineCommentNode(current_idx=1542,parent_idx=1500) # joint width 
WhitespaceNode(current_idx=1543,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1544) float actuatorlength ; 
WhitespaceNode(current_idx=1545,parent_idx=1500)          
SingleLineCommentNode(current_idx=1546,parent_idx=1500) # actuator length 
WhitespaceNode(current_idx=1547,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1548) float actuatorwidth ; 
WhitespaceNode(current_idx=1549,parent_idx=1500)           
SingleLineCommentNode(current_idx=1550,parent_idx=1500) # actuator width 
WhitespaceNode(current_idx=1551,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1552) float framelength ; 
WhitespaceNode(current_idx=1553,parent_idx=1500)             
SingleLineCommentNode(current_idx=1554,parent_idx=1500) # bodyframe axis length 
WhitespaceNode(current_idx=1555,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1556) float framewidth ; 
WhitespaceNode(current_idx=1557,parent_idx=1500)              
SingleLineCommentNode(current_idx=1558,parent_idx=1500) # bodyframe axis width 
WhitespaceNode(current_idx=1559,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1560) float constraint ; 
WhitespaceNode(current_idx=1561,parent_idx=1500)              
SingleLineCommentNode(current_idx=1562,parent_idx=1500) # constraint width 
WhitespaceNode(current_idx=1563,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1564) float slidercrank ; 
WhitespaceNode(current_idx=1565,parent_idx=1500)             
SingleLineCommentNode(current_idx=1566,parent_idx=1500) # slidercrank width 
WhitespaceNode(current_idx=1567,parent_idx=1500)     
PlaceHolderNode(parent_idx=1500,current_idx=1568) float frustum ; 
WhitespaceNode(current_idx=1569,parent_idx=1500)                 
SingleLineCommentNode(current_idx=1570,parent_idx=1500) # frustum zfar plane 
WhitespaceNode(current_idx=1571,parent_idx=1500)   
WhitespaceNode(current_idx=1572,parent_idx=1330)  
 
  
PlaceHolderNode(parent_idx=1330,current_idx=1573) <children> 
rgba ; 
PlaceHolderNode(parent_idx=1573,current_idx=1574) struct 
PlaceHolderNode(parent_idx=1574,current_idx=1575) { 
<children> } 
WhitespaceNode(current_idx=1576,parent_idx=1575)                        
SingleLineCommentNode(current_idx=1577,parent_idx=1575) # color of decor elements 
WhitespaceNode(current_idx=1578,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1579) float fog[4] ; 
WhitespaceNode(current_idx=1580,parent_idx=1575)                  
SingleLineCommentNode(current_idx=1581,parent_idx=1575) # fog 
WhitespaceNode(current_idx=1582,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1583) float haze[4] ; 
WhitespaceNode(current_idx=1584,parent_idx=1575)                 
SingleLineCommentNode(current_idx=1585,parent_idx=1575) # haze 
WhitespaceNode(current_idx=1586,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1587) float force[4] ; 
WhitespaceNode(current_idx=1588,parent_idx=1575)                
SingleLineCommentNode(current_idx=1589,parent_idx=1575) # external force 
WhitespaceNode(current_idx=1590,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1591) float inertia[4] ; 
WhitespaceNode(current_idx=1592,parent_idx=1575)              
SingleLineCommentNode(current_idx=1593,parent_idx=1575) # inertia box 
WhitespaceNode(current_idx=1594,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1595) float joint[4] ; 
WhitespaceNode(current_idx=1596,parent_idx=1575)                
SingleLineCommentNode(current_idx=1597,parent_idx=1575) # joint 
WhitespaceNode(current_idx=1598,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1599) float actuator[4] ; 
WhitespaceNode(current_idx=1600,parent_idx=1575)             
SingleLineCommentNode(current_idx=1601,parent_idx=1575) # actuator ,  neutral 
WhitespaceNode(current_idx=1602,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1603) float actuatornegative[4] ; 
WhitespaceNode(current_idx=1604,parent_idx=1575)     
SingleLineCommentNode(current_idx=1605,parent_idx=1575) # actuator ,  negative limit 
WhitespaceNode(current_idx=1606,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1607) float actuatorpositive[4] ; 
WhitespaceNode(current_idx=1608,parent_idx=1575)     
SingleLineCommentNode(current_idx=1609,parent_idx=1575) # actuator ,  positive limit 
WhitespaceNode(current_idx=1610,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1611) float com[4] ; 
WhitespaceNode(current_idx=1612,parent_idx=1575)                  
SingleLineCommentNode(current_idx=1613,parent_idx=1575) # center of mass 
WhitespaceNode(current_idx=1614,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1615) float camera[4] ; 
WhitespaceNode(current_idx=1616,parent_idx=1575)               
SingleLineCommentNode(current_idx=1617,parent_idx=1575) # camera object 
WhitespaceNode(current_idx=1618,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1619) float light[4] ; 
WhitespaceNode(current_idx=1620,parent_idx=1575)                
SingleLineCommentNode(current_idx=1621,parent_idx=1575) # light object 
WhitespaceNode(current_idx=1622,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1623) float selectpoint[4] ; 
WhitespaceNode(current_idx=1624,parent_idx=1575)          
SingleLineCommentNode(current_idx=1625,parent_idx=1575) # selection point 
WhitespaceNode(current_idx=1626,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1627) float connect[4] ; 
WhitespaceNode(current_idx=1628,parent_idx=1575)              
SingleLineCommentNode(current_idx=1629,parent_idx=1575) # auto connect 
WhitespaceNode(current_idx=1630,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1631) float contactpoint[4] ; 
WhitespaceNode(current_idx=1632,parent_idx=1575)         
SingleLineCommentNode(current_idx=1633,parent_idx=1575) # contact point 
WhitespaceNode(current_idx=1634,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1635) float contactforce[4] ; 
WhitespaceNode(current_idx=1636,parent_idx=1575)         
SingleLineCommentNode(current_idx=1637,parent_idx=1575) # contact force 
WhitespaceNode(current_idx=1638,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1639) float contactfriction[4] ; 
WhitespaceNode(current_idx=1640,parent_idx=1575)      
SingleLineCommentNode(current_idx=1641,parent_idx=1575) # contact friction force 
WhitespaceNode(current_idx=1642,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1643) float contacttorque[4] ; 
WhitespaceNode(current_idx=1644,parent_idx=1575)        
SingleLineCommentNode(current_idx=1645,parent_idx=1575) # contact torque 
WhitespaceNode(current_idx=1646,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1647) float contactgap[4] ; 
WhitespaceNode(current_idx=1648,parent_idx=1575)           
SingleLineCommentNode(current_idx=1649,parent_idx=1575) # contact point in gap 
WhitespaceNode(current_idx=1650,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1651) float rangefinder[4] ; 
WhitespaceNode(current_idx=1652,parent_idx=1575)          
SingleLineCommentNode(current_idx=1653,parent_idx=1575) # rangefinder ray 
WhitespaceNode(current_idx=1654,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1655) float constraint[4] ; 
WhitespaceNode(current_idx=1656,parent_idx=1575)           
SingleLineCommentNode(current_idx=1657,parent_idx=1575) # constraint 
WhitespaceNode(current_idx=1658,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1659) float slidercrank[4] ; 
WhitespaceNode(current_idx=1660,parent_idx=1575)          
SingleLineCommentNode(current_idx=1661,parent_idx=1575) # slidercrank 
WhitespaceNode(current_idx=1662,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1663) float crankbroken[4] ; 
WhitespaceNode(current_idx=1664,parent_idx=1575)          
SingleLineCommentNode(current_idx=1665,parent_idx=1575) # used when crank must be stretched/broken 
WhitespaceNode(current_idx=1666,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1667) float frustum[4] ; 
WhitespaceNode(current_idx=1668,parent_idx=1575)              
SingleLineCommentNode(current_idx=1669,parent_idx=1575) # camera frustum 
WhitespaceNode(current_idx=1670,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1671) float bv[4] ; 
WhitespaceNode(current_idx=1672,parent_idx=1575)                   
SingleLineCommentNode(current_idx=1673,parent_idx=1575) # bounding volume 
WhitespaceNode(current_idx=1674,parent_idx=1575)     
PlaceHolderNode(parent_idx=1575,current_idx=1675) float bvactive[4] ; 
WhitespaceNode(current_idx=1676,parent_idx=1575)             
SingleLineCommentNode(current_idx=1677,parent_idx=1575) # active bounding volume 
WhitespaceNode(current_idx=1678,parent_idx=1575)   
WhitespaceNode(current_idx=1679,parent_idx=1330)  
WhitespaceNode(current_idx=1680,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1681) typedef <children> mjVisual ; 
PlaceHolderNode(parent_idx=1681,current_idx=1682) struct mjVisual_ 
PlaceHolderNode(parent_idx=15,current_idx=0) mjVisual 
WhitespaceNode(current_idx=1684,parent_idx=15)  
 
 
SingleLineCommentNode(current_idx=1685,parent_idx=15) # ---------------------------------- mjStatistic --------------------------------------------------- 
WhitespaceNode(current_idx=1686,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1687) struct mjStatistic_ 
<children> ; 
PlaceHolderNode(parent_idx=1687,current_idx=1688) { 
<children> } 
WhitespaceNode(current_idx=1689,parent_idx=1688)             
SingleLineCommentNode(current_idx=1690,parent_idx=1688) # model statistics (in qpos0) 
WhitespaceNode(current_idx=1691,parent_idx=1688)   
PlaceHolderNode(parent_idx=1688,current_idx=1692) mjtNum meaninertia ; 
WhitespaceNode(current_idx=1693,parent_idx=1688)              
SingleLineCommentNode(current_idx=1694,parent_idx=1688) # mean diagonal inertia 
WhitespaceNode(current_idx=1695,parent_idx=1688)   
PlaceHolderNode(parent_idx=1688,current_idx=1696) mjtNum meanmass ; 
WhitespaceNode(current_idx=1697,parent_idx=1688)                 
SingleLineCommentNode(current_idx=1698,parent_idx=1688) # mean body mass 
WhitespaceNode(current_idx=1699,parent_idx=1688)   
PlaceHolderNode(parent_idx=1688,current_idx=1700) mjtNum meansize ; 
WhitespaceNode(current_idx=1701,parent_idx=1688)                 
SingleLineCommentNode(current_idx=1702,parent_idx=1688) # mean body size 
WhitespaceNode(current_idx=1703,parent_idx=1688)   
PlaceHolderNode(parent_idx=1688,current_idx=1704) mjtNum extent ; 
WhitespaceNode(current_idx=1705,parent_idx=1688)                   
SingleLineCommentNode(current_idx=1706,parent_idx=1688) # spatial extent 
WhitespaceNode(current_idx=1707,parent_idx=1688)   
PlaceHolderNode(parent_idx=1688,current_idx=1708) mjtNum center[3] ; 
WhitespaceNode(current_idx=1709,parent_idx=1688)                
SingleLineCommentNode(current_idx=1710,parent_idx=1688) # center of model 
WhitespaceNode(current_idx=1711,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1712) typedef <children> mjStatistic ; 
PlaceHolderNode(parent_idx=1712,current_idx=1713) struct mjStatistic_ 
PlaceHolderNode(parent_idx=15,current_idx=0) mjStatistic 
WhitespaceNode(current_idx=1715,parent_idx=15)  
 
 
SingleLineCommentNode(current_idx=1716,parent_idx=15) # ---------------------------------- mjModel ------------------------------------------------------- 
WhitespaceNode(current_idx=1717,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=1718) struct mjModel_ 
<children> ; 
PlaceHolderNode(parent_idx=1718,current_idx=1719) { 
<children> } 
WhitespaceNode(current_idx=1720,parent_idx=1719)   
SingleLineCommentNode(current_idx=1721,parent_idx=1719) # ------------------------------- sizes 
WhitespaceNode(current_idx=1722,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=1723,parent_idx=1719) # sizes needed at mjModel construction 
WhitespaceNode(current_idx=1724,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1725) int nq ; 
WhitespaceNode(current_idx=1726,parent_idx=1719)                          
SingleLineCommentNode(current_idx=1727,parent_idx=1719) # number of generalized coordinates = dim(qpos) 
WhitespaceNode(current_idx=1728,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1729) int nv ; 
WhitespaceNode(current_idx=1730,parent_idx=1719)                          
SingleLineCommentNode(current_idx=1731,parent_idx=1719) # number of degrees of freedom = dim(qvel) 
WhitespaceNode(current_idx=1732,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1733) int nu ; 
WhitespaceNode(current_idx=1734,parent_idx=1719)                          
SingleLineCommentNode(current_idx=1735,parent_idx=1719) # number of actuators/controls = dim(ctrl) 
WhitespaceNode(current_idx=1736,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1737) int na ; 
WhitespaceNode(current_idx=1738,parent_idx=1719)                          
SingleLineCommentNode(current_idx=1739,parent_idx=1719) # number of activation states = dim(act) 
WhitespaceNode(current_idx=1740,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1741) int nbody ; 
WhitespaceNode(current_idx=1742,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1743,parent_idx=1719) # number of bodies 
WhitespaceNode(current_idx=1744,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1745) int nbvh ; 
WhitespaceNode(current_idx=1746,parent_idx=1719)                        
SingleLineCommentNode(current_idx=1747,parent_idx=1719) # number of total bounding volumes in all bodies 
WhitespaceNode(current_idx=1748,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1749) int nbvhstatic ; 
WhitespaceNode(current_idx=1750,parent_idx=1719)                  
SingleLineCommentNode(current_idx=1751,parent_idx=1719) # number of static bounding volumes (aabb stored in mjModel) 
WhitespaceNode(current_idx=1752,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1753) int nbvhdynamic ; 
WhitespaceNode(current_idx=1754,parent_idx=1719)                 
SingleLineCommentNode(current_idx=1755,parent_idx=1719) # number of dynamic bounding volumes (aabb stored in mjData) 
WhitespaceNode(current_idx=1756,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1757) int njnt ; 
WhitespaceNode(current_idx=1758,parent_idx=1719)                        
SingleLineCommentNode(current_idx=1759,parent_idx=1719) # number of joints 
WhitespaceNode(current_idx=1760,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1761) int ngeom ; 
WhitespaceNode(current_idx=1762,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1763,parent_idx=1719) # number of geoms 
WhitespaceNode(current_idx=1764,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1765) int nsite ; 
WhitespaceNode(current_idx=1766,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1767,parent_idx=1719) # number of sites 
WhitespaceNode(current_idx=1768,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1769) int ncam ; 
WhitespaceNode(current_idx=1770,parent_idx=1719)                        
SingleLineCommentNode(current_idx=1771,parent_idx=1719) # number of cameras 
WhitespaceNode(current_idx=1772,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1773) int nlight ; 
WhitespaceNode(current_idx=1774,parent_idx=1719)                      
SingleLineCommentNode(current_idx=1775,parent_idx=1719) # number of lights 
WhitespaceNode(current_idx=1776,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1777) int nflex ; 
WhitespaceNode(current_idx=1778,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1779,parent_idx=1719) # number of flexes 
WhitespaceNode(current_idx=1780,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1781) int nflexvert ; 
WhitespaceNode(current_idx=1782,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1783,parent_idx=1719) # number of vertices in all flexes 
WhitespaceNode(current_idx=1784,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1785) int nflexedge ; 
WhitespaceNode(current_idx=1786,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1787,parent_idx=1719) # number of edges in all flexes 
WhitespaceNode(current_idx=1788,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1789) int nflexelem ; 
WhitespaceNode(current_idx=1790,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1791,parent_idx=1719) # number of elements in all flexes 
WhitespaceNode(current_idx=1792,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1793) int nflexelemdata ; 
WhitespaceNode(current_idx=1794,parent_idx=1719)               
SingleLineCommentNode(current_idx=1795,parent_idx=1719) # number of element vertex ids in all flexes 
WhitespaceNode(current_idx=1796,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1797) int nflexelemedge ; 
WhitespaceNode(current_idx=1798,parent_idx=1719)               
SingleLineCommentNode(current_idx=1799,parent_idx=1719) # number of element edge ids in all flexes 
WhitespaceNode(current_idx=1800,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1801) int nflexshelldata ; 
WhitespaceNode(current_idx=1802,parent_idx=1719)              
SingleLineCommentNode(current_idx=1803,parent_idx=1719) # number of shell fragment vertex ids in all flexes 
WhitespaceNode(current_idx=1804,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1805) int nflexevpair ; 
WhitespaceNode(current_idx=1806,parent_idx=1719)                 
SingleLineCommentNode(current_idx=1807,parent_idx=1719) # number of element-vertex pairs in all flexes 
WhitespaceNode(current_idx=1808,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1809) int nflextexcoord ; 
WhitespaceNode(current_idx=1810,parent_idx=1719)               
SingleLineCommentNode(current_idx=1811,parent_idx=1719) # number of vertices with texture coordinates 
WhitespaceNode(current_idx=1812,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1813) int nmesh ; 
WhitespaceNode(current_idx=1814,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1815,parent_idx=1719) # number of meshes 
WhitespaceNode(current_idx=1816,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1817) int nmeshvert ; 
WhitespaceNode(current_idx=1818,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1819,parent_idx=1719) # number of vertices in all meshes 
WhitespaceNode(current_idx=1820,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1821) int nmeshnormal ; 
WhitespaceNode(current_idx=1822,parent_idx=1719)                 
SingleLineCommentNode(current_idx=1823,parent_idx=1719) # number of normals in all meshes 
WhitespaceNode(current_idx=1824,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1825) int nmeshtexcoord ; 
WhitespaceNode(current_idx=1826,parent_idx=1719)               
SingleLineCommentNode(current_idx=1827,parent_idx=1719) # number of texcoords in all meshes 
WhitespaceNode(current_idx=1828,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1829) int nmeshface ; 
WhitespaceNode(current_idx=1830,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1831,parent_idx=1719) # number of triangular faces in all meshes 
WhitespaceNode(current_idx=1832,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1833) int nmeshgraph ; 
WhitespaceNode(current_idx=1834,parent_idx=1719)                  
SingleLineCommentNode(current_idx=1835,parent_idx=1719) # number of ints in mesh auxiliary data 
WhitespaceNode(current_idx=1836,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1837) int nskin ; 
WhitespaceNode(current_idx=1838,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1839,parent_idx=1719) # number of skins 
WhitespaceNode(current_idx=1840,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1841) int nskinvert ; 
WhitespaceNode(current_idx=1842,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1843,parent_idx=1719) # number of vertices in all skins 
WhitespaceNode(current_idx=1844,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1845) int nskintexvert ; 
WhitespaceNode(current_idx=1846,parent_idx=1719)                
SingleLineCommentNode(current_idx=1847,parent_idx=1719) # number of vertiex with texcoords in all skins 
WhitespaceNode(current_idx=1848,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1849) int nskinface ; 
WhitespaceNode(current_idx=1850,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1851,parent_idx=1719) # number of triangular faces in all skins 
WhitespaceNode(current_idx=1852,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1853) int nskinbone ; 
WhitespaceNode(current_idx=1854,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1855,parent_idx=1719) # number of bones in all skins 
WhitespaceNode(current_idx=1856,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1857) int nskinbonevert ; 
WhitespaceNode(current_idx=1858,parent_idx=1719)               
SingleLineCommentNode(current_idx=1859,parent_idx=1719) # number of vertices in all skin bones 
WhitespaceNode(current_idx=1860,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1861) int nhfield ; 
WhitespaceNode(current_idx=1862,parent_idx=1719)                     
SingleLineCommentNode(current_idx=1863,parent_idx=1719) # number of heightfields 
WhitespaceNode(current_idx=1864,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1865) int nhfielddata ; 
WhitespaceNode(current_idx=1866,parent_idx=1719)                 
SingleLineCommentNode(current_idx=1867,parent_idx=1719) # number of data points in all heightfields 
WhitespaceNode(current_idx=1868,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1869) int ntex ; 
WhitespaceNode(current_idx=1870,parent_idx=1719)                        
SingleLineCommentNode(current_idx=1871,parent_idx=1719) # number of textures 
WhitespaceNode(current_idx=1872,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1873) int ntexdata ; 
WhitespaceNode(current_idx=1874,parent_idx=1719)                    
SingleLineCommentNode(current_idx=1875,parent_idx=1719) # number of bytes in texture rgb data 
WhitespaceNode(current_idx=1876,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1877) int nmat ; 
WhitespaceNode(current_idx=1878,parent_idx=1719)                        
SingleLineCommentNode(current_idx=1879,parent_idx=1719) # number of materials 
WhitespaceNode(current_idx=1880,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1881) int npair ; 
WhitespaceNode(current_idx=1882,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1883,parent_idx=1719) # number of predefined geom pairs 
WhitespaceNode(current_idx=1884,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1885) int nexclude ; 
WhitespaceNode(current_idx=1886,parent_idx=1719)                    
SingleLineCommentNode(current_idx=1887,parent_idx=1719) # number of excluded geom pairs 
WhitespaceNode(current_idx=1888,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1889) int neq ; 
WhitespaceNode(current_idx=1890,parent_idx=1719)                         
SingleLineCommentNode(current_idx=1891,parent_idx=1719) # number of equality constraints 
WhitespaceNode(current_idx=1892,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1893) int ntendon ; 
WhitespaceNode(current_idx=1894,parent_idx=1719)                     
SingleLineCommentNode(current_idx=1895,parent_idx=1719) # number of tendons 
WhitespaceNode(current_idx=1896,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1897) int nwrap ; 
WhitespaceNode(current_idx=1898,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1899,parent_idx=1719) # number of wrap objects in all tendon paths 
WhitespaceNode(current_idx=1900,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1901) int nsensor ; 
WhitespaceNode(current_idx=1902,parent_idx=1719)                     
SingleLineCommentNode(current_idx=1903,parent_idx=1719) # number of sensors 
WhitespaceNode(current_idx=1904,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1905) int nnumeric ; 
WhitespaceNode(current_idx=1906,parent_idx=1719)                    
SingleLineCommentNode(current_idx=1907,parent_idx=1719) # number of numeric custom fields 
WhitespaceNode(current_idx=1908,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1909) int nnumericdata ; 
WhitespaceNode(current_idx=1910,parent_idx=1719)                
SingleLineCommentNode(current_idx=1911,parent_idx=1719) # number of mjtNums in all numeric fields 
WhitespaceNode(current_idx=1912,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1913) int ntext ; 
WhitespaceNode(current_idx=1914,parent_idx=1719)                       
SingleLineCommentNode(current_idx=1915,parent_idx=1719) # number of text custom fields 
WhitespaceNode(current_idx=1916,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1917) int ntextdata ; 
WhitespaceNode(current_idx=1918,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1919,parent_idx=1719) # number of mjtBytes in all text fields 
WhitespaceNode(current_idx=1920,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1921) int ntuple ; 
WhitespaceNode(current_idx=1922,parent_idx=1719)                      
SingleLineCommentNode(current_idx=1923,parent_idx=1719) # number of tuple custom fields 
WhitespaceNode(current_idx=1924,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1925) int ntupledata ; 
WhitespaceNode(current_idx=1926,parent_idx=1719)                  
SingleLineCommentNode(current_idx=1927,parent_idx=1719) # number of objects in all tuple fields 
WhitespaceNode(current_idx=1928,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1929) int nkey ; 
WhitespaceNode(current_idx=1930,parent_idx=1719)                        
SingleLineCommentNode(current_idx=1931,parent_idx=1719) # number of keyframes 
WhitespaceNode(current_idx=1932,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1933) int nmocap ; 
WhitespaceNode(current_idx=1934,parent_idx=1719)                      
SingleLineCommentNode(current_idx=1935,parent_idx=1719) # number of mocap bodies 
WhitespaceNode(current_idx=1936,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1937) int nplugin ; 
WhitespaceNode(current_idx=1938,parent_idx=1719)                     
SingleLineCommentNode(current_idx=1939,parent_idx=1719) # number of plugin instances 
WhitespaceNode(current_idx=1940,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1941) int npluginattr ; 
WhitespaceNode(current_idx=1942,parent_idx=1719)                 
SingleLineCommentNode(current_idx=1943,parent_idx=1719) # number of chars in all plugin config attributes 
WhitespaceNode(current_idx=1944,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1945) int nuser_body ; 
WhitespaceNode(current_idx=1946,parent_idx=1719)                  
SingleLineCommentNode(current_idx=1947,parent_idx=1719) # number of mjtNums in body_user 
WhitespaceNode(current_idx=1948,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1949) int nuser_jnt ; 
WhitespaceNode(current_idx=1950,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1951,parent_idx=1719) # number of mjtNums in jnt_user 
WhitespaceNode(current_idx=1952,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1953) int nuser_geom ; 
WhitespaceNode(current_idx=1954,parent_idx=1719)                  
SingleLineCommentNode(current_idx=1955,parent_idx=1719) # number of mjtNums in geom_user 
WhitespaceNode(current_idx=1956,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1957) int nuser_site ; 
WhitespaceNode(current_idx=1958,parent_idx=1719)                  
SingleLineCommentNode(current_idx=1959,parent_idx=1719) # number of mjtNums in site_user 
WhitespaceNode(current_idx=1960,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1961) int nuser_cam ; 
WhitespaceNode(current_idx=1962,parent_idx=1719)                   
SingleLineCommentNode(current_idx=1963,parent_idx=1719) # number of mjtNums in cam_user 
WhitespaceNode(current_idx=1964,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1965) int nuser_tendon ; 
WhitespaceNode(current_idx=1966,parent_idx=1719)                
SingleLineCommentNode(current_idx=1967,parent_idx=1719) # number of mjtNums in tendon_user 
WhitespaceNode(current_idx=1968,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1969) int nuser_actuator ; 
WhitespaceNode(current_idx=1970,parent_idx=1719)              
SingleLineCommentNode(current_idx=1971,parent_idx=1719) # number of mjtNums in actuator_user 
WhitespaceNode(current_idx=1972,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1973) int nuser_sensor ; 
WhitespaceNode(current_idx=1974,parent_idx=1719)                
SingleLineCommentNode(current_idx=1975,parent_idx=1719) # number of mjtNums in sensor_user 
WhitespaceNode(current_idx=1976,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1977) int nnames ; 
WhitespaceNode(current_idx=1978,parent_idx=1719)                      
SingleLineCommentNode(current_idx=1979,parent_idx=1719) # number of chars in all names 
WhitespaceNode(current_idx=1980,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1981) int nnames_map ; 
WhitespaceNode(current_idx=1982,parent_idx=1719)                  
SingleLineCommentNode(current_idx=1983,parent_idx=1719) # number of slots in the names hash map 
WhitespaceNode(current_idx=1984,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1985) int npaths ; 
WhitespaceNode(current_idx=1986,parent_idx=1719)                      
SingleLineCommentNode(current_idx=1987,parent_idx=1719) # number of chars in all paths 
WhitespaceNode(current_idx=1988,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=1989,parent_idx=1719) # sizes set after mjModel construction (only affect mjData) 
WhitespaceNode(current_idx=1990,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1991) int nM ; 
WhitespaceNode(current_idx=1992,parent_idx=1719)                          
SingleLineCommentNode(current_idx=1993,parent_idx=1719) # number of non-zeros in sparse inertia matrix 
WhitespaceNode(current_idx=1994,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1995) int nB ; 
WhitespaceNode(current_idx=1996,parent_idx=1719)                          
SingleLineCommentNode(current_idx=1997,parent_idx=1719) # number of non-zeros in sparse body-dof matrix 
WhitespaceNode(current_idx=1998,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=1999) int nC ; 
WhitespaceNode(current_idx=2000,parent_idx=1719)                          
SingleLineCommentNode(current_idx=2001,parent_idx=1719) # number of non-zeros in sparse reduced dof-dof matrix 
WhitespaceNode(current_idx=2002,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2003) int nD ; 
WhitespaceNode(current_idx=2004,parent_idx=1719)                          
SingleLineCommentNode(current_idx=2005,parent_idx=1719) # number of non-zeros in sparse dof-dof matrix 
WhitespaceNode(current_idx=2006,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2007) int ntree ; 
WhitespaceNode(current_idx=2008,parent_idx=1719)                       
SingleLineCommentNode(current_idx=2009,parent_idx=1719) # number of kinematic trees under world body 
WhitespaceNode(current_idx=2010,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2011) int ngravcomp ; 
WhitespaceNode(current_idx=2012,parent_idx=1719)                   
SingleLineCommentNode(current_idx=2013,parent_idx=1719) # number of bodies with nonzero gravcomp 
WhitespaceNode(current_idx=2014,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2015) int nemax ; 
WhitespaceNode(current_idx=2016,parent_idx=1719)                       
SingleLineCommentNode(current_idx=2017,parent_idx=1719) # number of potential equality-constraint rows 
WhitespaceNode(current_idx=2018,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2019) int njmax ; 
WhitespaceNode(current_idx=2020,parent_idx=1719)                       
SingleLineCommentNode(current_idx=2021,parent_idx=1719) # number of available rows in constraint Jacobian 
WhitespaceNode(current_idx=2022,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2023) int nconmax ; 
WhitespaceNode(current_idx=2024,parent_idx=1719)                     
SingleLineCommentNode(current_idx=2025,parent_idx=1719) # number of potential contacts in contact list 
WhitespaceNode(current_idx=2026,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2027) int nuserdata ; 
WhitespaceNode(current_idx=2028,parent_idx=1719)                   
SingleLineCommentNode(current_idx=2029,parent_idx=1719) # number of mjtNums reserved for the user 
WhitespaceNode(current_idx=2030,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2031) int nsensordata ; 
WhitespaceNode(current_idx=2032,parent_idx=1719)                 
SingleLineCommentNode(current_idx=2033,parent_idx=1719) # number of mjtNums in sensor data vector 
WhitespaceNode(current_idx=2034,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2035) int npluginstate ; 
WhitespaceNode(current_idx=2036,parent_idx=1719)                
SingleLineCommentNode(current_idx=2037,parent_idx=1719) # number of mjtNums in plugin state vector 
WhitespaceNode(current_idx=2038,parent_idx=1719)  
  
PlaceHolderNode(parent_idx=1719,current_idx=2039) size_t narena ; 
WhitespaceNode(current_idx=2040,parent_idx=1719)                   
SingleLineCommentNode(current_idx=2041,parent_idx=1719) # number of bytes in the mjData arena (inclusive of stack) 
WhitespaceNode(current_idx=2042,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2043) size_t nbuffer ; 
WhitespaceNode(current_idx=2044,parent_idx=1719)                  
SingleLineCommentNode(current_idx=2045,parent_idx=1719) # number of bytes in buffer 
WhitespaceNode(current_idx=2046,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2047,parent_idx=1719) # ------------------------------- options and statistics 
WhitespaceNode(current_idx=2048,parent_idx=1719)  
  
PlaceHolderNode(parent_idx=1719,current_idx=2049) mjOption opt ; 
WhitespaceNode(current_idx=2050,parent_idx=1719)                    
SingleLineCommentNode(current_idx=2051,parent_idx=1719) # physics options 
WhitespaceNode(current_idx=2052,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2053) mjVisual vis ; 
WhitespaceNode(current_idx=2054,parent_idx=1719)                    
SingleLineCommentNode(current_idx=2055,parent_idx=1719) # visualization options 
WhitespaceNode(current_idx=2056,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2057) mjStatistic stat ; 
WhitespaceNode(current_idx=2058,parent_idx=1719)                
SingleLineCommentNode(current_idx=2059,parent_idx=1719) # model statistics 
WhitespaceNode(current_idx=2060,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2061,parent_idx=1719) # ------------------------------- buffers 
WhitespaceNode(current_idx=2062,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2063,parent_idx=1719) # main buffer 
WhitespaceNode(current_idx=2064,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2065) void*     buffer ; 
WhitespaceNode(current_idx=2066,parent_idx=1719)                
SingleLineCommentNode(current_idx=2067,parent_idx=1719) # main buffer ;  all pointers point in it    (nbuffer) 
WhitespaceNode(current_idx=2068,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2069,parent_idx=1719) # default generalized coordinates 
WhitespaceNode(current_idx=2070,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2071) mjtNum*   qpos0 ; 
WhitespaceNode(current_idx=2072,parent_idx=1719)                 
SingleLineCommentNode(current_idx=2073,parent_idx=1719) # qpos values at default pose              (nq x 1) 
WhitespaceNode(current_idx=2074,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2075) mjtNum*   qpos_spring ; 
WhitespaceNode(current_idx=2076,parent_idx=1719)           
SingleLineCommentNode(current_idx=2077,parent_idx=1719) # reference pose for springs               (nq x 1) 
WhitespaceNode(current_idx=2078,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2079,parent_idx=1719) # bodies 
WhitespaceNode(current_idx=2080,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2081) int*      body_parentid ; 
WhitespaceNode(current_idx=2082,parent_idx=1719)         
SingleLineCommentNode(current_idx=2083,parent_idx=1719) # id of body's parent                      (nbody x 1) 
WhitespaceNode(current_idx=2084,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2085) int*      body_rootid ; 
WhitespaceNode(current_idx=2086,parent_idx=1719)           
SingleLineCommentNode(current_idx=2087,parent_idx=1719) # id of root above body                    (nbody x 1) 
WhitespaceNode(current_idx=2088,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2089) int*      body_weldid ; 
WhitespaceNode(current_idx=2090,parent_idx=1719)           
SingleLineCommentNode(current_idx=2091,parent_idx=1719) # id of body that this body is welded to   (nbody x 1) 
WhitespaceNode(current_idx=2092,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2093) int*      body_mocapid ; 
WhitespaceNode(current_idx=2094,parent_idx=1719)          
SingleLineCommentNode(current_idx=2095,parent_idx=1719) # id of mocap data ;  -1: none               (nbody x 1) 
WhitespaceNode(current_idx=2096,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2097) int*      body_jntnum ; 
WhitespaceNode(current_idx=2098,parent_idx=1719)           
SingleLineCommentNode(current_idx=2099,parent_idx=1719) # number of joints for this body           (nbody x 1) 
WhitespaceNode(current_idx=2100,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2101) int*      body_jntadr ; 
WhitespaceNode(current_idx=2102,parent_idx=1719)           
SingleLineCommentNode(current_idx=2103,parent_idx=1719) # start addr of joints ;  -1: no joints      (nbody x 1) 
WhitespaceNode(current_idx=2104,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2105) int*      body_dofnum ; 
WhitespaceNode(current_idx=2106,parent_idx=1719)           
SingleLineCommentNode(current_idx=2107,parent_idx=1719) # number of motion degrees of freedom      (nbody x 1) 
WhitespaceNode(current_idx=2108,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2109) int*      body_dofadr ; 
WhitespaceNode(current_idx=2110,parent_idx=1719)           
SingleLineCommentNode(current_idx=2111,parent_idx=1719) # start addr of dofs ;  -1: no dofs          (nbody x 1) 
WhitespaceNode(current_idx=2112,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2113) int*      body_treeid ; 
WhitespaceNode(current_idx=2114,parent_idx=1719)           
SingleLineCommentNode(current_idx=2115,parent_idx=1719) # id of body's kinematic tree ;  -1: static  (nbody x 1) 
WhitespaceNode(current_idx=2116,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2117) int*      body_geomnum ; 
WhitespaceNode(current_idx=2118,parent_idx=1719)          
SingleLineCommentNode(current_idx=2119,parent_idx=1719) # number of geoms                          (nbody x 1) 
WhitespaceNode(current_idx=2120,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2121) int*      body_geomadr ; 
WhitespaceNode(current_idx=2122,parent_idx=1719)          
SingleLineCommentNode(current_idx=2123,parent_idx=1719) # start addr of geoms ;  -1: no geoms        (nbody x 1) 
WhitespaceNode(current_idx=2124,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2125) mjtByte*  body_simple ; 
WhitespaceNode(current_idx=2126,parent_idx=1719)           
SingleLineCommentNode(current_idx=2127,parent_idx=1719) # 1: diag M ;  2: diag M ,  sliders only       (nbody x 1) 
WhitespaceNode(current_idx=2128,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2129) mjtByte*  body_sameframe ; 
WhitespaceNode(current_idx=2130,parent_idx=1719)        
SingleLineCommentNode(current_idx=2131,parent_idx=1719) # same frame as inertia (mjtSameframe)     (nbody x 1) 
WhitespaceNode(current_idx=2132,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2133) mjtNum*   body_pos ; 
WhitespaceNode(current_idx=2134,parent_idx=1719)              
SingleLineCommentNode(current_idx=2135,parent_idx=1719) # position offset rel. to parent body      (nbody x 3) 
WhitespaceNode(current_idx=2136,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2137) mjtNum*   body_quat ; 
WhitespaceNode(current_idx=2138,parent_idx=1719)             
SingleLineCommentNode(current_idx=2139,parent_idx=1719) # orientation offset rel. to parent body   (nbody x 4) 
WhitespaceNode(current_idx=2140,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2141) mjtNum*   body_ipos ; 
WhitespaceNode(current_idx=2142,parent_idx=1719)             
SingleLineCommentNode(current_idx=2143,parent_idx=1719) # local position of center of mass         (nbody x 3) 
WhitespaceNode(current_idx=2144,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2145) mjtNum*   body_iquat ; 
WhitespaceNode(current_idx=2146,parent_idx=1719)            
SingleLineCommentNode(current_idx=2147,parent_idx=1719) # local orientation of inertia ellipsoid   (nbody x 4) 
WhitespaceNode(current_idx=2148,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2149) mjtNum*   body_mass ; 
WhitespaceNode(current_idx=2150,parent_idx=1719)             
SingleLineCommentNode(current_idx=2151,parent_idx=1719) # mass                                     (nbody x 1) 
WhitespaceNode(current_idx=2152,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2153) mjtNum*   body_subtreemass ; 
WhitespaceNode(current_idx=2154,parent_idx=1719)      
SingleLineCommentNode(current_idx=2155,parent_idx=1719) # mass of subtree starting at this body    (nbody x 1) 
WhitespaceNode(current_idx=2156,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2157) mjtNum*   body_inertia ; 
WhitespaceNode(current_idx=2158,parent_idx=1719)          
SingleLineCommentNode(current_idx=2159,parent_idx=1719) # diagonal inertia in ipos/iquat frame     (nbody x 3) 
WhitespaceNode(current_idx=2160,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2161) mjtNum*   body_invweight0 ; 
WhitespaceNode(current_idx=2162,parent_idx=1719)       
SingleLineCommentNode(current_idx=2163,parent_idx=1719) # mean inv inert in qpos0 (trn ,  rot)       (nbody x 2) 
WhitespaceNode(current_idx=2164,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2165) mjtNum*   body_gravcomp ; 
WhitespaceNode(current_idx=2166,parent_idx=1719)         
SingleLineCommentNode(current_idx=2167,parent_idx=1719) # antigravity force ,  units of body weight  (nbody x 1) 
WhitespaceNode(current_idx=2168,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2169) mjtNum*   body_margin ; 
WhitespaceNode(current_idx=2170,parent_idx=1719)           
SingleLineCommentNode(current_idx=2171,parent_idx=1719) # MAX over all geom margins                (nbody x 1) 
WhitespaceNode(current_idx=2172,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2173) mjtNum*   body_user ; 
WhitespaceNode(current_idx=2174,parent_idx=1719)             
SingleLineCommentNode(current_idx=2175,parent_idx=1719) # user data                                (nbody x nuser_body) 
WhitespaceNode(current_idx=2176,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2177) int*      body_plugin ; 
WhitespaceNode(current_idx=2178,parent_idx=1719)           
SingleLineCommentNode(current_idx=2179,parent_idx=1719) # plugin instance id ;  -1: not in use       (nbody x 1) 
WhitespaceNode(current_idx=2180,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2181) int*      body_contype ; 
WhitespaceNode(current_idx=2182,parent_idx=1719)          
SingleLineCommentNode(current_idx=2183,parent_idx=1719) # OR over all geom contypes                (nbody x 1) 
WhitespaceNode(current_idx=2184,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2185) int*      body_conaffinity ; 
WhitespaceNode(current_idx=2186,parent_idx=1719)      
SingleLineCommentNode(current_idx=2187,parent_idx=1719) # OR over all geom conaffinities           (nbody x 1) 
WhitespaceNode(current_idx=2188,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2189) int*      body_bvhadr ; 
WhitespaceNode(current_idx=2190,parent_idx=1719)           
SingleLineCommentNode(current_idx=2191,parent_idx=1719) # address of bvh root                      (nbody x 1) 
WhitespaceNode(current_idx=2192,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2193) int*      body_bvhnum ; 
WhitespaceNode(current_idx=2194,parent_idx=1719)           
SingleLineCommentNode(current_idx=2195,parent_idx=1719) # number of bounding volumes               (nbody x 1) 
WhitespaceNode(current_idx=2196,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2197,parent_idx=1719) # bounding volume hierarchy 
WhitespaceNode(current_idx=2198,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2199) int*      bvh_depth ; 
WhitespaceNode(current_idx=2200,parent_idx=1719)             
SingleLineCommentNode(current_idx=2201,parent_idx=1719) # depth in the bounding volume hierarchy   (nbvh x 1) 
WhitespaceNode(current_idx=2202,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2203) int*      bvh_child ; 
WhitespaceNode(current_idx=2204,parent_idx=1719)             
SingleLineCommentNode(current_idx=2205,parent_idx=1719) # left and right children in tree          (nbvh x 2) 
WhitespaceNode(current_idx=2206,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2207) int*      bvh_nodeid ; 
WhitespaceNode(current_idx=2208,parent_idx=1719)            
SingleLineCommentNode(current_idx=2209,parent_idx=1719) # geom or elem id of node ;  -1: non-leaf    (nbvh x 1) 
WhitespaceNode(current_idx=2210,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2211) mjtNum*   bvh_aabb ; 
WhitespaceNode(current_idx=2212,parent_idx=1719)              
SingleLineCommentNode(current_idx=2213,parent_idx=1719) # local bounding box (center ,  size)        (nbvhstatic x 6) 
WhitespaceNode(current_idx=2214,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2215,parent_idx=1719) # joints 
WhitespaceNode(current_idx=2216,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2217) int*      jnt_type ; 
WhitespaceNode(current_idx=2218,parent_idx=1719)              
SingleLineCommentNode(current_idx=2219,parent_idx=1719) # type of joint (mjtJoint)                 (njnt x 1) 
WhitespaceNode(current_idx=2220,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2221) int*      jnt_qposadr ; 
WhitespaceNode(current_idx=2222,parent_idx=1719)           
SingleLineCommentNode(current_idx=2223,parent_idx=1719) # start addr in 'qpos' for joint's data    (njnt x 1) 
WhitespaceNode(current_idx=2224,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2225) int*      jnt_dofadr ; 
WhitespaceNode(current_idx=2226,parent_idx=1719)            
SingleLineCommentNode(current_idx=2227,parent_idx=1719) # start addr in 'qvel' for joint's data    (njnt x 1) 
WhitespaceNode(current_idx=2228,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2229) int*      jnt_bodyid ; 
WhitespaceNode(current_idx=2230,parent_idx=1719)            
SingleLineCommentNode(current_idx=2231,parent_idx=1719) # id of joint's body                       (njnt x 1) 
WhitespaceNode(current_idx=2232,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2233) int*      jnt_group ; 
WhitespaceNode(current_idx=2234,parent_idx=1719)             
SingleLineCommentNode(current_idx=2235,parent_idx=1719) # group for visibility                     (njnt x 1) 
WhitespaceNode(current_idx=2236,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2237) mjtByte*  jnt_limited ; 
WhitespaceNode(current_idx=2238,parent_idx=1719)           
SingleLineCommentNode(current_idx=2239,parent_idx=1719) # does joint have limits                   (njnt x 1) 
WhitespaceNode(current_idx=2240,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2241) mjtByte*  jnt_actfrclimited ; 
WhitespaceNode(current_idx=2242,parent_idx=1719)     
SingleLineCommentNode(current_idx=2243,parent_idx=1719) # does joint have actuator force limits    (njnt x 1) 
WhitespaceNode(current_idx=2244,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2245) mjtByte*  jnt_actgravcomp ; 
WhitespaceNode(current_idx=2246,parent_idx=1719)       
SingleLineCommentNode(current_idx=2247,parent_idx=1719) # is gravcomp force applied via actuators  (njnt x 1) 
WhitespaceNode(current_idx=2248,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2249) mjtNum*   jnt_solref ; 
WhitespaceNode(current_idx=2250,parent_idx=1719)            
SingleLineCommentNode(current_idx=2251,parent_idx=1719) # constraint solver reference: limit       (njnt x mjNREF) 
WhitespaceNode(current_idx=2252,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2253) mjtNum*   jnt_solimp ; 
WhitespaceNode(current_idx=2254,parent_idx=1719)            
SingleLineCommentNode(current_idx=2255,parent_idx=1719) # constraint solver impedance: limit       (njnt x mjNIMP) 
WhitespaceNode(current_idx=2256,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2257) mjtNum*   jnt_pos ; 
WhitespaceNode(current_idx=2258,parent_idx=1719)               
SingleLineCommentNode(current_idx=2259,parent_idx=1719) # local anchor position                    (njnt x 3) 
WhitespaceNode(current_idx=2260,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2261) mjtNum*   jnt_axis ; 
WhitespaceNode(current_idx=2262,parent_idx=1719)              
SingleLineCommentNode(current_idx=2263,parent_idx=1719) # local joint axis                         (njnt x 3) 
WhitespaceNode(current_idx=2264,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2265) mjtNum*   jnt_stiffness ; 
WhitespaceNode(current_idx=2266,parent_idx=1719)         
SingleLineCommentNode(current_idx=2267,parent_idx=1719) # stiffness coefficient                    (njnt x 1) 
WhitespaceNode(current_idx=2268,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2269) mjtNum*   jnt_range ; 
WhitespaceNode(current_idx=2270,parent_idx=1719)             
SingleLineCommentNode(current_idx=2271,parent_idx=1719) # joint limits                             (njnt x 2) 
WhitespaceNode(current_idx=2272,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2273) mjtNum*   jnt_actfrcrange ; 
WhitespaceNode(current_idx=2274,parent_idx=1719)       
SingleLineCommentNode(current_idx=2275,parent_idx=1719) # range of total actuator force            (njnt x 2) 
WhitespaceNode(current_idx=2276,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2277) mjtNum*   jnt_margin ; 
WhitespaceNode(current_idx=2278,parent_idx=1719)            
SingleLineCommentNode(current_idx=2279,parent_idx=1719) # min distance for limit detection         (njnt x 1) 
WhitespaceNode(current_idx=2280,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2281) mjtNum*   jnt_user ; 
WhitespaceNode(current_idx=2282,parent_idx=1719)              
SingleLineCommentNode(current_idx=2283,parent_idx=1719) # user data                                (njnt x nuser_jnt) 
WhitespaceNode(current_idx=2284,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2285,parent_idx=1719) # dofs 
WhitespaceNode(current_idx=2286,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2287) int*      dof_bodyid ; 
WhitespaceNode(current_idx=2288,parent_idx=1719)            
SingleLineCommentNode(current_idx=2289,parent_idx=1719) # id of dof's body                         (nv x 1) 
WhitespaceNode(current_idx=2290,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2291) int*      dof_jntid ; 
WhitespaceNode(current_idx=2292,parent_idx=1719)             
SingleLineCommentNode(current_idx=2293,parent_idx=1719) # id of dof's joint                        (nv x 1) 
WhitespaceNode(current_idx=2294,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2295) int*      dof_parentid ; 
WhitespaceNode(current_idx=2296,parent_idx=1719)          
SingleLineCommentNode(current_idx=2297,parent_idx=1719) # id of dof's parent ;  -1: none             (nv x 1) 
WhitespaceNode(current_idx=2298,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2299) int*      dof_treeid ; 
WhitespaceNode(current_idx=2300,parent_idx=1719)            
SingleLineCommentNode(current_idx=2301,parent_idx=1719) # id of dof's kinematic tree               (nv x 1) 
WhitespaceNode(current_idx=2302,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2303) int*      dof_Madr ; 
WhitespaceNode(current_idx=2304,parent_idx=1719)              
SingleLineCommentNode(current_idx=2305,parent_idx=1719) # dof address in M-diagonal                (nv x 1) 
WhitespaceNode(current_idx=2306,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2307) int*      dof_simplenum ; 
WhitespaceNode(current_idx=2308,parent_idx=1719)         
SingleLineCommentNode(current_idx=2309,parent_idx=1719) # number of consecutive simple dofs        (nv x 1) 
WhitespaceNode(current_idx=2310,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2311) mjtNum*   dof_solref ; 
WhitespaceNode(current_idx=2312,parent_idx=1719)            
SingleLineCommentNode(current_idx=2313,parent_idx=1719) # constraint solver reference:frictionloss (nv x mjNREF) 
WhitespaceNode(current_idx=2314,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2315) mjtNum*   dof_solimp ; 
WhitespaceNode(current_idx=2316,parent_idx=1719)            
SingleLineCommentNode(current_idx=2317,parent_idx=1719) # constraint solver impedance:frictionloss (nv x mjNIMP) 
WhitespaceNode(current_idx=2318,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2319) mjtNum*   dof_frictionloss ; 
WhitespaceNode(current_idx=2320,parent_idx=1719)      
SingleLineCommentNode(current_idx=2321,parent_idx=1719) # dof friction loss                        (nv x 1) 
WhitespaceNode(current_idx=2322,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2323) mjtNum*   dof_armature ; 
WhitespaceNode(current_idx=2324,parent_idx=1719)          
SingleLineCommentNode(current_idx=2325,parent_idx=1719) # dof armature inertia/mass                (nv x 1) 
WhitespaceNode(current_idx=2326,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2327) mjtNum*   dof_damping ; 
WhitespaceNode(current_idx=2328,parent_idx=1719)           
SingleLineCommentNode(current_idx=2329,parent_idx=1719) # damping coefficient                      (nv x 1) 
WhitespaceNode(current_idx=2330,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2331) mjtNum*   dof_invweight0 ; 
WhitespaceNode(current_idx=2332,parent_idx=1719)        
SingleLineCommentNode(current_idx=2333,parent_idx=1719) # diag. inverse inertia in qpos0           (nv x 1) 
WhitespaceNode(current_idx=2334,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2335) mjtNum*   dof_M0 ; 
WhitespaceNode(current_idx=2336,parent_idx=1719)                
SingleLineCommentNode(current_idx=2337,parent_idx=1719) # diag. inertia in qpos0                   (nv x 1) 
WhitespaceNode(current_idx=2338,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2339,parent_idx=1719) # geoms 
WhitespaceNode(current_idx=2340,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2341) int*      geom_type ; 
WhitespaceNode(current_idx=2342,parent_idx=1719)             
SingleLineCommentNode(current_idx=2343,parent_idx=1719) # geometric type (mjtGeom)                 (ngeom x 1) 
WhitespaceNode(current_idx=2344,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2345) int*      geom_contype ; 
WhitespaceNode(current_idx=2346,parent_idx=1719)          
SingleLineCommentNode(current_idx=2347,parent_idx=1719) # geom contact type                        (ngeom x 1) 
WhitespaceNode(current_idx=2348,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2349) int*      geom_conaffinity ; 
WhitespaceNode(current_idx=2350,parent_idx=1719)      
SingleLineCommentNode(current_idx=2351,parent_idx=1719) # geom contact affinity                    (ngeom x 1) 
WhitespaceNode(current_idx=2352,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2353) int*      geom_condim ; 
WhitespaceNode(current_idx=2354,parent_idx=1719)           
SingleLineCommentNode(current_idx=2355,parent_idx=1719) # contact dimensionality (1 ,  3 ,  4 ,  6)      (ngeom x 1) 
WhitespaceNode(current_idx=2356,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2357) int*      geom_bodyid ; 
WhitespaceNode(current_idx=2358,parent_idx=1719)           
SingleLineCommentNode(current_idx=2359,parent_idx=1719) # id of geom's body                        (ngeom x 1) 
WhitespaceNode(current_idx=2360,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2361) int*      geom_dataid ; 
WhitespaceNode(current_idx=2362,parent_idx=1719)           
SingleLineCommentNode(current_idx=2363,parent_idx=1719) # id of geom's mesh/hfield ;  -1: none       (ngeom x 1) 
WhitespaceNode(current_idx=2364,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2365) int*      geom_matid ; 
WhitespaceNode(current_idx=2366,parent_idx=1719)            
SingleLineCommentNode(current_idx=2367,parent_idx=1719) # material id for rendering ;  -1: none      (ngeom x 1) 
WhitespaceNode(current_idx=2368,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2369) int*      geom_group ; 
WhitespaceNode(current_idx=2370,parent_idx=1719)            
SingleLineCommentNode(current_idx=2371,parent_idx=1719) # group for visibility                     (ngeom x 1) 
WhitespaceNode(current_idx=2372,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2373) int*      geom_priority ; 
WhitespaceNode(current_idx=2374,parent_idx=1719)         
SingleLineCommentNode(current_idx=2375,parent_idx=1719) # geom contact priority                    (ngeom x 1) 
WhitespaceNode(current_idx=2376,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2377) int*      geom_plugin ; 
WhitespaceNode(current_idx=2378,parent_idx=1719)           
SingleLineCommentNode(current_idx=2379,parent_idx=1719) # plugin instance id ;  -1: not in use       (ngeom x 1) 
WhitespaceNode(current_idx=2380,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2381) mjtByte*  geom_sameframe ; 
WhitespaceNode(current_idx=2382,parent_idx=1719)        
SingleLineCommentNode(current_idx=2383,parent_idx=1719) # same frame as body (mjtSameframe)        (ngeom x 1) 
WhitespaceNode(current_idx=2384,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2385) mjtNum*   geom_solmix ; 
WhitespaceNode(current_idx=2386,parent_idx=1719)           
SingleLineCommentNode(current_idx=2387,parent_idx=1719) # mixing coef for solref/imp in geom pair  (ngeom x 1) 
WhitespaceNode(current_idx=2388,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2389) mjtNum*   geom_solref ; 
WhitespaceNode(current_idx=2390,parent_idx=1719)           
SingleLineCommentNode(current_idx=2391,parent_idx=1719) # constraint solver reference: contact     (ngeom x mjNREF) 
WhitespaceNode(current_idx=2392,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2393) mjtNum*   geom_solimp ; 
WhitespaceNode(current_idx=2394,parent_idx=1719)           
SingleLineCommentNode(current_idx=2395,parent_idx=1719) # constraint solver impedance: contact     (ngeom x mjNIMP) 
WhitespaceNode(current_idx=2396,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2397) mjtNum*   geom_size ; 
WhitespaceNode(current_idx=2398,parent_idx=1719)             
SingleLineCommentNode(current_idx=2399,parent_idx=1719) # geom-specific size parameters            (ngeom x 3) 
WhitespaceNode(current_idx=2400,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2401) mjtNum*   geom_aabb ; 
WhitespaceNode(current_idx=2402,parent_idx=1719)             
SingleLineCommentNode(current_idx=2403,parent_idx=1719) # bounding box ,  (center ,  size)             (ngeom x 6) 
WhitespaceNode(current_idx=2404,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2405) mjtNum*   geom_rbound ; 
WhitespaceNode(current_idx=2406,parent_idx=1719)           
SingleLineCommentNode(current_idx=2407,parent_idx=1719) # radius of bounding sphere                (ngeom x 1) 
WhitespaceNode(current_idx=2408,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2409) mjtNum*   geom_pos ; 
WhitespaceNode(current_idx=2410,parent_idx=1719)              
SingleLineCommentNode(current_idx=2411,parent_idx=1719) # local position offset rel. to body       (ngeom x 3) 
WhitespaceNode(current_idx=2412,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2413) mjtNum*   geom_quat ; 
WhitespaceNode(current_idx=2414,parent_idx=1719)             
SingleLineCommentNode(current_idx=2415,parent_idx=1719) # local orientation offset rel. to body    (ngeom x 4) 
WhitespaceNode(current_idx=2416,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2417) mjtNum*   geom_friction ; 
WhitespaceNode(current_idx=2418,parent_idx=1719)         
SingleLineCommentNode(current_idx=2419,parent_idx=1719) # friction for (slide ,  spin ,  roll)         (ngeom x 3) 
WhitespaceNode(current_idx=2420,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2421) mjtNum*   geom_margin ; 
WhitespaceNode(current_idx=2422,parent_idx=1719)           
SingleLineCommentNode(current_idx=2423,parent_idx=1719) # detect contact if dist<margin            (ngeom x 1) 
WhitespaceNode(current_idx=2424,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2425) mjtNum*   geom_gap ; 
WhitespaceNode(current_idx=2426,parent_idx=1719)              
SingleLineCommentNode(current_idx=2427,parent_idx=1719) # include in solver if dist<margin-gap     (ngeom x 1) 
WhitespaceNode(current_idx=2428,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2429) mjtNum*   geom_fluid ; 
WhitespaceNode(current_idx=2430,parent_idx=1719)            
SingleLineCommentNode(current_idx=2431,parent_idx=1719) # fluid interaction parameters             (ngeom x mjNFLUID) 
WhitespaceNode(current_idx=2432,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2433) mjtNum*   geom_user ; 
WhitespaceNode(current_idx=2434,parent_idx=1719)             
SingleLineCommentNode(current_idx=2435,parent_idx=1719) # user data                                (ngeom x nuser_geom) 
WhitespaceNode(current_idx=2436,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2437) float*    geom_rgba ; 
WhitespaceNode(current_idx=2438,parent_idx=1719)             
SingleLineCommentNode(current_idx=2439,parent_idx=1719) # rgba when material is omitted            (ngeom x 4) 
WhitespaceNode(current_idx=2440,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2441,parent_idx=1719) # sites 
WhitespaceNode(current_idx=2442,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2443) int*      site_type ; 
WhitespaceNode(current_idx=2444,parent_idx=1719)             
SingleLineCommentNode(current_idx=2445,parent_idx=1719) # geom type for rendering (mjtGeom)        (nsite x 1) 
WhitespaceNode(current_idx=2446,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2447) int*      site_bodyid ; 
WhitespaceNode(current_idx=2448,parent_idx=1719)           
SingleLineCommentNode(current_idx=2449,parent_idx=1719) # id of site's body                        (nsite x 1) 
WhitespaceNode(current_idx=2450,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2451) int*      site_matid ; 
WhitespaceNode(current_idx=2452,parent_idx=1719)            
SingleLineCommentNode(current_idx=2453,parent_idx=1719) # material id for rendering ;  -1: none      (nsite x 1) 
WhitespaceNode(current_idx=2454,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2455) int*      site_group ; 
WhitespaceNode(current_idx=2456,parent_idx=1719)            
SingleLineCommentNode(current_idx=2457,parent_idx=1719) # group for visibility                     (nsite x 1) 
WhitespaceNode(current_idx=2458,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2459) mjtByte*  site_sameframe ; 
WhitespaceNode(current_idx=2460,parent_idx=1719)        
SingleLineCommentNode(current_idx=2461,parent_idx=1719) # same frame as body (mjtSameframe)        (nsite x 1) 
WhitespaceNode(current_idx=2462,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2463) mjtNum*   site_size ; 
WhitespaceNode(current_idx=2464,parent_idx=1719)             
SingleLineCommentNode(current_idx=2465,parent_idx=1719) # geom size for rendering                  (nsite x 3) 
WhitespaceNode(current_idx=2466,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2467) mjtNum*   site_pos ; 
WhitespaceNode(current_idx=2468,parent_idx=1719)              
SingleLineCommentNode(current_idx=2469,parent_idx=1719) # local position offset rel. to body       (nsite x 3) 
WhitespaceNode(current_idx=2470,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2471) mjtNum*   site_quat ; 
WhitespaceNode(current_idx=2472,parent_idx=1719)             
SingleLineCommentNode(current_idx=2473,parent_idx=1719) # local orientation offset rel. to body    (nsite x 4) 
WhitespaceNode(current_idx=2474,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2475) mjtNum*   site_user ; 
WhitespaceNode(current_idx=2476,parent_idx=1719)             
SingleLineCommentNode(current_idx=2477,parent_idx=1719) # user data                                (nsite x nuser_site) 
WhitespaceNode(current_idx=2478,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2479) float*    site_rgba ; 
WhitespaceNode(current_idx=2480,parent_idx=1719)             
SingleLineCommentNode(current_idx=2481,parent_idx=1719) # rgba when material is omitted            (nsite x 4) 
WhitespaceNode(current_idx=2482,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2483,parent_idx=1719) # cameras 
WhitespaceNode(current_idx=2484,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2485) int*      cam_mode ; 
WhitespaceNode(current_idx=2486,parent_idx=1719)              
SingleLineCommentNode(current_idx=2487,parent_idx=1719) # camera tracking mode (mjtCamLight)       (ncam x 1) 
WhitespaceNode(current_idx=2488,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2489) int*      cam_bodyid ; 
WhitespaceNode(current_idx=2490,parent_idx=1719)            
SingleLineCommentNode(current_idx=2491,parent_idx=1719) # id of camera's body                      (ncam x 1) 
WhitespaceNode(current_idx=2492,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2493) int*      cam_targetbodyid ; 
WhitespaceNode(current_idx=2494,parent_idx=1719)      
SingleLineCommentNode(current_idx=2495,parent_idx=1719) # id of targeted body ;  -1: none            (ncam x 1) 
WhitespaceNode(current_idx=2496,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2497) mjtNum*   cam_pos ; 
WhitespaceNode(current_idx=2498,parent_idx=1719)               
SingleLineCommentNode(current_idx=2499,parent_idx=1719) # position rel. to body frame              (ncam x 3) 
WhitespaceNode(current_idx=2500,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2501) mjtNum*   cam_quat ; 
WhitespaceNode(current_idx=2502,parent_idx=1719)              
SingleLineCommentNode(current_idx=2503,parent_idx=1719) # orientation rel. to body frame           (ncam x 4) 
WhitespaceNode(current_idx=2504,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2505) mjtNum*   cam_poscom0 ; 
WhitespaceNode(current_idx=2506,parent_idx=1719)           
SingleLineCommentNode(current_idx=2507,parent_idx=1719) # global position rel. to sub-com in qpos0 (ncam x 3) 
WhitespaceNode(current_idx=2508,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2509) mjtNum*   cam_pos0 ; 
WhitespaceNode(current_idx=2510,parent_idx=1719)              
SingleLineCommentNode(current_idx=2511,parent_idx=1719) # global position rel. to body in qpos0    (ncam x 3) 
WhitespaceNode(current_idx=2512,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2513) mjtNum*   cam_mat0 ; 
WhitespaceNode(current_idx=2514,parent_idx=1719)              
SingleLineCommentNode(current_idx=2515,parent_idx=1719) # global orientation in qpos0              (ncam x 9) 
WhitespaceNode(current_idx=2516,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2517) int*      cam_orthographic ; 
WhitespaceNode(current_idx=2518,parent_idx=1719)      
SingleLineCommentNode(current_idx=2519,parent_idx=1719) # orthographic camera ;  0: no ,  1: yes       (ncam x 1) 
WhitespaceNode(current_idx=2520,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2521) mjtNum*   cam_fovy ; 
WhitespaceNode(current_idx=2522,parent_idx=1719)              
SingleLineCommentNode(current_idx=2523,parent_idx=1719) # y field-of-view (ortho ? len : deg)      (ncam x 1) 
WhitespaceNode(current_idx=2524,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2525) mjtNum*   cam_ipd ; 
WhitespaceNode(current_idx=2526,parent_idx=1719)               
SingleLineCommentNode(current_idx=2527,parent_idx=1719) # inter-pupilary distance                  (ncam x 1) 
WhitespaceNode(current_idx=2528,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2529) int*      cam_resolution ; 
WhitespaceNode(current_idx=2530,parent_idx=1719)        
SingleLineCommentNode(current_idx=2531,parent_idx=1719) # resolution: pixels [width ,  height]       (ncam x 2) 
WhitespaceNode(current_idx=2532,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2533) float*    cam_sensorsize ; 
WhitespaceNode(current_idx=2534,parent_idx=1719)        
SingleLineCommentNode(current_idx=2535,parent_idx=1719) # sensor size: length [width ,  height]      (ncam x 2) 
WhitespaceNode(current_idx=2536,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2537) float*    cam_intrinsic ; 
WhitespaceNode(current_idx=2538,parent_idx=1719)         
SingleLineCommentNode(current_idx=2539,parent_idx=1719) # [focal length ;  principal point]          (ncam x 4) 
WhitespaceNode(current_idx=2540,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2541) mjtNum*   cam_user ; 
WhitespaceNode(current_idx=2542,parent_idx=1719)              
SingleLineCommentNode(current_idx=2543,parent_idx=1719) # user data                                (ncam x nuser_cam) 
WhitespaceNode(current_idx=2544,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2545,parent_idx=1719) # lights 
WhitespaceNode(current_idx=2546,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2547) int*      light_mode ; 
WhitespaceNode(current_idx=2548,parent_idx=1719)            
SingleLineCommentNode(current_idx=2549,parent_idx=1719) # light tracking mode (mjtCamLight)        (nlight x 1) 
WhitespaceNode(current_idx=2550,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2551) int*      light_bodyid ; 
WhitespaceNode(current_idx=2552,parent_idx=1719)          
SingleLineCommentNode(current_idx=2553,parent_idx=1719) # id of light's body                       (nlight x 1) 
WhitespaceNode(current_idx=2554,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2555) int*      light_targetbodyid ; 
WhitespaceNode(current_idx=2556,parent_idx=1719)    
SingleLineCommentNode(current_idx=2557,parent_idx=1719) # id of targeted body ;  -1: none            (nlight x 1) 
WhitespaceNode(current_idx=2558,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2559) mjtByte*  light_directional ; 
WhitespaceNode(current_idx=2560,parent_idx=1719)     
SingleLineCommentNode(current_idx=2561,parent_idx=1719) # directional light                        (nlight x 1) 
WhitespaceNode(current_idx=2562,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2563) mjtByte*  light_castshadow ; 
WhitespaceNode(current_idx=2564,parent_idx=1719)      
SingleLineCommentNode(current_idx=2565,parent_idx=1719) # does light cast shadows                  (nlight x 1) 
WhitespaceNode(current_idx=2566,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2567) float*    light_bulbradius ; 
WhitespaceNode(current_idx=2568,parent_idx=1719)      
SingleLineCommentNode(current_idx=2569,parent_idx=1719) # light radius for soft shadows            (nlight x 1) 
WhitespaceNode(current_idx=2570,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2571) mjtByte*  light_active ; 
WhitespaceNode(current_idx=2572,parent_idx=1719)          
SingleLineCommentNode(current_idx=2573,parent_idx=1719) # is light on                              (nlight x 1) 
WhitespaceNode(current_idx=2574,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2575) mjtNum*   light_pos ; 
WhitespaceNode(current_idx=2576,parent_idx=1719)             
SingleLineCommentNode(current_idx=2577,parent_idx=1719) # position rel. to body frame              (nlight x 3) 
WhitespaceNode(current_idx=2578,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2579) mjtNum*   light_dir ; 
WhitespaceNode(current_idx=2580,parent_idx=1719)             
SingleLineCommentNode(current_idx=2581,parent_idx=1719) # direction rel. to body frame             (nlight x 3) 
WhitespaceNode(current_idx=2582,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2583) mjtNum*   light_poscom0 ; 
WhitespaceNode(current_idx=2584,parent_idx=1719)         
SingleLineCommentNode(current_idx=2585,parent_idx=1719) # global position rel. to sub-com in qpos0 (nlight x 3) 
WhitespaceNode(current_idx=2586,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2587) mjtNum*   light_pos0 ; 
WhitespaceNode(current_idx=2588,parent_idx=1719)            
SingleLineCommentNode(current_idx=2589,parent_idx=1719) # global position rel. to body in qpos0    (nlight x 3) 
WhitespaceNode(current_idx=2590,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2591) mjtNum*   light_dir0 ; 
WhitespaceNode(current_idx=2592,parent_idx=1719)            
SingleLineCommentNode(current_idx=2593,parent_idx=1719) # global direction in qpos0                (nlight x 3) 
WhitespaceNode(current_idx=2594,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2595) float*    light_attenuation ; 
WhitespaceNode(current_idx=2596,parent_idx=1719)     
SingleLineCommentNode(current_idx=2597,parent_idx=1719) # OpenGL attenuation (quadratic model)     (nlight x 3) 
WhitespaceNode(current_idx=2598,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2599) float*    light_cutoff ; 
WhitespaceNode(current_idx=2600,parent_idx=1719)          
SingleLineCommentNode(current_idx=2601,parent_idx=1719) # OpenGL cutoff                            (nlight x 1) 
WhitespaceNode(current_idx=2602,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2603) float*    light_exponent ; 
WhitespaceNode(current_idx=2604,parent_idx=1719)        
SingleLineCommentNode(current_idx=2605,parent_idx=1719) # OpenGL exponent                          (nlight x 1) 
WhitespaceNode(current_idx=2606,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2607) float*    light_ambient ; 
WhitespaceNode(current_idx=2608,parent_idx=1719)         
SingleLineCommentNode(current_idx=2609,parent_idx=1719) # ambient rgb (alpha=1)                    (nlight x 3) 
WhitespaceNode(current_idx=2610,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2611) float*    light_diffuse ; 
WhitespaceNode(current_idx=2612,parent_idx=1719)         
SingleLineCommentNode(current_idx=2613,parent_idx=1719) # diffuse rgb (alpha=1)                    (nlight x 3) 
WhitespaceNode(current_idx=2614,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2615) float*    light_specular ; 
WhitespaceNode(current_idx=2616,parent_idx=1719)        
SingleLineCommentNode(current_idx=2617,parent_idx=1719) # specular rgb (alpha=1)                   (nlight x 3) 
WhitespaceNode(current_idx=2618,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2619,parent_idx=1719) # flexes: contact properties 
WhitespaceNode(current_idx=2620,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2621) int*      flex_contype ; 
WhitespaceNode(current_idx=2622,parent_idx=1719)          
SingleLineCommentNode(current_idx=2623,parent_idx=1719) # flex contact type                        (nflex x 1) 
WhitespaceNode(current_idx=2624,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2625) int*      flex_conaffinity ; 
WhitespaceNode(current_idx=2626,parent_idx=1719)      
SingleLineCommentNode(current_idx=2627,parent_idx=1719) # flex contact affinity                    (nflex x 1) 
WhitespaceNode(current_idx=2628,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2629) int*      flex_condim ; 
WhitespaceNode(current_idx=2630,parent_idx=1719)           
SingleLineCommentNode(current_idx=2631,parent_idx=1719) # contact dimensionality (1 ,  3 ,  4 ,  6)      (nflex x 1) 
WhitespaceNode(current_idx=2632,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2633) int*      flex_priority ; 
WhitespaceNode(current_idx=2634,parent_idx=1719)         
SingleLineCommentNode(current_idx=2635,parent_idx=1719) # flex contact priority                    (nflex x 1) 
WhitespaceNode(current_idx=2636,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2637) mjtNum*   flex_solmix ; 
WhitespaceNode(current_idx=2638,parent_idx=1719)           
SingleLineCommentNode(current_idx=2639,parent_idx=1719) # mix coef for solref/imp in contact pair  (nflex x 1) 
WhitespaceNode(current_idx=2640,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2641) mjtNum*   flex_solref ; 
WhitespaceNode(current_idx=2642,parent_idx=1719)           
SingleLineCommentNode(current_idx=2643,parent_idx=1719) # constraint solver reference: contact     (nflex x mjNREF) 
WhitespaceNode(current_idx=2644,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2645) mjtNum*   flex_solimp ; 
WhitespaceNode(current_idx=2646,parent_idx=1719)           
SingleLineCommentNode(current_idx=2647,parent_idx=1719) # constraint solver impedance: contact     (nflex x mjNIMP) 
WhitespaceNode(current_idx=2648,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2649) mjtNum*   flex_friction ; 
WhitespaceNode(current_idx=2650,parent_idx=1719)         
SingleLineCommentNode(current_idx=2651,parent_idx=1719) # friction for (slide ,  spin ,  roll)         (nflex x 3) 
WhitespaceNode(current_idx=2652,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2653) mjtNum*   flex_margin ; 
WhitespaceNode(current_idx=2654,parent_idx=1719)           
SingleLineCommentNode(current_idx=2655,parent_idx=1719) # detect contact if dist<margin            (nflex x 1) 
WhitespaceNode(current_idx=2656,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2657) mjtNum*   flex_gap ; 
WhitespaceNode(current_idx=2658,parent_idx=1719)              
SingleLineCommentNode(current_idx=2659,parent_idx=1719) # include in solver if dist<margin-gap     (nflex x 1) 
WhitespaceNode(current_idx=2660,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2661) mjtByte*  flex_internal ; 
WhitespaceNode(current_idx=2662,parent_idx=1719)         
SingleLineCommentNode(current_idx=2663,parent_idx=1719) # internal flex collision enabled          (nflex x 1) 
WhitespaceNode(current_idx=2664,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2665) int*      flex_selfcollide ; 
WhitespaceNode(current_idx=2666,parent_idx=1719)      
SingleLineCommentNode(current_idx=2667,parent_idx=1719) # self collision mode (mjtFlexSelf)        (nflex x 1) 
WhitespaceNode(current_idx=2668,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2669) int*      flex_activelayers ; 
WhitespaceNode(current_idx=2670,parent_idx=1719)     
SingleLineCommentNode(current_idx=2671,parent_idx=1719) # number of active element layers ,  3D only (nflex x 1) 
WhitespaceNode(current_idx=2672,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2673,parent_idx=1719) # flexes: other properties 
WhitespaceNode(current_idx=2674,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2675) int*      flex_dim ; 
WhitespaceNode(current_idx=2676,parent_idx=1719)              
SingleLineCommentNode(current_idx=2677,parent_idx=1719) # 1: lines ,  2: triangles ,  3: tetrahedra    (nflex x 1) 
WhitespaceNode(current_idx=2678,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2679) int*      flex_matid ; 
WhitespaceNode(current_idx=2680,parent_idx=1719)            
SingleLineCommentNode(current_idx=2681,parent_idx=1719) # material id for rendering                (nflex x 1) 
WhitespaceNode(current_idx=2682,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2683) int*      flex_group ; 
WhitespaceNode(current_idx=2684,parent_idx=1719)            
SingleLineCommentNode(current_idx=2685,parent_idx=1719) # group for visibility                     (nflex x 1) 
WhitespaceNode(current_idx=2686,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2687) int*      flex_vertadr ; 
WhitespaceNode(current_idx=2688,parent_idx=1719)          
SingleLineCommentNode(current_idx=2689,parent_idx=1719) # first vertex address                     (nflex x 1) 
WhitespaceNode(current_idx=2690,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2691) int*      flex_vertnum ; 
WhitespaceNode(current_idx=2692,parent_idx=1719)          
SingleLineCommentNode(current_idx=2693,parent_idx=1719) # number of vertices                       (nflex x 1) 
WhitespaceNode(current_idx=2694,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2695) int*      flex_edgeadr ; 
WhitespaceNode(current_idx=2696,parent_idx=1719)          
SingleLineCommentNode(current_idx=2697,parent_idx=1719) # first edge address                       (nflex x 1) 
WhitespaceNode(current_idx=2698,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2699) int*      flex_edgenum ; 
WhitespaceNode(current_idx=2700,parent_idx=1719)          
SingleLineCommentNode(current_idx=2701,parent_idx=1719) # number of edges                          (nflex x 1) 
WhitespaceNode(current_idx=2702,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2703) int*      flex_elemadr ; 
WhitespaceNode(current_idx=2704,parent_idx=1719)          
SingleLineCommentNode(current_idx=2705,parent_idx=1719) # first element address                    (nflex x 1) 
WhitespaceNode(current_idx=2706,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2707) int*      flex_elemnum ; 
WhitespaceNode(current_idx=2708,parent_idx=1719)          
SingleLineCommentNode(current_idx=2709,parent_idx=1719) # number of elements                       (nflex x 1) 
WhitespaceNode(current_idx=2710,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2711) int*      flex_elemdataadr ; 
WhitespaceNode(current_idx=2712,parent_idx=1719)      
SingleLineCommentNode(current_idx=2713,parent_idx=1719) # first element vertex id address          (nflex x 1) 
WhitespaceNode(current_idx=2714,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2715) int*      flex_elemedgeadr ; 
WhitespaceNode(current_idx=2716,parent_idx=1719)      
SingleLineCommentNode(current_idx=2717,parent_idx=1719) # first element edge id address            (nflex x 1) 
WhitespaceNode(current_idx=2718,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2719) int*      flex_shellnum ; 
WhitespaceNode(current_idx=2720,parent_idx=1719)         
SingleLineCommentNode(current_idx=2721,parent_idx=1719) # number of shells                         (nflex x 1) 
WhitespaceNode(current_idx=2722,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2723) int*      flex_shelldataadr ; 
WhitespaceNode(current_idx=2724,parent_idx=1719)     
SingleLineCommentNode(current_idx=2725,parent_idx=1719) # first shell data address                 (nflex x 1) 
WhitespaceNode(current_idx=2726,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2727) int*      flex_evpairadr ; 
WhitespaceNode(current_idx=2728,parent_idx=1719)        
SingleLineCommentNode(current_idx=2729,parent_idx=1719) # first evpair address                     (nflex x 1) 
WhitespaceNode(current_idx=2730,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2731) int*      flex_evpairnum ; 
WhitespaceNode(current_idx=2732,parent_idx=1719)        
SingleLineCommentNode(current_idx=2733,parent_idx=1719) # number of evpairs                        (nflex x 1) 
WhitespaceNode(current_idx=2734,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2735) int*      flex_texcoordadr ; 
WhitespaceNode(current_idx=2736,parent_idx=1719)      
SingleLineCommentNode(current_idx=2737,parent_idx=1719) # address in flex_texcoord ;  -1: none       (nflex x 1) 
WhitespaceNode(current_idx=2738,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2739) int*      flex_vertbodyid ; 
WhitespaceNode(current_idx=2740,parent_idx=1719)       
SingleLineCommentNode(current_idx=2741,parent_idx=1719) # vertex body ids                          (nflexvert x 1) 
WhitespaceNode(current_idx=2742,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2743) int*      flex_edge ; 
WhitespaceNode(current_idx=2744,parent_idx=1719)             
SingleLineCommentNode(current_idx=2745,parent_idx=1719) # edge vertex ids (2 per edge)             (nflexedge x 2) 
WhitespaceNode(current_idx=2746,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2747) int*      flex_elem ; 
WhitespaceNode(current_idx=2748,parent_idx=1719)             
SingleLineCommentNode(current_idx=2749,parent_idx=1719) # element vertex ids (dim+1 per elem)      (nflexelemdata x 1) 
WhitespaceNode(current_idx=2750,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2751) int*      flex_elemedge ; 
WhitespaceNode(current_idx=2752,parent_idx=1719)         
SingleLineCommentNode(current_idx=2753,parent_idx=1719) # element edge ids                         (nflexelemedge x 1) 
WhitespaceNode(current_idx=2754,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2755) int*      flex_elemlayer ; 
WhitespaceNode(current_idx=2756,parent_idx=1719)        
SingleLineCommentNode(current_idx=2757,parent_idx=1719) # element distance from surface ,  3D only   (nflexelem x 1) 
WhitespaceNode(current_idx=2758,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2759) int*      flex_shell ; 
WhitespaceNode(current_idx=2760,parent_idx=1719)            
SingleLineCommentNode(current_idx=2761,parent_idx=1719) # shell fragment vertex ids (dim per frag) (nflexshelldata x 1) 
WhitespaceNode(current_idx=2762,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2763) int*      flex_evpair ; 
WhitespaceNode(current_idx=2764,parent_idx=1719)           
SingleLineCommentNode(current_idx=2765,parent_idx=1719) # (element ,  vertex) collision pairs        (nflexevpair x 2) 
WhitespaceNode(current_idx=2766,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2767) mjtNum*   flex_vert ; 
WhitespaceNode(current_idx=2768,parent_idx=1719)             
SingleLineCommentNode(current_idx=2769,parent_idx=1719) # vertex positions in local body frames    (nflexvert x 3) 
WhitespaceNode(current_idx=2770,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2771) mjtNum*   flex_xvert0 ; 
WhitespaceNode(current_idx=2772,parent_idx=1719)           
SingleLineCommentNode(current_idx=2773,parent_idx=1719) # Cartesian vertex positions in qpos0      (nflexvert x 3) 
WhitespaceNode(current_idx=2774,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2775) mjtNum*   flexedge_length0 ; 
WhitespaceNode(current_idx=2776,parent_idx=1719)      
SingleLineCommentNode(current_idx=2777,parent_idx=1719) # edge lengths in qpos0                    (nflexedge x 1) 
WhitespaceNode(current_idx=2778,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2779) mjtNum*   flexedge_invweight0 ; 
WhitespaceNode(current_idx=2780,parent_idx=1719)   
SingleLineCommentNode(current_idx=2781,parent_idx=1719) # edge inv. weight in qpos0                (nflexedge x 1) 
WhitespaceNode(current_idx=2782,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2783) mjtNum*   flex_radius ; 
WhitespaceNode(current_idx=2784,parent_idx=1719)           
SingleLineCommentNode(current_idx=2785,parent_idx=1719) # radius around primitive element          (nflex x 1) 
WhitespaceNode(current_idx=2786,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2787) mjtNum*   flex_stiffness ; 
WhitespaceNode(current_idx=2788,parent_idx=1719)        
SingleLineCommentNode(current_idx=2789,parent_idx=1719) # finite element stiffness matrix          (nflexelem x 21) 
WhitespaceNode(current_idx=2790,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2791) mjtNum*   flex_damping ; 
WhitespaceNode(current_idx=2792,parent_idx=1719)          
SingleLineCommentNode(current_idx=2793,parent_idx=1719) # Rayleigh's damping coefficient           (nflex x 1) 
WhitespaceNode(current_idx=2794,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2795) mjtNum*   flex_edgestiffness ; 
WhitespaceNode(current_idx=2796,parent_idx=1719)    
SingleLineCommentNode(current_idx=2797,parent_idx=1719) # edge stiffness                           (nflex x 1) 
WhitespaceNode(current_idx=2798,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2799) mjtNum*   flex_edgedamping ; 
WhitespaceNode(current_idx=2800,parent_idx=1719)      
SingleLineCommentNode(current_idx=2801,parent_idx=1719) # edge damping                             (nflex x 1) 
WhitespaceNode(current_idx=2802,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2803) mjtByte*  flex_edgeequality ; 
WhitespaceNode(current_idx=2804,parent_idx=1719)     
SingleLineCommentNode(current_idx=2805,parent_idx=1719) # is edge equality constraint defined      (nflex x 1) 
WhitespaceNode(current_idx=2806,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2807) mjtByte*  flex_rigid ; 
WhitespaceNode(current_idx=2808,parent_idx=1719)            
SingleLineCommentNode(current_idx=2809,parent_idx=1719) # are all verices in the same body         (nflex x 1) 
WhitespaceNode(current_idx=2810,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2811) mjtByte*  flexedge_rigid ; 
WhitespaceNode(current_idx=2812,parent_idx=1719)        
SingleLineCommentNode(current_idx=2813,parent_idx=1719) # are both edge vertices in same body      (nflexedge x 1) 
WhitespaceNode(current_idx=2814,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2815) mjtByte*  flex_centered ; 
WhitespaceNode(current_idx=2816,parent_idx=1719)         
SingleLineCommentNode(current_idx=2817,parent_idx=1719) # are all vertex coordinates (0 , 0 , 0)       (nflex x 1) 
WhitespaceNode(current_idx=2818,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2819) mjtByte*  flex_flatskin ; 
WhitespaceNode(current_idx=2820,parent_idx=1719)         
SingleLineCommentNode(current_idx=2821,parent_idx=1719) # render flex skin with flat shading       (nflex x 1) 
WhitespaceNode(current_idx=2822,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2823) int*      flex_bvhadr ; 
WhitespaceNode(current_idx=2824,parent_idx=1719)           
SingleLineCommentNode(current_idx=2825,parent_idx=1719) # address of bvh root ;  -1: no bvh          (nflex x 1) 
WhitespaceNode(current_idx=2826,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2827) int*      flex_bvhnum ; 
WhitespaceNode(current_idx=2828,parent_idx=1719)           
SingleLineCommentNode(current_idx=2829,parent_idx=1719) # number of bounding volumes               (nflex x 1) 
WhitespaceNode(current_idx=2830,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2831) float*    flex_rgba ; 
WhitespaceNode(current_idx=2832,parent_idx=1719)             
SingleLineCommentNode(current_idx=2833,parent_idx=1719) # rgba when material is omitted            (nflex x 4) 
WhitespaceNode(current_idx=2834,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2835) float*    flex_texcoord ; 
WhitespaceNode(current_idx=2836,parent_idx=1719)         
SingleLineCommentNode(current_idx=2837,parent_idx=1719) # vertex texture coordinates               (nflextexcoord x 2) 
WhitespaceNode(current_idx=2838,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2839,parent_idx=1719) # meshes 
WhitespaceNode(current_idx=2840,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2841) int*      mesh_vertadr ; 
WhitespaceNode(current_idx=2842,parent_idx=1719)          
SingleLineCommentNode(current_idx=2843,parent_idx=1719) # first vertex address                     (nmesh x 1) 
WhitespaceNode(current_idx=2844,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2845) int*      mesh_vertnum ; 
WhitespaceNode(current_idx=2846,parent_idx=1719)          
SingleLineCommentNode(current_idx=2847,parent_idx=1719) # number of vertices                       (nmesh x 1) 
WhitespaceNode(current_idx=2848,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2849) int*      mesh_faceadr ; 
WhitespaceNode(current_idx=2850,parent_idx=1719)          
SingleLineCommentNode(current_idx=2851,parent_idx=1719) # first face address                       (nmesh x 1) 
WhitespaceNode(current_idx=2852,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2853) int*      mesh_facenum ; 
WhitespaceNode(current_idx=2854,parent_idx=1719)          
SingleLineCommentNode(current_idx=2855,parent_idx=1719) # number of faces                          (nmesh x 1) 
WhitespaceNode(current_idx=2856,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2857) int*      mesh_bvhadr ; 
WhitespaceNode(current_idx=2858,parent_idx=1719)           
SingleLineCommentNode(current_idx=2859,parent_idx=1719) # address of bvh root                      (nmesh x 1) 
WhitespaceNode(current_idx=2860,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2861) int*      mesh_bvhnum ; 
WhitespaceNode(current_idx=2862,parent_idx=1719)           
SingleLineCommentNode(current_idx=2863,parent_idx=1719) # number of bvh                            (nmesh x 1) 
WhitespaceNode(current_idx=2864,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2865) int*      mesh_normaladr ; 
WhitespaceNode(current_idx=2866,parent_idx=1719)        
SingleLineCommentNode(current_idx=2867,parent_idx=1719) # first normal address                     (nmesh x 1) 
WhitespaceNode(current_idx=2868,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2869) int*      mesh_normalnum ; 
WhitespaceNode(current_idx=2870,parent_idx=1719)        
SingleLineCommentNode(current_idx=2871,parent_idx=1719) # number of normals                        (nmesh x 1) 
WhitespaceNode(current_idx=2872,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2873) int*      mesh_texcoordadr ; 
WhitespaceNode(current_idx=2874,parent_idx=1719)      
SingleLineCommentNode(current_idx=2875,parent_idx=1719) # texcoord data address ;  -1: no texcoord   (nmesh x 1) 
WhitespaceNode(current_idx=2876,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2877) int*      mesh_texcoordnum ; 
WhitespaceNode(current_idx=2878,parent_idx=1719)      
SingleLineCommentNode(current_idx=2879,parent_idx=1719) # number of texcoord                       (nmesh x 1) 
WhitespaceNode(current_idx=2880,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2881) int*      mesh_graphadr ; 
WhitespaceNode(current_idx=2882,parent_idx=1719)         
SingleLineCommentNode(current_idx=2883,parent_idx=1719) # graph data address ;  -1: no graph         (nmesh x 1) 
WhitespaceNode(current_idx=2884,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2885) float*    mesh_vert ; 
WhitespaceNode(current_idx=2886,parent_idx=1719)             
SingleLineCommentNode(current_idx=2887,parent_idx=1719) # vertex positions for all meshes          (nmeshvert x 3) 
WhitespaceNode(current_idx=2888,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2889) float*    mesh_normal ; 
WhitespaceNode(current_idx=2890,parent_idx=1719)           
SingleLineCommentNode(current_idx=2891,parent_idx=1719) # normals for all meshes                   (nmeshnormal x 3) 
WhitespaceNode(current_idx=2892,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2893) float*    mesh_texcoord ; 
WhitespaceNode(current_idx=2894,parent_idx=1719)         
SingleLineCommentNode(current_idx=2895,parent_idx=1719) # vertex texcoords for all meshes          (nmeshtexcoord x 2) 
WhitespaceNode(current_idx=2896,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2897) int*      mesh_face ; 
WhitespaceNode(current_idx=2898,parent_idx=1719)             
SingleLineCommentNode(current_idx=2899,parent_idx=1719) # vertex face data                         (nmeshface x 3) 
WhitespaceNode(current_idx=2900,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2901) int*      mesh_facenormal ; 
WhitespaceNode(current_idx=2902,parent_idx=1719)       
SingleLineCommentNode(current_idx=2903,parent_idx=1719) # normal face data                         (nmeshface x 3) 
WhitespaceNode(current_idx=2904,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2905) int*      mesh_facetexcoord ; 
WhitespaceNode(current_idx=2906,parent_idx=1719)     
SingleLineCommentNode(current_idx=2907,parent_idx=1719) # texture face data                        (nmeshface x 3) 
WhitespaceNode(current_idx=2908,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2909) int*      mesh_graph ; 
WhitespaceNode(current_idx=2910,parent_idx=1719)            
SingleLineCommentNode(current_idx=2911,parent_idx=1719) # convex graph data                        (nmeshgraph x 1) 
WhitespaceNode(current_idx=2912,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2913) mjtNum*   mesh_scale ; 
WhitespaceNode(current_idx=2914,parent_idx=1719)            
SingleLineCommentNode(current_idx=2915,parent_idx=1719) # scaling applied to asset vertices        (nmesh x 3) 
WhitespaceNode(current_idx=2916,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2917) mjtNum*   mesh_pos ; 
WhitespaceNode(current_idx=2918,parent_idx=1719)              
SingleLineCommentNode(current_idx=2919,parent_idx=1719) # translation applied to asset vertices    (nmesh x 3) 
WhitespaceNode(current_idx=2920,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2921) mjtNum*   mesh_quat ; 
WhitespaceNode(current_idx=2922,parent_idx=1719)             
SingleLineCommentNode(current_idx=2923,parent_idx=1719) # rotation applied to asset vertices       (nmesh x 4) 
WhitespaceNode(current_idx=2924,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2925) int*      mesh_pathadr ; 
WhitespaceNode(current_idx=2926,parent_idx=1719)          
SingleLineCommentNode(current_idx=2927,parent_idx=1719) # address of asset path for mesh ;  -1: none (nmesh x 1) 
WhitespaceNode(current_idx=2928,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=2929,parent_idx=1719) # skins 
WhitespaceNode(current_idx=2930,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2931) int*      skin_matid ; 
WhitespaceNode(current_idx=2932,parent_idx=1719)            
SingleLineCommentNode(current_idx=2933,parent_idx=1719) # skin material id ;  -1: none               (nskin x 1) 
WhitespaceNode(current_idx=2934,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2935) int*      skin_group ; 
WhitespaceNode(current_idx=2936,parent_idx=1719)            
SingleLineCommentNode(current_idx=2937,parent_idx=1719) # group for visibility                     (nskin x 1) 
WhitespaceNode(current_idx=2938,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2939) float*    skin_rgba ; 
WhitespaceNode(current_idx=2940,parent_idx=1719)             
SingleLineCommentNode(current_idx=2941,parent_idx=1719) # skin rgba                                (nskin x 4) 
WhitespaceNode(current_idx=2942,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2943) float*    skin_inflate ; 
WhitespaceNode(current_idx=2944,parent_idx=1719)          
SingleLineCommentNode(current_idx=2945,parent_idx=1719) # inflate skin in normal direction         (nskin x 1) 
WhitespaceNode(current_idx=2946,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2947) int*      skin_vertadr ; 
WhitespaceNode(current_idx=2948,parent_idx=1719)          
SingleLineCommentNode(current_idx=2949,parent_idx=1719) # first vertex address                     (nskin x 1) 
WhitespaceNode(current_idx=2950,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2951) int*      skin_vertnum ; 
WhitespaceNode(current_idx=2952,parent_idx=1719)          
SingleLineCommentNode(current_idx=2953,parent_idx=1719) # number of vertices                       (nskin x 1) 
WhitespaceNode(current_idx=2954,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2955) int*      skin_texcoordadr ; 
WhitespaceNode(current_idx=2956,parent_idx=1719)      
SingleLineCommentNode(current_idx=2957,parent_idx=1719) # texcoord data address ;  -1: no texcoord   (nskin x 1) 
WhitespaceNode(current_idx=2958,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2959) int*      skin_faceadr ; 
WhitespaceNode(current_idx=2960,parent_idx=1719)          
SingleLineCommentNode(current_idx=2961,parent_idx=1719) # first face address                       (nskin x 1) 
WhitespaceNode(current_idx=2962,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2963) int*      skin_facenum ; 
WhitespaceNode(current_idx=2964,parent_idx=1719)          
SingleLineCommentNode(current_idx=2965,parent_idx=1719) # number of faces                          (nskin x 1) 
WhitespaceNode(current_idx=2966,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2967) int*      skin_boneadr ; 
WhitespaceNode(current_idx=2968,parent_idx=1719)          
SingleLineCommentNode(current_idx=2969,parent_idx=1719) # first bone in skin                       (nskin x 1) 
WhitespaceNode(current_idx=2970,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2971) int*      skin_bonenum ; 
WhitespaceNode(current_idx=2972,parent_idx=1719)          
SingleLineCommentNode(current_idx=2973,parent_idx=1719) # number of bones in skin                  (nskin x 1) 
WhitespaceNode(current_idx=2974,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2975) float*    skin_vert ; 
WhitespaceNode(current_idx=2976,parent_idx=1719)             
SingleLineCommentNode(current_idx=2977,parent_idx=1719) # vertex positions for all skin meshes     (nskinvert x 3) 
WhitespaceNode(current_idx=2978,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2979) float*    skin_texcoord ; 
WhitespaceNode(current_idx=2980,parent_idx=1719)         
SingleLineCommentNode(current_idx=2981,parent_idx=1719) # vertex texcoords for all skin meshes     (nskintexvert x 2) 
WhitespaceNode(current_idx=2982,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2983) int*      skin_face ; 
WhitespaceNode(current_idx=2984,parent_idx=1719)             
SingleLineCommentNode(current_idx=2985,parent_idx=1719) # triangle faces for all skin meshes       (nskinface x 3) 
WhitespaceNode(current_idx=2986,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2987) int*      skin_bonevertadr ; 
WhitespaceNode(current_idx=2988,parent_idx=1719)      
SingleLineCommentNode(current_idx=2989,parent_idx=1719) # first vertex in each bone                (nskinbone x 1) 
WhitespaceNode(current_idx=2990,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2991) int*      skin_bonevertnum ; 
WhitespaceNode(current_idx=2992,parent_idx=1719)      
SingleLineCommentNode(current_idx=2993,parent_idx=1719) # number of vertices in each bone          (nskinbone x 1) 
WhitespaceNode(current_idx=2994,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2995) float*    skin_bonebindpos ; 
WhitespaceNode(current_idx=2996,parent_idx=1719)      
SingleLineCommentNode(current_idx=2997,parent_idx=1719) # bind pos of each bone                    (nskinbone x 3) 
WhitespaceNode(current_idx=2998,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=2999) float*    skin_bonebindquat ; 
WhitespaceNode(current_idx=3000,parent_idx=1719)     
SingleLineCommentNode(current_idx=3001,parent_idx=1719) # bind quat of each bone                   (nskinbone x 4) 
WhitespaceNode(current_idx=3002,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3003) int*      skin_bonebodyid ; 
WhitespaceNode(current_idx=3004,parent_idx=1719)       
SingleLineCommentNode(current_idx=3005,parent_idx=1719) # body id of each bone                     (nskinbone x 1) 
WhitespaceNode(current_idx=3006,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3007) int*      skin_bonevertid ; 
WhitespaceNode(current_idx=3008,parent_idx=1719)       
SingleLineCommentNode(current_idx=3009,parent_idx=1719) # mesh ids of vertices in each bone        (nskinbonevert x 1) 
WhitespaceNode(current_idx=3010,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3011) float*    skin_bonevertweight ; 
WhitespaceNode(current_idx=3012,parent_idx=1719)   
SingleLineCommentNode(current_idx=3013,parent_idx=1719) # weights of vertices in each bone         (nskinbonevert x 1) 
WhitespaceNode(current_idx=3014,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3015) int*      skin_pathadr ; 
WhitespaceNode(current_idx=3016,parent_idx=1719)          
SingleLineCommentNode(current_idx=3017,parent_idx=1719) # address of asset path for skin ;  -1: none (nskin x 1) 
WhitespaceNode(current_idx=3018,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3019,parent_idx=1719) # height fields 
WhitespaceNode(current_idx=3020,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3021) mjtNum*   hfield_size ; 
WhitespaceNode(current_idx=3022,parent_idx=1719)           
SingleLineCommentNode(current_idx=3023,parent_idx=1719) # (x ,  y ,  z_top ,  z_bottom)                  (nhfield x 4) 
WhitespaceNode(current_idx=3024,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3025) int*      hfield_nrow ; 
WhitespaceNode(current_idx=3026,parent_idx=1719)           
SingleLineCommentNode(current_idx=3027,parent_idx=1719) # number of rows in grid                   (nhfield x 1) 
WhitespaceNode(current_idx=3028,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3029) int*      hfield_ncol ; 
WhitespaceNode(current_idx=3030,parent_idx=1719)           
SingleLineCommentNode(current_idx=3031,parent_idx=1719) # number of columns in grid                (nhfield x 1) 
WhitespaceNode(current_idx=3032,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3033) int*      hfield_adr ; 
WhitespaceNode(current_idx=3034,parent_idx=1719)            
SingleLineCommentNode(current_idx=3035,parent_idx=1719) # address in hfield_data                   (nhfield x 1) 
WhitespaceNode(current_idx=3036,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3037) float*    hfield_data ; 
WhitespaceNode(current_idx=3038,parent_idx=1719)           
SingleLineCommentNode(current_idx=3039,parent_idx=1719) # elevation data                           (nhfielddata x 1) 
WhitespaceNode(current_idx=3040,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3041) int*      hfield_pathadr ; 
WhitespaceNode(current_idx=3042,parent_idx=1719)        
SingleLineCommentNode(current_idx=3043,parent_idx=1719) # address of hfield asset path ;  -1: none   (nhfield x 1) 
WhitespaceNode(current_idx=3044,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3045,parent_idx=1719) # textures 
WhitespaceNode(current_idx=3046,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3047) int*      tex_type ; 
WhitespaceNode(current_idx=3048,parent_idx=1719)              
SingleLineCommentNode(current_idx=3049,parent_idx=1719) # texture type (mjtTexture)                (ntex x 1) 
WhitespaceNode(current_idx=3050,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3051) int*      tex_height ; 
WhitespaceNode(current_idx=3052,parent_idx=1719)            
SingleLineCommentNode(current_idx=3053,parent_idx=1719) # number of rows in texture image          (ntex x 1) 
WhitespaceNode(current_idx=3054,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3055) int*      tex_width ; 
WhitespaceNode(current_idx=3056,parent_idx=1719)             
SingleLineCommentNode(current_idx=3057,parent_idx=1719) # number of columns in texture image       (ntex x 1) 
WhitespaceNode(current_idx=3058,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3059) int*      tex_nchannel ; 
WhitespaceNode(current_idx=3060,parent_idx=1719)          
SingleLineCommentNode(current_idx=3061,parent_idx=1719) # number of channels in texture image      (ntex x 1) 
WhitespaceNode(current_idx=3062,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3063) int*      tex_adr ; 
WhitespaceNode(current_idx=3064,parent_idx=1719)               
SingleLineCommentNode(current_idx=3065,parent_idx=1719) # start address in tex_data                (ntex x 1) 
WhitespaceNode(current_idx=3066,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3067) mjtByte*  tex_data ; 
WhitespaceNode(current_idx=3068,parent_idx=1719)              
SingleLineCommentNode(current_idx=3069,parent_idx=1719) # pixel values                             (ntexdata x 1) 
WhitespaceNode(current_idx=3070,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3071) int*      tex_pathadr ; 
WhitespaceNode(current_idx=3072,parent_idx=1719)           
SingleLineCommentNode(current_idx=3073,parent_idx=1719) # address of texture asset path ;  -1: none  (ntex x 1) 
WhitespaceNode(current_idx=3074,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3075,parent_idx=1719) # materials 
WhitespaceNode(current_idx=3076,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3077) int*      mat_texid ; 
WhitespaceNode(current_idx=3078,parent_idx=1719)             
SingleLineCommentNode(current_idx=3079,parent_idx=1719) # indices of textures ;  -1: none            (nmat x mjNTEXROLE) 
WhitespaceNode(current_idx=3080,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3081) mjtByte*  mat_texuniform ; 
WhitespaceNode(current_idx=3082,parent_idx=1719)        
SingleLineCommentNode(current_idx=3083,parent_idx=1719) # make texture cube uniform                (nmat x 1) 
WhitespaceNode(current_idx=3084,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3085) float*    mat_texrepeat ; 
WhitespaceNode(current_idx=3086,parent_idx=1719)         
SingleLineCommentNode(current_idx=3087,parent_idx=1719) # texture repetition for 2d mapping        (nmat x 2) 
WhitespaceNode(current_idx=3088,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3089) float*    mat_emission ; 
WhitespaceNode(current_idx=3090,parent_idx=1719)          
SingleLineCommentNode(current_idx=3091,parent_idx=1719) # emission (x rgb)                         (nmat x 1) 
WhitespaceNode(current_idx=3092,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3093) float*    mat_specular ; 
WhitespaceNode(current_idx=3094,parent_idx=1719)          
SingleLineCommentNode(current_idx=3095,parent_idx=1719) # specular (x white)                       (nmat x 1) 
WhitespaceNode(current_idx=3096,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3097) float*    mat_shininess ; 
WhitespaceNode(current_idx=3098,parent_idx=1719)         
SingleLineCommentNode(current_idx=3099,parent_idx=1719) # shininess coef                           (nmat x 1) 
WhitespaceNode(current_idx=3100,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3101) float*    mat_reflectance ; 
WhitespaceNode(current_idx=3102,parent_idx=1719)       
SingleLineCommentNode(current_idx=3103,parent_idx=1719) # reflectance (0: disable)                 (nmat x 1) 
WhitespaceNode(current_idx=3104,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3105) float*    mat_metallic ; 
WhitespaceNode(current_idx=3106,parent_idx=1719)          
SingleLineCommentNode(current_idx=3107,parent_idx=1719) # metallic coef                            (nmat x 1) 
WhitespaceNode(current_idx=3108,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3109) float*    mat_roughness ; 
WhitespaceNode(current_idx=3110,parent_idx=1719)         
SingleLineCommentNode(current_idx=3111,parent_idx=1719) # roughness coef                           (nmat x 1) 
WhitespaceNode(current_idx=3112,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3113) float*    mat_rgba ; 
WhitespaceNode(current_idx=3114,parent_idx=1719)              
SingleLineCommentNode(current_idx=3115,parent_idx=1719) # rgba                                     (nmat x 4) 
WhitespaceNode(current_idx=3116,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3117,parent_idx=1719) # predefined geom pairs for collision detection ;  has precedence over exclude 
WhitespaceNode(current_idx=3118,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3119) int*      pair_dim ; 
WhitespaceNode(current_idx=3120,parent_idx=1719)              
SingleLineCommentNode(current_idx=3121,parent_idx=1719) # contact dimensionality                   (npair x 1) 
WhitespaceNode(current_idx=3122,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3123) int*      pair_geom1 ; 
WhitespaceNode(current_idx=3124,parent_idx=1719)            
SingleLineCommentNode(current_idx=3125,parent_idx=1719) # id of geom1                              (npair x 1) 
WhitespaceNode(current_idx=3126,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3127) int*      pair_geom2 ; 
WhitespaceNode(current_idx=3128,parent_idx=1719)            
SingleLineCommentNode(current_idx=3129,parent_idx=1719) # id of geom2                              (npair x 1) 
WhitespaceNode(current_idx=3130,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3131) int*      pair_signature ; 
WhitespaceNode(current_idx=3132,parent_idx=1719)        
SingleLineCommentNode(current_idx=3133,parent_idx=1719) # body1 << 16 + body2                      (npair x 1) 
WhitespaceNode(current_idx=3134,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3135) mjtNum*   pair_solref ; 
WhitespaceNode(current_idx=3136,parent_idx=1719)           
SingleLineCommentNode(current_idx=3137,parent_idx=1719) # solver reference: contact normal         (npair x mjNREF) 
WhitespaceNode(current_idx=3138,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3139) mjtNum*   pair_solreffriction ; 
WhitespaceNode(current_idx=3140,parent_idx=1719)   
SingleLineCommentNode(current_idx=3141,parent_idx=1719) # solver reference: contact friction       (npair x mjNREF) 
WhitespaceNode(current_idx=3142,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3143) mjtNum*   pair_solimp ; 
WhitespaceNode(current_idx=3144,parent_idx=1719)           
SingleLineCommentNode(current_idx=3145,parent_idx=1719) # solver impedance: contact                (npair x mjNIMP) 
WhitespaceNode(current_idx=3146,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3147) mjtNum*   pair_margin ; 
WhitespaceNode(current_idx=3148,parent_idx=1719)           
SingleLineCommentNode(current_idx=3149,parent_idx=1719) # detect contact if dist<margin            (npair x 1) 
WhitespaceNode(current_idx=3150,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3151) mjtNum*   pair_gap ; 
WhitespaceNode(current_idx=3152,parent_idx=1719)              
SingleLineCommentNode(current_idx=3153,parent_idx=1719) # include in solver if dist<margin-gap     (npair x 1) 
WhitespaceNode(current_idx=3154,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3155) mjtNum*   pair_friction ; 
WhitespaceNode(current_idx=3156,parent_idx=1719)         
SingleLineCommentNode(current_idx=3157,parent_idx=1719) # tangent1 ,  2 ,  spin ,  roll1 ,  2              (npair x 5) 
WhitespaceNode(current_idx=3158,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3159,parent_idx=1719) # excluded body pairs for collision detection 
WhitespaceNode(current_idx=3160,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3161) int*      exclude_signature ; 
WhitespaceNode(current_idx=3162,parent_idx=1719)     
SingleLineCommentNode(current_idx=3163,parent_idx=1719) # body1 << 16 + body2                      (nexclude x 1) 
WhitespaceNode(current_idx=3164,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3165,parent_idx=1719) # equality constraints 
WhitespaceNode(current_idx=3166,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3167) int*      eq_type ; 
WhitespaceNode(current_idx=3168,parent_idx=1719)               
SingleLineCommentNode(current_idx=3169,parent_idx=1719) # constraint type (mjtEq)                  (neq x 1) 
WhitespaceNode(current_idx=3170,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3171) int*      eq_obj1id ; 
WhitespaceNode(current_idx=3172,parent_idx=1719)             
SingleLineCommentNode(current_idx=3173,parent_idx=1719) # id of object 1                           (neq x 1) 
WhitespaceNode(current_idx=3174,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3175) int*      eq_obj2id ; 
WhitespaceNode(current_idx=3176,parent_idx=1719)             
SingleLineCommentNode(current_idx=3177,parent_idx=1719) # id of object 2                           (neq x 1) 
WhitespaceNode(current_idx=3178,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3179) int*      eq_objtype ; 
WhitespaceNode(current_idx=3180,parent_idx=1719)            
SingleLineCommentNode(current_idx=3181,parent_idx=1719) # type of both objects (mjtObj)            (neq x 1) 
WhitespaceNode(current_idx=3182,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3183) mjtByte*  eq_active0 ; 
WhitespaceNode(current_idx=3184,parent_idx=1719)            
SingleLineCommentNode(current_idx=3185,parent_idx=1719) # initial enable/disable constraint state  (neq x 1) 
WhitespaceNode(current_idx=3186,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3187) mjtNum*   eq_solref ; 
WhitespaceNode(current_idx=3188,parent_idx=1719)             
SingleLineCommentNode(current_idx=3189,parent_idx=1719) # constraint solver reference              (neq x mjNREF) 
WhitespaceNode(current_idx=3190,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3191) mjtNum*   eq_solimp ; 
WhitespaceNode(current_idx=3192,parent_idx=1719)             
SingleLineCommentNode(current_idx=3193,parent_idx=1719) # constraint solver impedance              (neq x mjNIMP) 
WhitespaceNode(current_idx=3194,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3195) mjtNum*   eq_data ; 
WhitespaceNode(current_idx=3196,parent_idx=1719)               
SingleLineCommentNode(current_idx=3197,parent_idx=1719) # numeric data for constraint              (neq x mjNEQDATA) 
WhitespaceNode(current_idx=3198,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3199,parent_idx=1719) # tendons 
WhitespaceNode(current_idx=3200,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3201) int*      tendon_adr ; 
WhitespaceNode(current_idx=3202,parent_idx=1719)            
SingleLineCommentNode(current_idx=3203,parent_idx=1719) # address of first object in tendon's path (ntendon x 1) 
WhitespaceNode(current_idx=3204,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3205) int*      tendon_num ; 
WhitespaceNode(current_idx=3206,parent_idx=1719)            
SingleLineCommentNode(current_idx=3207,parent_idx=1719) # number of objects in tendon's path       (ntendon x 1) 
WhitespaceNode(current_idx=3208,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3209) int*      tendon_matid ; 
WhitespaceNode(current_idx=3210,parent_idx=1719)          
SingleLineCommentNode(current_idx=3211,parent_idx=1719) # material id for rendering                (ntendon x 1) 
WhitespaceNode(current_idx=3212,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3213) int*      tendon_group ; 
WhitespaceNode(current_idx=3214,parent_idx=1719)          
SingleLineCommentNode(current_idx=3215,parent_idx=1719) # group for visibility                     (ntendon x 1) 
WhitespaceNode(current_idx=3216,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3217) mjtByte*  tendon_limited ; 
WhitespaceNode(current_idx=3218,parent_idx=1719)        
SingleLineCommentNode(current_idx=3219,parent_idx=1719) # does tendon have length limits           (ntendon x 1) 
WhitespaceNode(current_idx=3220,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3221) mjtNum*   tendon_width ; 
WhitespaceNode(current_idx=3222,parent_idx=1719)          
SingleLineCommentNode(current_idx=3223,parent_idx=1719) # width for rendering                      (ntendon x 1) 
WhitespaceNode(current_idx=3224,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3225) mjtNum*   tendon_solref_lim ; 
WhitespaceNode(current_idx=3226,parent_idx=1719)     
SingleLineCommentNode(current_idx=3227,parent_idx=1719) # constraint solver reference: limit       (ntendon x mjNREF) 
WhitespaceNode(current_idx=3228,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3229) mjtNum*   tendon_solimp_lim ; 
WhitespaceNode(current_idx=3230,parent_idx=1719)     
SingleLineCommentNode(current_idx=3231,parent_idx=1719) # constraint solver impedance: limit       (ntendon x mjNIMP) 
WhitespaceNode(current_idx=3232,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3233) mjtNum*   tendon_solref_fri ; 
WhitespaceNode(current_idx=3234,parent_idx=1719)     
SingleLineCommentNode(current_idx=3235,parent_idx=1719) # constraint solver reference: friction    (ntendon x mjNREF) 
WhitespaceNode(current_idx=3236,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3237) mjtNum*   tendon_solimp_fri ; 
WhitespaceNode(current_idx=3238,parent_idx=1719)     
SingleLineCommentNode(current_idx=3239,parent_idx=1719) # constraint solver impedance: friction    (ntendon x mjNIMP) 
WhitespaceNode(current_idx=3240,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3241) mjtNum*   tendon_range ; 
WhitespaceNode(current_idx=3242,parent_idx=1719)          
SingleLineCommentNode(current_idx=3243,parent_idx=1719) # tendon length limits                     (ntendon x 2) 
WhitespaceNode(current_idx=3244,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3245) mjtNum*   tendon_margin ; 
WhitespaceNode(current_idx=3246,parent_idx=1719)         
SingleLineCommentNode(current_idx=3247,parent_idx=1719) # min distance for limit detection         (ntendon x 1) 
WhitespaceNode(current_idx=3248,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3249) mjtNum*   tendon_stiffness ; 
WhitespaceNode(current_idx=3250,parent_idx=1719)      
SingleLineCommentNode(current_idx=3251,parent_idx=1719) # stiffness coefficient                    (ntendon x 1) 
WhitespaceNode(current_idx=3252,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3253) mjtNum*   tendon_damping ; 
WhitespaceNode(current_idx=3254,parent_idx=1719)        
SingleLineCommentNode(current_idx=3255,parent_idx=1719) # damping coefficient                      (ntendon x 1) 
WhitespaceNode(current_idx=3256,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3257) mjtNum*   tendon_frictionloss ; 
WhitespaceNode(current_idx=3258,parent_idx=1719)   
SingleLineCommentNode(current_idx=3259,parent_idx=1719) # loss due to friction                     (ntendon x 1) 
WhitespaceNode(current_idx=3260,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3261) mjtNum*   tendon_lengthspring ; 
WhitespaceNode(current_idx=3262,parent_idx=1719)   
SingleLineCommentNode(current_idx=3263,parent_idx=1719) # spring resting length range              (ntendon x 2) 
WhitespaceNode(current_idx=3264,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3265) mjtNum*   tendon_length0 ; 
WhitespaceNode(current_idx=3266,parent_idx=1719)        
SingleLineCommentNode(current_idx=3267,parent_idx=1719) # tendon length in qpos0                   (ntendon x 1) 
WhitespaceNode(current_idx=3268,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3269) mjtNum*   tendon_invweight0 ; 
WhitespaceNode(current_idx=3270,parent_idx=1719)     
SingleLineCommentNode(current_idx=3271,parent_idx=1719) # inv. weight in qpos0                     (ntendon x 1) 
WhitespaceNode(current_idx=3272,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3273) mjtNum*   tendon_user ; 
WhitespaceNode(current_idx=3274,parent_idx=1719)           
SingleLineCommentNode(current_idx=3275,parent_idx=1719) # user data                                (ntendon x nuser_tendon) 
WhitespaceNode(current_idx=3276,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3277) float*    tendon_rgba ; 
WhitespaceNode(current_idx=3278,parent_idx=1719)           
SingleLineCommentNode(current_idx=3279,parent_idx=1719) # rgba when material is omitted            (ntendon x 4) 
WhitespaceNode(current_idx=3280,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3281,parent_idx=1719) # list of all wrap objects in tendon paths 
WhitespaceNode(current_idx=3282,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3283) int*      wrap_type ; 
WhitespaceNode(current_idx=3284,parent_idx=1719)             
SingleLineCommentNode(current_idx=3285,parent_idx=1719) # wrap object type (mjtWrap)               (nwrap x 1) 
WhitespaceNode(current_idx=3286,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3287) int*      wrap_objid ; 
WhitespaceNode(current_idx=3288,parent_idx=1719)            
SingleLineCommentNode(current_idx=3289,parent_idx=1719) # object id: geom ,  site ,  joint             (nwrap x 1) 
WhitespaceNode(current_idx=3290,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3291) mjtNum*   wrap_prm ; 
WhitespaceNode(current_idx=3292,parent_idx=1719)              
SingleLineCommentNode(current_idx=3293,parent_idx=1719) # divisor ,  joint coef ,  or site id          (nwrap x 1) 
WhitespaceNode(current_idx=3294,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3295,parent_idx=1719) # actuators 
WhitespaceNode(current_idx=3296,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3297) int*      actuator_trntype ; 
WhitespaceNode(current_idx=3298,parent_idx=1719)      
SingleLineCommentNode(current_idx=3299,parent_idx=1719) # transmission type (mjtTrn)               (nu x 1) 
WhitespaceNode(current_idx=3300,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3301) int*      actuator_dyntype ; 
WhitespaceNode(current_idx=3302,parent_idx=1719)      
SingleLineCommentNode(current_idx=3303,parent_idx=1719) # dynamics type (mjtDyn)                   (nu x 1) 
WhitespaceNode(current_idx=3304,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3305) int*      actuator_gaintype ; 
WhitespaceNode(current_idx=3306,parent_idx=1719)     
SingleLineCommentNode(current_idx=3307,parent_idx=1719) # gain type (mjtGain)                      (nu x 1) 
WhitespaceNode(current_idx=3308,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3309) int*      actuator_biastype ; 
WhitespaceNode(current_idx=3310,parent_idx=1719)     
SingleLineCommentNode(current_idx=3311,parent_idx=1719) # bias type (mjtBias)                      (nu x 1) 
WhitespaceNode(current_idx=3312,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3313) int*      actuator_trnid ; 
WhitespaceNode(current_idx=3314,parent_idx=1719)        
SingleLineCommentNode(current_idx=3315,parent_idx=1719) # transmission id: joint ,  tendon ,  site     (nu x 2) 
WhitespaceNode(current_idx=3316,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3317) int*      actuator_actadr ; 
WhitespaceNode(current_idx=3318,parent_idx=1719)       
SingleLineCommentNode(current_idx=3319,parent_idx=1719) # first activation address ;  -1: stateless  (nu x 1) 
WhitespaceNode(current_idx=3320,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3321) int*      actuator_actnum ; 
WhitespaceNode(current_idx=3322,parent_idx=1719)       
SingleLineCommentNode(current_idx=3323,parent_idx=1719) # number of activation variables           (nu x 1) 
WhitespaceNode(current_idx=3324,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3325) int*      actuator_group ; 
WhitespaceNode(current_idx=3326,parent_idx=1719)        
SingleLineCommentNode(current_idx=3327,parent_idx=1719) # group for visibility                     (nu x 1) 
WhitespaceNode(current_idx=3328,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3329) mjtByte*  actuator_ctrllimited ; 
WhitespaceNode(current_idx=3330,parent_idx=1719)  
SingleLineCommentNode(current_idx=3331,parent_idx=1719) # is control limited                       (nu x 1) 
WhitespaceNode(current_idx=3332,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3333) mjtByte*  actuator_forcelimited ; 
SingleLineCommentNode(current_idx=3334,parent_idx=1719) # is force limited                         (nu x 1) 
WhitespaceNode(current_idx=3335,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3336) mjtByte*  actuator_actlimited ; 
WhitespaceNode(current_idx=3337,parent_idx=1719)   
SingleLineCommentNode(current_idx=3338,parent_idx=1719) # is activation limited                    (nu x 1) 
WhitespaceNode(current_idx=3339,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3340) mjtNum*   actuator_dynprm ; 
WhitespaceNode(current_idx=3341,parent_idx=1719)       
SingleLineCommentNode(current_idx=3342,parent_idx=1719) # dynamics parameters                      (nu x mjNDYN) 
WhitespaceNode(current_idx=3343,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3344) mjtNum*   actuator_gainprm ; 
WhitespaceNode(current_idx=3345,parent_idx=1719)      
SingleLineCommentNode(current_idx=3346,parent_idx=1719) # gain parameters                          (nu x mjNGAIN) 
WhitespaceNode(current_idx=3347,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3348) mjtNum*   actuator_biasprm ; 
WhitespaceNode(current_idx=3349,parent_idx=1719)      
SingleLineCommentNode(current_idx=3350,parent_idx=1719) # bias parameters                          (nu x mjNBIAS) 
WhitespaceNode(current_idx=3351,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3352) mjtByte*  actuator_actearly ; 
WhitespaceNode(current_idx=3353,parent_idx=1719)     
SingleLineCommentNode(current_idx=3354,parent_idx=1719) # step activation before force             (nu x 1) 
WhitespaceNode(current_idx=3355,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3356) mjtNum*   actuator_ctrlrange ; 
WhitespaceNode(current_idx=3357,parent_idx=1719)    
SingleLineCommentNode(current_idx=3358,parent_idx=1719) # range of controls                        (nu x 2) 
WhitespaceNode(current_idx=3359,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3360) mjtNum*   actuator_forcerange ; 
WhitespaceNode(current_idx=3361,parent_idx=1719)   
SingleLineCommentNode(current_idx=3362,parent_idx=1719) # range of forces                          (nu x 2) 
WhitespaceNode(current_idx=3363,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3364) mjtNum*   actuator_actrange ; 
WhitespaceNode(current_idx=3365,parent_idx=1719)     
SingleLineCommentNode(current_idx=3366,parent_idx=1719) # range of activations                     (nu x 2) 
WhitespaceNode(current_idx=3367,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3368) mjtNum*   actuator_gear ; 
WhitespaceNode(current_idx=3369,parent_idx=1719)         
SingleLineCommentNode(current_idx=3370,parent_idx=1719) # scale length and transmitted force       (nu x 6) 
WhitespaceNode(current_idx=3371,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3372) mjtNum*   actuator_cranklength ; 
WhitespaceNode(current_idx=3373,parent_idx=1719)  
SingleLineCommentNode(current_idx=3374,parent_idx=1719) # crank length for slider-crank            (nu x 1) 
WhitespaceNode(current_idx=3375,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3376) mjtNum*   actuator_acc0 ; 
WhitespaceNode(current_idx=3377,parent_idx=1719)         
SingleLineCommentNode(current_idx=3378,parent_idx=1719) # acceleration from unit force in qpos0    (nu x 1) 
WhitespaceNode(current_idx=3379,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3380) mjtNum*   actuator_length0 ; 
WhitespaceNode(current_idx=3381,parent_idx=1719)      
SingleLineCommentNode(current_idx=3382,parent_idx=1719) # actuator length in qpos0                 (nu x 1) 
WhitespaceNode(current_idx=3383,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3384) mjtNum*   actuator_lengthrange ; 
WhitespaceNode(current_idx=3385,parent_idx=1719)  
SingleLineCommentNode(current_idx=3386,parent_idx=1719) # feasible actuator length range           (nu x 2) 
WhitespaceNode(current_idx=3387,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3388) mjtNum*   actuator_user ; 
WhitespaceNode(current_idx=3389,parent_idx=1719)         
SingleLineCommentNode(current_idx=3390,parent_idx=1719) # user data                                (nu x nuser_actuator) 
WhitespaceNode(current_idx=3391,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3392) int*      actuator_plugin ; 
WhitespaceNode(current_idx=3393,parent_idx=1719)       
SingleLineCommentNode(current_idx=3394,parent_idx=1719) # plugin instance id ;  -1: not a plugin     (nu x 1) 
WhitespaceNode(current_idx=3395,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3396,parent_idx=1719) # sensors 
WhitespaceNode(current_idx=3397,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3398) int*      sensor_type ; 
WhitespaceNode(current_idx=3399,parent_idx=1719)           
SingleLineCommentNode(current_idx=3400,parent_idx=1719) # sensor type (mjtSensor)                  (nsensor x 1) 
WhitespaceNode(current_idx=3401,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3402) int*      sensor_datatype ; 
WhitespaceNode(current_idx=3403,parent_idx=1719)       
SingleLineCommentNode(current_idx=3404,parent_idx=1719) # numeric data type (mjtDataType)          (nsensor x 1) 
WhitespaceNode(current_idx=3405,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3406) int*      sensor_needstage ; 
WhitespaceNode(current_idx=3407,parent_idx=1719)      
SingleLineCommentNode(current_idx=3408,parent_idx=1719) # required compute stage (mjtStage)        (nsensor x 1) 
WhitespaceNode(current_idx=3409,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3410) int*      sensor_objtype ; 
WhitespaceNode(current_idx=3411,parent_idx=1719)        
SingleLineCommentNode(current_idx=3412,parent_idx=1719) # type of sensorized object (mjtObj)       (nsensor x 1) 
WhitespaceNode(current_idx=3413,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3414) int*      sensor_objid ; 
WhitespaceNode(current_idx=3415,parent_idx=1719)          
SingleLineCommentNode(current_idx=3416,parent_idx=1719) # id of sensorized object                  (nsensor x 1) 
WhitespaceNode(current_idx=3417,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3418) int*      sensor_reftype ; 
WhitespaceNode(current_idx=3419,parent_idx=1719)        
SingleLineCommentNode(current_idx=3420,parent_idx=1719) # type of reference frame (mjtObj)         (nsensor x 1) 
WhitespaceNode(current_idx=3421,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3422) int*      sensor_refid ; 
WhitespaceNode(current_idx=3423,parent_idx=1719)          
SingleLineCommentNode(current_idx=3424,parent_idx=1719) # id of reference frame ;  -1: global frame  (nsensor x 1) 
WhitespaceNode(current_idx=3425,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3426) int*      sensor_dim ; 
WhitespaceNode(current_idx=3427,parent_idx=1719)            
SingleLineCommentNode(current_idx=3428,parent_idx=1719) # number of scalar outputs                 (nsensor x 1) 
WhitespaceNode(current_idx=3429,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3430) int*      sensor_adr ; 
WhitespaceNode(current_idx=3431,parent_idx=1719)            
SingleLineCommentNode(current_idx=3432,parent_idx=1719) # address in sensor array                  (nsensor x 1) 
WhitespaceNode(current_idx=3433,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3434) mjtNum*   sensor_cutoff ; 
WhitespaceNode(current_idx=3435,parent_idx=1719)         
SingleLineCommentNode(current_idx=3436,parent_idx=1719) # cutoff for real and positive ;  0: ignore  (nsensor x 1) 
WhitespaceNode(current_idx=3437,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3438) mjtNum*   sensor_noise ; 
WhitespaceNode(current_idx=3439,parent_idx=1719)          
SingleLineCommentNode(current_idx=3440,parent_idx=1719) # noise standard deviation                 (nsensor x 1) 
WhitespaceNode(current_idx=3441,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3442) mjtNum*   sensor_user ; 
WhitespaceNode(current_idx=3443,parent_idx=1719)           
SingleLineCommentNode(current_idx=3444,parent_idx=1719) # user data                                (nsensor x nuser_sensor) 
WhitespaceNode(current_idx=3445,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3446) int*      sensor_plugin ; 
WhitespaceNode(current_idx=3447,parent_idx=1719)         
SingleLineCommentNode(current_idx=3448,parent_idx=1719) # plugin instance id ;  -1: not a plugin     (nsensor x 1) 
WhitespaceNode(current_idx=3449,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3450,parent_idx=1719) # plugin instances 
WhitespaceNode(current_idx=3451,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3452) int*      plugin ; 
WhitespaceNode(current_idx=3453,parent_idx=1719)                
SingleLineCommentNode(current_idx=3454,parent_idx=1719) # globally registered plugin slot number   (nplugin x 1) 
WhitespaceNode(current_idx=3455,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3456) int*      plugin_stateadr ; 
WhitespaceNode(current_idx=3457,parent_idx=1719)       
SingleLineCommentNode(current_idx=3458,parent_idx=1719) # address in the plugin state array        (nplugin x 1) 
WhitespaceNode(current_idx=3459,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3460) int*      plugin_statenum ; 
WhitespaceNode(current_idx=3461,parent_idx=1719)       
SingleLineCommentNode(current_idx=3462,parent_idx=1719) # number of states in the plugin instance  (nplugin x 1) 
WhitespaceNode(current_idx=3463,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3464) char*     plugin_attr ; 
WhitespaceNode(current_idx=3465,parent_idx=1719)           
SingleLineCommentNode(current_idx=3466,parent_idx=1719) # config attributes of plugin instances    (npluginattr x 1) 
WhitespaceNode(current_idx=3467,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3468) int*      plugin_attradr ; 
WhitespaceNode(current_idx=3469,parent_idx=1719)        
SingleLineCommentNode(current_idx=3470,parent_idx=1719) # address to each instance's config attrib (nplugin x 1) 
WhitespaceNode(current_idx=3471,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3472,parent_idx=1719) # custom numeric fields 
WhitespaceNode(current_idx=3473,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3474) int*      numeric_adr ; 
WhitespaceNode(current_idx=3475,parent_idx=1719)           
SingleLineCommentNode(current_idx=3476,parent_idx=1719) # address of field in numeric_data         (nnumeric x 1) 
WhitespaceNode(current_idx=3477,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3478) int*      numeric_size ; 
WhitespaceNode(current_idx=3479,parent_idx=1719)          
SingleLineCommentNode(current_idx=3480,parent_idx=1719) # size of numeric field                    (nnumeric x 1) 
WhitespaceNode(current_idx=3481,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3482) mjtNum*   numeric_data ; 
WhitespaceNode(current_idx=3483,parent_idx=1719)          
SingleLineCommentNode(current_idx=3484,parent_idx=1719) # array of all numeric fields              (nnumericdata x 1) 
WhitespaceNode(current_idx=3485,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3486,parent_idx=1719) # custom text fields 
WhitespaceNode(current_idx=3487,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3488) int*      text_adr ; 
WhitespaceNode(current_idx=3489,parent_idx=1719)              
SingleLineCommentNode(current_idx=3490,parent_idx=1719) # address of text in text_data             (ntext x 1) 
WhitespaceNode(current_idx=3491,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3492) int*      text_size ; 
WhitespaceNode(current_idx=3493,parent_idx=1719)             
SingleLineCommentNode(current_idx=3494,parent_idx=1719) # size of text field (strlen+1)            (ntext x 1) 
WhitespaceNode(current_idx=3495,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3496) char*     text_data ; 
WhitespaceNode(current_idx=3497,parent_idx=1719)             
SingleLineCommentNode(current_idx=3498,parent_idx=1719) # array of all text fields (0-terminated)  (ntextdata x 1) 
WhitespaceNode(current_idx=3499,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3500,parent_idx=1719) # custom tuple fields 
WhitespaceNode(current_idx=3501,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3502) int*      tuple_adr ; 
WhitespaceNode(current_idx=3503,parent_idx=1719)             
SingleLineCommentNode(current_idx=3504,parent_idx=1719) # address of text in text_data             (ntuple x 1) 
WhitespaceNode(current_idx=3505,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3506) int*      tuple_size ; 
WhitespaceNode(current_idx=3507,parent_idx=1719)            
SingleLineCommentNode(current_idx=3508,parent_idx=1719) # number of objects in tuple               (ntuple x 1) 
WhitespaceNode(current_idx=3509,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3510) int*      tuple_objtype ; 
WhitespaceNode(current_idx=3511,parent_idx=1719)         
SingleLineCommentNode(current_idx=3512,parent_idx=1719) # array of object types in all tuples      (ntupledata x 1) 
WhitespaceNode(current_idx=3513,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3514) int*      tuple_objid ; 
WhitespaceNode(current_idx=3515,parent_idx=1719)           
SingleLineCommentNode(current_idx=3516,parent_idx=1719) # array of object ids in all tuples        (ntupledata x 1) 
WhitespaceNode(current_idx=3517,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3518) mjtNum*   tuple_objprm ; 
WhitespaceNode(current_idx=3519,parent_idx=1719)          
SingleLineCommentNode(current_idx=3520,parent_idx=1719) # array of object params in all tuples     (ntupledata x 1) 
WhitespaceNode(current_idx=3521,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3522,parent_idx=1719) # keyframes 
WhitespaceNode(current_idx=3523,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3524) mjtNum*   key_time ; 
WhitespaceNode(current_idx=3525,parent_idx=1719)              
SingleLineCommentNode(current_idx=3526,parent_idx=1719) # key time                                 (nkey x 1) 
WhitespaceNode(current_idx=3527,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3528) mjtNum*   key_qpos ; 
WhitespaceNode(current_idx=3529,parent_idx=1719)              
SingleLineCommentNode(current_idx=3530,parent_idx=1719) # key position                             (nkey x nq) 
WhitespaceNode(current_idx=3531,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3532) mjtNum*   key_qvel ; 
WhitespaceNode(current_idx=3533,parent_idx=1719)              
SingleLineCommentNode(current_idx=3534,parent_idx=1719) # key velocity                             (nkey x nv) 
WhitespaceNode(current_idx=3535,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3536) mjtNum*   key_act ; 
WhitespaceNode(current_idx=3537,parent_idx=1719)               
SingleLineCommentNode(current_idx=3538,parent_idx=1719) # key activation                           (nkey x na) 
WhitespaceNode(current_idx=3539,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3540) mjtNum*   key_mpos ; 
WhitespaceNode(current_idx=3541,parent_idx=1719)              
SingleLineCommentNode(current_idx=3542,parent_idx=1719) # key mocap position                       (nkey x nmocap*3) 
WhitespaceNode(current_idx=3543,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3544) mjtNum*   key_mquat ; 
WhitespaceNode(current_idx=3545,parent_idx=1719)             
SingleLineCommentNode(current_idx=3546,parent_idx=1719) # key mocap quaternion                     (nkey x nmocap*4) 
WhitespaceNode(current_idx=3547,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3548) mjtNum*   key_ctrl ; 
WhitespaceNode(current_idx=3549,parent_idx=1719)              
SingleLineCommentNode(current_idx=3550,parent_idx=1719) # key control                              (nkey x nu) 
WhitespaceNode(current_idx=3551,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3552,parent_idx=1719) # names 
WhitespaceNode(current_idx=3553,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3554) int*      name_bodyadr ; 
WhitespaceNode(current_idx=3555,parent_idx=1719)          
SingleLineCommentNode(current_idx=3556,parent_idx=1719) # body name pointers                       (nbody x 1) 
WhitespaceNode(current_idx=3557,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3558) int*      name_jntadr ; 
WhitespaceNode(current_idx=3559,parent_idx=1719)           
SingleLineCommentNode(current_idx=3560,parent_idx=1719) # joint name pointers                      (njnt x 1) 
WhitespaceNode(current_idx=3561,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3562) int*      name_geomadr ; 
WhitespaceNode(current_idx=3563,parent_idx=1719)          
SingleLineCommentNode(current_idx=3564,parent_idx=1719) # geom name pointers                       (ngeom x 1) 
WhitespaceNode(current_idx=3565,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3566) int*      name_siteadr ; 
WhitespaceNode(current_idx=3567,parent_idx=1719)          
SingleLineCommentNode(current_idx=3568,parent_idx=1719) # site name pointers                       (nsite x 1) 
WhitespaceNode(current_idx=3569,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3570) int*      name_camadr ; 
WhitespaceNode(current_idx=3571,parent_idx=1719)           
SingleLineCommentNode(current_idx=3572,parent_idx=1719) # camera name pointers                     (ncam x 1) 
WhitespaceNode(current_idx=3573,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3574) int*      name_lightadr ; 
WhitespaceNode(current_idx=3575,parent_idx=1719)         
SingleLineCommentNode(current_idx=3576,parent_idx=1719) # light name pointers                      (nlight x 1) 
WhitespaceNode(current_idx=3577,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3578) int*      name_flexadr ; 
WhitespaceNode(current_idx=3579,parent_idx=1719)          
SingleLineCommentNode(current_idx=3580,parent_idx=1719) # flex name pointers                       (nflex x 1) 
WhitespaceNode(current_idx=3581,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3582) int*      name_meshadr ; 
WhitespaceNode(current_idx=3583,parent_idx=1719)          
SingleLineCommentNode(current_idx=3584,parent_idx=1719) # mesh name pointers                       (nmesh x 1) 
WhitespaceNode(current_idx=3585,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3586) int*      name_skinadr ; 
WhitespaceNode(current_idx=3587,parent_idx=1719)          
SingleLineCommentNode(current_idx=3588,parent_idx=1719) # skin name pointers                       (nskin x 1) 
WhitespaceNode(current_idx=3589,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3590) int*      name_hfieldadr ; 
WhitespaceNode(current_idx=3591,parent_idx=1719)        
SingleLineCommentNode(current_idx=3592,parent_idx=1719) # hfield name pointers                     (nhfield x 1) 
WhitespaceNode(current_idx=3593,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3594) int*      name_texadr ; 
WhitespaceNode(current_idx=3595,parent_idx=1719)           
SingleLineCommentNode(current_idx=3596,parent_idx=1719) # texture name pointers                    (ntex x 1) 
WhitespaceNode(current_idx=3597,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3598) int*      name_matadr ; 
WhitespaceNode(current_idx=3599,parent_idx=1719)           
SingleLineCommentNode(current_idx=3600,parent_idx=1719) # material name pointers                   (nmat x 1) 
WhitespaceNode(current_idx=3601,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3602) int*      name_pairadr ; 
WhitespaceNode(current_idx=3603,parent_idx=1719)          
SingleLineCommentNode(current_idx=3604,parent_idx=1719) # geom pair name pointers                  (npair x 1) 
WhitespaceNode(current_idx=3605,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3606) int*      name_excludeadr ; 
WhitespaceNode(current_idx=3607,parent_idx=1719)       
SingleLineCommentNode(current_idx=3608,parent_idx=1719) # exclude name pointers                    (nexclude x 1) 
WhitespaceNode(current_idx=3609,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3610) int*      name_eqadr ; 
WhitespaceNode(current_idx=3611,parent_idx=1719)            
SingleLineCommentNode(current_idx=3612,parent_idx=1719) # equality constraint name pointers        (neq x 1) 
WhitespaceNode(current_idx=3613,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3614) int*      name_tendonadr ; 
WhitespaceNode(current_idx=3615,parent_idx=1719)        
SingleLineCommentNode(current_idx=3616,parent_idx=1719) # tendon name pointers                     (ntendon x 1) 
WhitespaceNode(current_idx=3617,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3618) int*      name_actuatoradr ; 
WhitespaceNode(current_idx=3619,parent_idx=1719)      
SingleLineCommentNode(current_idx=3620,parent_idx=1719) # actuator name pointers                   (nu x 1) 
WhitespaceNode(current_idx=3621,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3622) int*      name_sensoradr ; 
WhitespaceNode(current_idx=3623,parent_idx=1719)        
SingleLineCommentNode(current_idx=3624,parent_idx=1719) # sensor name pointers                     (nsensor x 1) 
WhitespaceNode(current_idx=3625,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3626) int*      name_numericadr ; 
WhitespaceNode(current_idx=3627,parent_idx=1719)       
SingleLineCommentNode(current_idx=3628,parent_idx=1719) # numeric name pointers                    (nnumeric x 1) 
WhitespaceNode(current_idx=3629,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3630) int*      name_textadr ; 
WhitespaceNode(current_idx=3631,parent_idx=1719)          
SingleLineCommentNode(current_idx=3632,parent_idx=1719) # text name pointers                       (ntext x 1) 
WhitespaceNode(current_idx=3633,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3634) int*      name_tupleadr ; 
WhitespaceNode(current_idx=3635,parent_idx=1719)         
SingleLineCommentNode(current_idx=3636,parent_idx=1719) # tuple name pointers                      (ntuple x 1) 
WhitespaceNode(current_idx=3637,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3638) int*      name_keyadr ; 
WhitespaceNode(current_idx=3639,parent_idx=1719)           
SingleLineCommentNode(current_idx=3640,parent_idx=1719) # keyframe name pointers                   (nkey x 1) 
WhitespaceNode(current_idx=3641,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3642) int*      name_pluginadr ; 
WhitespaceNode(current_idx=3643,parent_idx=1719)        
SingleLineCommentNode(current_idx=3644,parent_idx=1719) # plugin instance name pointers            (nplugin x 1) 
WhitespaceNode(current_idx=3645,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3646) char*     names ; 
WhitespaceNode(current_idx=3647,parent_idx=1719)                 
SingleLineCommentNode(current_idx=3648,parent_idx=1719) # names of all objects ,  0-terminated       (nnames x 1) 
WhitespaceNode(current_idx=3649,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3650) int*      names_map ; 
WhitespaceNode(current_idx=3651,parent_idx=1719)             
SingleLineCommentNode(current_idx=3652,parent_idx=1719) # internal hash map of names               (nnames_map x 1) 
WhitespaceNode(current_idx=3653,parent_idx=1719)  
  
SingleLineCommentNode(current_idx=3654,parent_idx=1719) # paths 
WhitespaceNode(current_idx=3655,parent_idx=1719)   
PlaceHolderNode(parent_idx=1719,current_idx=3656) char*     paths ; 
WhitespaceNode(current_idx=3657,parent_idx=1719)                 
SingleLineCommentNode(current_idx=3658,parent_idx=1719) # paths to assets ,  0-terminated            (npaths x 1) 
WhitespaceNode(current_idx=3659,parent_idx=15)  
PlaceHolderNode(parent_idx=15,current_idx=3660) typedef <children> mjModel ; 
PlaceHolderNode(parent_idx=3660,current_idx=3661) struct mjModel_ 
PlaceHolderNode(parent_idx=15,current_idx=0) mjModel 
WhitespaceNode(current_idx=3663,parent_idx=15)  
 
PlaceHolderNode(parent_idx=0,current_idx=3664) #endif 
WhitespaceNode(current_idx=3665,parent_idx=0)  
SingleLineCommentNode(current_idx=3666,parent_idx=0) # MUJOCO_MJMODEL_H_ 
WhitespaceNode(current_idx=3667,parent_idx=0)  
