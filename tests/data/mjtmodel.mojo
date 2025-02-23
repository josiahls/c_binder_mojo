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
PlaceHolderNode( )  
PlaceHolderNode(#ifndef MUJOCO_MJMODEL_H_ ) #ifndef MUJOCO_MJMODEL_H_ 
PlaceHolderNode(#define MUJOCO_MJMODEL_H_ 
 ) #define MUJOCO_MJMODEL_H_ 
 
PlaceHolderNode(#include <stddef.h> ) #include <stddef.h> 
PlaceHolderNode(#include <stdint.h> ) #include <stdint.h> 
PlaceHolderNode( 
 )  
 
PlaceHolderNode(#include <mujoco/mjtnum.h> ) #include <mujoco/mjtnum.h> 
PlaceHolderNode( )  
SingleLineCommentNode(current_idx=22,parent_idx=15) # global constants 
PlaceHolderNode(#define mjPI            3.14159265358979323846 ) #define mjPI            3.14159265358979323846 
PlaceHolderNode(#define mjMAXVAL        1E+10     ) #define mjMAXVAL        1E+10     
SingleLineCommentNode(current_idx=25,parent_idx=15) # maximum value in qpos ,  qvel ,  qacc 
PlaceHolderNode(#define mjMINMU         1E-5      ) #define mjMINMU         1E-5      
SingleLineCommentNode(current_idx=27,parent_idx=15) # minimum friction coefficient 
PlaceHolderNode(#define mjMINIMP        0.0001    ) #define mjMINIMP        0.0001    
SingleLineCommentNode(current_idx=29,parent_idx=15) # minimum constraint impedance 
PlaceHolderNode(#define mjMAXIMP        0.9999    ) #define mjMAXIMP        0.9999    
SingleLineCommentNode(current_idx=31,parent_idx=15) # maximum constraint impedance 
PlaceHolderNode(#define mjMAXCONPAIR    50        ) #define mjMAXCONPAIR    50        
SingleLineCommentNode(current_idx=33,parent_idx=15) # maximum number of contacts per geom pair 
PlaceHolderNode(#define mjMAXTREEDEPTH  50        ) #define mjMAXTREEDEPTH  50        
SingleLineCommentNode(current_idx=35,parent_idx=15) # maximum bounding volume hierarchy depth 
PlaceHolderNode( 
 )  
 
SingleLineCommentNode(current_idx=37,parent_idx=15) # sizes --------------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(#define mjNEQDATA       11        ) #define mjNEQDATA       11        
SingleLineCommentNode(current_idx=40,parent_idx=15) # number of eq_data fields 
PlaceHolderNode(#define mjNDYN          10        ) #define mjNDYN          10        
SingleLineCommentNode(current_idx=42,parent_idx=15) # number of actuator dynamics parameters 
PlaceHolderNode(#define mjNGAIN         10        ) #define mjNGAIN         10        
SingleLineCommentNode(current_idx=44,parent_idx=15) # number of actuator gain parameters 
PlaceHolderNode(#define mjNBIAS         10        ) #define mjNBIAS         10        
SingleLineCommentNode(current_idx=46,parent_idx=15) # number of actuator bias parameters 
PlaceHolderNode(#define mjNFLUID        12        ) #define mjNFLUID        12        
SingleLineCommentNode(current_idx=48,parent_idx=15) # number of fluid interaction parameters 
PlaceHolderNode(#define mjNREF          2         ) #define mjNREF          2         
SingleLineCommentNode(current_idx=50,parent_idx=15) # number of solver reference parameters 
PlaceHolderNode(#define mjNIMP          5         ) #define mjNIMP          5         
SingleLineCommentNode(current_idx=52,parent_idx=15) # number of solver impedance parameters 
PlaceHolderNode(#define mjNSOLVER       200       ) #define mjNSOLVER       200       
SingleLineCommentNode(current_idx=54,parent_idx=15) # size of one mjData.solver array 
PlaceHolderNode(#define mjNISLAND       20        ) #define mjNISLAND       20        
SingleLineCommentNode(current_idx=56,parent_idx=15) # number of mjData.solver arrays 
PlaceHolderNode( )  
SingleLineCommentNode(current_idx=58,parent_idx=15) # enum types (mjt) ---------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> 
mjtDisableBit ; ) typedef <children> 
mjtDisableBit ; 
PlaceHolderNode(enum mjtDisableBit_ ) enum mjtDisableBit_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=64,parent_idx=62) # disable default feature bitflags 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_CONSTRAINT   = 1<<0 , ) mjDSBL_CONSTRAINT   = 1<<0 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=68,parent_idx=62) # entire constraint solver 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_EQUALITY     = 1<<1 , ) mjDSBL_EQUALITY     = 1<<1 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=72,parent_idx=62) # equality constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_FRICTIONLOSS = 1<<2 , ) mjDSBL_FRICTIONLOSS = 1<<2 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=76,parent_idx=62) # joint and tendon frictionloss constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_LIMIT        = 1<<3 , ) mjDSBL_LIMIT        = 1<<3 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=80,parent_idx=62) # joint and tendon limit constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_CONTACT      = 1<<4 , ) mjDSBL_CONTACT      = 1<<4 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=84,parent_idx=62) # contact constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_PASSIVE      = 1<<5 , ) mjDSBL_PASSIVE      = 1<<5 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=88,parent_idx=62) # passive forces 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_GRAVITY      = 1<<6 , ) mjDSBL_GRAVITY      = 1<<6 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=92,parent_idx=62) # gravitational forces 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_CLAMPCTRL    = 1<<7 , ) mjDSBL_CLAMPCTRL    = 1<<7 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=96,parent_idx=62) # clamp control to specified range 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_WARMSTART    = 1<<8 , ) mjDSBL_WARMSTART    = 1<<8 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=100,parent_idx=62) # warmstart constraint solver 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_FILTERPARENT = 1<<9 , ) mjDSBL_FILTERPARENT = 1<<9 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=104,parent_idx=62) # remove collisions with parent body 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_ACTUATION    = 1<<10 , ) mjDSBL_ACTUATION    = 1<<10 , 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=108,parent_idx=62) # apply actuation forces 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_REFSAFE      = 1<<11 , ) mjDSBL_REFSAFE      = 1<<11 , 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=112,parent_idx=62) # integrator safety: make ref[0]>=2*timestep 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_SENSOR       = 1<<12 , ) mjDSBL_SENSOR       = 1<<12 , 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=116,parent_idx=62) # sensors 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_MIDPHASE     = 1<<13 , ) mjDSBL_MIDPHASE     = 1<<13 , 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=120,parent_idx=62) # mid-phase collision filtering 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_EULERDAMP    = 1<<14 , ) mjDSBL_EULERDAMP    = 1<<14 , 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=124,parent_idx=62) # implicit integration of joint damping in Euler integrator 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_AUTORESET    = 1<<15 , ) mjDSBL_AUTORESET    = 1<<15 , 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=128,parent_idx=62) # automatic reset when numerical issues are detected 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjNDISABLE          = 16 ) mjNDISABLE          = 16 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=132,parent_idx=62) # number of disable flags 
PlaceHolderNode(mjtDisableBit ) mjtDisableBit 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtEnableBit ; ) typedef <children> 
mjtEnableBit ; 
PlaceHolderNode(enum mjtEnableBit_ ) enum mjtEnableBit_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=139,parent_idx=137) # enable optional feature bitflags 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_OVERRIDE     = 1<<0 , ) mjENBL_OVERRIDE     = 1<<0 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=143,parent_idx=137) # override contact parameters 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_ENERGY       = 1<<1 , ) mjENBL_ENERGY       = 1<<1 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=147,parent_idx=137) # energy computation 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_FWDINV       = 1<<2 , ) mjENBL_FWDINV       = 1<<2 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=151,parent_idx=137) # record solver statistics 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_INVDISCRETE  = 1<<3 , ) mjENBL_INVDISCRETE  = 1<<3 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=155,parent_idx=137) # discrete-time inverse dynamics 
PlaceHolderNode(                                  )                                   
SingleLineCommentNode(current_idx=157,parent_idx=137) # experimental features: 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_MULTICCD     = 1<<4 , ) mjENBL_MULTICCD     = 1<<4 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=161,parent_idx=137) # multi-point convex collision detection 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_ISLAND       = 1<<5 , ) mjENBL_ISLAND       = 1<<5 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=165,parent_idx=137) # constraint island discovery 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_NATIVECCD    = 1<<6 , ) mjENBL_NATIVECCD    = 1<<6 , 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=169,parent_idx=137) # native convex collision detection 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjNENABLE           = 7 ) mjNENABLE           = 7 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=173,parent_idx=137) # number of enable flags 
PlaceHolderNode(mjtEnableBit ) mjtEnableBit 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtJoint ; ) typedef <children> 
mjtJoint ; 
PlaceHolderNode(enum mjtJoint_ ) enum mjtJoint_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=180,parent_idx=178) # type of degree of freedom 
PlaceHolderNode(  )   
PlaceHolderNode(mjJNT_FREE          = 0 , ) mjJNT_FREE          = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=184,parent_idx=178) # global position and orientation (quat)       (7) 
PlaceHolderNode(  )   
PlaceHolderNode(mjJNT_BALL , ) mjJNT_BALL , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=188,parent_idx=178) # orientation (quat) relative to parent        (4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjJNT_SLIDE , ) mjJNT_SLIDE , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=192,parent_idx=178) # sliding distance along body-fixed axis       (1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjJNT_HINGE                     ) mjJNT_HINGE                     
SingleLineCommentNode(current_idx=195,parent_idx=178) # rotation angle (rad) around body-fixed axis  (1) 
PlaceHolderNode(mjtJoint ) mjtJoint 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtGeom ; ) typedef <children> 
mjtGeom ; 
PlaceHolderNode(enum mjtGeom_ ) enum mjtGeom_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=202,parent_idx=200) # type of geometric shape 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=204,parent_idx=200) # regular geom types 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_PLANE        = 0 , ) mjGEOM_PLANE        = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=208,parent_idx=200) # plane 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_HFIELD , ) mjGEOM_HFIELD , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=212,parent_idx=200) # height field 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_SPHERE , ) mjGEOM_SPHERE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=216,parent_idx=200) # sphere 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_CAPSULE , ) mjGEOM_CAPSULE , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=220,parent_idx=200) # capsule 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_ELLIPSOID , ) mjGEOM_ELLIPSOID , 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=224,parent_idx=200) # ellipsoid 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_CYLINDER , ) mjGEOM_CYLINDER , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=228,parent_idx=200) # cylinder 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_BOX , ) mjGEOM_BOX , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=232,parent_idx=200) # box 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_MESH , ) mjGEOM_MESH , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=236,parent_idx=200) # mesh 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_SDF , ) mjGEOM_SDF , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=240,parent_idx=200) # signed distance field 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjNGEOMTYPES , ) mjNGEOMTYPES , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=244,parent_idx=200) # number of regular geom types 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=246,parent_idx=200) # rendering-only geom types: not used in mjModel ,  not counted in mjNGEOMTYPES 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_ARROW        = 100 , ) mjGEOM_ARROW        = 100 , 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=250,parent_idx=200) # arrow 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_ARROW1 , ) mjGEOM_ARROW1 , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=254,parent_idx=200) # arrow without wedges 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_ARROW2 , ) mjGEOM_ARROW2 , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=258,parent_idx=200) # arrow in both directions 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_LINE , ) mjGEOM_LINE , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=262,parent_idx=200) # line 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_LINEBOX , ) mjGEOM_LINEBOX , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=266,parent_idx=200) # box with line edges 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_FLEX , ) mjGEOM_FLEX , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=270,parent_idx=200) # flex 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_SKIN , ) mjGEOM_SKIN , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=274,parent_idx=200) # skin 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_LABEL , ) mjGEOM_LABEL , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=278,parent_idx=200) # text label 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_TRIANGLE , ) mjGEOM_TRIANGLE , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=282,parent_idx=200) # triangle 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjGEOM_NONE         = 1001 ) mjGEOM_NONE         = 1001 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=286,parent_idx=200) # missing geom type 
PlaceHolderNode(mjtGeom ) mjtGeom 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtCamLight ; ) typedef <children> 
mjtCamLight ; 
PlaceHolderNode(enum mjtCamLight_ ) enum mjtCamLight_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=293,parent_idx=291) # tracking mode for camera and light 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_FIXED    = 0 , ) mjCAMLIGHT_FIXED    = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=297,parent_idx=291) # pos and rot fixed in body 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_TRACK , ) mjCAMLIGHT_TRACK , 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=301,parent_idx=291) # pos tracks body ,  rot fixed in global 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_TRACKCOM , ) mjCAMLIGHT_TRACKCOM , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=305,parent_idx=291) # pos tracks subtree com ,  rot fixed in body 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_TARGETBODY , ) mjCAMLIGHT_TARGETBODY , 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=309,parent_idx=291) # pos fixed in body ,  rot tracks target body 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_TARGETBODYCOM        ) mjCAMLIGHT_TARGETBODYCOM        
SingleLineCommentNode(current_idx=312,parent_idx=291) # pos fixed in body ,  rot tracks target subtree com 
PlaceHolderNode(mjtCamLight ) mjtCamLight 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtTexture ; ) typedef <children> 
mjtTexture ; 
PlaceHolderNode(enum mjtTexture_ ) enum mjtTexture_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=319,parent_idx=317) # type of texture 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXTURE_2D        = 0 , ) mjTEXTURE_2D        = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=323,parent_idx=317) # 2d texture ,  suitable for planes and hfields 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXTURE_CUBE , ) mjTEXTURE_CUBE , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=327,parent_idx=317) # cube texture ,  suitable for all other geom types 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXTURE_SKYBOX                ) mjTEXTURE_SKYBOX                
SingleLineCommentNode(current_idx=330,parent_idx=317) # cube texture used as skybox 
PlaceHolderNode(mjtTexture ) mjtTexture 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtIntegrator ; ) typedef <children> 
mjtIntegrator ; 
PlaceHolderNode(enum mjtTextureRole_ ) enum mjtTextureRole_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(   )    
SingleLineCommentNode(current_idx=337,parent_idx=335) # role of texture map in rendering 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_USER      = 0 , ) mjTEXROLE_USER      = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=341,parent_idx=335) # unspecified 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_RGB , ) mjTEXROLE_RGB , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=345,parent_idx=335) # base color (albedo) 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_OCCLUSION , ) mjTEXROLE_OCCLUSION , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=349,parent_idx=335) # ambient occlusion 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_ROUGHNESS , ) mjTEXROLE_ROUGHNESS , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=353,parent_idx=335) # roughness 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_METALLIC , ) mjTEXROLE_METALLIC , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=357,parent_idx=335) # metallic 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_NORMAL , ) mjTEXROLE_NORMAL , 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=361,parent_idx=335) # normal (bump) map 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_OPACITY , ) mjTEXROLE_OPACITY , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=365,parent_idx=335) # transperancy 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_EMISSIVE , ) mjTEXROLE_EMISSIVE , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=369,parent_idx=335) # light emission 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_RGBA , ) mjTEXROLE_RGBA , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=373,parent_idx=335) # base color ,  opacity 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_ORM , ) mjTEXROLE_ORM , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=377,parent_idx=335) # occlusion ,  roughness ,  metallic 
PlaceHolderNode(  )   
PlaceHolderNode(mjNTEXROLE 
} mjtTextureRole ;  
 
 
typedef enum mjtIntegrator_ {     ) mjNTEXROLE 
} mjtTextureRole ;  
 
 
typedef enum mjtIntegrator_ {     
SingleLineCommentNode(current_idx=380,parent_idx=335) # integrator mode 
PlaceHolderNode(  )   
PlaceHolderNode(mjINT_EULER         = 0 , ) mjINT_EULER         = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=384,parent_idx=335) # semi-implicit Euler 
PlaceHolderNode(  )   
PlaceHolderNode(mjINT_RK4 , ) mjINT_RK4 , 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=388,parent_idx=335) # 4th-order Runge Kutta 
PlaceHolderNode(  )   
PlaceHolderNode(mjINT_IMPLICIT , ) mjINT_IMPLICIT , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=392,parent_idx=335) # implicit in velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjINT_IMPLICITFAST              ) mjINT_IMPLICITFAST              
SingleLineCommentNode(current_idx=395,parent_idx=335) # implicit in velocity ,  no rne derivative 
PlaceHolderNode(mjtIntegrator ) mjtIntegrator 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtCone ; ) typedef <children> 
mjtCone ; 
PlaceHolderNode(enum mjtCone_ ) enum mjtCone_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=402,parent_idx=400) # type of friction cone 
PlaceHolderNode(  )   
PlaceHolderNode(mjCONE_PYRAMIDAL     = 0 , ) mjCONE_PYRAMIDAL     = 0 , 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=406,parent_idx=400) # pyramidal 
PlaceHolderNode(  )   
PlaceHolderNode(mjCONE_ELLIPTIC                 ) mjCONE_ELLIPTIC                 
SingleLineCommentNode(current_idx=409,parent_idx=400) # elliptic 
PlaceHolderNode(mjtCone ) mjtCone 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtJacobian ; ) typedef <children> 
mjtJacobian ; 
PlaceHolderNode(enum mjtJacobian_ ) enum mjtJacobian_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=416,parent_idx=414) # type of constraint Jacobian 
PlaceHolderNode(  )   
PlaceHolderNode(mjJAC_DENSE          = 0 , ) mjJAC_DENSE          = 0 , 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=420,parent_idx=414) # dense 
PlaceHolderNode(  )   
PlaceHolderNode(mjJAC_SPARSE , ) mjJAC_SPARSE , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=424,parent_idx=414) # sparse 
PlaceHolderNode(  )   
PlaceHolderNode(mjJAC_AUTO                      ) mjJAC_AUTO                      
SingleLineCommentNode(current_idx=427,parent_idx=414) # dense if nv<60 ,  sparse otherwise 
PlaceHolderNode(mjtJacobian ) mjtJacobian 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtSolver ; ) typedef <children> 
mjtSolver ; 
PlaceHolderNode(enum mjtSolver_ ) enum mjtSolver_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=434,parent_idx=432) # constraint solver algorithm 
PlaceHolderNode(  )   
PlaceHolderNode(mjSOL_PGS            = 0 , ) mjSOL_PGS            = 0 , 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=438,parent_idx=432) # PGS    (dual) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSOL_CG , ) mjSOL_CG , 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=442,parent_idx=432) # CG     (primal) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSOL_NEWTON                    ) mjSOL_NEWTON                    
SingleLineCommentNode(current_idx=445,parent_idx=432) # Newton (primal) 
PlaceHolderNode(mjtSolver ) mjtSolver 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtEq ; ) typedef <children> 
mjtEq ; 
PlaceHolderNode(enum mjtEq_ ) enum mjtEq_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=452,parent_idx=450) # type of equality constraint 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_CONNECT        = 0 , ) mjEQ_CONNECT        = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=456,parent_idx=450) # connect two bodies at a point (ball joint) 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_WELD , ) mjEQ_WELD , 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=460,parent_idx=450) # fix relative position and orientation of two bodies 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_JOINT , ) mjEQ_JOINT , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=464,parent_idx=450) # couple the values of two scalar joints with cubic 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_TENDON , ) mjEQ_TENDON , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=468,parent_idx=450) # couple the lengths of two tendons with cubic 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_FLEX , ) mjEQ_FLEX , 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=472,parent_idx=450) # fix all edge lengths of a flex 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_DISTANCE                   ) mjEQ_DISTANCE                   
SingleLineCommentNode(current_idx=475,parent_idx=450) # unsupported ,  will cause an error if used 
PlaceHolderNode(mjtEq ) mjtEq 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtWrap ; ) typedef <children> 
mjtWrap ; 
PlaceHolderNode(enum mjtWrap_ ) enum mjtWrap_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=482,parent_idx=480) # type of tendon wrap object 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_NONE         = 0 , ) mjWRAP_NONE         = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=486,parent_idx=480) # null object 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_JOINT , ) mjWRAP_JOINT , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=490,parent_idx=480) # constant moment arm 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_PULLEY , ) mjWRAP_PULLEY , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=494,parent_idx=480) # pulley used to split tendon 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_SITE , ) mjWRAP_SITE , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=498,parent_idx=480) # pass through site 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_SPHERE , ) mjWRAP_SPHERE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=502,parent_idx=480) # wrap around sphere 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_CYLINDER                 ) mjWRAP_CYLINDER                 
SingleLineCommentNode(current_idx=505,parent_idx=480) # wrap around (infinite) cylinder 
PlaceHolderNode(mjtWrap ) mjtWrap 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtTrn ; ) typedef <children> 
mjtTrn ; 
PlaceHolderNode(enum mjtTrn_ ) enum mjtTrn_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=512,parent_idx=510) # type of actuator transmission 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_JOINT         = 0 , ) mjTRN_JOINT         = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=516,parent_idx=510) # force on joint 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_JOINTINPARENT , ) mjTRN_JOINTINPARENT , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=520,parent_idx=510) # force on joint ,  expressed in parent frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_SLIDERCRANK , ) mjTRN_SLIDERCRANK , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=524,parent_idx=510) # force via slider-crank linkage 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_TENDON , ) mjTRN_TENDON , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=528,parent_idx=510) # force on tendon 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_SITE , ) mjTRN_SITE , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=532,parent_idx=510) # force on site 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_BODY , ) mjTRN_BODY , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=536,parent_idx=510) # adhesion force on a body's geoms 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjTRN_UNDEFINED     = 1000 ) mjTRN_UNDEFINED     = 1000 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=540,parent_idx=510) # undefined transmission type 
PlaceHolderNode(mjtTrn ) mjtTrn 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtDyn ; ) typedef <children> 
mjtDyn ; 
PlaceHolderNode(enum mjtDyn_ ) enum mjtDyn_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=547,parent_idx=545) # type of actuator dynamics 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_NONE          = 0 , ) mjDYN_NONE          = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=551,parent_idx=545) # no internal dynamics ;  ctrl specifies force 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_INTEGRATOR , ) mjDYN_INTEGRATOR , 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=555,parent_idx=545) # integrator: da/dt = u 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_FILTER , ) mjDYN_FILTER , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=559,parent_idx=545) # linear filter: da/dt = (u-a) / tau 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_FILTEREXACT , ) mjDYN_FILTEREXACT , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=563,parent_idx=545) # linear filter: da/dt = (u-a) / tau ,  with exact integration 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_MUSCLE , ) mjDYN_MUSCLE , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=567,parent_idx=545) # piece-wise linear filter with two time constants 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_USER                      ) mjDYN_USER                      
SingleLineCommentNode(current_idx=570,parent_idx=545) # user-defined dynamics type 
PlaceHolderNode(mjtDyn ) mjtDyn 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtGain ; ) typedef <children> 
mjtGain ; 
PlaceHolderNode(enum mjtGain_ ) enum mjtGain_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=577,parent_idx=575) # type of actuator gain 
PlaceHolderNode(  )   
PlaceHolderNode(mjGAIN_FIXED        = 0 , ) mjGAIN_FIXED        = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=581,parent_idx=575) # fixed gain 
PlaceHolderNode(  )   
PlaceHolderNode(mjGAIN_AFFINE , ) mjGAIN_AFFINE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=585,parent_idx=575) # const + kp*length + kv*velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjGAIN_MUSCLE , ) mjGAIN_MUSCLE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=589,parent_idx=575) # muscle FLV curve computed by mju_muscleGain() 
PlaceHolderNode(  )   
PlaceHolderNode(mjGAIN_USER                     ) mjGAIN_USER                     
SingleLineCommentNode(current_idx=592,parent_idx=575) # user-defined gain type 
PlaceHolderNode(mjtGain ) mjtGain 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtBias ; ) typedef <children> 
mjtBias ; 
PlaceHolderNode(enum mjtBias_ ) enum mjtBias_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=599,parent_idx=597) # type of actuator bias 
PlaceHolderNode(  )   
PlaceHolderNode(mjBIAS_NONE         = 0 , ) mjBIAS_NONE         = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=603,parent_idx=597) # no bias 
PlaceHolderNode(  )   
PlaceHolderNode(mjBIAS_AFFINE , ) mjBIAS_AFFINE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=607,parent_idx=597) # const + kp*length + kv*velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjBIAS_MUSCLE , ) mjBIAS_MUSCLE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=611,parent_idx=597) # muscle passive force computed by mju_muscleBias() 
PlaceHolderNode(  )   
PlaceHolderNode(mjBIAS_USER                     ) mjBIAS_USER                     
SingleLineCommentNode(current_idx=614,parent_idx=597) # user-defined bias type 
PlaceHolderNode(mjtBias ) mjtBias 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtObj ; ) typedef <children> 
mjtObj ; 
PlaceHolderNode(enum mjtObj_ ) enum mjtObj_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=621,parent_idx=619) # type of MujoCo object 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_UNKNOWN       = 0 , ) mjOBJ_UNKNOWN       = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=625,parent_idx=619) # unknown object type 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_BODY , ) mjOBJ_BODY , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=629,parent_idx=619) # body 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_XBODY , ) mjOBJ_XBODY , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=633,parent_idx=619) # body ,  used to access regular frame instead of i-frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_JOINT , ) mjOBJ_JOINT , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=637,parent_idx=619) # joint 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_DOF , ) mjOBJ_DOF , 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=641,parent_idx=619) # dof 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_GEOM , ) mjOBJ_GEOM , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=645,parent_idx=619) # geom 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_SITE , ) mjOBJ_SITE , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=649,parent_idx=619) # site 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_CAMERA , ) mjOBJ_CAMERA , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=653,parent_idx=619) # camera 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_LIGHT , ) mjOBJ_LIGHT , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=657,parent_idx=619) # light 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_FLEX , ) mjOBJ_FLEX , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=661,parent_idx=619) # flex 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_MESH , ) mjOBJ_MESH , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=665,parent_idx=619) # mesh 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_SKIN , ) mjOBJ_SKIN , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=669,parent_idx=619) # skin 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_HFIELD , ) mjOBJ_HFIELD , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=673,parent_idx=619) # heightfield 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_TEXTURE , ) mjOBJ_TEXTURE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=677,parent_idx=619) # texture 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_MATERIAL , ) mjOBJ_MATERIAL , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=681,parent_idx=619) # material for rendering 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_PAIR , ) mjOBJ_PAIR , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=685,parent_idx=619) # geom pair to include 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_EXCLUDE , ) mjOBJ_EXCLUDE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=689,parent_idx=619) # body pair to exclude 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_EQUALITY , ) mjOBJ_EQUALITY , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=693,parent_idx=619) # equality constraint 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_TENDON , ) mjOBJ_TENDON , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=697,parent_idx=619) # tendon 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_ACTUATOR , ) mjOBJ_ACTUATOR , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=701,parent_idx=619) # actuator 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_SENSOR , ) mjOBJ_SENSOR , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=705,parent_idx=619) # sensor 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_NUMERIC , ) mjOBJ_NUMERIC , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=709,parent_idx=619) # numeric 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_TEXT , ) mjOBJ_TEXT , 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=713,parent_idx=619) # text 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_TUPLE , ) mjOBJ_TUPLE , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=717,parent_idx=619) # tuple 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_KEY , ) mjOBJ_KEY , 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=721,parent_idx=619) # keyframe 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_PLUGIN , ) mjOBJ_PLUGIN , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=725,parent_idx=619) # plugin instance 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjNOBJECT , ) mjNOBJECT , 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=729,parent_idx=619) # number of object types 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=731,parent_idx=619) # meta elements ,  do not appear in mjModel 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_FRAME         = 100 ) mjOBJ_FRAME         = 100 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=735,parent_idx=619) # frame 
PlaceHolderNode(mjtObj ) mjtObj 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtConstraint ; ) typedef <children> 
mjtConstraint ; 
PlaceHolderNode(enum mjtConstraint_ ) enum mjtConstraint_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=742,parent_idx=740) # type of constraint 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_EQUALITY    = 0 , ) mjCNSTR_EQUALITY    = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=746,parent_idx=740) # equality constraint 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_FRICTION_DOF , ) mjCNSTR_FRICTION_DOF , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=750,parent_idx=740) # dof friction 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_FRICTION_TENDON , ) mjCNSTR_FRICTION_TENDON , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=754,parent_idx=740) # tendon friction 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_LIMIT_JOINT , ) mjCNSTR_LIMIT_JOINT , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=758,parent_idx=740) # joint limit 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_LIMIT_TENDON , ) mjCNSTR_LIMIT_TENDON , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=762,parent_idx=740) # tendon limit 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_CONTACT_FRICTIONLESS , ) mjCNSTR_CONTACT_FRICTIONLESS , 
PlaceHolderNode(   )    
SingleLineCommentNode(current_idx=766,parent_idx=740) # frictionless contact 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_CONTACT_PYRAMIDAL , ) mjCNSTR_CONTACT_PYRAMIDAL , 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=770,parent_idx=740) # frictional contact ,  pyramidal friction cone 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_CONTACT_ELLIPTIC        ) mjCNSTR_CONTACT_ELLIPTIC        
SingleLineCommentNode(current_idx=773,parent_idx=740) # frictional contact ,  elliptic friction cone 
PlaceHolderNode(mjtConstraint ) mjtConstraint 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtConstraintState ; ) typedef <children> 
mjtConstraintState ; 
PlaceHolderNode(enum mjtConstraintState_ ) enum mjtConstraintState_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode( )  
SingleLineCommentNode(current_idx=780,parent_idx=778) # constraint state 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_SATISFIED = 0 , ) mjCNSTRSTATE_SATISFIED = 0 , 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=784,parent_idx=778) # constraint satisfied ,  zero cost (limit ,  contact) 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_QUADRATIC , ) mjCNSTRSTATE_QUADRATIC , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=788,parent_idx=778) # quadratic cost (equality ,  friction ,  limit ,  contact) 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_LINEARNEG , ) mjCNSTRSTATE_LINEARNEG , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=792,parent_idx=778) # linear cost ,  negative side (friction) 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_LINEARPOS , ) mjCNSTRSTATE_LINEARPOS , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=796,parent_idx=778) # linear cost ,  positive side (friction) 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_CONE                 ) mjCNSTRSTATE_CONE                 
SingleLineCommentNode(current_idx=799,parent_idx=778) # squared distance to cone cost (elliptic contact) 
PlaceHolderNode(mjtConstraintState ) mjtConstraintState 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtSensor ; ) typedef <children> 
mjtSensor ; 
PlaceHolderNode(enum mjtSensor_ ) enum mjtSensor_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=806,parent_idx=804) # type of sensor 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=808,parent_idx=804) # common robotic sensors ,  attached to a site 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TOUCH        = 0 , ) mjSENS_TOUCH        = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=812,parent_idx=804) # scalar contact normal forces summed over sensor zone 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_ACCELEROMETER , ) mjSENS_ACCELEROMETER , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=816,parent_idx=804) # 3D linear acceleration ,  in local frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_VELOCIMETER , ) mjSENS_VELOCIMETER , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=820,parent_idx=804) # 3D linear velocity ,  in local frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_GYRO , ) mjSENS_GYRO , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=824,parent_idx=804) # 3D angular velocity ,  in local frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FORCE , ) mjSENS_FORCE , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=828,parent_idx=804) # 3D force between site's body and its parent body 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TORQUE , ) mjSENS_TORQUE , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=832,parent_idx=804) # 3D torque between site's body and its parent body 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_MAGNETOMETER , ) mjSENS_MAGNETOMETER , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=836,parent_idx=804) # 3D magnetometer 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_RANGEFINDER , ) mjSENS_RANGEFINDER , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=840,parent_idx=804) # scalar distance to nearest geom or site along z-axis 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_CAMPROJECTION , ) mjSENS_CAMPROJECTION , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=844,parent_idx=804) # pixel coordinates of a site in the camera image 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=846,parent_idx=804) # sensors related to scalar joints ,  tendons ,  actuators 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTPOS , ) mjSENS_JOINTPOS , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=850,parent_idx=804) # scalar joint position (hinge and slide only) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTVEL , ) mjSENS_JOINTVEL , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=854,parent_idx=804) # scalar joint velocity (hinge and slide only) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONPOS , ) mjSENS_TENDONPOS , 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=858,parent_idx=804) # scalar tendon position 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONVEL , ) mjSENS_TENDONVEL , 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=862,parent_idx=804) # scalar tendon velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_ACTUATORPOS , ) mjSENS_ACTUATORPOS , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=866,parent_idx=804) # scalar actuator position 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_ACTUATORVEL , ) mjSENS_ACTUATORVEL , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=870,parent_idx=804) # scalar actuator velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_ACTUATORFRC , ) mjSENS_ACTUATORFRC , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=874,parent_idx=804) # scalar actuator force 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTACTFRC , ) mjSENS_JOINTACTFRC , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=878,parent_idx=804) # scalar actuator force ,  measured at the joint 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=880,parent_idx=804) # sensors related to ball joints 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_BALLQUAT , ) mjSENS_BALLQUAT , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=884,parent_idx=804) # 4D ball joint quaternion 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_BALLANGVEL , ) mjSENS_BALLANGVEL , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=888,parent_idx=804) # 3D ball joint angular velocity 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=890,parent_idx=804) # joint and tendon limit sensors ,  in constraint space 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTLIMITPOS , ) mjSENS_JOINTLIMITPOS , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=894,parent_idx=804) # joint limit distance-margin 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTLIMITVEL , ) mjSENS_JOINTLIMITVEL , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=898,parent_idx=804) # joint limit velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTLIMITFRC , ) mjSENS_JOINTLIMITFRC , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=902,parent_idx=804) # joint limit force 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONLIMITPOS , ) mjSENS_TENDONLIMITPOS , 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=906,parent_idx=804) # tendon limit distance-margin 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONLIMITVEL , ) mjSENS_TENDONLIMITVEL , 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=910,parent_idx=804) # tendon limit velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONLIMITFRC , ) mjSENS_TENDONLIMITFRC , 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=914,parent_idx=804) # tendon limit force 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=916,parent_idx=804) # sensors attached to an object with spatial frame: (x)body ,  geom ,  site ,  camera 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEPOS , ) mjSENS_FRAMEPOS , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=920,parent_idx=804) # 3D position 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEQUAT , ) mjSENS_FRAMEQUAT , 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=924,parent_idx=804) # 4D unit quaternion orientation 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEXAXIS , ) mjSENS_FRAMEXAXIS , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=928,parent_idx=804) # 3D unit vector: x-axis of object's frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEYAXIS , ) mjSENS_FRAMEYAXIS , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=932,parent_idx=804) # 3D unit vector: y-axis of object's frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEZAXIS , ) mjSENS_FRAMEZAXIS , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=936,parent_idx=804) # 3D unit vector: z-axis of object's frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMELINVEL , ) mjSENS_FRAMELINVEL , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=940,parent_idx=804) # 3D linear velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEANGVEL , ) mjSENS_FRAMEANGVEL , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=944,parent_idx=804) # 3D angular velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMELINACC , ) mjSENS_FRAMELINACC , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=948,parent_idx=804) # 3D linear acceleration 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEANGACC , ) mjSENS_FRAMEANGACC , 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=952,parent_idx=804) # 3D angular acceleration 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=954,parent_idx=804) # sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_SUBTREECOM , ) mjSENS_SUBTREECOM , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=958,parent_idx=804) # 3D center of mass of subtree 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_SUBTREELINVEL , ) mjSENS_SUBTREELINVEL , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=962,parent_idx=804) # 3D linear velocity of subtree 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_SUBTREEANGMOM , ) mjSENS_SUBTREEANGMOM , 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=966,parent_idx=804) # 3D angular momentum of subtree 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=968,parent_idx=804) # sensors for geometric distance ;  attached to geoms or bodies 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_GEOMDIST , ) mjSENS_GEOMDIST , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=972,parent_idx=804) # signed distance between two geoms 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_GEOMNORMAL , ) mjSENS_GEOMNORMAL , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=976,parent_idx=804) # normal direction between two geoms 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_GEOMFROMTO , ) mjSENS_GEOMFROMTO , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=980,parent_idx=804) # segment between two geoms 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=982,parent_idx=804) # global sensors 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_CLOCK , ) mjSENS_CLOCK , 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=986,parent_idx=804) # simulation time 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=988,parent_idx=804) # plugin-controlled sensors 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_PLUGIN , ) mjSENS_PLUGIN , 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=992,parent_idx=804) # plugin-controlled 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=994,parent_idx=804) # user-defined sensor 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_USER                     ) mjSENS_USER                     
SingleLineCommentNode(current_idx=997,parent_idx=804) # sensor data provided by mjcb_sensor callback 
PlaceHolderNode(mjtSensor ) mjtSensor 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtStage ; ) typedef <children> 
mjtStage ; 
PlaceHolderNode(enum mjtStage_ ) enum mjtStage_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=1004,parent_idx=1002) # computation stage 
PlaceHolderNode(  )   
PlaceHolderNode(mjSTAGE_NONE        = 0 , ) mjSTAGE_NONE        = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1008,parent_idx=1002) # no computations 
PlaceHolderNode(  )   
PlaceHolderNode(mjSTAGE_POS , ) mjSTAGE_POS , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=1012,parent_idx=1002) # position-dependent computations 
PlaceHolderNode(  )   
PlaceHolderNode(mjSTAGE_VEL , ) mjSTAGE_VEL , 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=1016,parent_idx=1002) # velocity-dependent computations 
PlaceHolderNode(  )   
PlaceHolderNode(mjSTAGE_ACC                     ) mjSTAGE_ACC                     
SingleLineCommentNode(current_idx=1019,parent_idx=1002) # acceleration/force-dependent computations 
PlaceHolderNode(mjtStage ) mjtStage 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtDataType ; ) typedef <children> 
mjtDataType ; 
PlaceHolderNode(enum mjtDataType_ ) enum mjtDataType_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=1026,parent_idx=1024) # data type for sensors 
PlaceHolderNode(  )   
PlaceHolderNode(mjDATATYPE_REAL     = 0 , ) mjDATATYPE_REAL     = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1030,parent_idx=1024) # real values ,  no constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDATATYPE_POSITIVE , ) mjDATATYPE_POSITIVE , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1034,parent_idx=1024) # positive values ;  0 or negative: inactive 
PlaceHolderNode(  )   
PlaceHolderNode(mjDATATYPE_AXIS , ) mjDATATYPE_AXIS , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1038,parent_idx=1024) # 3D unit vector 
PlaceHolderNode(  )   
PlaceHolderNode(mjDATATYPE_QUATERNION           ) mjDATATYPE_QUATERNION           
SingleLineCommentNode(current_idx=1041,parent_idx=1024) # unit quaternion 
PlaceHolderNode(mjtDataType ) mjtDataType 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtSameFrame ; ) typedef <children> 
mjtSameFrame ; 
PlaceHolderNode(enum mjtSameFrame_ ) enum mjtSameFrame_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=1048,parent_idx=1046) # frame alignment of bodies with their children 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_NONE    = 0 , ) mjSAMEFRAME_NONE    = 0 , 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1052,parent_idx=1046) # no alignment 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_BODY , ) mjSAMEFRAME_BODY , 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1056,parent_idx=1046) # frame is same as body frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_INERTIA , ) mjSAMEFRAME_INERTIA , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1060,parent_idx=1046) # frame is same as inertial frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_BODYROT , ) mjSAMEFRAME_BODYROT , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1064,parent_idx=1046) # frame orientation is same as body orientation 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_INERTIAROT          ) mjSAMEFRAME_INERTIAROT          
SingleLineCommentNode(current_idx=1067,parent_idx=1046) # frame orientation is same as inertia orientation 
PlaceHolderNode(mjtSameFrame ) mjtSameFrame 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtLRMode ; ) typedef <children> 
mjtLRMode ; 
PlaceHolderNode(enum mjtLRMode_ ) enum mjtLRMode_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1074,parent_idx=1072) # mode for actuator length range computation 
PlaceHolderNode(  )   
PlaceHolderNode(mjLRMODE_NONE   = 0 , ) mjLRMODE_NONE   = 0 , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1078,parent_idx=1072) # do not process any actuators 
PlaceHolderNode(  )   
PlaceHolderNode(mjLRMODE_MUSCLE , ) mjLRMODE_MUSCLE , 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1082,parent_idx=1072) # process muscle actuators 
PlaceHolderNode(  )   
PlaceHolderNode(mjLRMODE_MUSCLEUSER , ) mjLRMODE_MUSCLEUSER , 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1086,parent_idx=1072) # process muscle and user actuators 
PlaceHolderNode(  )   
PlaceHolderNode(mjLRMODE_ALL                    ) mjLRMODE_ALL                    
SingleLineCommentNode(current_idx=1089,parent_idx=1072) # process all actuators 
PlaceHolderNode(mjtLRMode ) mjtLRMode 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(typedef <children> 
mjtFlexSelf ; ) typedef <children> 
mjtFlexSelf ; 
PlaceHolderNode(enum mjtFlexSelf_ ) enum mjtFlexSelf_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=1096,parent_idx=1094) # mode for flex selfcollide 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_NONE   = 0 , ) mjFLEXSELF_NONE   = 0 , 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=1100,parent_idx=1094) # no self-collisions 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_NARROW , ) mjFLEXSELF_NARROW , 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1104,parent_idx=1094) # skip midphase ,  go directly to narrowphase 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_BVH , ) mjFLEXSELF_BVH , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1108,parent_idx=1094) # use BVH in midphase (if midphase enabled) 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_SAP , ) mjFLEXSELF_SAP , 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1112,parent_idx=1094) # use SAP in midphase 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_AUTO                 ) mjFLEXSELF_AUTO                 
SingleLineCommentNode(current_idx=1115,parent_idx=1094) # choose between BVH and SAP automatically 
PlaceHolderNode(mjtFlexSelf ) mjtFlexSelf 
PlaceHolderNode( 
 
 )  
 
 
SingleLineCommentNode(current_idx=1118,parent_idx=15) # mjLROpt ------------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(struct mjLROpt_ 
<children> ; ) struct mjLROpt_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1123,parent_idx=1121) # options for mj_setLengthRange() 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=1125,parent_idx=1121) # flags 
PlaceHolderNode(  )   
PlaceHolderNode(int mode ; ) int mode ; 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1129,parent_idx=1121) # which actuators to process (mjtLRMode) 
PlaceHolderNode(  )   
PlaceHolderNode(int useexisting ; ) int useexisting ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1133,parent_idx=1121) # use existing length range if available 
PlaceHolderNode(  )   
PlaceHolderNode(int uselimit ; ) int uselimit ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1137,parent_idx=1121) # use joint and tendon limits if available 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=1139,parent_idx=1121) # algorithm parameters 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum accel ; ) mjtNum accel ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1143,parent_idx=1121) # target acceleration used to compute force 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum maxforce ; ) mjtNum maxforce ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1147,parent_idx=1121) # maximum force ;  0: no limit 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum timeconst ; ) mjtNum timeconst ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1151,parent_idx=1121) # time constant for velocity reduction ;  min 0.01 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum timestep ; ) mjtNum timestep ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1155,parent_idx=1121) # simulation timestep ;  0: use mjOption.timestep 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum inttotal ; ) mjtNum inttotal ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1159,parent_idx=1121) # total simulation time interval 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum interval ; ) mjtNum interval ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1163,parent_idx=1121) # evaluation time interval (at the end) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum tolrange ; ) mjtNum tolrange ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1167,parent_idx=1121) # convergence tolerance (relative to range) 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjLROpt ; ) typedef <children> mjLROpt ; 
PlaceHolderNode(struct mjLROpt_ ) struct mjLROpt_ 
PlaceHolderNode(mjLROpt ) mjLROpt 
PlaceHolderNode( 
 
 )  
 
 
SingleLineCommentNode(current_idx=1173,parent_idx=15) # mjVFS --------------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(struct mjVFS_ 
<children> ; ) struct mjVFS_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                              )                               
SingleLineCommentNode(current_idx=1178,parent_idx=1176) # virtual file system for loading from memory 
PlaceHolderNode(  )   
PlaceHolderNode(void* impl_ ; ) void* impl_ ; 
PlaceHolderNode(                                )                                 
SingleLineCommentNode(current_idx=1182,parent_idx=1176) # internal pointer to VFS memory 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjVFS ; ) typedef <children> mjVFS ; 
PlaceHolderNode(struct mjVFS_ ) struct mjVFS_ 
PlaceHolderNode(mjVFS ) mjVFS 
PlaceHolderNode( 
 )  
 
SingleLineCommentNode(current_idx=1188,parent_idx=15) # mjOption ------------------------------------------------------ 
PlaceHolderNode( )  
PlaceHolderNode(struct mjOption_ 
<children> ; ) struct mjOption_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1193,parent_idx=1191) # physics options 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=1195,parent_idx=1191) # timing parameters 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum timestep ; ) mjtNum timestep ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1199,parent_idx=1191) # timestep 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum apirate ; ) mjtNum apirate ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1203,parent_idx=1191) # update rate for remote API (Hz) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=1205,parent_idx=1191) # solver parameters 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum impratio ; ) mjtNum impratio ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1209,parent_idx=1191) # ratio of friction-to-normal contact impedance 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum tolerance ; ) mjtNum tolerance ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1213,parent_idx=1191) # main solver tolerance 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum ls_tolerance ; ) mjtNum ls_tolerance ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1217,parent_idx=1191) # CG/Newton linesearch tolerance 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum noslip_tolerance ; ) mjtNum noslip_tolerance ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1221,parent_idx=1191) # noslip solver tolerance 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum ccd_tolerance ; ) mjtNum ccd_tolerance ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=1225,parent_idx=1191) # convex collision solver tolerance 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=1227,parent_idx=1191) # physical constants 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum gravity[3] ; ) mjtNum gravity[3] ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1231,parent_idx=1191) # gravitational acceleration 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum wind[3] ; ) mjtNum wind[3] ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1235,parent_idx=1191) # wind (for lift ,  drag and viscosity) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum magnetic[3] ; ) mjtNum magnetic[3] ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1239,parent_idx=1191) # global magnetic flux 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum density ; ) mjtNum density ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1243,parent_idx=1191) # density of medium 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum viscosity ; ) mjtNum viscosity ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1247,parent_idx=1191) # viscosity of medium 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=1249,parent_idx=1191) # override contact solver parameters (if enabled) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum o_margin ; ) mjtNum o_margin ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1253,parent_idx=1191) # margin 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum o_solref[mjNREF] ; ) mjtNum o_solref[mjNREF] ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1257,parent_idx=1191) # solref 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum o_solimp[mjNIMP] ; ) mjtNum o_solimp[mjNIMP] ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1261,parent_idx=1191) # solimp 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum o_friction[5] ; ) mjtNum o_friction[5] ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=1265,parent_idx=1191) # friction 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=1267,parent_idx=1191) # discrete settings 
PlaceHolderNode(  )   
PlaceHolderNode(int integrator ; ) int integrator ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1271,parent_idx=1191) # integration mode (mjtIntegrator) 
PlaceHolderNode(  )   
PlaceHolderNode(int cone ; ) int cone ; 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1275,parent_idx=1191) # type of friction cone (mjtCone) 
PlaceHolderNode(  )   
PlaceHolderNode(int jacobian ; ) int jacobian ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1279,parent_idx=1191) # type of Jacobian (mjtJacobian) 
PlaceHolderNode(  )   
PlaceHolderNode(int solver ; ) int solver ; 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=1283,parent_idx=1191) # solver algorithm (mjtSolver) 
PlaceHolderNode(  )   
PlaceHolderNode(int iterations ; ) int iterations ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1287,parent_idx=1191) # maximum number of main solver iterations 
PlaceHolderNode(  )   
PlaceHolderNode(int ls_iterations ; ) int ls_iterations ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1291,parent_idx=1191) # maximum number of CG/Newton linesearch iterations 
PlaceHolderNode(  )   
PlaceHolderNode(int noslip_iterations ; ) int noslip_iterations ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=1295,parent_idx=1191) # maximum number of noslip solver iterations 
PlaceHolderNode(  )   
PlaceHolderNode(int ccd_iterations ; ) int ccd_iterations ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1299,parent_idx=1191) # maximum number of convex collision solver iterations 
PlaceHolderNode(  )   
PlaceHolderNode(int disableflags ; ) int disableflags ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1303,parent_idx=1191) # bit flags for disabling standard features 
PlaceHolderNode(  )   
PlaceHolderNode(int enableflags ; ) int enableflags ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1307,parent_idx=1191) # bit flags for enabling optional features 
PlaceHolderNode(  )   
PlaceHolderNode(int disableactuator ; ) int disableactuator ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1311,parent_idx=1191) # bit flags for disabling actuators by group id 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=1313,parent_idx=1191) # sdf collision settings 
PlaceHolderNode(  )   
PlaceHolderNode(int sdf_initpoints ; ) int sdf_initpoints ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1317,parent_idx=1191) # number of starting points for gradient descent 
PlaceHolderNode(  )   
PlaceHolderNode(int sdf_iterations ; ) int sdf_iterations ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1321,parent_idx=1191) # max number of iterations for gradient descent 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjOption ; ) typedef <children> mjOption ; 
PlaceHolderNode(struct mjOption_ ) struct mjOption_ 
PlaceHolderNode(mjOption ) mjOption 
PlaceHolderNode( 
 
 )  
 
 
SingleLineCommentNode(current_idx=1327,parent_idx=15) # mjVisual ------------------------------------------------------ 
PlaceHolderNode( )  
PlaceHolderNode(struct mjVisual_ 
<children> ; ) struct mjVisual_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1332,parent_idx=1330) # visualization options 
PlaceHolderNode(  )   
PlaceHolderNode(<children> 
global ; ) <children> 
global ; 
PlaceHolderNode(struct ) struct 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1338,parent_idx=1336) # global parameters 
PlaceHolderNode(    )     
PlaceHolderNode(int orthographic ; ) int orthographic ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1342,parent_idx=1336) # is the free camera orthographic (0: no ,  1: yes) 
PlaceHolderNode(    )     
PlaceHolderNode(float fovy ; ) float fovy ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1346,parent_idx=1336) # y field-of-view of free camera (orthographic ? length : degree) 
PlaceHolderNode(    )     
PlaceHolderNode(float ipd ; ) float ipd ; 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=1350,parent_idx=1336) # inter-pupilary distance for free camera 
PlaceHolderNode(    )     
PlaceHolderNode(float azimuth ; ) float azimuth ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1354,parent_idx=1336) # initial azimuth of free camera (degrees) 
PlaceHolderNode(    )     
PlaceHolderNode(float elevation ; ) float elevation ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1358,parent_idx=1336) # initial elevation of free camera (degrees) 
PlaceHolderNode(    )     
PlaceHolderNode(float linewidth ; ) float linewidth ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1362,parent_idx=1336) # line width for wireframe and ray rendering 
PlaceHolderNode(    )     
PlaceHolderNode(float glow ; ) float glow ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1366,parent_idx=1336) # glow coefficient for selected body 
PlaceHolderNode(    )     
PlaceHolderNode(float realtime ; ) float realtime ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1370,parent_idx=1336) # initial real-time factor (1: real time) 
PlaceHolderNode(    )     
PlaceHolderNode(int   offwidth ; ) int   offwidth ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1374,parent_idx=1336) # width of offscreen buffer 
PlaceHolderNode(    )     
PlaceHolderNode(int   offheight ; ) int   offheight ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1378,parent_idx=1336) # height of offscreen buffer 
PlaceHolderNode(    )     
PlaceHolderNode(int   ellipsoidinertia ; ) int   ellipsoidinertia ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=1382,parent_idx=1336) # geom for inertia visualization (0: box ,  1: ellipsoid) 
PlaceHolderNode(    )     
PlaceHolderNode(int   bvactive ; ) int   bvactive ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1386,parent_idx=1336) # visualize active bounding volumes (0: no ,  1: yes) 
PlaceHolderNode(  )   
PlaceHolderNode( 
 
  )  
 
  
PlaceHolderNode(<children> 
quality ; ) <children> 
quality ; 
PlaceHolderNode(struct ) struct 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1393,parent_idx=1391) # rendering quality 
PlaceHolderNode(    )     
PlaceHolderNode(int   shadowsize ; ) int   shadowsize ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1397,parent_idx=1391) # size of shadowmap texture 
PlaceHolderNode(    )     
PlaceHolderNode(int   offsamples ; ) int   offsamples ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1401,parent_idx=1391) # number of multisamples for offscreen rendering 
PlaceHolderNode(    )     
PlaceHolderNode(int   numslices ; ) int   numslices ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1405,parent_idx=1391) # number of slices for builtin geom drawing 
PlaceHolderNode(    )     
PlaceHolderNode(int   numstacks ; ) int   numstacks ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1409,parent_idx=1391) # number of stacks for builtin geom drawing 
PlaceHolderNode(    )     
PlaceHolderNode(int   numquads ; ) int   numquads ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1413,parent_idx=1391) # number of quads for box rendering 
PlaceHolderNode(  )   
PlaceHolderNode( 
 
  )  
 
  
PlaceHolderNode(<children> 
headlight ; ) <children> 
headlight ; 
PlaceHolderNode(struct ) struct 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1420,parent_idx=1418) # head light 
PlaceHolderNode(    )     
PlaceHolderNode(float ambient[3] ; ) float ambient[3] ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1424,parent_idx=1418) # ambient rgb (alpha=1) 
PlaceHolderNode(    )     
PlaceHolderNode(float diffuse[3] ; ) float diffuse[3] ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1428,parent_idx=1418) # diffuse rgb (alpha=1) 
PlaceHolderNode(    )     
PlaceHolderNode(float specular[3] ; ) float specular[3] ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1432,parent_idx=1418) # specular rgb (alpha=1) 
PlaceHolderNode(    )     
PlaceHolderNode(int   active ; ) int   active ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1436,parent_idx=1418) # is headlight active 
PlaceHolderNode(  )   
PlaceHolderNode( 
 
  )  
 
  
PlaceHolderNode(<children> 
map ; ) <children> 
map ; 
PlaceHolderNode(struct ) struct 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1443,parent_idx=1441) # mapping 
PlaceHolderNode(    )     
PlaceHolderNode(float stiffness ; ) float stiffness ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1447,parent_idx=1441) # mouse perturbation stiffness (space->force) 
PlaceHolderNode(    )     
PlaceHolderNode(float stiffnessrot ; ) float stiffnessrot ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=1451,parent_idx=1441) # mouse perturbation stiffness (space->torque) 
PlaceHolderNode(    )     
PlaceHolderNode(float force ; ) float force ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1455,parent_idx=1441) # from force units to space units 
PlaceHolderNode(    )     
PlaceHolderNode(float torque ; ) float torque ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1459,parent_idx=1441) # from torque units to space units 
PlaceHolderNode(    )     
PlaceHolderNode(float alpha ; ) float alpha ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1463,parent_idx=1441) # scale geom alphas when transparency is enabled 
PlaceHolderNode(    )     
PlaceHolderNode(float fogstart ; ) float fogstart ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1467,parent_idx=1441) # OpenGL fog starts at fogstart * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float fogend ; ) float fogend ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1471,parent_idx=1441) # OpenGL fog ends at fogend * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float znear ; ) float znear ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1475,parent_idx=1441) # near clipping plane = znear * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float zfar ; ) float zfar ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1479,parent_idx=1441) # far clipping plane = zfar * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float haze ; ) float haze ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1483,parent_idx=1441) # haze ratio 
PlaceHolderNode(    )     
PlaceHolderNode(float shadowclip ; ) float shadowclip ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1487,parent_idx=1441) # directional light: shadowclip * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float shadowscale ; ) float shadowscale ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1491,parent_idx=1441) # spot light: shadowscale * light.cutoff 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatortendon ; ) float actuatortendon ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=1495,parent_idx=1441) # scale tendon width 
PlaceHolderNode(  )   
PlaceHolderNode( 
 
  )  
 
  
PlaceHolderNode(<children> 
scale ; ) <children> 
scale ; 
PlaceHolderNode(struct ) struct 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1502,parent_idx=1500) # scale of decor elements relative to mean body size 
PlaceHolderNode(    )     
PlaceHolderNode(float forcewidth ; ) float forcewidth ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1506,parent_idx=1500) # width of force arrow 
PlaceHolderNode(    )     
PlaceHolderNode(float contactwidth ; ) float contactwidth ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=1510,parent_idx=1500) # contact width 
PlaceHolderNode(    )     
PlaceHolderNode(float contactheight ; ) float contactheight ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=1514,parent_idx=1500) # contact height 
PlaceHolderNode(    )     
PlaceHolderNode(float connect ; ) float connect ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1518,parent_idx=1500) # autoconnect capsule width 
PlaceHolderNode(    )     
PlaceHolderNode(float com ; ) float com ; 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=1522,parent_idx=1500) # com radius 
PlaceHolderNode(    )     
PlaceHolderNode(float camera ; ) float camera ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1526,parent_idx=1500) # camera object 
PlaceHolderNode(    )     
PlaceHolderNode(float light ; ) float light ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1530,parent_idx=1500) # light object 
PlaceHolderNode(    )     
PlaceHolderNode(float selectpoint ; ) float selectpoint ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1534,parent_idx=1500) # selection point 
PlaceHolderNode(    )     
PlaceHolderNode(float jointlength ; ) float jointlength ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1538,parent_idx=1500) # joint length 
PlaceHolderNode(    )     
PlaceHolderNode(float jointwidth ; ) float jointwidth ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1542,parent_idx=1500) # joint width 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatorlength ; ) float actuatorlength ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=1546,parent_idx=1500) # actuator length 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatorwidth ; ) float actuatorwidth ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=1550,parent_idx=1500) # actuator width 
PlaceHolderNode(    )     
PlaceHolderNode(float framelength ; ) float framelength ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1554,parent_idx=1500) # bodyframe axis length 
PlaceHolderNode(    )     
PlaceHolderNode(float framewidth ; ) float framewidth ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1558,parent_idx=1500) # bodyframe axis width 
PlaceHolderNode(    )     
PlaceHolderNode(float constraint ; ) float constraint ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1562,parent_idx=1500) # constraint width 
PlaceHolderNode(    )     
PlaceHolderNode(float slidercrank ; ) float slidercrank ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1566,parent_idx=1500) # slidercrank width 
PlaceHolderNode(    )     
PlaceHolderNode(float frustum ; ) float frustum ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1570,parent_idx=1500) # frustum zfar plane 
PlaceHolderNode(  )   
PlaceHolderNode( 
 
  )  
 
  
PlaceHolderNode(<children> 
rgba ; ) <children> 
rgba ; 
PlaceHolderNode(struct ) struct 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1577,parent_idx=1575) # color of decor elements 
PlaceHolderNode(    )     
PlaceHolderNode(float fog[4] ; ) float fog[4] ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1581,parent_idx=1575) # fog 
PlaceHolderNode(    )     
PlaceHolderNode(float haze[4] ; ) float haze[4] ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1585,parent_idx=1575) # haze 
PlaceHolderNode(    )     
PlaceHolderNode(float force[4] ; ) float force[4] ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1589,parent_idx=1575) # external force 
PlaceHolderNode(    )     
PlaceHolderNode(float inertia[4] ; ) float inertia[4] ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1593,parent_idx=1575) # inertia box 
PlaceHolderNode(    )     
PlaceHolderNode(float joint[4] ; ) float joint[4] ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1597,parent_idx=1575) # joint 
PlaceHolderNode(    )     
PlaceHolderNode(float actuator[4] ; ) float actuator[4] ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1601,parent_idx=1575) # actuator ,  neutral 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatornegative[4] ; ) float actuatornegative[4] ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=1605,parent_idx=1575) # actuator ,  negative limit 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatorpositive[4] ; ) float actuatorpositive[4] ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=1609,parent_idx=1575) # actuator ,  positive limit 
PlaceHolderNode(    )     
PlaceHolderNode(float com[4] ; ) float com[4] ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1613,parent_idx=1575) # center of mass 
PlaceHolderNode(    )     
PlaceHolderNode(float camera[4] ; ) float camera[4] ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1617,parent_idx=1575) # camera object 
PlaceHolderNode(    )     
PlaceHolderNode(float light[4] ; ) float light[4] ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1621,parent_idx=1575) # light object 
PlaceHolderNode(    )     
PlaceHolderNode(float selectpoint[4] ; ) float selectpoint[4] ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=1625,parent_idx=1575) # selection point 
PlaceHolderNode(    )     
PlaceHolderNode(float connect[4] ; ) float connect[4] ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1629,parent_idx=1575) # auto connect 
PlaceHolderNode(    )     
PlaceHolderNode(float contactpoint[4] ; ) float contactpoint[4] ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1633,parent_idx=1575) # contact point 
PlaceHolderNode(    )     
PlaceHolderNode(float contactforce[4] ; ) float contactforce[4] ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=1637,parent_idx=1575) # contact force 
PlaceHolderNode(    )     
PlaceHolderNode(float contactfriction[4] ; ) float contactfriction[4] ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=1641,parent_idx=1575) # contact friction force 
PlaceHolderNode(    )     
PlaceHolderNode(float contacttorque[4] ; ) float contacttorque[4] ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=1645,parent_idx=1575) # contact torque 
PlaceHolderNode(    )     
PlaceHolderNode(float contactgap[4] ; ) float contactgap[4] ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=1649,parent_idx=1575) # contact point in gap 
PlaceHolderNode(    )     
PlaceHolderNode(float rangefinder[4] ; ) float rangefinder[4] ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=1653,parent_idx=1575) # rangefinder ray 
PlaceHolderNode(    )     
PlaceHolderNode(float constraint[4] ; ) float constraint[4] ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=1657,parent_idx=1575) # constraint 
PlaceHolderNode(    )     
PlaceHolderNode(float slidercrank[4] ; ) float slidercrank[4] ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=1661,parent_idx=1575) # slidercrank 
PlaceHolderNode(    )     
PlaceHolderNode(float crankbroken[4] ; ) float crankbroken[4] ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=1665,parent_idx=1575) # used when crank must be stretched/broken 
PlaceHolderNode(    )     
PlaceHolderNode(float frustum[4] ; ) float frustum[4] ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1669,parent_idx=1575) # camera frustum 
PlaceHolderNode(    )     
PlaceHolderNode(float bv[4] ; ) float bv[4] ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1673,parent_idx=1575) # bounding volume 
PlaceHolderNode(    )     
PlaceHolderNode(float bvactive[4] ; ) float bvactive[4] ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1677,parent_idx=1575) # active bounding volume 
PlaceHolderNode(  )   
PlaceHolderNode( )  
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjVisual ; ) typedef <children> mjVisual ; 
PlaceHolderNode(struct mjVisual_ ) struct mjVisual_ 
PlaceHolderNode(mjVisual ) mjVisual 
PlaceHolderNode( 
 
 )  
 
 
SingleLineCommentNode(current_idx=1685,parent_idx=15) # mjStatistic --------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(struct mjStatistic_ 
<children> ; ) struct mjStatistic_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=1690,parent_idx=1688) # model statistics (in qpos0) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum meaninertia ; ) mjtNum meaninertia ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1694,parent_idx=1688) # mean diagonal inertia 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum meanmass ; ) mjtNum meanmass ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1698,parent_idx=1688) # mean body mass 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum meansize ; ) mjtNum meansize ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1702,parent_idx=1688) # mean body size 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum extent ; ) mjtNum extent ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1706,parent_idx=1688) # spatial extent 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum center[3] ; ) mjtNum center[3] ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1710,parent_idx=1688) # center of model 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjStatistic ; ) typedef <children> mjStatistic ; 
PlaceHolderNode(struct mjStatistic_ ) struct mjStatistic_ 
PlaceHolderNode(mjStatistic ) mjStatistic 
PlaceHolderNode( 
 
 )  
 
 
SingleLineCommentNode(current_idx=1716,parent_idx=15) # mjModel ------------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(struct mjModel_ 
<children> ; ) struct mjModel_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=1721,parent_idx=1719) # ------------------------------- sizes 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=1723,parent_idx=1719) # sizes needed at mjModel construction 
PlaceHolderNode(  )   
PlaceHolderNode(int nq ; ) int nq ; 
PlaceHolderNode(                         )                          
SingleLineCommentNode(current_idx=1727,parent_idx=1719) # number of generalized coordinates = dim(qpos) 
PlaceHolderNode(  )   
PlaceHolderNode(int nv ; ) int nv ; 
PlaceHolderNode(                         )                          
SingleLineCommentNode(current_idx=1731,parent_idx=1719) # number of degrees of freedom = dim(qvel) 
PlaceHolderNode(  )   
PlaceHolderNode(int nu ; ) int nu ; 
PlaceHolderNode(                         )                          
SingleLineCommentNode(current_idx=1735,parent_idx=1719) # number of actuators/controls = dim(ctrl) 
PlaceHolderNode(  )   
PlaceHolderNode(int na ; ) int na ; 
PlaceHolderNode(                         )                          
SingleLineCommentNode(current_idx=1739,parent_idx=1719) # number of activation states = dim(act) 
PlaceHolderNode(  )   
PlaceHolderNode(int nbody ; ) int nbody ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1743,parent_idx=1719) # number of bodies 
PlaceHolderNode(  )   
PlaceHolderNode(int nbvh ; ) int nbvh ; 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1747,parent_idx=1719) # number of total bounding volumes in all bodies 
PlaceHolderNode(  )   
PlaceHolderNode(int nbvhstatic ; ) int nbvhstatic ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1751,parent_idx=1719) # number of static bounding volumes (aabb stored in mjModel) 
PlaceHolderNode(  )   
PlaceHolderNode(int nbvhdynamic ; ) int nbvhdynamic ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1755,parent_idx=1719) # number of dynamic bounding volumes (aabb stored in mjData) 
PlaceHolderNode(  )   
PlaceHolderNode(int njnt ; ) int njnt ; 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1759,parent_idx=1719) # number of joints 
PlaceHolderNode(  )   
PlaceHolderNode(int ngeom ; ) int ngeom ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1763,parent_idx=1719) # number of geoms 
PlaceHolderNode(  )   
PlaceHolderNode(int nsite ; ) int nsite ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1767,parent_idx=1719) # number of sites 
PlaceHolderNode(  )   
PlaceHolderNode(int ncam ; ) int ncam ; 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1771,parent_idx=1719) # number of cameras 
PlaceHolderNode(  )   
PlaceHolderNode(int nlight ; ) int nlight ; 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=1775,parent_idx=1719) # number of lights 
PlaceHolderNode(  )   
PlaceHolderNode(int nflex ; ) int nflex ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1779,parent_idx=1719) # number of flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexvert ; ) int nflexvert ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1783,parent_idx=1719) # number of vertices in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexedge ; ) int nflexedge ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1787,parent_idx=1719) # number of edges in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexelem ; ) int nflexelem ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1791,parent_idx=1719) # number of elements in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexelemdata ; ) int nflexelemdata ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1795,parent_idx=1719) # number of element vertex ids in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexelemedge ; ) int nflexelemedge ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1799,parent_idx=1719) # number of element edge ids in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexshelldata ; ) int nflexshelldata ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1803,parent_idx=1719) # number of shell fragment vertex ids in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexevpair ; ) int nflexevpair ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1807,parent_idx=1719) # number of element-vertex pairs in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflextexcoord ; ) int nflextexcoord ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1811,parent_idx=1719) # number of vertices with texture coordinates 
PlaceHolderNode(  )   
PlaceHolderNode(int nmesh ; ) int nmesh ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1815,parent_idx=1719) # number of meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshvert ; ) int nmeshvert ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1819,parent_idx=1719) # number of vertices in all meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshnormal ; ) int nmeshnormal ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1823,parent_idx=1719) # number of normals in all meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshtexcoord ; ) int nmeshtexcoord ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1827,parent_idx=1719) # number of texcoords in all meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshface ; ) int nmeshface ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1831,parent_idx=1719) # number of triangular faces in all meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshgraph ; ) int nmeshgraph ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1835,parent_idx=1719) # number of ints in mesh auxiliary data 
PlaceHolderNode(  )   
PlaceHolderNode(int nskin ; ) int nskin ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1839,parent_idx=1719) # number of skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskinvert ; ) int nskinvert ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1843,parent_idx=1719) # number of vertices in all skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskintexvert ; ) int nskintexvert ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1847,parent_idx=1719) # number of vertiex with texcoords in all skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskinface ; ) int nskinface ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1851,parent_idx=1719) # number of triangular faces in all skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskinbone ; ) int nskinbone ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1855,parent_idx=1719) # number of bones in all skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskinbonevert ; ) int nskinbonevert ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=1859,parent_idx=1719) # number of vertices in all skin bones 
PlaceHolderNode(  )   
PlaceHolderNode(int nhfield ; ) int nhfield ; 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=1863,parent_idx=1719) # number of heightfields 
PlaceHolderNode(  )   
PlaceHolderNode(int nhfielddata ; ) int nhfielddata ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1867,parent_idx=1719) # number of data points in all heightfields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntex ; ) int ntex ; 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1871,parent_idx=1719) # number of textures 
PlaceHolderNode(  )   
PlaceHolderNode(int ntexdata ; ) int ntexdata ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1875,parent_idx=1719) # number of bytes in texture rgb data 
PlaceHolderNode(  )   
PlaceHolderNode(int nmat ; ) int nmat ; 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1879,parent_idx=1719) # number of materials 
PlaceHolderNode(  )   
PlaceHolderNode(int npair ; ) int npair ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1883,parent_idx=1719) # number of predefined geom pairs 
PlaceHolderNode(  )   
PlaceHolderNode(int nexclude ; ) int nexclude ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1887,parent_idx=1719) # number of excluded geom pairs 
PlaceHolderNode(  )   
PlaceHolderNode(int neq ; ) int neq ; 
PlaceHolderNode(                        )                         
SingleLineCommentNode(current_idx=1891,parent_idx=1719) # number of equality constraints 
PlaceHolderNode(  )   
PlaceHolderNode(int ntendon ; ) int ntendon ; 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=1895,parent_idx=1719) # number of tendons 
PlaceHolderNode(  )   
PlaceHolderNode(int nwrap ; ) int nwrap ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1899,parent_idx=1719) # number of wrap objects in all tendon paths 
PlaceHolderNode(  )   
PlaceHolderNode(int nsensor ; ) int nsensor ; 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=1903,parent_idx=1719) # number of sensors 
PlaceHolderNode(  )   
PlaceHolderNode(int nnumeric ; ) int nnumeric ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=1907,parent_idx=1719) # number of numeric custom fields 
PlaceHolderNode(  )   
PlaceHolderNode(int nnumericdata ; ) int nnumericdata ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1911,parent_idx=1719) # number of mjtNums in all numeric fields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntext ; ) int ntext ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=1915,parent_idx=1719) # number of text custom fields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntextdata ; ) int ntextdata ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1919,parent_idx=1719) # number of mjtBytes in all text fields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntuple ; ) int ntuple ; 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=1923,parent_idx=1719) # number of tuple custom fields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntupledata ; ) int ntupledata ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1927,parent_idx=1719) # number of objects in all tuple fields 
PlaceHolderNode(  )   
PlaceHolderNode(int nkey ; ) int nkey ; 
PlaceHolderNode(                       )                        
SingleLineCommentNode(current_idx=1931,parent_idx=1719) # number of keyframes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmocap ; ) int nmocap ; 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=1935,parent_idx=1719) # number of mocap bodies 
PlaceHolderNode(  )   
PlaceHolderNode(int nplugin ; ) int nplugin ; 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=1939,parent_idx=1719) # number of plugin instances 
PlaceHolderNode(  )   
PlaceHolderNode(int npluginattr ; ) int npluginattr ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=1943,parent_idx=1719) # number of chars in all plugin config attributes 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_body ; ) int nuser_body ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1947,parent_idx=1719) # number of mjtNums in body_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_jnt ; ) int nuser_jnt ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1951,parent_idx=1719) # number of mjtNums in jnt_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_geom ; ) int nuser_geom ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1955,parent_idx=1719) # number of mjtNums in geom_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_site ; ) int nuser_site ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1959,parent_idx=1719) # number of mjtNums in site_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_cam ; ) int nuser_cam ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=1963,parent_idx=1719) # number of mjtNums in cam_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_tendon ; ) int nuser_tendon ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1967,parent_idx=1719) # number of mjtNums in tendon_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_actuator ; ) int nuser_actuator ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=1971,parent_idx=1719) # number of mjtNums in actuator_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_sensor ; ) int nuser_sensor ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=1975,parent_idx=1719) # number of mjtNums in sensor_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nnames ; ) int nnames ; 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=1979,parent_idx=1719) # number of chars in all names 
PlaceHolderNode(  )   
PlaceHolderNode(int nnames_map ; ) int nnames_map ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=1983,parent_idx=1719) # number of slots in the names hash map 
PlaceHolderNode(  )   
PlaceHolderNode(int npaths ; ) int npaths ; 
PlaceHolderNode(                     )                      
SingleLineCommentNode(current_idx=1987,parent_idx=1719) # number of chars in all paths 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=1989,parent_idx=1719) # sizes set after mjModel construction (only affect mjData) 
PlaceHolderNode(  )   
PlaceHolderNode(int nM ; ) int nM ; 
PlaceHolderNode(                         )                          
SingleLineCommentNode(current_idx=1993,parent_idx=1719) # number of non-zeros in sparse inertia matrix 
PlaceHolderNode(  )   
PlaceHolderNode(int nB ; ) int nB ; 
PlaceHolderNode(                         )                          
SingleLineCommentNode(current_idx=1997,parent_idx=1719) # number of non-zeros in sparse body-dof matrix 
PlaceHolderNode(  )   
PlaceHolderNode(int nC ; ) int nC ; 
PlaceHolderNode(                         )                          
SingleLineCommentNode(current_idx=2001,parent_idx=1719) # number of non-zeros in sparse reduced dof-dof matrix 
PlaceHolderNode(  )   
PlaceHolderNode(int nD ; ) int nD ; 
PlaceHolderNode(                         )                          
SingleLineCommentNode(current_idx=2005,parent_idx=1719) # number of non-zeros in sparse dof-dof matrix 
PlaceHolderNode(  )   
PlaceHolderNode(int ntree ; ) int ntree ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=2009,parent_idx=1719) # number of kinematic trees under world body 
PlaceHolderNode(  )   
PlaceHolderNode(int ngravcomp ; ) int ngravcomp ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=2013,parent_idx=1719) # number of bodies with nonzero gravcomp 
PlaceHolderNode(  )   
PlaceHolderNode(int nemax ; ) int nemax ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=2017,parent_idx=1719) # number of potential equality-constraint rows 
PlaceHolderNode(  )   
PlaceHolderNode(int njmax ; ) int njmax ; 
PlaceHolderNode(                      )                       
SingleLineCommentNode(current_idx=2021,parent_idx=1719) # number of available rows in constraint Jacobian 
PlaceHolderNode(  )   
PlaceHolderNode(int nconmax ; ) int nconmax ; 
PlaceHolderNode(                    )                     
SingleLineCommentNode(current_idx=2025,parent_idx=1719) # number of potential contacts in contact list 
PlaceHolderNode(  )   
PlaceHolderNode(int nuserdata ; ) int nuserdata ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=2029,parent_idx=1719) # number of mjtNums reserved for the user 
PlaceHolderNode(  )   
PlaceHolderNode(int nsensordata ; ) int nsensordata ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=2033,parent_idx=1719) # number of mjtNums in sensor data vector 
PlaceHolderNode(  )   
PlaceHolderNode(int npluginstate ; ) int npluginstate ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=2037,parent_idx=1719) # number of mjtNums in plugin state vector 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(size_t narena ; ) size_t narena ; 
PlaceHolderNode(                  )                   
SingleLineCommentNode(current_idx=2041,parent_idx=1719) # number of bytes in the mjData arena (inclusive of stack) 
PlaceHolderNode(  )   
PlaceHolderNode(size_t nbuffer ; ) size_t nbuffer ; 
PlaceHolderNode(                 )                  
SingleLineCommentNode(current_idx=2045,parent_idx=1719) # number of bytes in buffer 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2047,parent_idx=1719) # ------------------------------- options and statistics 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjOption opt ; ) mjOption opt ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=2051,parent_idx=1719) # physics options 
PlaceHolderNode(  )   
PlaceHolderNode(mjVisual vis ; ) mjVisual vis ; 
PlaceHolderNode(                   )                    
SingleLineCommentNode(current_idx=2055,parent_idx=1719) # visualization options 
PlaceHolderNode(  )   
PlaceHolderNode(mjStatistic stat ; ) mjStatistic stat ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=2059,parent_idx=1719) # model statistics 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2061,parent_idx=1719) # ------------------------------- buffers 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2063,parent_idx=1719) # main buffer 
PlaceHolderNode(  )   
PlaceHolderNode(void*     buffer ; ) void*     buffer ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=2067,parent_idx=1719) # main buffer ;  all pointers point in it    (nbuffer) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2069,parent_idx=1719) # default generalized coordinates 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   qpos0 ; ) mjtNum*   qpos0 ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=2073,parent_idx=1719) # qpos values at default pose              (nq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   qpos_spring ; ) mjtNum*   qpos_spring ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2077,parent_idx=1719) # reference pose for springs               (nq x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2079,parent_idx=1719) # bodies 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_parentid ; ) int*      body_parentid ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2083,parent_idx=1719) # id of body's parent                      (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_rootid ; ) int*      body_rootid ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2087,parent_idx=1719) # id of root above body                    (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_weldid ; ) int*      body_weldid ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2091,parent_idx=1719) # id of body that this body is welded to   (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_mocapid ; ) int*      body_mocapid ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2095,parent_idx=1719) # id of mocap data ;  -1: none               (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_jntnum ; ) int*      body_jntnum ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2099,parent_idx=1719) # number of joints for this body           (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_jntadr ; ) int*      body_jntadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2103,parent_idx=1719) # start addr of joints ;  -1: no joints      (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_dofnum ; ) int*      body_dofnum ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2107,parent_idx=1719) # number of motion degrees of freedom      (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_dofadr ; ) int*      body_dofadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2111,parent_idx=1719) # start addr of dofs ;  -1: no dofs          (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_treeid ; ) int*      body_treeid ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2115,parent_idx=1719) # id of body's kinematic tree ;  -1: static  (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_geomnum ; ) int*      body_geomnum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2119,parent_idx=1719) # number of geoms                          (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_geomadr ; ) int*      body_geomadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2123,parent_idx=1719) # start addr of geoms ;  -1: no geoms        (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  body_simple ; ) mjtByte*  body_simple ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2127,parent_idx=1719) # 1: diag M ;  2: diag M ,  sliders only       (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  body_sameframe ; ) mjtByte*  body_sameframe ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2131,parent_idx=1719) # same frame as inertia (mjtSameframe)     (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_pos ; ) mjtNum*   body_pos ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2135,parent_idx=1719) # position offset rel. to parent body      (nbody x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_quat ; ) mjtNum*   body_quat ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2139,parent_idx=1719) # orientation offset rel. to parent body   (nbody x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_ipos ; ) mjtNum*   body_ipos ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2143,parent_idx=1719) # local position of center of mass         (nbody x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_iquat ; ) mjtNum*   body_iquat ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2147,parent_idx=1719) # local orientation of inertia ellipsoid   (nbody x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_mass ; ) mjtNum*   body_mass ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2151,parent_idx=1719) # mass                                     (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_subtreemass ; ) mjtNum*   body_subtreemass ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2155,parent_idx=1719) # mass of subtree starting at this body    (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_inertia ; ) mjtNum*   body_inertia ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2159,parent_idx=1719) # diagonal inertia in ipos/iquat frame     (nbody x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_invweight0 ; ) mjtNum*   body_invweight0 ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=2163,parent_idx=1719) # mean inv inert in qpos0 (trn ,  rot)       (nbody x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_gravcomp ; ) mjtNum*   body_gravcomp ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2167,parent_idx=1719) # antigravity force ,  units of body weight  (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_margin ; ) mjtNum*   body_margin ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2171,parent_idx=1719) # MAX over all geom margins                (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_user ; ) mjtNum*   body_user ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2175,parent_idx=1719) # user data                                (nbody x nuser_body) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_plugin ; ) int*      body_plugin ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2179,parent_idx=1719) # plugin instance id ;  -1: not in use       (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_contype ; ) int*      body_contype ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2183,parent_idx=1719) # OR over all geom contypes                (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_conaffinity ; ) int*      body_conaffinity ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2187,parent_idx=1719) # OR over all geom conaffinities           (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_bvhadr ; ) int*      body_bvhadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2191,parent_idx=1719) # address of bvh root                      (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_bvhnum ; ) int*      body_bvhnum ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2195,parent_idx=1719) # number of bounding volumes               (nbody x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2197,parent_idx=1719) # bounding volume hierarchy 
PlaceHolderNode(  )   
PlaceHolderNode(int*      bvh_depth ; ) int*      bvh_depth ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2201,parent_idx=1719) # depth in the bounding volume hierarchy   (nbvh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      bvh_child ; ) int*      bvh_child ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2205,parent_idx=1719) # left and right children in tree          (nbvh x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      bvh_nodeid ; ) int*      bvh_nodeid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2209,parent_idx=1719) # geom or elem id of node ;  -1: non-leaf    (nbvh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   bvh_aabb ; ) mjtNum*   bvh_aabb ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2213,parent_idx=1719) # local bounding box (center ,  size)        (nbvhstatic x 6) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2215,parent_idx=1719) # joints 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_type ; ) int*      jnt_type ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2219,parent_idx=1719) # type of joint (mjtJoint)                 (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_qposadr ; ) int*      jnt_qposadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2223,parent_idx=1719) # start addr in 'qpos' for joint's data    (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_dofadr ; ) int*      jnt_dofadr ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2227,parent_idx=1719) # start addr in 'qvel' for joint's data    (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_bodyid ; ) int*      jnt_bodyid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2231,parent_idx=1719) # id of joint's body                       (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_group ; ) int*      jnt_group ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2235,parent_idx=1719) # group for visibility                     (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  jnt_limited ; ) mjtByte*  jnt_limited ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2239,parent_idx=1719) # does joint have limits                   (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  jnt_actfrclimited ; ) mjtByte*  jnt_actfrclimited ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=2243,parent_idx=1719) # does joint have actuator force limits    (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  jnt_actgravcomp ; ) mjtByte*  jnt_actgravcomp ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=2247,parent_idx=1719) # is gravcomp force applied via actuators  (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_solref ; ) mjtNum*   jnt_solref ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2251,parent_idx=1719) # constraint solver reference: limit       (njnt x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_solimp ; ) mjtNum*   jnt_solimp ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2255,parent_idx=1719) # constraint solver impedance: limit       (njnt x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_pos ; ) mjtNum*   jnt_pos ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=2259,parent_idx=1719) # local anchor position                    (njnt x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_axis ; ) mjtNum*   jnt_axis ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2263,parent_idx=1719) # local joint axis                         (njnt x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_stiffness ; ) mjtNum*   jnt_stiffness ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2267,parent_idx=1719) # stiffness coefficient                    (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_range ; ) mjtNum*   jnt_range ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2271,parent_idx=1719) # joint limits                             (njnt x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_actfrcrange ; ) mjtNum*   jnt_actfrcrange ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=2275,parent_idx=1719) # range of total actuator force            (njnt x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_margin ; ) mjtNum*   jnt_margin ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2279,parent_idx=1719) # min distance for limit detection         (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_user ; ) mjtNum*   jnt_user ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2283,parent_idx=1719) # user data                                (njnt x nuser_jnt) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2285,parent_idx=1719) # dofs 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_bodyid ; ) int*      dof_bodyid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2289,parent_idx=1719) # id of dof's body                         (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_jntid ; ) int*      dof_jntid ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2293,parent_idx=1719) # id of dof's joint                        (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_parentid ; ) int*      dof_parentid ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2297,parent_idx=1719) # id of dof's parent ;  -1: none             (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_treeid ; ) int*      dof_treeid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2301,parent_idx=1719) # id of dof's kinematic tree               (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_Madr ; ) int*      dof_Madr ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2305,parent_idx=1719) # dof address in M-diagonal                (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_simplenum ; ) int*      dof_simplenum ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2309,parent_idx=1719) # number of consecutive simple dofs        (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_solref ; ) mjtNum*   dof_solref ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2313,parent_idx=1719) # constraint solver reference:frictionloss (nv x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_solimp ; ) mjtNum*   dof_solimp ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2317,parent_idx=1719) # constraint solver impedance:frictionloss (nv x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_frictionloss ; ) mjtNum*   dof_frictionloss ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2321,parent_idx=1719) # dof friction loss                        (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_armature ; ) mjtNum*   dof_armature ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2325,parent_idx=1719) # dof armature inertia/mass                (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_damping ; ) mjtNum*   dof_damping ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2329,parent_idx=1719) # damping coefficient                      (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_invweight0 ; ) mjtNum*   dof_invweight0 ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2333,parent_idx=1719) # diag. inverse inertia in qpos0           (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_M0 ; ) mjtNum*   dof_M0 ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=2337,parent_idx=1719) # diag. inertia in qpos0                   (nv x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2339,parent_idx=1719) # geoms 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_type ; ) int*      geom_type ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2343,parent_idx=1719) # geometric type (mjtGeom)                 (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_contype ; ) int*      geom_contype ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2347,parent_idx=1719) # geom contact type                        (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_conaffinity ; ) int*      geom_conaffinity ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2351,parent_idx=1719) # geom contact affinity                    (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_condim ; ) int*      geom_condim ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2355,parent_idx=1719) # contact dimensionality (1 ,  3 ,  4 ,  6)      (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_bodyid ; ) int*      geom_bodyid ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2359,parent_idx=1719) # id of geom's body                        (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_dataid ; ) int*      geom_dataid ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2363,parent_idx=1719) # id of geom's mesh/hfield ;  -1: none       (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_matid ; ) int*      geom_matid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2367,parent_idx=1719) # material id for rendering ;  -1: none      (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_group ; ) int*      geom_group ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2371,parent_idx=1719) # group for visibility                     (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_priority ; ) int*      geom_priority ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2375,parent_idx=1719) # geom contact priority                    (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_plugin ; ) int*      geom_plugin ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2379,parent_idx=1719) # plugin instance id ;  -1: not in use       (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  geom_sameframe ; ) mjtByte*  geom_sameframe ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2383,parent_idx=1719) # same frame as body (mjtSameframe)        (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_solmix ; ) mjtNum*   geom_solmix ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2387,parent_idx=1719) # mixing coef for solref/imp in geom pair  (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_solref ; ) mjtNum*   geom_solref ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2391,parent_idx=1719) # constraint solver reference: contact     (ngeom x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_solimp ; ) mjtNum*   geom_solimp ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2395,parent_idx=1719) # constraint solver impedance: contact     (ngeom x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_size ; ) mjtNum*   geom_size ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2399,parent_idx=1719) # geom-specific size parameters            (ngeom x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_aabb ; ) mjtNum*   geom_aabb ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2403,parent_idx=1719) # bounding box ,  (center ,  size)             (ngeom x 6) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_rbound ; ) mjtNum*   geom_rbound ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2407,parent_idx=1719) # radius of bounding sphere                (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_pos ; ) mjtNum*   geom_pos ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2411,parent_idx=1719) # local position offset rel. to body       (ngeom x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_quat ; ) mjtNum*   geom_quat ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2415,parent_idx=1719) # local orientation offset rel. to body    (ngeom x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_friction ; ) mjtNum*   geom_friction ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2419,parent_idx=1719) # friction for (slide ,  spin ,  roll)         (ngeom x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_margin ; ) mjtNum*   geom_margin ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2423,parent_idx=1719) # detect contact if dist<margin            (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_gap ; ) mjtNum*   geom_gap ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2427,parent_idx=1719) # include in solver if dist<margin-gap     (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_fluid ; ) mjtNum*   geom_fluid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2431,parent_idx=1719) # fluid interaction parameters             (ngeom x mjNFLUID) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_user ; ) mjtNum*   geom_user ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2435,parent_idx=1719) # user data                                (ngeom x nuser_geom) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    geom_rgba ; ) float*    geom_rgba ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2439,parent_idx=1719) # rgba when material is omitted            (ngeom x 4) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2441,parent_idx=1719) # sites 
PlaceHolderNode(  )   
PlaceHolderNode(int*      site_type ; ) int*      site_type ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2445,parent_idx=1719) # geom type for rendering (mjtGeom)        (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      site_bodyid ; ) int*      site_bodyid ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2449,parent_idx=1719) # id of site's body                        (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      site_matid ; ) int*      site_matid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2453,parent_idx=1719) # material id for rendering ;  -1: none      (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      site_group ; ) int*      site_group ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2457,parent_idx=1719) # group for visibility                     (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  site_sameframe ; ) mjtByte*  site_sameframe ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2461,parent_idx=1719) # same frame as body (mjtSameframe)        (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   site_size ; ) mjtNum*   site_size ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2465,parent_idx=1719) # geom size for rendering                  (nsite x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   site_pos ; ) mjtNum*   site_pos ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2469,parent_idx=1719) # local position offset rel. to body       (nsite x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   site_quat ; ) mjtNum*   site_quat ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2473,parent_idx=1719) # local orientation offset rel. to body    (nsite x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   site_user ; ) mjtNum*   site_user ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2477,parent_idx=1719) # user data                                (nsite x nuser_site) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    site_rgba ; ) float*    site_rgba ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2481,parent_idx=1719) # rgba when material is omitted            (nsite x 4) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2483,parent_idx=1719) # cameras 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_mode ; ) int*      cam_mode ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2487,parent_idx=1719) # camera tracking mode (mjtCamLight)       (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_bodyid ; ) int*      cam_bodyid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2491,parent_idx=1719) # id of camera's body                      (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_targetbodyid ; ) int*      cam_targetbodyid ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2495,parent_idx=1719) # id of targeted body ;  -1: none            (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_pos ; ) mjtNum*   cam_pos ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=2499,parent_idx=1719) # position rel. to body frame              (ncam x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_quat ; ) mjtNum*   cam_quat ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2503,parent_idx=1719) # orientation rel. to body frame           (ncam x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_poscom0 ; ) mjtNum*   cam_poscom0 ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2507,parent_idx=1719) # global position rel. to sub-com in qpos0 (ncam x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_pos0 ; ) mjtNum*   cam_pos0 ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2511,parent_idx=1719) # global position rel. to body in qpos0    (ncam x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_mat0 ; ) mjtNum*   cam_mat0 ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2515,parent_idx=1719) # global orientation in qpos0              (ncam x 9) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_orthographic ; ) int*      cam_orthographic ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2519,parent_idx=1719) # orthographic camera ;  0: no ,  1: yes       (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_fovy ; ) mjtNum*   cam_fovy ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2523,parent_idx=1719) # y field-of-view (ortho ? len : deg)      (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_ipd ; ) mjtNum*   cam_ipd ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=2527,parent_idx=1719) # inter-pupilary distance                  (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_resolution ; ) int*      cam_resolution ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2531,parent_idx=1719) # resolution: pixels [width ,  height]       (ncam x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    cam_sensorsize ; ) float*    cam_sensorsize ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2535,parent_idx=1719) # sensor size: length [width ,  height]      (ncam x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    cam_intrinsic ; ) float*    cam_intrinsic ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2539,parent_idx=1719) # [focal length ;  principal point]          (ncam x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_user ; ) mjtNum*   cam_user ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2543,parent_idx=1719) # user data                                (ncam x nuser_cam) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2545,parent_idx=1719) # lights 
PlaceHolderNode(  )   
PlaceHolderNode(int*      light_mode ; ) int*      light_mode ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2549,parent_idx=1719) # light tracking mode (mjtCamLight)        (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      light_bodyid ; ) int*      light_bodyid ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2553,parent_idx=1719) # id of light's body                       (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      light_targetbodyid ; ) int*      light_targetbodyid ; 
PlaceHolderNode(   )    
SingleLineCommentNode(current_idx=2557,parent_idx=1719) # id of targeted body ;  -1: none            (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  light_directional ; ) mjtByte*  light_directional ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=2561,parent_idx=1719) # directional light                        (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  light_castshadow ; ) mjtByte*  light_castshadow ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2565,parent_idx=1719) # does light cast shadows                  (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_bulbradius ; ) float*    light_bulbradius ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2569,parent_idx=1719) # light radius for soft shadows            (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  light_active ; ) mjtByte*  light_active ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2573,parent_idx=1719) # is light on                              (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_pos ; ) mjtNum*   light_pos ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2577,parent_idx=1719) # position rel. to body frame              (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_dir ; ) mjtNum*   light_dir ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2581,parent_idx=1719) # direction rel. to body frame             (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_poscom0 ; ) mjtNum*   light_poscom0 ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2585,parent_idx=1719) # global position rel. to sub-com in qpos0 (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_pos0 ; ) mjtNum*   light_pos0 ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2589,parent_idx=1719) # global position rel. to body in qpos0    (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_dir0 ; ) mjtNum*   light_dir0 ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2593,parent_idx=1719) # global direction in qpos0                (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_attenuation ; ) float*    light_attenuation ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=2597,parent_idx=1719) # OpenGL attenuation (quadratic model)     (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_cutoff ; ) float*    light_cutoff ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2601,parent_idx=1719) # OpenGL cutoff                            (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_exponent ; ) float*    light_exponent ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2605,parent_idx=1719) # OpenGL exponent                          (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_ambient ; ) float*    light_ambient ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2609,parent_idx=1719) # ambient rgb (alpha=1)                    (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_diffuse ; ) float*    light_diffuse ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2613,parent_idx=1719) # diffuse rgb (alpha=1)                    (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_specular ; ) float*    light_specular ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2617,parent_idx=1719) # specular rgb (alpha=1)                   (nlight x 3) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2619,parent_idx=1719) # flexes: contact properties 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_contype ; ) int*      flex_contype ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2623,parent_idx=1719) # flex contact type                        (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_conaffinity ; ) int*      flex_conaffinity ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2627,parent_idx=1719) # flex contact affinity                    (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_condim ; ) int*      flex_condim ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2631,parent_idx=1719) # contact dimensionality (1 ,  3 ,  4 ,  6)      (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_priority ; ) int*      flex_priority ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2635,parent_idx=1719) # flex contact priority                    (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_solmix ; ) mjtNum*   flex_solmix ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2639,parent_idx=1719) # mix coef for solref/imp in contact pair  (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_solref ; ) mjtNum*   flex_solref ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2643,parent_idx=1719) # constraint solver reference: contact     (nflex x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_solimp ; ) mjtNum*   flex_solimp ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2647,parent_idx=1719) # constraint solver impedance: contact     (nflex x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_friction ; ) mjtNum*   flex_friction ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2651,parent_idx=1719) # friction for (slide ,  spin ,  roll)         (nflex x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_margin ; ) mjtNum*   flex_margin ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2655,parent_idx=1719) # detect contact if dist<margin            (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_gap ; ) mjtNum*   flex_gap ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2659,parent_idx=1719) # include in solver if dist<margin-gap     (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_internal ; ) mjtByte*  flex_internal ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2663,parent_idx=1719) # internal flex collision enabled          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_selfcollide ; ) int*      flex_selfcollide ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2667,parent_idx=1719) # self collision mode (mjtFlexSelf)        (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_activelayers ; ) int*      flex_activelayers ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=2671,parent_idx=1719) # number of active element layers ,  3D only (nflex x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2673,parent_idx=1719) # flexes: other properties 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_dim ; ) int*      flex_dim ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2677,parent_idx=1719) # 1: lines ,  2: triangles ,  3: tetrahedra    (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_matid ; ) int*      flex_matid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2681,parent_idx=1719) # material id for rendering                (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_group ; ) int*      flex_group ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2685,parent_idx=1719) # group for visibility                     (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_vertadr ; ) int*      flex_vertadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2689,parent_idx=1719) # first vertex address                     (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_vertnum ; ) int*      flex_vertnum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2693,parent_idx=1719) # number of vertices                       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_edgeadr ; ) int*      flex_edgeadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2697,parent_idx=1719) # first edge address                       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_edgenum ; ) int*      flex_edgenum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2701,parent_idx=1719) # number of edges                          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemadr ; ) int*      flex_elemadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2705,parent_idx=1719) # first element address                    (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemnum ; ) int*      flex_elemnum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2709,parent_idx=1719) # number of elements                       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemdataadr ; ) int*      flex_elemdataadr ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2713,parent_idx=1719) # first element vertex id address          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemedgeadr ; ) int*      flex_elemedgeadr ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2717,parent_idx=1719) # first element edge id address            (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_shellnum ; ) int*      flex_shellnum ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2721,parent_idx=1719) # number of shells                         (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_shelldataadr ; ) int*      flex_shelldataadr ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=2725,parent_idx=1719) # first shell data address                 (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_evpairadr ; ) int*      flex_evpairadr ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2729,parent_idx=1719) # first evpair address                     (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_evpairnum ; ) int*      flex_evpairnum ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2733,parent_idx=1719) # number of evpairs                        (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_texcoordadr ; ) int*      flex_texcoordadr ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2737,parent_idx=1719) # address in flex_texcoord ;  -1: none       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_vertbodyid ; ) int*      flex_vertbodyid ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=2741,parent_idx=1719) # vertex body ids                          (nflexvert x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_edge ; ) int*      flex_edge ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2745,parent_idx=1719) # edge vertex ids (2 per edge)             (nflexedge x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elem ; ) int*      flex_elem ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2749,parent_idx=1719) # element vertex ids (dim+1 per elem)      (nflexelemdata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemedge ; ) int*      flex_elemedge ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2753,parent_idx=1719) # element edge ids                         (nflexelemedge x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemlayer ; ) int*      flex_elemlayer ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2757,parent_idx=1719) # element distance from surface ,  3D only   (nflexelem x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_shell ; ) int*      flex_shell ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2761,parent_idx=1719) # shell fragment vertex ids (dim per frag) (nflexshelldata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_evpair ; ) int*      flex_evpair ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2765,parent_idx=1719) # (element ,  vertex) collision pairs        (nflexevpair x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_vert ; ) mjtNum*   flex_vert ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2769,parent_idx=1719) # vertex positions in local body frames    (nflexvert x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_xvert0 ; ) mjtNum*   flex_xvert0 ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2773,parent_idx=1719) # Cartesian vertex positions in qpos0      (nflexvert x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flexedge_length0 ; ) mjtNum*   flexedge_length0 ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2777,parent_idx=1719) # edge lengths in qpos0                    (nflexedge x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flexedge_invweight0 ; ) mjtNum*   flexedge_invweight0 ; 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=2781,parent_idx=1719) # edge inv. weight in qpos0                (nflexedge x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_radius ; ) mjtNum*   flex_radius ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2785,parent_idx=1719) # radius around primitive element          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_stiffness ; ) mjtNum*   flex_stiffness ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2789,parent_idx=1719) # finite element stiffness matrix          (nflexelem x 21) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_damping ; ) mjtNum*   flex_damping ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2793,parent_idx=1719) # Rayleigh's damping coefficient           (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_edgestiffness ; ) mjtNum*   flex_edgestiffness ; 
PlaceHolderNode(   )    
SingleLineCommentNode(current_idx=2797,parent_idx=1719) # edge stiffness                           (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_edgedamping ; ) mjtNum*   flex_edgedamping ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2801,parent_idx=1719) # edge damping                             (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_edgeequality ; ) mjtByte*  flex_edgeequality ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=2805,parent_idx=1719) # is edge equality constraint defined      (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_rigid ; ) mjtByte*  flex_rigid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2809,parent_idx=1719) # are all verices in the same body         (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flexedge_rigid ; ) mjtByte*  flexedge_rigid ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2813,parent_idx=1719) # are both edge vertices in same body      (nflexedge x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_centered ; ) mjtByte*  flex_centered ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2817,parent_idx=1719) # are all vertex coordinates (0 , 0 , 0)       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_flatskin ; ) mjtByte*  flex_flatskin ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2821,parent_idx=1719) # render flex skin with flat shading       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_bvhadr ; ) int*      flex_bvhadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2825,parent_idx=1719) # address of bvh root ;  -1: no bvh          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_bvhnum ; ) int*      flex_bvhnum ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2829,parent_idx=1719) # number of bounding volumes               (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    flex_rgba ; ) float*    flex_rgba ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2833,parent_idx=1719) # rgba when material is omitted            (nflex x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    flex_texcoord ; ) float*    flex_texcoord ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2837,parent_idx=1719) # vertex texture coordinates               (nflextexcoord x 2) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2839,parent_idx=1719) # meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_vertadr ; ) int*      mesh_vertadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2843,parent_idx=1719) # first vertex address                     (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_vertnum ; ) int*      mesh_vertnum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2847,parent_idx=1719) # number of vertices                       (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_faceadr ; ) int*      mesh_faceadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2851,parent_idx=1719) # first face address                       (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_facenum ; ) int*      mesh_facenum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2855,parent_idx=1719) # number of faces                          (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_bvhadr ; ) int*      mesh_bvhadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2859,parent_idx=1719) # address of bvh root                      (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_bvhnum ; ) int*      mesh_bvhnum ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2863,parent_idx=1719) # number of bvh                            (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_normaladr ; ) int*      mesh_normaladr ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2867,parent_idx=1719) # first normal address                     (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_normalnum ; ) int*      mesh_normalnum ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=2871,parent_idx=1719) # number of normals                        (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_texcoordadr ; ) int*      mesh_texcoordadr ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2875,parent_idx=1719) # texcoord data address ;  -1: no texcoord   (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_texcoordnum ; ) int*      mesh_texcoordnum ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2879,parent_idx=1719) # number of texcoord                       (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_graphadr ; ) int*      mesh_graphadr ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2883,parent_idx=1719) # graph data address ;  -1: no graph         (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mesh_vert ; ) float*    mesh_vert ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2887,parent_idx=1719) # vertex positions for all meshes          (nmeshvert x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mesh_normal ; ) float*    mesh_normal ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=2891,parent_idx=1719) # normals for all meshes                   (nmeshnormal x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mesh_texcoord ; ) float*    mesh_texcoord ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2895,parent_idx=1719) # vertex texcoords for all meshes          (nmeshtexcoord x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_face ; ) int*      mesh_face ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2899,parent_idx=1719) # vertex face data                         (nmeshface x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_facenormal ; ) int*      mesh_facenormal ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=2903,parent_idx=1719) # normal face data                         (nmeshface x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_facetexcoord ; ) int*      mesh_facetexcoord ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=2907,parent_idx=1719) # texture face data                        (nmeshface x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_graph ; ) int*      mesh_graph ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2911,parent_idx=1719) # convex graph data                        (nmeshgraph x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   mesh_scale ; ) mjtNum*   mesh_scale ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2915,parent_idx=1719) # scaling applied to asset vertices        (nmesh x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   mesh_pos ; ) mjtNum*   mesh_pos ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=2919,parent_idx=1719) # translation applied to asset vertices    (nmesh x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   mesh_quat ; ) mjtNum*   mesh_quat ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2923,parent_idx=1719) # rotation applied to asset vertices       (nmesh x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_pathadr ; ) int*      mesh_pathadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2927,parent_idx=1719) # address of asset path for mesh ;  -1: none (nmesh x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=2929,parent_idx=1719) # skins 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_matid ; ) int*      skin_matid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2933,parent_idx=1719) # skin material id ;  -1: none               (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_group ; ) int*      skin_group ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=2937,parent_idx=1719) # group for visibility                     (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_rgba ; ) float*    skin_rgba ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2941,parent_idx=1719) # skin rgba                                (nskin x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_inflate ; ) float*    skin_inflate ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2945,parent_idx=1719) # inflate skin in normal direction         (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_vertadr ; ) int*      skin_vertadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2949,parent_idx=1719) # first vertex address                     (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_vertnum ; ) int*      skin_vertnum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2953,parent_idx=1719) # number of vertices                       (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_texcoordadr ; ) int*      skin_texcoordadr ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2957,parent_idx=1719) # texcoord data address ;  -1: no texcoord   (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_faceadr ; ) int*      skin_faceadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2961,parent_idx=1719) # first face address                       (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_facenum ; ) int*      skin_facenum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2965,parent_idx=1719) # number of faces                          (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_boneadr ; ) int*      skin_boneadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2969,parent_idx=1719) # first bone in skin                       (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonenum ; ) int*      skin_bonenum ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=2973,parent_idx=1719) # number of bones in skin                  (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_vert ; ) float*    skin_vert ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2977,parent_idx=1719) # vertex positions for all skin meshes     (nskinvert x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_texcoord ; ) float*    skin_texcoord ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=2981,parent_idx=1719) # vertex texcoords for all skin meshes     (nskintexvert x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_face ; ) int*      skin_face ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=2985,parent_idx=1719) # triangle faces for all skin meshes       (nskinface x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonevertadr ; ) int*      skin_bonevertadr ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2989,parent_idx=1719) # first vertex in each bone                (nskinbone x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonevertnum ; ) int*      skin_bonevertnum ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2993,parent_idx=1719) # number of vertices in each bone          (nskinbone x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_bonebindpos ; ) float*    skin_bonebindpos ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=2997,parent_idx=1719) # bind pos of each bone                    (nskinbone x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_bonebindquat ; ) float*    skin_bonebindquat ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3001,parent_idx=1719) # bind quat of each bone                   (nskinbone x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonebodyid ; ) int*      skin_bonebodyid ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3005,parent_idx=1719) # body id of each bone                     (nskinbone x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonevertid ; ) int*      skin_bonevertid ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3009,parent_idx=1719) # mesh ids of vertices in each bone        (nskinbonevert x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_bonevertweight ; ) float*    skin_bonevertweight ; 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=3013,parent_idx=1719) # weights of vertices in each bone         (nskinbonevert x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_pathadr ; ) int*      skin_pathadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3017,parent_idx=1719) # address of asset path for skin ;  -1: none (nskin x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3019,parent_idx=1719) # height fields 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   hfield_size ; ) mjtNum*   hfield_size ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3023,parent_idx=1719) # (x ,  y ,  z_top ,  z_bottom)                  (nhfield x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      hfield_nrow ; ) int*      hfield_nrow ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3027,parent_idx=1719) # number of rows in grid                   (nhfield x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      hfield_ncol ; ) int*      hfield_ncol ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3031,parent_idx=1719) # number of columns in grid                (nhfield x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      hfield_adr ; ) int*      hfield_adr ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3035,parent_idx=1719) # address in hfield_data                   (nhfield x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    hfield_data ; ) float*    hfield_data ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3039,parent_idx=1719) # elevation data                           (nhfielddata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      hfield_pathadr ; ) int*      hfield_pathadr ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3043,parent_idx=1719) # address of hfield asset path ;  -1: none   (nhfield x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3045,parent_idx=1719) # textures 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_type ; ) int*      tex_type ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3049,parent_idx=1719) # texture type (mjtTexture)                (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_height ; ) int*      tex_height ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3053,parent_idx=1719) # number of rows in texture image          (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_width ; ) int*      tex_width ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3057,parent_idx=1719) # number of columns in texture image       (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_nchannel ; ) int*      tex_nchannel ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3061,parent_idx=1719) # number of channels in texture image      (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_adr ; ) int*      tex_adr ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=3065,parent_idx=1719) # start address in tex_data                (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  tex_data ; ) mjtByte*  tex_data ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3069,parent_idx=1719) # pixel values                             (ntexdata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_pathadr ; ) int*      tex_pathadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3073,parent_idx=1719) # address of texture asset path ;  -1: none  (ntex x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3075,parent_idx=1719) # materials 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mat_texid ; ) int*      mat_texid ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3079,parent_idx=1719) # indices of textures ;  -1: none            (nmat x mjNTEXROLE) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  mat_texuniform ; ) mjtByte*  mat_texuniform ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3083,parent_idx=1719) # make texture cube uniform                (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_texrepeat ; ) float*    mat_texrepeat ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3087,parent_idx=1719) # texture repetition for 2d mapping        (nmat x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_emission ; ) float*    mat_emission ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3091,parent_idx=1719) # emission (x rgb)                         (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_specular ; ) float*    mat_specular ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3095,parent_idx=1719) # specular (x white)                       (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_shininess ; ) float*    mat_shininess ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3099,parent_idx=1719) # shininess coef                           (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_reflectance ; ) float*    mat_reflectance ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3103,parent_idx=1719) # reflectance (0: disable)                 (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_metallic ; ) float*    mat_metallic ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3107,parent_idx=1719) # metallic coef                            (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_roughness ; ) float*    mat_roughness ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3111,parent_idx=1719) # roughness coef                           (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_rgba ; ) float*    mat_rgba ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3115,parent_idx=1719) # rgba                                     (nmat x 4) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3117,parent_idx=1719) # predefined geom pairs for collision detection ;  has precedence over exclude 
PlaceHolderNode(  )   
PlaceHolderNode(int*      pair_dim ; ) int*      pair_dim ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3121,parent_idx=1719) # contact dimensionality                   (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      pair_geom1 ; ) int*      pair_geom1 ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3125,parent_idx=1719) # id of geom1                              (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      pair_geom2 ; ) int*      pair_geom2 ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3129,parent_idx=1719) # id of geom2                              (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      pair_signature ; ) int*      pair_signature ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3133,parent_idx=1719) # body1 << 16 + body2                      (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_solref ; ) mjtNum*   pair_solref ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3137,parent_idx=1719) # solver reference: contact normal         (npair x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_solreffriction ; ) mjtNum*   pair_solreffriction ; 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=3141,parent_idx=1719) # solver reference: contact friction       (npair x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_solimp ; ) mjtNum*   pair_solimp ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3145,parent_idx=1719) # solver impedance: contact                (npair x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_margin ; ) mjtNum*   pair_margin ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3149,parent_idx=1719) # detect contact if dist<margin            (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_gap ; ) mjtNum*   pair_gap ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3153,parent_idx=1719) # include in solver if dist<margin-gap     (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_friction ; ) mjtNum*   pair_friction ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3157,parent_idx=1719) # tangent1 ,  2 ,  spin ,  roll1 ,  2              (npair x 5) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3159,parent_idx=1719) # excluded body pairs for collision detection 
PlaceHolderNode(  )   
PlaceHolderNode(int*      exclude_signature ; ) int*      exclude_signature ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3163,parent_idx=1719) # body1 << 16 + body2                      (nexclude x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3165,parent_idx=1719) # equality constraints 
PlaceHolderNode(  )   
PlaceHolderNode(int*      eq_type ; ) int*      eq_type ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=3169,parent_idx=1719) # constraint type (mjtEq)                  (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      eq_obj1id ; ) int*      eq_obj1id ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3173,parent_idx=1719) # id of object 1                           (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      eq_obj2id ; ) int*      eq_obj2id ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3177,parent_idx=1719) # id of object 2                           (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      eq_objtype ; ) int*      eq_objtype ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3181,parent_idx=1719) # type of both objects (mjtObj)            (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  eq_active0 ; ) mjtByte*  eq_active0 ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3185,parent_idx=1719) # initial enable/disable constraint state  (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   eq_solref ; ) mjtNum*   eq_solref ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3189,parent_idx=1719) # constraint solver reference              (neq x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   eq_solimp ; ) mjtNum*   eq_solimp ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3193,parent_idx=1719) # constraint solver impedance              (neq x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   eq_data ; ) mjtNum*   eq_data ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=3197,parent_idx=1719) # numeric data for constraint              (neq x mjNEQDATA) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3199,parent_idx=1719) # tendons 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tendon_adr ; ) int*      tendon_adr ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3203,parent_idx=1719) # address of first object in tendon's path (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tendon_num ; ) int*      tendon_num ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3207,parent_idx=1719) # number of objects in tendon's path       (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tendon_matid ; ) int*      tendon_matid ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3211,parent_idx=1719) # material id for rendering                (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tendon_group ; ) int*      tendon_group ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3215,parent_idx=1719) # group for visibility                     (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  tendon_limited ; ) mjtByte*  tendon_limited ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3219,parent_idx=1719) # does tendon have length limits           (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_width ; ) mjtNum*   tendon_width ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3223,parent_idx=1719) # width for rendering                      (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_solref_lim ; ) mjtNum*   tendon_solref_lim ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3227,parent_idx=1719) # constraint solver reference: limit       (ntendon x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_solimp_lim ; ) mjtNum*   tendon_solimp_lim ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3231,parent_idx=1719) # constraint solver impedance: limit       (ntendon x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_solref_fri ; ) mjtNum*   tendon_solref_fri ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3235,parent_idx=1719) # constraint solver reference: friction    (ntendon x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_solimp_fri ; ) mjtNum*   tendon_solimp_fri ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3239,parent_idx=1719) # constraint solver impedance: friction    (ntendon x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_range ; ) mjtNum*   tendon_range ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3243,parent_idx=1719) # tendon length limits                     (ntendon x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_margin ; ) mjtNum*   tendon_margin ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3247,parent_idx=1719) # min distance for limit detection         (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_stiffness ; ) mjtNum*   tendon_stiffness ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=3251,parent_idx=1719) # stiffness coefficient                    (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_damping ; ) mjtNum*   tendon_damping ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3255,parent_idx=1719) # damping coefficient                      (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_frictionloss ; ) mjtNum*   tendon_frictionloss ; 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=3259,parent_idx=1719) # loss due to friction                     (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_lengthspring ; ) mjtNum*   tendon_lengthspring ; 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=3263,parent_idx=1719) # spring resting length range              (ntendon x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_length0 ; ) mjtNum*   tendon_length0 ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3267,parent_idx=1719) # tendon length in qpos0                   (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_invweight0 ; ) mjtNum*   tendon_invweight0 ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3271,parent_idx=1719) # inv. weight in qpos0                     (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_user ; ) mjtNum*   tendon_user ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3275,parent_idx=1719) # user data                                (ntendon x nuser_tendon) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    tendon_rgba ; ) float*    tendon_rgba ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3279,parent_idx=1719) # rgba when material is omitted            (ntendon x 4) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3281,parent_idx=1719) # list of all wrap objects in tendon paths 
PlaceHolderNode(  )   
PlaceHolderNode(int*      wrap_type ; ) int*      wrap_type ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3285,parent_idx=1719) # wrap object type (mjtWrap)               (nwrap x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      wrap_objid ; ) int*      wrap_objid ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3289,parent_idx=1719) # object id: geom ,  site ,  joint             (nwrap x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   wrap_prm ; ) mjtNum*   wrap_prm ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3293,parent_idx=1719) # divisor ,  joint coef ,  or site id          (nwrap x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3295,parent_idx=1719) # actuators 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_trntype ; ) int*      actuator_trntype ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=3299,parent_idx=1719) # transmission type (mjtTrn)               (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_dyntype ; ) int*      actuator_dyntype ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=3303,parent_idx=1719) # dynamics type (mjtDyn)                   (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_gaintype ; ) int*      actuator_gaintype ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3307,parent_idx=1719) # gain type (mjtGain)                      (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_biastype ; ) int*      actuator_biastype ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3311,parent_idx=1719) # bias type (mjtBias)                      (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_trnid ; ) int*      actuator_trnid ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3315,parent_idx=1719) # transmission id: joint ,  tendon ,  site     (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_actadr ; ) int*      actuator_actadr ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3319,parent_idx=1719) # first activation address ;  -1: stateless  (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_actnum ; ) int*      actuator_actnum ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3323,parent_idx=1719) # number of activation variables           (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_group ; ) int*      actuator_group ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3327,parent_idx=1719) # group for visibility                     (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  actuator_ctrllimited ; ) mjtByte*  actuator_ctrllimited ; 
PlaceHolderNode( )  
SingleLineCommentNode(current_idx=3331,parent_idx=1719) # is control limited                       (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  actuator_forcelimited ; ) mjtByte*  actuator_forcelimited ; 
SingleLineCommentNode(current_idx=3334,parent_idx=1719) # is force limited                         (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  actuator_actlimited ; ) mjtByte*  actuator_actlimited ; 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=3338,parent_idx=1719) # is activation limited                    (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_dynprm ; ) mjtNum*   actuator_dynprm ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3342,parent_idx=1719) # dynamics parameters                      (nu x mjNDYN) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_gainprm ; ) mjtNum*   actuator_gainprm ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=3346,parent_idx=1719) # gain parameters                          (nu x mjNGAIN) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_biasprm ; ) mjtNum*   actuator_biasprm ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=3350,parent_idx=1719) # bias parameters                          (nu x mjNBIAS) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  actuator_actearly ; ) mjtByte*  actuator_actearly ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3354,parent_idx=1719) # step activation before force             (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_ctrlrange ; ) mjtNum*   actuator_ctrlrange ; 
PlaceHolderNode(   )    
SingleLineCommentNode(current_idx=3358,parent_idx=1719) # range of controls                        (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_forcerange ; ) mjtNum*   actuator_forcerange ; 
PlaceHolderNode(  )   
SingleLineCommentNode(current_idx=3362,parent_idx=1719) # range of forces                          (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_actrange ; ) mjtNum*   actuator_actrange ; 
PlaceHolderNode(    )     
SingleLineCommentNode(current_idx=3366,parent_idx=1719) # range of activations                     (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_gear ; ) mjtNum*   actuator_gear ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3370,parent_idx=1719) # scale length and transmitted force       (nu x 6) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_cranklength ; ) mjtNum*   actuator_cranklength ; 
PlaceHolderNode( )  
SingleLineCommentNode(current_idx=3374,parent_idx=1719) # crank length for slider-crank            (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_acc0 ; ) mjtNum*   actuator_acc0 ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3378,parent_idx=1719) # acceleration from unit force in qpos0    (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_length0 ; ) mjtNum*   actuator_length0 ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=3382,parent_idx=1719) # actuator length in qpos0                 (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_lengthrange ; ) mjtNum*   actuator_lengthrange ; 
PlaceHolderNode( )  
SingleLineCommentNode(current_idx=3386,parent_idx=1719) # feasible actuator length range           (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_user ; ) mjtNum*   actuator_user ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3390,parent_idx=1719) # user data                                (nu x nuser_actuator) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_plugin ; ) int*      actuator_plugin ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3394,parent_idx=1719) # plugin instance id ;  -1: not a plugin     (nu x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3396,parent_idx=1719) # sensors 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_type ; ) int*      sensor_type ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3400,parent_idx=1719) # sensor type (mjtSensor)                  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_datatype ; ) int*      sensor_datatype ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3404,parent_idx=1719) # numeric data type (mjtDataType)          (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_needstage ; ) int*      sensor_needstage ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=3408,parent_idx=1719) # required compute stage (mjtStage)        (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_objtype ; ) int*      sensor_objtype ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3412,parent_idx=1719) # type of sensorized object (mjtObj)       (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_objid ; ) int*      sensor_objid ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3416,parent_idx=1719) # id of sensorized object                  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_reftype ; ) int*      sensor_reftype ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3420,parent_idx=1719) # type of reference frame (mjtObj)         (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_refid ; ) int*      sensor_refid ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3424,parent_idx=1719) # id of reference frame ;  -1: global frame  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_dim ; ) int*      sensor_dim ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3428,parent_idx=1719) # number of scalar outputs                 (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_adr ; ) int*      sensor_adr ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3432,parent_idx=1719) # address in sensor array                  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   sensor_cutoff ; ) mjtNum*   sensor_cutoff ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3436,parent_idx=1719) # cutoff for real and positive ;  0: ignore  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   sensor_noise ; ) mjtNum*   sensor_noise ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3440,parent_idx=1719) # noise standard deviation                 (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   sensor_user ; ) mjtNum*   sensor_user ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3444,parent_idx=1719) # user data                                (nsensor x nuser_sensor) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_plugin ; ) int*      sensor_plugin ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3448,parent_idx=1719) # plugin instance id ;  -1: not a plugin     (nsensor x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3450,parent_idx=1719) # plugin instances 
PlaceHolderNode(  )   
PlaceHolderNode(int*      plugin ; ) int*      plugin ; 
PlaceHolderNode(               )                
SingleLineCommentNode(current_idx=3454,parent_idx=1719) # globally registered plugin slot number   (nplugin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      plugin_stateadr ; ) int*      plugin_stateadr ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3458,parent_idx=1719) # address in the plugin state array        (nplugin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      plugin_statenum ; ) int*      plugin_statenum ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3462,parent_idx=1719) # number of states in the plugin instance  (nplugin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(char*     plugin_attr ; ) char*     plugin_attr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3466,parent_idx=1719) # config attributes of plugin instances    (npluginattr x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      plugin_attradr ; ) int*      plugin_attradr ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3470,parent_idx=1719) # address to each instance's config attrib (nplugin x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3472,parent_idx=1719) # custom numeric fields 
PlaceHolderNode(  )   
PlaceHolderNode(int*      numeric_adr ; ) int*      numeric_adr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3476,parent_idx=1719) # address of field in numeric_data         (nnumeric x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      numeric_size ; ) int*      numeric_size ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3480,parent_idx=1719) # size of numeric field                    (nnumeric x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   numeric_data ; ) mjtNum*   numeric_data ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3484,parent_idx=1719) # array of all numeric fields              (nnumericdata x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3486,parent_idx=1719) # custom text fields 
PlaceHolderNode(  )   
PlaceHolderNode(int*      text_adr ; ) int*      text_adr ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3490,parent_idx=1719) # address of text in text_data             (ntext x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      text_size ; ) int*      text_size ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3494,parent_idx=1719) # size of text field (strlen+1)            (ntext x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(char*     text_data ; ) char*     text_data ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3498,parent_idx=1719) # array of all text fields (0-terminated)  (ntextdata x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3500,parent_idx=1719) # custom tuple fields 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tuple_adr ; ) int*      tuple_adr ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3504,parent_idx=1719) # address of text in text_data             (ntuple x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tuple_size ; ) int*      tuple_size ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3508,parent_idx=1719) # number of objects in tuple               (ntuple x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tuple_objtype ; ) int*      tuple_objtype ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3512,parent_idx=1719) # array of object types in all tuples      (ntupledata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tuple_objid ; ) int*      tuple_objid ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3516,parent_idx=1719) # array of object ids in all tuples        (ntupledata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tuple_objprm ; ) mjtNum*   tuple_objprm ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3520,parent_idx=1719) # array of object params in all tuples     (ntupledata x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3522,parent_idx=1719) # keyframes 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_time ; ) mjtNum*   key_time ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3526,parent_idx=1719) # key time                                 (nkey x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_qpos ; ) mjtNum*   key_qpos ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3530,parent_idx=1719) # key position                             (nkey x nq) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_qvel ; ) mjtNum*   key_qvel ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3534,parent_idx=1719) # key velocity                             (nkey x nv) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_act ; ) mjtNum*   key_act ; 
PlaceHolderNode(              )               
SingleLineCommentNode(current_idx=3538,parent_idx=1719) # key activation                           (nkey x na) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_mpos ; ) mjtNum*   key_mpos ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3542,parent_idx=1719) # key mocap position                       (nkey x nmocap*3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_mquat ; ) mjtNum*   key_mquat ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3546,parent_idx=1719) # key mocap quaternion                     (nkey x nmocap*4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_ctrl ; ) mjtNum*   key_ctrl ; 
PlaceHolderNode(             )              
SingleLineCommentNode(current_idx=3550,parent_idx=1719) # key control                              (nkey x nu) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3552,parent_idx=1719) # names 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_bodyadr ; ) int*      name_bodyadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3556,parent_idx=1719) # body name pointers                       (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_jntadr ; ) int*      name_jntadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3560,parent_idx=1719) # joint name pointers                      (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_geomadr ; ) int*      name_geomadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3564,parent_idx=1719) # geom name pointers                       (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_siteadr ; ) int*      name_siteadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3568,parent_idx=1719) # site name pointers                       (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_camadr ; ) int*      name_camadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3572,parent_idx=1719) # camera name pointers                     (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_lightadr ; ) int*      name_lightadr ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3576,parent_idx=1719) # light name pointers                      (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_flexadr ; ) int*      name_flexadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3580,parent_idx=1719) # flex name pointers                       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_meshadr ; ) int*      name_meshadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3584,parent_idx=1719) # mesh name pointers                       (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_skinadr ; ) int*      name_skinadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3588,parent_idx=1719) # skin name pointers                       (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_hfieldadr ; ) int*      name_hfieldadr ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3592,parent_idx=1719) # hfield name pointers                     (nhfield x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_texadr ; ) int*      name_texadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3596,parent_idx=1719) # texture name pointers                    (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_matadr ; ) int*      name_matadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3600,parent_idx=1719) # material name pointers                   (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_pairadr ; ) int*      name_pairadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3604,parent_idx=1719) # geom pair name pointers                  (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_excludeadr ; ) int*      name_excludeadr ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3608,parent_idx=1719) # exclude name pointers                    (nexclude x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_eqadr ; ) int*      name_eqadr ; 
PlaceHolderNode(           )            
SingleLineCommentNode(current_idx=3612,parent_idx=1719) # equality constraint name pointers        (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_tendonadr ; ) int*      name_tendonadr ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3616,parent_idx=1719) # tendon name pointers                     (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_actuatoradr ; ) int*      name_actuatoradr ; 
PlaceHolderNode(     )      
SingleLineCommentNode(current_idx=3620,parent_idx=1719) # actuator name pointers                   (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_sensoradr ; ) int*      name_sensoradr ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3624,parent_idx=1719) # sensor name pointers                     (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_numericadr ; ) int*      name_numericadr ; 
PlaceHolderNode(      )       
SingleLineCommentNode(current_idx=3628,parent_idx=1719) # numeric name pointers                    (nnumeric x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_textadr ; ) int*      name_textadr ; 
PlaceHolderNode(         )          
SingleLineCommentNode(current_idx=3632,parent_idx=1719) # text name pointers                       (ntext x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_tupleadr ; ) int*      name_tupleadr ; 
PlaceHolderNode(        )         
SingleLineCommentNode(current_idx=3636,parent_idx=1719) # tuple name pointers                      (ntuple x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_keyadr ; ) int*      name_keyadr ; 
PlaceHolderNode(          )           
SingleLineCommentNode(current_idx=3640,parent_idx=1719) # keyframe name pointers                   (nkey x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_pluginadr ; ) int*      name_pluginadr ; 
PlaceHolderNode(       )        
SingleLineCommentNode(current_idx=3644,parent_idx=1719) # plugin instance name pointers            (nplugin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(char*     names ; ) char*     names ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=3648,parent_idx=1719) # names of all objects ,  0-terminated       (nnames x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      names_map ; ) int*      names_map ; 
PlaceHolderNode(            )             
SingleLineCommentNode(current_idx=3652,parent_idx=1719) # internal hash map of names               (nnames_map x 1) 
PlaceHolderNode( 
  )  
  
SingleLineCommentNode(current_idx=3654,parent_idx=1719) # paths 
PlaceHolderNode(  )   
PlaceHolderNode(char*     paths ; ) char*     paths ; 
PlaceHolderNode(                )                 
SingleLineCommentNode(current_idx=3658,parent_idx=1719) # paths to assets ,  0-terminated            (npaths x 1) 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjModel ; ) typedef <children> mjModel ; 
PlaceHolderNode(struct mjModel_ ) struct mjModel_ 
PlaceHolderNode(mjModel ) mjModel 
PlaceHolderNode( 
 )  
 
PlaceHolderNode(#endif ) #endif 
PlaceHolderNode( )  
SingleLineCommentNode(current_idx=3666,parent_idx=0) # MUJOCO_MJMODEL_H_ 
PlaceHolderNode( )  
