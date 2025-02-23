RootNode(children=3686) 
PlaceHolderNode(// Copyright 2021 DeepMind Technologies Limited ) // Copyright 2021 DeepMind Technologies Limited 
PlaceHolderNode(// ) // 
PlaceHolderNode(// Licensed under the Apache License ,  Version 2.0 (the "License") ;  ) // Licensed under the Apache License ,  Version 2.0 (the "License") ;  
PlaceHolderNode(// you may not use this file except in compliance with the License. ) // you may not use this file except in compliance with the License. 
PlaceHolderNode(// You may obtain a copy of the License at ) // You may obtain a copy of the License at 
PlaceHolderNode(// ) // 
PlaceHolderNode(//     http://www.apache.org/licenses/LICENSE-2.0 ) //     http://www.apache.org/licenses/LICENSE-2.0 
PlaceHolderNode(// ) // 
PlaceHolderNode(// Unless required by applicable law or agreed to in writing ,  software ) // Unless required by applicable law or agreed to in writing ,  software 
PlaceHolderNode(// distributed under the License is distributed on an "AS IS" BASIS ,  ) // distributed under the License is distributed on an "AS IS" BASIS ,  
PlaceHolderNode(// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. ) // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. 
PlaceHolderNode(// See the License for the specific language governing permissions and ) // See the License for the specific language governing permissions and 
PlaceHolderNode(// limitations under the License. ) // limitations under the License. 
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
PlaceHolderNode(// global constants ) // global constants 
PlaceHolderNode(#define mjPI            3.14159265358979323846 ) #define mjPI            3.14159265358979323846 
PlaceHolderNode(#define mjMAXVAL        1E+10     ) #define mjMAXVAL        1E+10     
PlaceHolderNode(// maximum value in qpos ,  qvel ,  qacc ) // maximum value in qpos ,  qvel ,  qacc 
PlaceHolderNode(#define mjMINMU         1E-5      ) #define mjMINMU         1E-5      
PlaceHolderNode(// minimum friction coefficient ) // minimum friction coefficient 
PlaceHolderNode(#define mjMINIMP        0.0001    ) #define mjMINIMP        0.0001    
PlaceHolderNode(// minimum constraint impedance ) // minimum constraint impedance 
PlaceHolderNode(#define mjMAXIMP        0.9999    ) #define mjMAXIMP        0.9999    
PlaceHolderNode(// maximum constraint impedance ) // maximum constraint impedance 
PlaceHolderNode(#define mjMAXCONPAIR    50        ) #define mjMAXCONPAIR    50        
PlaceHolderNode(// maximum number of contacts per geom pair ) // maximum number of contacts per geom pair 
PlaceHolderNode(#define mjMAXTREEDEPTH  50        ) #define mjMAXTREEDEPTH  50        
PlaceHolderNode(// maximum bounding volume hierarchy depth ) // maximum bounding volume hierarchy depth 
PlaceHolderNode( 
 )  
 
PlaceHolderNode(//---------------------------------- sizes --------------------------------------------------------- ) //---------------------------------- sizes --------------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(#define mjNEQDATA       11        ) #define mjNEQDATA       11        
PlaceHolderNode(// number of eq_data fields ) // number of eq_data fields 
PlaceHolderNode(#define mjNDYN          10        ) #define mjNDYN          10        
PlaceHolderNode(// number of actuator dynamics parameters ) // number of actuator dynamics parameters 
PlaceHolderNode(#define mjNGAIN         10        ) #define mjNGAIN         10        
PlaceHolderNode(// number of actuator gain parameters ) // number of actuator gain parameters 
PlaceHolderNode(#define mjNBIAS         10        ) #define mjNBIAS         10        
PlaceHolderNode(// number of actuator bias parameters ) // number of actuator bias parameters 
PlaceHolderNode(#define mjNFLUID        12        ) #define mjNFLUID        12        
PlaceHolderNode(// number of fluid interaction parameters ) // number of fluid interaction parameters 
PlaceHolderNode(#define mjNREF          2         ) #define mjNREF          2         
PlaceHolderNode(// number of solver reference parameters ) // number of solver reference parameters 
PlaceHolderNode(#define mjNIMP          5         ) #define mjNIMP          5         
PlaceHolderNode(// number of solver impedance parameters ) // number of solver impedance parameters 
PlaceHolderNode(#define mjNSOLVER       200       ) #define mjNSOLVER       200       
PlaceHolderNode(// size of one mjData.solver array ) // size of one mjData.solver array 
PlaceHolderNode(#define mjNISLAND       20        ) #define mjNISLAND       20        
PlaceHolderNode(// number of mjData.solver arrays ) // number of mjData.solver arrays 
PlaceHolderNode( )  
PlaceHolderNode(//---------------------------------- enum types (mjt) ---------------------------------------------- ) //---------------------------------- enum types (mjt) ---------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> 
mjtDisableBit ; ) typedef <children> 
mjtDisableBit ; 
PlaceHolderNode(enum mjtDisableBit_ ) enum mjtDisableBit_ 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(    )     
PlaceHolderNode(// disable default feature bitflags ) // disable default feature bitflags 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_CONSTRAINT   = 1<<0 , ) mjDSBL_CONSTRAINT   = 1<<0 , 
PlaceHolderNode(     )      
PlaceHolderNode(// entire constraint solver ) // entire constraint solver 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_EQUALITY     = 1<<1 , ) mjDSBL_EQUALITY     = 1<<1 , 
PlaceHolderNode(     )      
PlaceHolderNode(// equality constraints ) // equality constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_FRICTIONLOSS = 1<<2 , ) mjDSBL_FRICTIONLOSS = 1<<2 , 
PlaceHolderNode(     )      
PlaceHolderNode(// joint and tendon frictionloss constraints ) // joint and tendon frictionloss constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_LIMIT        = 1<<3 , ) mjDSBL_LIMIT        = 1<<3 , 
PlaceHolderNode(     )      
PlaceHolderNode(// joint and tendon limit constraints ) // joint and tendon limit constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_CONTACT      = 1<<4 , ) mjDSBL_CONTACT      = 1<<4 , 
PlaceHolderNode(     )      
PlaceHolderNode(// contact constraints ) // contact constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_PASSIVE      = 1<<5 , ) mjDSBL_PASSIVE      = 1<<5 , 
PlaceHolderNode(     )      
PlaceHolderNode(// passive forces ) // passive forces 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_GRAVITY      = 1<<6 , ) mjDSBL_GRAVITY      = 1<<6 , 
PlaceHolderNode(     )      
PlaceHolderNode(// gravitational forces ) // gravitational forces 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_CLAMPCTRL    = 1<<7 , ) mjDSBL_CLAMPCTRL    = 1<<7 , 
PlaceHolderNode(     )      
PlaceHolderNode(// clamp control to specified range ) // clamp control to specified range 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_WARMSTART    = 1<<8 , ) mjDSBL_WARMSTART    = 1<<8 , 
PlaceHolderNode(     )      
PlaceHolderNode(// warmstart constraint solver ) // warmstart constraint solver 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_FILTERPARENT = 1<<9 , ) mjDSBL_FILTERPARENT = 1<<9 , 
PlaceHolderNode(     )      
PlaceHolderNode(// remove collisions with parent body ) // remove collisions with parent body 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_ACTUATION    = 1<<10 , ) mjDSBL_ACTUATION    = 1<<10 , 
PlaceHolderNode(    )     
PlaceHolderNode(// apply actuation forces ) // apply actuation forces 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_REFSAFE      = 1<<11 , ) mjDSBL_REFSAFE      = 1<<11 , 
PlaceHolderNode(    )     
PlaceHolderNode(// integrator safety: make ref[0]>=2*timestep ) // integrator safety: make ref[0]>=2*timestep 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_SENSOR       = 1<<12 , ) mjDSBL_SENSOR       = 1<<12 , 
PlaceHolderNode(    )     
PlaceHolderNode(// sensors ) // sensors 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_MIDPHASE     = 1<<13 , ) mjDSBL_MIDPHASE     = 1<<13 , 
PlaceHolderNode(    )     
PlaceHolderNode(// mid-phase collision filtering ) // mid-phase collision filtering 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_EULERDAMP    = 1<<14 , ) mjDSBL_EULERDAMP    = 1<<14 , 
PlaceHolderNode(    )     
PlaceHolderNode(// implicit integration of joint damping in Euler integrator ) // implicit integration of joint damping in Euler integrator 
PlaceHolderNode(  )   
PlaceHolderNode(mjDSBL_AUTORESET    = 1<<15 , ) mjDSBL_AUTORESET    = 1<<15 , 
PlaceHolderNode(    )     
PlaceHolderNode(// automatic reset when numerical issues are detected ) // automatic reset when numerical issues are detected 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjNDISABLE          = 16 ) mjNDISABLE          = 16 
PlaceHolderNode(       )        
PlaceHolderNode(// number of disable flags ) // number of disable flags 
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
PlaceHolderNode(// enable optional feature bitflags ) // enable optional feature bitflags 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_OVERRIDE     = 1<<0 , ) mjENBL_OVERRIDE     = 1<<0 , 
PlaceHolderNode(     )      
PlaceHolderNode(// override contact parameters ) // override contact parameters 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_ENERGY       = 1<<1 , ) mjENBL_ENERGY       = 1<<1 , 
PlaceHolderNode(     )      
PlaceHolderNode(// energy computation ) // energy computation 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_FWDINV       = 1<<2 , ) mjENBL_FWDINV       = 1<<2 , 
PlaceHolderNode(     )      
PlaceHolderNode(// record solver statistics ) // record solver statistics 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_INVDISCRETE  = 1<<3 , ) mjENBL_INVDISCRETE  = 1<<3 , 
PlaceHolderNode(     )      
PlaceHolderNode(// discrete-time inverse dynamics ) // discrete-time inverse dynamics 
PlaceHolderNode(                                  )                                   
PlaceHolderNode(// experimental features: ) // experimental features: 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_MULTICCD     = 1<<4 , ) mjENBL_MULTICCD     = 1<<4 , 
PlaceHolderNode(     )      
PlaceHolderNode(// multi-point convex collision detection ) // multi-point convex collision detection 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_ISLAND       = 1<<5 , ) mjENBL_ISLAND       = 1<<5 , 
PlaceHolderNode(     )      
PlaceHolderNode(// constraint island discovery ) // constraint island discovery 
PlaceHolderNode(  )   
PlaceHolderNode(mjENBL_NATIVECCD    = 1<<6 , ) mjENBL_NATIVECCD    = 1<<6 , 
PlaceHolderNode(     )      
PlaceHolderNode(// native convex collision detection ) // native convex collision detection 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjNENABLE           = 7 ) mjNENABLE           = 7 
PlaceHolderNode(        )         
PlaceHolderNode(// number of enable flags ) // number of enable flags 
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
PlaceHolderNode(// type of degree of freedom ) // type of degree of freedom 
PlaceHolderNode(  )   
PlaceHolderNode(mjJNT_FREE          = 0 , ) mjJNT_FREE          = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// global position and orientation (quat)       (7) ) // global position and orientation (quat)       (7) 
PlaceHolderNode(  )   
PlaceHolderNode(mjJNT_BALL , ) mjJNT_BALL , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// orientation (quat) relative to parent        (4) ) // orientation (quat) relative to parent        (4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjJNT_SLIDE , ) mjJNT_SLIDE , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// sliding distance along body-fixed axis       (1) ) // sliding distance along body-fixed axis       (1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjJNT_HINGE                     ) mjJNT_HINGE                     
PlaceHolderNode(// rotation angle (rad) around body-fixed axis  (1) ) // rotation angle (rad) around body-fixed axis  (1) 
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
PlaceHolderNode(// type of geometric shape ) // type of geometric shape 
PlaceHolderNode(  )   
PlaceHolderNode(// regular geom types ) // regular geom types 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_PLANE        = 0 , ) mjGEOM_PLANE        = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// plane ) // plane 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_HFIELD , ) mjGEOM_HFIELD , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// height field ) // height field 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_SPHERE , ) mjGEOM_SPHERE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// sphere ) // sphere 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_CAPSULE , ) mjGEOM_CAPSULE , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// capsule ) // capsule 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_ELLIPSOID , ) mjGEOM_ELLIPSOID , 
PlaceHolderNode(               )                
PlaceHolderNode(// ellipsoid ) // ellipsoid 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_CYLINDER , ) mjGEOM_CYLINDER , 
PlaceHolderNode(                )                 
PlaceHolderNode(// cylinder ) // cylinder 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_BOX , ) mjGEOM_BOX , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// box ) // box 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_MESH , ) mjGEOM_MESH , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// mesh ) // mesh 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_SDF , ) mjGEOM_SDF , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// signed distance field ) // signed distance field 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjNGEOMTYPES , ) mjNGEOMTYPES , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// number of regular geom types ) // number of regular geom types 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// rendering-only geom types: not used in mjModel ,  not counted in mjNGEOMTYPES ) // rendering-only geom types: not used in mjModel ,  not counted in mjNGEOMTYPES 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_ARROW        = 100 , ) mjGEOM_ARROW        = 100 , 
PlaceHolderNode(      )       
PlaceHolderNode(// arrow ) // arrow 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_ARROW1 , ) mjGEOM_ARROW1 , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// arrow without wedges ) // arrow without wedges 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_ARROW2 , ) mjGEOM_ARROW2 , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// arrow in both directions ) // arrow in both directions 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_LINE , ) mjGEOM_LINE , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// line ) // line 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_LINEBOX , ) mjGEOM_LINEBOX , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// box with line edges ) // box with line edges 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_FLEX , ) mjGEOM_FLEX , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// flex ) // flex 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_SKIN , ) mjGEOM_SKIN , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// skin ) // skin 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_LABEL , ) mjGEOM_LABEL , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// text label ) // text label 
PlaceHolderNode(  )   
PlaceHolderNode(mjGEOM_TRIANGLE , ) mjGEOM_TRIANGLE , 
PlaceHolderNode(                )                 
PlaceHolderNode(// triangle ) // triangle 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjGEOM_NONE         = 1001 ) mjGEOM_NONE         = 1001 
PlaceHolderNode(     )      
PlaceHolderNode(// missing geom type ) // missing geom type 
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
PlaceHolderNode(// tracking mode for camera and light ) // tracking mode for camera and light 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_FIXED    = 0 , ) mjCAMLIGHT_FIXED    = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// pos and rot fixed in body ) // pos and rot fixed in body 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_TRACK , ) mjCAMLIGHT_TRACK , 
PlaceHolderNode(               )                
PlaceHolderNode(// pos tracks body ,  rot fixed in global ) // pos tracks body ,  rot fixed in global 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_TRACKCOM , ) mjCAMLIGHT_TRACKCOM , 
PlaceHolderNode(            )             
PlaceHolderNode(// pos tracks subtree com ,  rot fixed in body ) // pos tracks subtree com ,  rot fixed in body 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_TARGETBODY , ) mjCAMLIGHT_TARGETBODY , 
PlaceHolderNode(          )           
PlaceHolderNode(// pos fixed in body ,  rot tracks target body ) // pos fixed in body ,  rot tracks target body 
PlaceHolderNode(  )   
PlaceHolderNode(mjCAMLIGHT_TARGETBODYCOM        ) mjCAMLIGHT_TARGETBODYCOM        
PlaceHolderNode(// pos fixed in body ,  rot tracks target subtree com ) // pos fixed in body ,  rot tracks target subtree com 
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
PlaceHolderNode(// type of texture ) // type of texture 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXTURE_2D        = 0 , ) mjTEXTURE_2D        = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// 2d texture ,  suitable for planes and hfields ) // 2d texture ,  suitable for planes and hfields 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXTURE_CUBE , ) mjTEXTURE_CUBE , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// cube texture ,  suitable for all other geom types ) // cube texture ,  suitable for all other geom types 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXTURE_SKYBOX                ) mjTEXTURE_SKYBOX                
PlaceHolderNode(// cube texture used as skybox ) // cube texture used as skybox 
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
PlaceHolderNode(// role of texture map in rendering ) // role of texture map in rendering 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_USER      = 0 , ) mjTEXROLE_USER      = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// unspecified ) // unspecified 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_RGB , ) mjTEXROLE_RGB , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// base color (albedo) ) // base color (albedo) 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_OCCLUSION , ) mjTEXROLE_OCCLUSION , 
PlaceHolderNode(            )             
PlaceHolderNode(// ambient occlusion ) // ambient occlusion 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_ROUGHNESS , ) mjTEXROLE_ROUGHNESS , 
PlaceHolderNode(            )             
PlaceHolderNode(// roughness ) // roughness 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_METALLIC , ) mjTEXROLE_METALLIC , 
PlaceHolderNode(             )              
PlaceHolderNode(// metallic ) // metallic 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_NORMAL , ) mjTEXROLE_NORMAL , 
PlaceHolderNode(               )                
PlaceHolderNode(// normal (bump) map ) // normal (bump) map 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_OPACITY , ) mjTEXROLE_OPACITY , 
PlaceHolderNode(              )               
PlaceHolderNode(// transperancy ) // transperancy 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_EMISSIVE , ) mjTEXROLE_EMISSIVE , 
PlaceHolderNode(             )              
PlaceHolderNode(// light emission ) // light emission 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_RGBA , ) mjTEXROLE_RGBA , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// base color ,  opacity ) // base color ,  opacity 
PlaceHolderNode(  )   
PlaceHolderNode(mjTEXROLE_ORM , ) mjTEXROLE_ORM , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// occlusion ,  roughness ,  metallic ) // occlusion ,  roughness ,  metallic 
PlaceHolderNode(  )   
PlaceHolderNode(mjNTEXROLE 
} mjtTextureRole ;  
 
 
typedef enum mjtIntegrator_ {     ) mjNTEXROLE 
} mjtTextureRole ;  
 
 
typedef enum mjtIntegrator_ {     
PlaceHolderNode(// integrator mode ) // integrator mode 
PlaceHolderNode(  )   
PlaceHolderNode(mjINT_EULER         = 0 , ) mjINT_EULER         = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// semi-implicit Euler ) // semi-implicit Euler 
PlaceHolderNode(  )   
PlaceHolderNode(mjINT_RK4 , ) mjINT_RK4 , 
PlaceHolderNode(                      )                       
PlaceHolderNode(// 4th-order Runge Kutta ) // 4th-order Runge Kutta 
PlaceHolderNode(  )   
PlaceHolderNode(mjINT_IMPLICIT , ) mjINT_IMPLICIT , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// implicit in velocity ) // implicit in velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjINT_IMPLICITFAST              ) mjINT_IMPLICITFAST              
PlaceHolderNode(// implicit in velocity ,  no rne derivative ) // implicit in velocity ,  no rne derivative 
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
PlaceHolderNode(// type of friction cone ) // type of friction cone 
PlaceHolderNode(  )   
PlaceHolderNode(mjCONE_PYRAMIDAL     = 0 , ) mjCONE_PYRAMIDAL     = 0 , 
PlaceHolderNode(       )        
PlaceHolderNode(// pyramidal ) // pyramidal 
PlaceHolderNode(  )   
PlaceHolderNode(mjCONE_ELLIPTIC                 ) mjCONE_ELLIPTIC                 
PlaceHolderNode(// elliptic ) // elliptic 
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
PlaceHolderNode(// type of constraint Jacobian ) // type of constraint Jacobian 
PlaceHolderNode(  )   
PlaceHolderNode(mjJAC_DENSE          = 0 , ) mjJAC_DENSE          = 0 , 
PlaceHolderNode(       )        
PlaceHolderNode(// dense ) // dense 
PlaceHolderNode(  )   
PlaceHolderNode(mjJAC_SPARSE , ) mjJAC_SPARSE , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// sparse ) // sparse 
PlaceHolderNode(  )   
PlaceHolderNode(mjJAC_AUTO                      ) mjJAC_AUTO                      
PlaceHolderNode(// dense if nv<60 ,  sparse otherwise ) // dense if nv<60 ,  sparse otherwise 
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
PlaceHolderNode(// constraint solver algorithm ) // constraint solver algorithm 
PlaceHolderNode(  )   
PlaceHolderNode(mjSOL_PGS            = 0 , ) mjSOL_PGS            = 0 , 
PlaceHolderNode(       )        
PlaceHolderNode(// PGS    (dual) ) // PGS    (dual) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSOL_CG , ) mjSOL_CG , 
PlaceHolderNode(                       )                        
PlaceHolderNode(// CG     (primal) ) // CG     (primal) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSOL_NEWTON                    ) mjSOL_NEWTON                    
PlaceHolderNode(// Newton (primal) ) // Newton (primal) 
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
PlaceHolderNode(// type of equality constraint ) // type of equality constraint 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_CONNECT        = 0 , ) mjEQ_CONNECT        = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// connect two bodies at a point (ball joint) ) // connect two bodies at a point (ball joint) 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_WELD , ) mjEQ_WELD , 
PlaceHolderNode(                      )                       
PlaceHolderNode(// fix relative position and orientation of two bodies ) // fix relative position and orientation of two bodies 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_JOINT , ) mjEQ_JOINT , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// couple the values of two scalar joints with cubic ) // couple the values of two scalar joints with cubic 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_TENDON , ) mjEQ_TENDON , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// couple the lengths of two tendons with cubic ) // couple the lengths of two tendons with cubic 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_FLEX , ) mjEQ_FLEX , 
PlaceHolderNode(                      )                       
PlaceHolderNode(// fix all edge lengths of a flex ) // fix all edge lengths of a flex 
PlaceHolderNode(  )   
PlaceHolderNode(mjEQ_DISTANCE                   ) mjEQ_DISTANCE                   
PlaceHolderNode(// unsupported ,  will cause an error if used ) // unsupported ,  will cause an error if used 
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
PlaceHolderNode(// type of tendon wrap object ) // type of tendon wrap object 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_NONE         = 0 , ) mjWRAP_NONE         = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// null object ) // null object 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_JOINT , ) mjWRAP_JOINT , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// constant moment arm ) // constant moment arm 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_PULLEY , ) mjWRAP_PULLEY , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// pulley used to split tendon ) // pulley used to split tendon 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_SITE , ) mjWRAP_SITE , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// pass through site ) // pass through site 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_SPHERE , ) mjWRAP_SPHERE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// wrap around sphere ) // wrap around sphere 
PlaceHolderNode(  )   
PlaceHolderNode(mjWRAP_CYLINDER                 ) mjWRAP_CYLINDER                 
PlaceHolderNode(// wrap around (infinite) cylinder ) // wrap around (infinite) cylinder 
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
PlaceHolderNode(// type of actuator transmission ) // type of actuator transmission 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_JOINT         = 0 , ) mjTRN_JOINT         = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// force on joint ) // force on joint 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_JOINTINPARENT , ) mjTRN_JOINTINPARENT , 
PlaceHolderNode(            )             
PlaceHolderNode(// force on joint ,  expressed in parent frame ) // force on joint ,  expressed in parent frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_SLIDERCRANK , ) mjTRN_SLIDERCRANK , 
PlaceHolderNode(              )               
PlaceHolderNode(// force via slider-crank linkage ) // force via slider-crank linkage 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_TENDON , ) mjTRN_TENDON , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// force on tendon ) // force on tendon 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_SITE , ) mjTRN_SITE , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// force on site ) // force on site 
PlaceHolderNode(  )   
PlaceHolderNode(mjTRN_BODY , ) mjTRN_BODY , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// adhesion force on a body's geoms ) // adhesion force on a body's geoms 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjTRN_UNDEFINED     = 1000 ) mjTRN_UNDEFINED     = 1000 
PlaceHolderNode(     )      
PlaceHolderNode(// undefined transmission type ) // undefined transmission type 
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
PlaceHolderNode(// type of actuator dynamics ) // type of actuator dynamics 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_NONE          = 0 , ) mjDYN_NONE          = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// no internal dynamics ;  ctrl specifies force ) // no internal dynamics ;  ctrl specifies force 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_INTEGRATOR , ) mjDYN_INTEGRATOR , 
PlaceHolderNode(               )                
PlaceHolderNode(// integrator: da/dt = u ) // integrator: da/dt = u 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_FILTER , ) mjDYN_FILTER , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// linear filter: da/dt = (u-a) / tau ) // linear filter: da/dt = (u-a) / tau 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_FILTEREXACT , ) mjDYN_FILTEREXACT , 
PlaceHolderNode(              )               
PlaceHolderNode(// linear filter: da/dt = (u-a) / tau ,  with exact integration ) // linear filter: da/dt = (u-a) / tau ,  with exact integration 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_MUSCLE , ) mjDYN_MUSCLE , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// piece-wise linear filter with two time constants ) // piece-wise linear filter with two time constants 
PlaceHolderNode(  )   
PlaceHolderNode(mjDYN_USER                      ) mjDYN_USER                      
PlaceHolderNode(// user-defined dynamics type ) // user-defined dynamics type 
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
PlaceHolderNode(// type of actuator gain ) // type of actuator gain 
PlaceHolderNode(  )   
PlaceHolderNode(mjGAIN_FIXED        = 0 , ) mjGAIN_FIXED        = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// fixed gain ) // fixed gain 
PlaceHolderNode(  )   
PlaceHolderNode(mjGAIN_AFFINE , ) mjGAIN_AFFINE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// const + kp*length + kv*velocity ) // const + kp*length + kv*velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjGAIN_MUSCLE , ) mjGAIN_MUSCLE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// muscle FLV curve computed by mju_muscleGain() ) // muscle FLV curve computed by mju_muscleGain() 
PlaceHolderNode(  )   
PlaceHolderNode(mjGAIN_USER                     ) mjGAIN_USER                     
PlaceHolderNode(// user-defined gain type ) // user-defined gain type 
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
PlaceHolderNode(// type of actuator bias ) // type of actuator bias 
PlaceHolderNode(  )   
PlaceHolderNode(mjBIAS_NONE         = 0 , ) mjBIAS_NONE         = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// no bias ) // no bias 
PlaceHolderNode(  )   
PlaceHolderNode(mjBIAS_AFFINE , ) mjBIAS_AFFINE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// const + kp*length + kv*velocity ) // const + kp*length + kv*velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjBIAS_MUSCLE , ) mjBIAS_MUSCLE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// muscle passive force computed by mju_muscleBias() ) // muscle passive force computed by mju_muscleBias() 
PlaceHolderNode(  )   
PlaceHolderNode(mjBIAS_USER                     ) mjBIAS_USER                     
PlaceHolderNode(// user-defined bias type ) // user-defined bias type 
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
PlaceHolderNode(// type of MujoCo object ) // type of MujoCo object 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_UNKNOWN       = 0 , ) mjOBJ_UNKNOWN       = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// unknown object type ) // unknown object type 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_BODY , ) mjOBJ_BODY , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// body ) // body 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_XBODY , ) mjOBJ_XBODY , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// body ,  used to access regular frame instead of i-frame ) // body ,  used to access regular frame instead of i-frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_JOINT , ) mjOBJ_JOINT , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// joint ) // joint 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_DOF , ) mjOBJ_DOF , 
PlaceHolderNode(                      )                       
PlaceHolderNode(// dof ) // dof 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_GEOM , ) mjOBJ_GEOM , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// geom ) // geom 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_SITE , ) mjOBJ_SITE , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// site ) // site 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_CAMERA , ) mjOBJ_CAMERA , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// camera ) // camera 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_LIGHT , ) mjOBJ_LIGHT , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// light ) // light 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_FLEX , ) mjOBJ_FLEX , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// flex ) // flex 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_MESH , ) mjOBJ_MESH , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// mesh ) // mesh 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_SKIN , ) mjOBJ_SKIN , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// skin ) // skin 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_HFIELD , ) mjOBJ_HFIELD , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// heightfield ) // heightfield 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_TEXTURE , ) mjOBJ_TEXTURE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// texture ) // texture 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_MATERIAL , ) mjOBJ_MATERIAL , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// material for rendering ) // material for rendering 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_PAIR , ) mjOBJ_PAIR , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// geom pair to include ) // geom pair to include 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_EXCLUDE , ) mjOBJ_EXCLUDE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// body pair to exclude ) // body pair to exclude 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_EQUALITY , ) mjOBJ_EQUALITY , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// equality constraint ) // equality constraint 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_TENDON , ) mjOBJ_TENDON , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// tendon ) // tendon 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_ACTUATOR , ) mjOBJ_ACTUATOR , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// actuator ) // actuator 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_SENSOR , ) mjOBJ_SENSOR , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// sensor ) // sensor 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_NUMERIC , ) mjOBJ_NUMERIC , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// numeric ) // numeric 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_TEXT , ) mjOBJ_TEXT , 
PlaceHolderNode(                     )                      
PlaceHolderNode(// text ) // text 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_TUPLE , ) mjOBJ_TUPLE , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// tuple ) // tuple 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_KEY , ) mjOBJ_KEY , 
PlaceHolderNode(                      )                       
PlaceHolderNode(// keyframe ) // keyframe 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_PLUGIN , ) mjOBJ_PLUGIN , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// plugin instance ) // plugin instance 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjNOBJECT , ) mjNOBJECT , 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of object types ) // number of object types 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// meta elements ,  do not appear in mjModel ) // meta elements ,  do not appear in mjModel 
PlaceHolderNode(  )   
PlaceHolderNode(mjOBJ_FRAME         = 100 ) mjOBJ_FRAME         = 100 
PlaceHolderNode(      )       
PlaceHolderNode(// frame ) // frame 
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
PlaceHolderNode(// type of constraint ) // type of constraint 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_EQUALITY    = 0 , ) mjCNSTR_EQUALITY    = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// equality constraint ) // equality constraint 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_FRICTION_DOF , ) mjCNSTR_FRICTION_DOF , 
PlaceHolderNode(           )            
PlaceHolderNode(// dof friction ) // dof friction 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_FRICTION_TENDON , ) mjCNSTR_FRICTION_TENDON , 
PlaceHolderNode(        )         
PlaceHolderNode(// tendon friction ) // tendon friction 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_LIMIT_JOINT , ) mjCNSTR_LIMIT_JOINT , 
PlaceHolderNode(            )             
PlaceHolderNode(// joint limit ) // joint limit 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_LIMIT_TENDON , ) mjCNSTR_LIMIT_TENDON , 
PlaceHolderNode(           )            
PlaceHolderNode(// tendon limit ) // tendon limit 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_CONTACT_FRICTIONLESS , ) mjCNSTR_CONTACT_FRICTIONLESS , 
PlaceHolderNode(   )    
PlaceHolderNode(// frictionless contact ) // frictionless contact 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_CONTACT_PYRAMIDAL , ) mjCNSTR_CONTACT_PYRAMIDAL , 
PlaceHolderNode(      )       
PlaceHolderNode(// frictional contact ,  pyramidal friction cone ) // frictional contact ,  pyramidal friction cone 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTR_CONTACT_ELLIPTIC        ) mjCNSTR_CONTACT_ELLIPTIC        
PlaceHolderNode(// frictional contact ,  elliptic friction cone ) // frictional contact ,  elliptic friction cone 
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
PlaceHolderNode(// constraint state ) // constraint state 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_SATISFIED = 0 , ) mjCNSTRSTATE_SATISFIED = 0 , 
PlaceHolderNode(       )        
PlaceHolderNode(// constraint satisfied ,  zero cost (limit ,  contact) ) // constraint satisfied ,  zero cost (limit ,  contact) 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_QUADRATIC , ) mjCNSTRSTATE_QUADRATIC , 
PlaceHolderNode(           )            
PlaceHolderNode(// quadratic cost (equality ,  friction ,  limit ,  contact) ) // quadratic cost (equality ,  friction ,  limit ,  contact) 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_LINEARNEG , ) mjCNSTRSTATE_LINEARNEG , 
PlaceHolderNode(           )            
PlaceHolderNode(// linear cost ,  negative side (friction) ) // linear cost ,  negative side (friction) 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_LINEARPOS , ) mjCNSTRSTATE_LINEARPOS , 
PlaceHolderNode(           )            
PlaceHolderNode(// linear cost ,  positive side (friction) ) // linear cost ,  positive side (friction) 
PlaceHolderNode(  )   
PlaceHolderNode(mjCNSTRSTATE_CONE                 ) mjCNSTRSTATE_CONE                 
PlaceHolderNode(// squared distance to cone cost (elliptic contact) ) // squared distance to cone cost (elliptic contact) 
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
PlaceHolderNode(// type of sensor ) // type of sensor 
PlaceHolderNode(  )   
PlaceHolderNode(// common robotic sensors ,  attached to a site ) // common robotic sensors ,  attached to a site 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TOUCH        = 0 , ) mjSENS_TOUCH        = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// scalar contact normal forces summed over sensor zone ) // scalar contact normal forces summed over sensor zone 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_ACCELEROMETER , ) mjSENS_ACCELEROMETER , 
PlaceHolderNode(           )            
PlaceHolderNode(// 3D linear acceleration ,  in local frame ) // 3D linear acceleration ,  in local frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_VELOCIMETER , ) mjSENS_VELOCIMETER , 
PlaceHolderNode(             )              
PlaceHolderNode(// 3D linear velocity ,  in local frame ) // 3D linear velocity ,  in local frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_GYRO , ) mjSENS_GYRO , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// 3D angular velocity ,  in local frame ) // 3D angular velocity ,  in local frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FORCE , ) mjSENS_FORCE , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// 3D force between site's body and its parent body ) // 3D force between site's body and its parent body 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TORQUE , ) mjSENS_TORQUE , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// 3D torque between site's body and its parent body ) // 3D torque between site's body and its parent body 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_MAGNETOMETER , ) mjSENS_MAGNETOMETER , 
PlaceHolderNode(            )             
PlaceHolderNode(// 3D magnetometer ) // 3D magnetometer 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_RANGEFINDER , ) mjSENS_RANGEFINDER , 
PlaceHolderNode(             )              
PlaceHolderNode(// scalar distance to nearest geom or site along z-axis ) // scalar distance to nearest geom or site along z-axis 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_CAMPROJECTION , ) mjSENS_CAMPROJECTION , 
PlaceHolderNode(           )            
PlaceHolderNode(// pixel coordinates of a site in the camera image ) // pixel coordinates of a site in the camera image 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sensors related to scalar joints ,  tendons ,  actuators ) // sensors related to scalar joints ,  tendons ,  actuators 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTPOS , ) mjSENS_JOINTPOS , 
PlaceHolderNode(                )                 
PlaceHolderNode(// scalar joint position (hinge and slide only) ) // scalar joint position (hinge and slide only) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTVEL , ) mjSENS_JOINTVEL , 
PlaceHolderNode(                )                 
PlaceHolderNode(// scalar joint velocity (hinge and slide only) ) // scalar joint velocity (hinge and slide only) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONPOS , ) mjSENS_TENDONPOS , 
PlaceHolderNode(               )                
PlaceHolderNode(// scalar tendon position ) // scalar tendon position 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONVEL , ) mjSENS_TENDONVEL , 
PlaceHolderNode(               )                
PlaceHolderNode(// scalar tendon velocity ) // scalar tendon velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_ACTUATORPOS , ) mjSENS_ACTUATORPOS , 
PlaceHolderNode(             )              
PlaceHolderNode(// scalar actuator position ) // scalar actuator position 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_ACTUATORVEL , ) mjSENS_ACTUATORVEL , 
PlaceHolderNode(             )              
PlaceHolderNode(// scalar actuator velocity ) // scalar actuator velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_ACTUATORFRC , ) mjSENS_ACTUATORFRC , 
PlaceHolderNode(             )              
PlaceHolderNode(// scalar actuator force ) // scalar actuator force 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTACTFRC , ) mjSENS_JOINTACTFRC , 
PlaceHolderNode(             )              
PlaceHolderNode(// scalar actuator force ,  measured at the joint ) // scalar actuator force ,  measured at the joint 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sensors related to ball joints ) // sensors related to ball joints 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_BALLQUAT , ) mjSENS_BALLQUAT , 
PlaceHolderNode(                )                 
PlaceHolderNode(// 4D ball joint quaternion ) // 4D ball joint quaternion 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_BALLANGVEL , ) mjSENS_BALLANGVEL , 
PlaceHolderNode(              )               
PlaceHolderNode(// 3D ball joint angular velocity ) // 3D ball joint angular velocity 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// joint and tendon limit sensors ,  in constraint space ) // joint and tendon limit sensors ,  in constraint space 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTLIMITPOS , ) mjSENS_JOINTLIMITPOS , 
PlaceHolderNode(           )            
PlaceHolderNode(// joint limit distance-margin ) // joint limit distance-margin 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTLIMITVEL , ) mjSENS_JOINTLIMITVEL , 
PlaceHolderNode(           )            
PlaceHolderNode(// joint limit velocity ) // joint limit velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_JOINTLIMITFRC , ) mjSENS_JOINTLIMITFRC , 
PlaceHolderNode(           )            
PlaceHolderNode(// joint limit force ) // joint limit force 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONLIMITPOS , ) mjSENS_TENDONLIMITPOS , 
PlaceHolderNode(          )           
PlaceHolderNode(// tendon limit distance-margin ) // tendon limit distance-margin 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONLIMITVEL , ) mjSENS_TENDONLIMITVEL , 
PlaceHolderNode(          )           
PlaceHolderNode(// tendon limit velocity ) // tendon limit velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_TENDONLIMITFRC , ) mjSENS_TENDONLIMITFRC , 
PlaceHolderNode(          )           
PlaceHolderNode(// tendon limit force ) // tendon limit force 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sensors attached to an object with spatial frame: (x)body ,  geom ,  site ,  camera ) // sensors attached to an object with spatial frame: (x)body ,  geom ,  site ,  camera 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEPOS , ) mjSENS_FRAMEPOS , 
PlaceHolderNode(                )                 
PlaceHolderNode(// 3D position ) // 3D position 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEQUAT , ) mjSENS_FRAMEQUAT , 
PlaceHolderNode(               )                
PlaceHolderNode(// 4D unit quaternion orientation ) // 4D unit quaternion orientation 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEXAXIS , ) mjSENS_FRAMEXAXIS , 
PlaceHolderNode(              )               
PlaceHolderNode(// 3D unit vector: x-axis of object's frame ) // 3D unit vector: x-axis of object's frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEYAXIS , ) mjSENS_FRAMEYAXIS , 
PlaceHolderNode(              )               
PlaceHolderNode(// 3D unit vector: y-axis of object's frame ) // 3D unit vector: y-axis of object's frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEZAXIS , ) mjSENS_FRAMEZAXIS , 
PlaceHolderNode(              )               
PlaceHolderNode(// 3D unit vector: z-axis of object's frame ) // 3D unit vector: z-axis of object's frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMELINVEL , ) mjSENS_FRAMELINVEL , 
PlaceHolderNode(             )              
PlaceHolderNode(// 3D linear velocity ) // 3D linear velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEANGVEL , ) mjSENS_FRAMEANGVEL , 
PlaceHolderNode(             )              
PlaceHolderNode(// 3D angular velocity ) // 3D angular velocity 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMELINACC , ) mjSENS_FRAMELINACC , 
PlaceHolderNode(             )              
PlaceHolderNode(// 3D linear acceleration ) // 3D linear acceleration 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_FRAMEANGACC , ) mjSENS_FRAMEANGACC , 
PlaceHolderNode(             )              
PlaceHolderNode(// 3D angular acceleration ) // 3D angular acceleration 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) ) // sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_SUBTREECOM , ) mjSENS_SUBTREECOM , 
PlaceHolderNode(              )               
PlaceHolderNode(// 3D center of mass of subtree ) // 3D center of mass of subtree 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_SUBTREELINVEL , ) mjSENS_SUBTREELINVEL , 
PlaceHolderNode(           )            
PlaceHolderNode(// 3D linear velocity of subtree ) // 3D linear velocity of subtree 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_SUBTREEANGMOM , ) mjSENS_SUBTREEANGMOM , 
PlaceHolderNode(           )            
PlaceHolderNode(// 3D angular momentum of subtree ) // 3D angular momentum of subtree 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sensors for geometric distance ;  attached to geoms or bodies ) // sensors for geometric distance ;  attached to geoms or bodies 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_GEOMDIST , ) mjSENS_GEOMDIST , 
PlaceHolderNode(                )                 
PlaceHolderNode(// signed distance between two geoms ) // signed distance between two geoms 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_GEOMNORMAL , ) mjSENS_GEOMNORMAL , 
PlaceHolderNode(              )               
PlaceHolderNode(// normal direction between two geoms ) // normal direction between two geoms 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_GEOMFROMTO , ) mjSENS_GEOMFROMTO , 
PlaceHolderNode(              )               
PlaceHolderNode(// segment between two geoms ) // segment between two geoms 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// global sensors ) // global sensors 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_CLOCK , ) mjSENS_CLOCK , 
PlaceHolderNode(                   )                    
PlaceHolderNode(// simulation time ) // simulation time 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// plugin-controlled sensors ) // plugin-controlled sensors 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_PLUGIN , ) mjSENS_PLUGIN , 
PlaceHolderNode(                  )                   
PlaceHolderNode(// plugin-controlled ) // plugin-controlled 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// user-defined sensor ) // user-defined sensor 
PlaceHolderNode(  )   
PlaceHolderNode(mjSENS_USER                     ) mjSENS_USER                     
PlaceHolderNode(// sensor data provided by mjcb_sensor callback ) // sensor data provided by mjcb_sensor callback 
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
PlaceHolderNode(// computation stage ) // computation stage 
PlaceHolderNode(  )   
PlaceHolderNode(mjSTAGE_NONE        = 0 , ) mjSTAGE_NONE        = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// no computations ) // no computations 
PlaceHolderNode(  )   
PlaceHolderNode(mjSTAGE_POS , ) mjSTAGE_POS , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// position-dependent computations ) // position-dependent computations 
PlaceHolderNode(  )   
PlaceHolderNode(mjSTAGE_VEL , ) mjSTAGE_VEL , 
PlaceHolderNode(                    )                     
PlaceHolderNode(// velocity-dependent computations ) // velocity-dependent computations 
PlaceHolderNode(  )   
PlaceHolderNode(mjSTAGE_ACC                     ) mjSTAGE_ACC                     
PlaceHolderNode(// acceleration/force-dependent computations ) // acceleration/force-dependent computations 
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
PlaceHolderNode(// data type for sensors ) // data type for sensors 
PlaceHolderNode(  )   
PlaceHolderNode(mjDATATYPE_REAL     = 0 , ) mjDATATYPE_REAL     = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// real values ,  no constraints ) // real values ,  no constraints 
PlaceHolderNode(  )   
PlaceHolderNode(mjDATATYPE_POSITIVE , ) mjDATATYPE_POSITIVE , 
PlaceHolderNode(            )             
PlaceHolderNode(// positive values ;  0 or negative: inactive ) // positive values ;  0 or negative: inactive 
PlaceHolderNode(  )   
PlaceHolderNode(mjDATATYPE_AXIS , ) mjDATATYPE_AXIS , 
PlaceHolderNode(                )                 
PlaceHolderNode(// 3D unit vector ) // 3D unit vector 
PlaceHolderNode(  )   
PlaceHolderNode(mjDATATYPE_QUATERNION           ) mjDATATYPE_QUATERNION           
PlaceHolderNode(// unit quaternion ) // unit quaternion 
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
PlaceHolderNode(// frame alignment of bodies with their children ) // frame alignment of bodies with their children 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_NONE    = 0 , ) mjSAMEFRAME_NONE    = 0 , 
PlaceHolderNode(        )         
PlaceHolderNode(// no alignment ) // no alignment 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_BODY , ) mjSAMEFRAME_BODY , 
PlaceHolderNode(               )                
PlaceHolderNode(// frame is same as body frame ) // frame is same as body frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_INERTIA , ) mjSAMEFRAME_INERTIA , 
PlaceHolderNode(            )             
PlaceHolderNode(// frame is same as inertial frame ) // frame is same as inertial frame 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_BODYROT , ) mjSAMEFRAME_BODYROT , 
PlaceHolderNode(            )             
PlaceHolderNode(// frame orientation is same as body orientation ) // frame orientation is same as body orientation 
PlaceHolderNode(  )   
PlaceHolderNode(mjSAMEFRAME_INERTIAROT          ) mjSAMEFRAME_INERTIAROT          
PlaceHolderNode(// frame orientation is same as inertia orientation ) // frame orientation is same as inertia orientation 
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
PlaceHolderNode(// mode for actuator length range computation ) // mode for actuator length range computation 
PlaceHolderNode(  )   
PlaceHolderNode(mjLRMODE_NONE   = 0 , ) mjLRMODE_NONE   = 0 , 
PlaceHolderNode(            )             
PlaceHolderNode(// do not process any actuators ) // do not process any actuators 
PlaceHolderNode(  )   
PlaceHolderNode(mjLRMODE_MUSCLE , ) mjLRMODE_MUSCLE , 
PlaceHolderNode(                )                 
PlaceHolderNode(// process muscle actuators ) // process muscle actuators 
PlaceHolderNode(  )   
PlaceHolderNode(mjLRMODE_MUSCLEUSER , ) mjLRMODE_MUSCLEUSER , 
PlaceHolderNode(            )             
PlaceHolderNode(// process muscle and user actuators ) // process muscle and user actuators 
PlaceHolderNode(  )   
PlaceHolderNode(mjLRMODE_ALL                    ) mjLRMODE_ALL                    
PlaceHolderNode(// process all actuators ) // process all actuators 
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
PlaceHolderNode(// mode for flex selfcollide ) // mode for flex selfcollide 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_NONE   = 0 , ) mjFLEXSELF_NONE   = 0 , 
PlaceHolderNode(          )           
PlaceHolderNode(// no self-collisions ) // no self-collisions 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_NARROW , ) mjFLEXSELF_NARROW , 
PlaceHolderNode(              )               
PlaceHolderNode(// skip midphase ,  go directly to narrowphase ) // skip midphase ,  go directly to narrowphase 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_BVH , ) mjFLEXSELF_BVH , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// use BVH in midphase (if midphase enabled) ) // use BVH in midphase (if midphase enabled) 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_SAP , ) mjFLEXSELF_SAP , 
PlaceHolderNode(                 )                  
PlaceHolderNode(// use SAP in midphase ) // use SAP in midphase 
PlaceHolderNode(  )   
PlaceHolderNode(mjFLEXSELF_AUTO                 ) mjFLEXSELF_AUTO                 
PlaceHolderNode(// choose between BVH and SAP automatically ) // choose between BVH and SAP automatically 
PlaceHolderNode(mjtFlexSelf ) mjtFlexSelf 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(//---------------------------------- mjLROpt ------------------------------------------------------- ) //---------------------------------- mjLROpt ------------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(struct mjLROpt_ 
<children> ; ) struct mjLROpt_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                )                 
PlaceHolderNode(// options for mj_setLengthRange() ) // options for mj_setLengthRange() 
PlaceHolderNode(  )   
PlaceHolderNode(// flags ) // flags 
PlaceHolderNode(  )   
PlaceHolderNode(int mode ; ) int mode ; 
PlaceHolderNode(                       )                        
PlaceHolderNode(// which actuators to process (mjtLRMode) ) // which actuators to process (mjtLRMode) 
PlaceHolderNode(  )   
PlaceHolderNode(int useexisting ; ) int useexisting ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// use existing length range if available ) // use existing length range if available 
PlaceHolderNode(  )   
PlaceHolderNode(int uselimit ; ) int uselimit ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// use joint and tendon limits if available ) // use joint and tendon limits if available 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// algorithm parameters ) // algorithm parameters 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum accel ; ) mjtNum accel ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// target acceleration used to compute force ) // target acceleration used to compute force 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum maxforce ; ) mjtNum maxforce ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// maximum force ;  0: no limit ) // maximum force ;  0: no limit 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum timeconst ; ) mjtNum timeconst ; 
PlaceHolderNode(               )                
PlaceHolderNode(// time constant for velocity reduction ;  min 0.01 ) // time constant for velocity reduction ;  min 0.01 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum timestep ; ) mjtNum timestep ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// simulation timestep ;  0: use mjOption.timestep ) // simulation timestep ;  0: use mjOption.timestep 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum inttotal ; ) mjtNum inttotal ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// total simulation time interval ) // total simulation time interval 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum interval ; ) mjtNum interval ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// evaluation time interval (at the end) ) // evaluation time interval (at the end) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum tolrange ; ) mjtNum tolrange ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// convergence tolerance (relative to range) ) // convergence tolerance (relative to range) 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjLROpt ; ) typedef <children> mjLROpt ; 
PlaceHolderNode(struct mjLROpt_ ) struct mjLROpt_ 
PlaceHolderNode(mjLROpt ) mjLROpt 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(//---------------------------------- mjVFS --------------------------------------------------------- ) //---------------------------------- mjVFS --------------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(struct mjVFS_ 
<children> ; ) struct mjVFS_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                              )                               
PlaceHolderNode(// virtual file system for loading from memory ) // virtual file system for loading from memory 
PlaceHolderNode(  )   
PlaceHolderNode(void* impl_ ; ) void* impl_ ; 
PlaceHolderNode(                                )                                 
PlaceHolderNode(// internal pointer to VFS memory ) // internal pointer to VFS memory 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjVFS ; ) typedef <children> mjVFS ; 
PlaceHolderNode(struct mjVFS_ ) struct mjVFS_ 
PlaceHolderNode(mjVFS ) mjVFS 
PlaceHolderNode( 
 )  
 
PlaceHolderNode(//---------------------------------- mjOption ------------------------------------------------------ ) //---------------------------------- mjOption ------------------------------------------------------ 
PlaceHolderNode( )  
PlaceHolderNode(struct mjOption_ 
<children> ; ) struct mjOption_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(               )                
PlaceHolderNode(// physics options ) // physics options 
PlaceHolderNode(  )   
PlaceHolderNode(// timing parameters ) // timing parameters 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum timestep ; ) mjtNum timestep ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// timestep ) // timestep 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum apirate ; ) mjtNum apirate ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// update rate for remote API (Hz) ) // update rate for remote API (Hz) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// solver parameters ) // solver parameters 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum impratio ; ) mjtNum impratio ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// ratio of friction-to-normal contact impedance ) // ratio of friction-to-normal contact impedance 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum tolerance ; ) mjtNum tolerance ; 
PlaceHolderNode(               )                
PlaceHolderNode(// main solver tolerance ) // main solver tolerance 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum ls_tolerance ; ) mjtNum ls_tolerance ; 
PlaceHolderNode(            )             
PlaceHolderNode(// CG/Newton linesearch tolerance ) // CG/Newton linesearch tolerance 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum noslip_tolerance ; ) mjtNum noslip_tolerance ; 
PlaceHolderNode(        )         
PlaceHolderNode(// noslip solver tolerance ) // noslip solver tolerance 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum ccd_tolerance ; ) mjtNum ccd_tolerance ; 
PlaceHolderNode(           )            
PlaceHolderNode(// convex collision solver tolerance ) // convex collision solver tolerance 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// physical constants ) // physical constants 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum gravity[3] ; ) mjtNum gravity[3] ; 
PlaceHolderNode(              )               
PlaceHolderNode(// gravitational acceleration ) // gravitational acceleration 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum wind[3] ; ) mjtNum wind[3] ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// wind (for lift ,  drag and viscosity) ) // wind (for lift ,  drag and viscosity) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum magnetic[3] ; ) mjtNum magnetic[3] ; 
PlaceHolderNode(             )              
PlaceHolderNode(// global magnetic flux ) // global magnetic flux 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum density ; ) mjtNum density ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// density of medium ) // density of medium 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum viscosity ; ) mjtNum viscosity ; 
PlaceHolderNode(               )                
PlaceHolderNode(// viscosity of medium ) // viscosity of medium 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// override contact solver parameters (if enabled) ) // override contact solver parameters (if enabled) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum o_margin ; ) mjtNum o_margin ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// margin ) // margin 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum o_solref[mjNREF] ; ) mjtNum o_solref[mjNREF] ; 
PlaceHolderNode(        )         
PlaceHolderNode(// solref ) // solref 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum o_solimp[mjNIMP] ; ) mjtNum o_solimp[mjNIMP] ; 
PlaceHolderNode(        )         
PlaceHolderNode(// solimp ) // solimp 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum o_friction[5] ; ) mjtNum o_friction[5] ; 
PlaceHolderNode(           )            
PlaceHolderNode(// friction ) // friction 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// discrete settings ) // discrete settings 
PlaceHolderNode(  )   
PlaceHolderNode(int integrator ; ) int integrator ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// integration mode (mjtIntegrator) ) // integration mode (mjtIntegrator) 
PlaceHolderNode(  )   
PlaceHolderNode(int cone ; ) int cone ; 
PlaceHolderNode(                       )                        
PlaceHolderNode(// type of friction cone (mjtCone) ) // type of friction cone (mjtCone) 
PlaceHolderNode(  )   
PlaceHolderNode(int jacobian ; ) int jacobian ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// type of Jacobian (mjtJacobian) ) // type of Jacobian (mjtJacobian) 
PlaceHolderNode(  )   
PlaceHolderNode(int solver ; ) int solver ; 
PlaceHolderNode(                     )                      
PlaceHolderNode(// solver algorithm (mjtSolver) ) // solver algorithm (mjtSolver) 
PlaceHolderNode(  )   
PlaceHolderNode(int iterations ; ) int iterations ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// maximum number of main solver iterations ) // maximum number of main solver iterations 
PlaceHolderNode(  )   
PlaceHolderNode(int ls_iterations ; ) int ls_iterations ; 
PlaceHolderNode(              )               
PlaceHolderNode(// maximum number of CG/Newton linesearch iterations ) // maximum number of CG/Newton linesearch iterations 
PlaceHolderNode(  )   
PlaceHolderNode(int noslip_iterations ; ) int noslip_iterations ; 
PlaceHolderNode(          )           
PlaceHolderNode(// maximum number of noslip solver iterations ) // maximum number of noslip solver iterations 
PlaceHolderNode(  )   
PlaceHolderNode(int ccd_iterations ; ) int ccd_iterations ; 
PlaceHolderNode(             )              
PlaceHolderNode(// maximum number of convex collision solver iterations ) // maximum number of convex collision solver iterations 
PlaceHolderNode(  )   
PlaceHolderNode(int disableflags ; ) int disableflags ; 
PlaceHolderNode(               )                
PlaceHolderNode(// bit flags for disabling standard features ) // bit flags for disabling standard features 
PlaceHolderNode(  )   
PlaceHolderNode(int enableflags ; ) int enableflags ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// bit flags for enabling optional features ) // bit flags for enabling optional features 
PlaceHolderNode(  )   
PlaceHolderNode(int disableactuator ; ) int disableactuator ; 
PlaceHolderNode(            )             
PlaceHolderNode(// bit flags for disabling actuators by group id ) // bit flags for disabling actuators by group id 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sdf collision settings ) // sdf collision settings 
PlaceHolderNode(  )   
PlaceHolderNode(int sdf_initpoints ; ) int sdf_initpoints ; 
PlaceHolderNode(             )              
PlaceHolderNode(// number of starting points for gradient descent ) // number of starting points for gradient descent 
PlaceHolderNode(  )   
PlaceHolderNode(int sdf_iterations ; ) int sdf_iterations ; 
PlaceHolderNode(             )              
PlaceHolderNode(// max number of iterations for gradient descent ) // max number of iterations for gradient descent 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjOption ; ) typedef <children> mjOption ; 
PlaceHolderNode(struct mjOption_ ) struct mjOption_ 
PlaceHolderNode(mjOption ) mjOption 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(//---------------------------------- mjVisual ------------------------------------------------------ ) //---------------------------------- mjVisual ------------------------------------------------------ 
PlaceHolderNode( )  
PlaceHolderNode(struct mjVisual_ 
<children> ; ) struct mjVisual_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(               )                
PlaceHolderNode(// visualization options ) // visualization options 
PlaceHolderNode(  )   
PlaceHolderNode(<children> 
global ; ) <children> 
global ; 
PlaceHolderNode(struct ) struct 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(                       )                        
PlaceHolderNode(// global parameters ) // global parameters 
PlaceHolderNode(    )     
PlaceHolderNode(int orthographic ; ) int orthographic ; 
PlaceHolderNode(             )              
PlaceHolderNode(// is the free camera orthographic (0: no ,  1: yes) ) // is the free camera orthographic (0: no ,  1: yes) 
PlaceHolderNode(    )     
PlaceHolderNode(float fovy ; ) float fovy ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// y field-of-view of free camera (orthographic ? length : degree) ) // y field-of-view of free camera (orthographic ? length : degree) 
PlaceHolderNode(    )     
PlaceHolderNode(float ipd ; ) float ipd ; 
PlaceHolderNode(                    )                     
PlaceHolderNode(// inter-pupilary distance for free camera ) // inter-pupilary distance for free camera 
PlaceHolderNode(    )     
PlaceHolderNode(float azimuth ; ) float azimuth ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// initial azimuth of free camera (degrees) ) // initial azimuth of free camera (degrees) 
PlaceHolderNode(    )     
PlaceHolderNode(float elevation ; ) float elevation ; 
PlaceHolderNode(              )               
PlaceHolderNode(// initial elevation of free camera (degrees) ) // initial elevation of free camera (degrees) 
PlaceHolderNode(    )     
PlaceHolderNode(float linewidth ; ) float linewidth ; 
PlaceHolderNode(              )               
PlaceHolderNode(// line width for wireframe and ray rendering ) // line width for wireframe and ray rendering 
PlaceHolderNode(    )     
PlaceHolderNode(float glow ; ) float glow ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// glow coefficient for selected body ) // glow coefficient for selected body 
PlaceHolderNode(    )     
PlaceHolderNode(float realtime ; ) float realtime ; 
PlaceHolderNode(               )                
PlaceHolderNode(// initial real-time factor (1: real time) ) // initial real-time factor (1: real time) 
PlaceHolderNode(    )     
PlaceHolderNode(int   offwidth ; ) int   offwidth ; 
PlaceHolderNode(               )                
PlaceHolderNode(// width of offscreen buffer ) // width of offscreen buffer 
PlaceHolderNode(    )     
PlaceHolderNode(int   offheight ; ) int   offheight ; 
PlaceHolderNode(              )               
PlaceHolderNode(// height of offscreen buffer ) // height of offscreen buffer 
PlaceHolderNode(    )     
PlaceHolderNode(int   ellipsoidinertia ; ) int   ellipsoidinertia ; 
PlaceHolderNode(       )        
PlaceHolderNode(// geom for inertia visualization (0: box ,  1: ellipsoid) ) // geom for inertia visualization (0: box ,  1: ellipsoid) 
PlaceHolderNode(    )     
PlaceHolderNode(int   bvactive ; ) int   bvactive ; 
PlaceHolderNode(               )                
PlaceHolderNode(// visualize active bounding volumes (0: no ,  1: yes) ) // visualize active bounding volumes (0: no ,  1: yes) 
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
PlaceHolderNode(// rendering quality ) // rendering quality 
PlaceHolderNode(    )     
PlaceHolderNode(int   shadowsize ; ) int   shadowsize ; 
PlaceHolderNode(             )              
PlaceHolderNode(// size of shadowmap texture ) // size of shadowmap texture 
PlaceHolderNode(    )     
PlaceHolderNode(int   offsamples ; ) int   offsamples ; 
PlaceHolderNode(             )              
PlaceHolderNode(// number of multisamples for offscreen rendering ) // number of multisamples for offscreen rendering 
PlaceHolderNode(    )     
PlaceHolderNode(int   numslices ; ) int   numslices ; 
PlaceHolderNode(              )               
PlaceHolderNode(// number of slices for builtin geom drawing ) // number of slices for builtin geom drawing 
PlaceHolderNode(    )     
PlaceHolderNode(int   numstacks ; ) int   numstacks ; 
PlaceHolderNode(              )               
PlaceHolderNode(// number of stacks for builtin geom drawing ) // number of stacks for builtin geom drawing 
PlaceHolderNode(    )     
PlaceHolderNode(int   numquads ; ) int   numquads ; 
PlaceHolderNode(               )                
PlaceHolderNode(// number of quads for box rendering ) // number of quads for box rendering 
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
PlaceHolderNode(// head light ) // head light 
PlaceHolderNode(    )     
PlaceHolderNode(float ambient[3] ; ) float ambient[3] ; 
PlaceHolderNode(             )              
PlaceHolderNode(// ambient rgb (alpha=1) ) // ambient rgb (alpha=1) 
PlaceHolderNode(    )     
PlaceHolderNode(float diffuse[3] ; ) float diffuse[3] ; 
PlaceHolderNode(             )              
PlaceHolderNode(// diffuse rgb (alpha=1) ) // diffuse rgb (alpha=1) 
PlaceHolderNode(    )     
PlaceHolderNode(float specular[3] ; ) float specular[3] ; 
PlaceHolderNode(            )             
PlaceHolderNode(// specular rgb (alpha=1) ) // specular rgb (alpha=1) 
PlaceHolderNode(    )     
PlaceHolderNode(int   active ; ) int   active ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// is headlight active ) // is headlight active 
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
PlaceHolderNode(// mapping ) // mapping 
PlaceHolderNode(    )     
PlaceHolderNode(float stiffness ; ) float stiffness ; 
PlaceHolderNode(              )               
PlaceHolderNode(// mouse perturbation stiffness (space->force) ) // mouse perturbation stiffness (space->force) 
PlaceHolderNode(    )     
PlaceHolderNode(float stiffnessrot ; ) float stiffnessrot ; 
PlaceHolderNode(           )            
PlaceHolderNode(// mouse perturbation stiffness (space->torque) ) // mouse perturbation stiffness (space->torque) 
PlaceHolderNode(    )     
PlaceHolderNode(float force ; ) float force ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// from force units to space units ) // from force units to space units 
PlaceHolderNode(    )     
PlaceHolderNode(float torque ; ) float torque ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// from torque units to space units ) // from torque units to space units 
PlaceHolderNode(    )     
PlaceHolderNode(float alpha ; ) float alpha ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// scale geom alphas when transparency is enabled ) // scale geom alphas when transparency is enabled 
PlaceHolderNode(    )     
PlaceHolderNode(float fogstart ; ) float fogstart ; 
PlaceHolderNode(               )                
PlaceHolderNode(// OpenGL fog starts at fogstart * mjModel.stat.extent ) // OpenGL fog starts at fogstart * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float fogend ; ) float fogend ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// OpenGL fog ends at fogend * mjModel.stat.extent ) // OpenGL fog ends at fogend * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float znear ; ) float znear ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// near clipping plane = znear * mjModel.stat.extent ) // near clipping plane = znear * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float zfar ; ) float zfar ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// far clipping plane = zfar * mjModel.stat.extent ) // far clipping plane = zfar * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float haze ; ) float haze ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// haze ratio ) // haze ratio 
PlaceHolderNode(    )     
PlaceHolderNode(float shadowclip ; ) float shadowclip ; 
PlaceHolderNode(             )              
PlaceHolderNode(// directional light: shadowclip * mjModel.stat.extent ) // directional light: shadowclip * mjModel.stat.extent 
PlaceHolderNode(    )     
PlaceHolderNode(float shadowscale ; ) float shadowscale ; 
PlaceHolderNode(            )             
PlaceHolderNode(// spot light: shadowscale * light.cutoff ) // spot light: shadowscale * light.cutoff 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatortendon ; ) float actuatortendon ; 
PlaceHolderNode(         )          
PlaceHolderNode(// scale tendon width ) // scale tendon width 
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
PlaceHolderNode(// scale of decor elements relative to mean body size ) // scale of decor elements relative to mean body size 
PlaceHolderNode(    )     
PlaceHolderNode(float forcewidth ; ) float forcewidth ; 
PlaceHolderNode(             )              
PlaceHolderNode(// width of force arrow ) // width of force arrow 
PlaceHolderNode(    )     
PlaceHolderNode(float contactwidth ; ) float contactwidth ; 
PlaceHolderNode(           )            
PlaceHolderNode(// contact width ) // contact width 
PlaceHolderNode(    )     
PlaceHolderNode(float contactheight ; ) float contactheight ; 
PlaceHolderNode(          )           
PlaceHolderNode(// contact height ) // contact height 
PlaceHolderNode(    )     
PlaceHolderNode(float connect ; ) float connect ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// autoconnect capsule width ) // autoconnect capsule width 
PlaceHolderNode(    )     
PlaceHolderNode(float com ; ) float com ; 
PlaceHolderNode(                    )                     
PlaceHolderNode(// com radius ) // com radius 
PlaceHolderNode(    )     
PlaceHolderNode(float camera ; ) float camera ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// camera object ) // camera object 
PlaceHolderNode(    )     
PlaceHolderNode(float light ; ) float light ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// light object ) // light object 
PlaceHolderNode(    )     
PlaceHolderNode(float selectpoint ; ) float selectpoint ; 
PlaceHolderNode(            )             
PlaceHolderNode(// selection point ) // selection point 
PlaceHolderNode(    )     
PlaceHolderNode(float jointlength ; ) float jointlength ; 
PlaceHolderNode(            )             
PlaceHolderNode(// joint length ) // joint length 
PlaceHolderNode(    )     
PlaceHolderNode(float jointwidth ; ) float jointwidth ; 
PlaceHolderNode(             )              
PlaceHolderNode(// joint width ) // joint width 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatorlength ; ) float actuatorlength ; 
PlaceHolderNode(         )          
PlaceHolderNode(// actuator length ) // actuator length 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatorwidth ; ) float actuatorwidth ; 
PlaceHolderNode(          )           
PlaceHolderNode(// actuator width ) // actuator width 
PlaceHolderNode(    )     
PlaceHolderNode(float framelength ; ) float framelength ; 
PlaceHolderNode(            )             
PlaceHolderNode(// bodyframe axis length ) // bodyframe axis length 
PlaceHolderNode(    )     
PlaceHolderNode(float framewidth ; ) float framewidth ; 
PlaceHolderNode(             )              
PlaceHolderNode(// bodyframe axis width ) // bodyframe axis width 
PlaceHolderNode(    )     
PlaceHolderNode(float constraint ; ) float constraint ; 
PlaceHolderNode(             )              
PlaceHolderNode(// constraint width ) // constraint width 
PlaceHolderNode(    )     
PlaceHolderNode(float slidercrank ; ) float slidercrank ; 
PlaceHolderNode(            )             
PlaceHolderNode(// slidercrank width ) // slidercrank width 
PlaceHolderNode(    )     
PlaceHolderNode(float frustum ; ) float frustum ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// frustum zfar plane ) // frustum zfar plane 
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
PlaceHolderNode(// color of decor elements ) // color of decor elements 
PlaceHolderNode(    )     
PlaceHolderNode(float fog[4] ; ) float fog[4] ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// fog ) // fog 
PlaceHolderNode(    )     
PlaceHolderNode(float haze[4] ; ) float haze[4] ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// haze ) // haze 
PlaceHolderNode(    )     
PlaceHolderNode(float force[4] ; ) float force[4] ; 
PlaceHolderNode(               )                
PlaceHolderNode(// external force ) // external force 
PlaceHolderNode(    )     
PlaceHolderNode(float inertia[4] ; ) float inertia[4] ; 
PlaceHolderNode(             )              
PlaceHolderNode(// inertia box ) // inertia box 
PlaceHolderNode(    )     
PlaceHolderNode(float joint[4] ; ) float joint[4] ; 
PlaceHolderNode(               )                
PlaceHolderNode(// joint ) // joint 
PlaceHolderNode(    )     
PlaceHolderNode(float actuator[4] ; ) float actuator[4] ; 
PlaceHolderNode(            )             
PlaceHolderNode(// actuator ,  neutral ) // actuator ,  neutral 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatornegative[4] ; ) float actuatornegative[4] ; 
PlaceHolderNode(    )     
PlaceHolderNode(// actuator ,  negative limit ) // actuator ,  negative limit 
PlaceHolderNode(    )     
PlaceHolderNode(float actuatorpositive[4] ; ) float actuatorpositive[4] ; 
PlaceHolderNode(    )     
PlaceHolderNode(// actuator ,  positive limit ) // actuator ,  positive limit 
PlaceHolderNode(    )     
PlaceHolderNode(float com[4] ; ) float com[4] ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// center of mass ) // center of mass 
PlaceHolderNode(    )     
PlaceHolderNode(float camera[4] ; ) float camera[4] ; 
PlaceHolderNode(              )               
PlaceHolderNode(// camera object ) // camera object 
PlaceHolderNode(    )     
PlaceHolderNode(float light[4] ; ) float light[4] ; 
PlaceHolderNode(               )                
PlaceHolderNode(// light object ) // light object 
PlaceHolderNode(    )     
PlaceHolderNode(float selectpoint[4] ; ) float selectpoint[4] ; 
PlaceHolderNode(         )          
PlaceHolderNode(// selection point ) // selection point 
PlaceHolderNode(    )     
PlaceHolderNode(float connect[4] ; ) float connect[4] ; 
PlaceHolderNode(             )              
PlaceHolderNode(// auto connect ) // auto connect 
PlaceHolderNode(    )     
PlaceHolderNode(float contactpoint[4] ; ) float contactpoint[4] ; 
PlaceHolderNode(        )         
PlaceHolderNode(// contact point ) // contact point 
PlaceHolderNode(    )     
PlaceHolderNode(float contactforce[4] ; ) float contactforce[4] ; 
PlaceHolderNode(        )         
PlaceHolderNode(// contact force ) // contact force 
PlaceHolderNode(    )     
PlaceHolderNode(float contactfriction[4] ; ) float contactfriction[4] ; 
PlaceHolderNode(     )      
PlaceHolderNode(// contact friction force ) // contact friction force 
PlaceHolderNode(    )     
PlaceHolderNode(float contacttorque[4] ; ) float contacttorque[4] ; 
PlaceHolderNode(       )        
PlaceHolderNode(// contact torque ) // contact torque 
PlaceHolderNode(    )     
PlaceHolderNode(float contactgap[4] ; ) float contactgap[4] ; 
PlaceHolderNode(          )           
PlaceHolderNode(// contact point in gap ) // contact point in gap 
PlaceHolderNode(    )     
PlaceHolderNode(float rangefinder[4] ; ) float rangefinder[4] ; 
PlaceHolderNode(         )          
PlaceHolderNode(// rangefinder ray ) // rangefinder ray 
PlaceHolderNode(    )     
PlaceHolderNode(float constraint[4] ; ) float constraint[4] ; 
PlaceHolderNode(          )           
PlaceHolderNode(// constraint ) // constraint 
PlaceHolderNode(    )     
PlaceHolderNode(float slidercrank[4] ; ) float slidercrank[4] ; 
PlaceHolderNode(         )          
PlaceHolderNode(// slidercrank ) // slidercrank 
PlaceHolderNode(    )     
PlaceHolderNode(float crankbroken[4] ; ) float crankbroken[4] ; 
PlaceHolderNode(         )          
PlaceHolderNode(// used when crank must be stretched/broken ) // used when crank must be stretched/broken 
PlaceHolderNode(    )     
PlaceHolderNode(float frustum[4] ; ) float frustum[4] ; 
PlaceHolderNode(             )              
PlaceHolderNode(// camera frustum ) // camera frustum 
PlaceHolderNode(    )     
PlaceHolderNode(float bv[4] ; ) float bv[4] ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// bounding volume ) // bounding volume 
PlaceHolderNode(    )     
PlaceHolderNode(float bvactive[4] ; ) float bvactive[4] ; 
PlaceHolderNode(            )             
PlaceHolderNode(// active bounding volume ) // active bounding volume 
PlaceHolderNode(  )   
PlaceHolderNode( )  
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjVisual ; ) typedef <children> mjVisual ; 
PlaceHolderNode(struct mjVisual_ ) struct mjVisual_ 
PlaceHolderNode(mjVisual ) mjVisual 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(//---------------------------------- mjStatistic --------------------------------------------------- ) //---------------------------------- mjStatistic --------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(struct mjStatistic_ 
<children> ; ) struct mjStatistic_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(            )             
PlaceHolderNode(// model statistics (in qpos0) ) // model statistics (in qpos0) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum meaninertia ; ) mjtNum meaninertia ; 
PlaceHolderNode(             )              
PlaceHolderNode(// mean diagonal inertia ) // mean diagonal inertia 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum meanmass ; ) mjtNum meanmass ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// mean body mass ) // mean body mass 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum meansize ; ) mjtNum meansize ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// mean body size ) // mean body size 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum extent ; ) mjtNum extent ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// spatial extent ) // spatial extent 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum center[3] ; ) mjtNum center[3] ; 
PlaceHolderNode(               )                
PlaceHolderNode(// center of model ) // center of model 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjStatistic ; ) typedef <children> mjStatistic ; 
PlaceHolderNode(struct mjStatistic_ ) struct mjStatistic_ 
PlaceHolderNode(mjStatistic ) mjStatistic 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(//---------------------------------- mjModel ------------------------------------------------------- ) //---------------------------------- mjModel ------------------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(struct mjModel_ 
<children> ; ) struct mjModel_ 
<children> ; 
PlaceHolderNode({ 
<children> } ) { 
<children> } 
PlaceHolderNode(  )   
PlaceHolderNode(// ------------------------------- sizes ) // ------------------------------- sizes 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sizes needed at mjModel construction ) // sizes needed at mjModel construction 
PlaceHolderNode(  )   
PlaceHolderNode(int nq ; ) int nq ; 
PlaceHolderNode(                         )                          
PlaceHolderNode(// number of generalized coordinates = dim(qpos) ) // number of generalized coordinates = dim(qpos) 
PlaceHolderNode(  )   
PlaceHolderNode(int nv ; ) int nv ; 
PlaceHolderNode(                         )                          
PlaceHolderNode(// number of degrees of freedom = dim(qvel) ) // number of degrees of freedom = dim(qvel) 
PlaceHolderNode(  )   
PlaceHolderNode(int nu ; ) int nu ; 
PlaceHolderNode(                         )                          
PlaceHolderNode(// number of actuators/controls = dim(ctrl) ) // number of actuators/controls = dim(ctrl) 
PlaceHolderNode(  )   
PlaceHolderNode(int na ; ) int na ; 
PlaceHolderNode(                         )                          
PlaceHolderNode(// number of activation states = dim(act) ) // number of activation states = dim(act) 
PlaceHolderNode(  )   
PlaceHolderNode(int nbody ; ) int nbody ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of bodies ) // number of bodies 
PlaceHolderNode(  )   
PlaceHolderNode(int nbvh ; ) int nbvh ; 
PlaceHolderNode(                       )                        
PlaceHolderNode(// number of total bounding volumes in all bodies ) // number of total bounding volumes in all bodies 
PlaceHolderNode(  )   
PlaceHolderNode(int nbvhstatic ; ) int nbvhstatic ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// number of static bounding volumes (aabb stored in mjModel) ) // number of static bounding volumes (aabb stored in mjModel) 
PlaceHolderNode(  )   
PlaceHolderNode(int nbvhdynamic ; ) int nbvhdynamic ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// number of dynamic bounding volumes (aabb stored in mjData) ) // number of dynamic bounding volumes (aabb stored in mjData) 
PlaceHolderNode(  )   
PlaceHolderNode(int njnt ; ) int njnt ; 
PlaceHolderNode(                       )                        
PlaceHolderNode(// number of joints ) // number of joints 
PlaceHolderNode(  )   
PlaceHolderNode(int ngeom ; ) int ngeom ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of geoms ) // number of geoms 
PlaceHolderNode(  )   
PlaceHolderNode(int nsite ; ) int nsite ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of sites ) // number of sites 
PlaceHolderNode(  )   
PlaceHolderNode(int ncam ; ) int ncam ; 
PlaceHolderNode(                       )                        
PlaceHolderNode(// number of cameras ) // number of cameras 
PlaceHolderNode(  )   
PlaceHolderNode(int nlight ; ) int nlight ; 
PlaceHolderNode(                     )                      
PlaceHolderNode(// number of lights ) // number of lights 
PlaceHolderNode(  )   
PlaceHolderNode(int nflex ; ) int nflex ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of flexes ) // number of flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexvert ; ) int nflexvert ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of vertices in all flexes ) // number of vertices in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexedge ; ) int nflexedge ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of edges in all flexes ) // number of edges in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexelem ; ) int nflexelem ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of elements in all flexes ) // number of elements in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexelemdata ; ) int nflexelemdata ; 
PlaceHolderNode(              )               
PlaceHolderNode(// number of element vertex ids in all flexes ) // number of element vertex ids in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexelemedge ; ) int nflexelemedge ; 
PlaceHolderNode(              )               
PlaceHolderNode(// number of element edge ids in all flexes ) // number of element edge ids in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexshelldata ; ) int nflexshelldata ; 
PlaceHolderNode(             )              
PlaceHolderNode(// number of shell fragment vertex ids in all flexes ) // number of shell fragment vertex ids in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflexevpair ; ) int nflexevpair ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// number of element-vertex pairs in all flexes ) // number of element-vertex pairs in all flexes 
PlaceHolderNode(  )   
PlaceHolderNode(int nflextexcoord ; ) int nflextexcoord ; 
PlaceHolderNode(              )               
PlaceHolderNode(// number of vertices with texture coordinates ) // number of vertices with texture coordinates 
PlaceHolderNode(  )   
PlaceHolderNode(int nmesh ; ) int nmesh ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of meshes ) // number of meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshvert ; ) int nmeshvert ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of vertices in all meshes ) // number of vertices in all meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshnormal ; ) int nmeshnormal ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// number of normals in all meshes ) // number of normals in all meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshtexcoord ; ) int nmeshtexcoord ; 
PlaceHolderNode(              )               
PlaceHolderNode(// number of texcoords in all meshes ) // number of texcoords in all meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshface ; ) int nmeshface ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of triangular faces in all meshes ) // number of triangular faces in all meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmeshgraph ; ) int nmeshgraph ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// number of ints in mesh auxiliary data ) // number of ints in mesh auxiliary data 
PlaceHolderNode(  )   
PlaceHolderNode(int nskin ; ) int nskin ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of skins ) // number of skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskinvert ; ) int nskinvert ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of vertices in all skins ) // number of vertices in all skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskintexvert ; ) int nskintexvert ; 
PlaceHolderNode(               )                
PlaceHolderNode(// number of vertiex with texcoords in all skins ) // number of vertiex with texcoords in all skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskinface ; ) int nskinface ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of triangular faces in all skins ) // number of triangular faces in all skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskinbone ; ) int nskinbone ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of bones in all skins ) // number of bones in all skins 
PlaceHolderNode(  )   
PlaceHolderNode(int nskinbonevert ; ) int nskinbonevert ; 
PlaceHolderNode(              )               
PlaceHolderNode(// number of vertices in all skin bones ) // number of vertices in all skin bones 
PlaceHolderNode(  )   
PlaceHolderNode(int nhfield ; ) int nhfield ; 
PlaceHolderNode(                    )                     
PlaceHolderNode(// number of heightfields ) // number of heightfields 
PlaceHolderNode(  )   
PlaceHolderNode(int nhfielddata ; ) int nhfielddata ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// number of data points in all heightfields ) // number of data points in all heightfields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntex ; ) int ntex ; 
PlaceHolderNode(                       )                        
PlaceHolderNode(// number of textures ) // number of textures 
PlaceHolderNode(  )   
PlaceHolderNode(int ntexdata ; ) int ntexdata ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// number of bytes in texture rgb data ) // number of bytes in texture rgb data 
PlaceHolderNode(  )   
PlaceHolderNode(int nmat ; ) int nmat ; 
PlaceHolderNode(                       )                        
PlaceHolderNode(// number of materials ) // number of materials 
PlaceHolderNode(  )   
PlaceHolderNode(int npair ; ) int npair ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of predefined geom pairs ) // number of predefined geom pairs 
PlaceHolderNode(  )   
PlaceHolderNode(int nexclude ; ) int nexclude ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// number of excluded geom pairs ) // number of excluded geom pairs 
PlaceHolderNode(  )   
PlaceHolderNode(int neq ; ) int neq ; 
PlaceHolderNode(                        )                         
PlaceHolderNode(// number of equality constraints ) // number of equality constraints 
PlaceHolderNode(  )   
PlaceHolderNode(int ntendon ; ) int ntendon ; 
PlaceHolderNode(                    )                     
PlaceHolderNode(// number of tendons ) // number of tendons 
PlaceHolderNode(  )   
PlaceHolderNode(int nwrap ; ) int nwrap ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of wrap objects in all tendon paths ) // number of wrap objects in all tendon paths 
PlaceHolderNode(  )   
PlaceHolderNode(int nsensor ; ) int nsensor ; 
PlaceHolderNode(                    )                     
PlaceHolderNode(// number of sensors ) // number of sensors 
PlaceHolderNode(  )   
PlaceHolderNode(int nnumeric ; ) int nnumeric ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// number of numeric custom fields ) // number of numeric custom fields 
PlaceHolderNode(  )   
PlaceHolderNode(int nnumericdata ; ) int nnumericdata ; 
PlaceHolderNode(               )                
PlaceHolderNode(// number of mjtNums in all numeric fields ) // number of mjtNums in all numeric fields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntext ; ) int ntext ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of text custom fields ) // number of text custom fields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntextdata ; ) int ntextdata ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of mjtBytes in all text fields ) // number of mjtBytes in all text fields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntuple ; ) int ntuple ; 
PlaceHolderNode(                     )                      
PlaceHolderNode(// number of tuple custom fields ) // number of tuple custom fields 
PlaceHolderNode(  )   
PlaceHolderNode(int ntupledata ; ) int ntupledata ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// number of objects in all tuple fields ) // number of objects in all tuple fields 
PlaceHolderNode(  )   
PlaceHolderNode(int nkey ; ) int nkey ; 
PlaceHolderNode(                       )                        
PlaceHolderNode(// number of keyframes ) // number of keyframes 
PlaceHolderNode(  )   
PlaceHolderNode(int nmocap ; ) int nmocap ; 
PlaceHolderNode(                     )                      
PlaceHolderNode(// number of mocap bodies ) // number of mocap bodies 
PlaceHolderNode(  )   
PlaceHolderNode(int nplugin ; ) int nplugin ; 
PlaceHolderNode(                    )                     
PlaceHolderNode(// number of plugin instances ) // number of plugin instances 
PlaceHolderNode(  )   
PlaceHolderNode(int npluginattr ; ) int npluginattr ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// number of chars in all plugin config attributes ) // number of chars in all plugin config attributes 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_body ; ) int nuser_body ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// number of mjtNums in body_user ) // number of mjtNums in body_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_jnt ; ) int nuser_jnt ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of mjtNums in jnt_user ) // number of mjtNums in jnt_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_geom ; ) int nuser_geom ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// number of mjtNums in geom_user ) // number of mjtNums in geom_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_site ; ) int nuser_site ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// number of mjtNums in site_user ) // number of mjtNums in site_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_cam ; ) int nuser_cam ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of mjtNums in cam_user ) // number of mjtNums in cam_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_tendon ; ) int nuser_tendon ; 
PlaceHolderNode(               )                
PlaceHolderNode(// number of mjtNums in tendon_user ) // number of mjtNums in tendon_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_actuator ; ) int nuser_actuator ; 
PlaceHolderNode(             )              
PlaceHolderNode(// number of mjtNums in actuator_user ) // number of mjtNums in actuator_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nuser_sensor ; ) int nuser_sensor ; 
PlaceHolderNode(               )                
PlaceHolderNode(// number of mjtNums in sensor_user ) // number of mjtNums in sensor_user 
PlaceHolderNode(  )   
PlaceHolderNode(int nnames ; ) int nnames ; 
PlaceHolderNode(                     )                      
PlaceHolderNode(// number of chars in all names ) // number of chars in all names 
PlaceHolderNode(  )   
PlaceHolderNode(int nnames_map ; ) int nnames_map ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// number of slots in the names hash map ) // number of slots in the names hash map 
PlaceHolderNode(  )   
PlaceHolderNode(int npaths ; ) int npaths ; 
PlaceHolderNode(                     )                      
PlaceHolderNode(// number of chars in all paths ) // number of chars in all paths 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sizes set after mjModel construction (only affect mjData) ) // sizes set after mjModel construction (only affect mjData) 
PlaceHolderNode(  )   
PlaceHolderNode(int nM ; ) int nM ; 
PlaceHolderNode(                         )                          
PlaceHolderNode(// number of non-zeros in sparse inertia matrix ) // number of non-zeros in sparse inertia matrix 
PlaceHolderNode(  )   
PlaceHolderNode(int nB ; ) int nB ; 
PlaceHolderNode(                         )                          
PlaceHolderNode(// number of non-zeros in sparse body-dof matrix ) // number of non-zeros in sparse body-dof matrix 
PlaceHolderNode(  )   
PlaceHolderNode(int nC ; ) int nC ; 
PlaceHolderNode(                         )                          
PlaceHolderNode(// number of non-zeros in sparse reduced dof-dof matrix ) // number of non-zeros in sparse reduced dof-dof matrix 
PlaceHolderNode(  )   
PlaceHolderNode(int nD ; ) int nD ; 
PlaceHolderNode(                         )                          
PlaceHolderNode(// number of non-zeros in sparse dof-dof matrix ) // number of non-zeros in sparse dof-dof matrix 
PlaceHolderNode(  )   
PlaceHolderNode(int ntree ; ) int ntree ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of kinematic trees under world body ) // number of kinematic trees under world body 
PlaceHolderNode(  )   
PlaceHolderNode(int ngravcomp ; ) int ngravcomp ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of bodies with nonzero gravcomp ) // number of bodies with nonzero gravcomp 
PlaceHolderNode(  )   
PlaceHolderNode(int nemax ; ) int nemax ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of potential equality-constraint rows ) // number of potential equality-constraint rows 
PlaceHolderNode(  )   
PlaceHolderNode(int njmax ; ) int njmax ; 
PlaceHolderNode(                      )                       
PlaceHolderNode(// number of available rows in constraint Jacobian ) // number of available rows in constraint Jacobian 
PlaceHolderNode(  )   
PlaceHolderNode(int nconmax ; ) int nconmax ; 
PlaceHolderNode(                    )                     
PlaceHolderNode(// number of potential contacts in contact list ) // number of potential contacts in contact list 
PlaceHolderNode(  )   
PlaceHolderNode(int nuserdata ; ) int nuserdata ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of mjtNums reserved for the user ) // number of mjtNums reserved for the user 
PlaceHolderNode(  )   
PlaceHolderNode(int nsensordata ; ) int nsensordata ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// number of mjtNums in sensor data vector ) // number of mjtNums in sensor data vector 
PlaceHolderNode(  )   
PlaceHolderNode(int npluginstate ; ) int npluginstate ; 
PlaceHolderNode(               )                
PlaceHolderNode(// number of mjtNums in plugin state vector ) // number of mjtNums in plugin state vector 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(size_t narena ; ) size_t narena ; 
PlaceHolderNode(                  )                   
PlaceHolderNode(// number of bytes in the mjData arena (inclusive of stack) ) // number of bytes in the mjData arena (inclusive of stack) 
PlaceHolderNode(  )   
PlaceHolderNode(size_t nbuffer ; ) size_t nbuffer ; 
PlaceHolderNode(                 )                  
PlaceHolderNode(// number of bytes in buffer ) // number of bytes in buffer 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// ------------------------------- options and statistics ) // ------------------------------- options and statistics 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(mjOption opt ; ) mjOption opt ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// physics options ) // physics options 
PlaceHolderNode(  )   
PlaceHolderNode(mjVisual vis ; ) mjVisual vis ; 
PlaceHolderNode(                   )                    
PlaceHolderNode(// visualization options ) // visualization options 
PlaceHolderNode(  )   
PlaceHolderNode(mjStatistic stat ; ) mjStatistic stat ; 
PlaceHolderNode(               )                
PlaceHolderNode(// model statistics ) // model statistics 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// ------------------------------- buffers ) // ------------------------------- buffers 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// main buffer ) // main buffer 
PlaceHolderNode(  )   
PlaceHolderNode(void*     buffer ; ) void*     buffer ; 
PlaceHolderNode(               )                
PlaceHolderNode(// main buffer ;  all pointers point in it    (nbuffer) ) // main buffer ;  all pointers point in it    (nbuffer) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// default generalized coordinates ) // default generalized coordinates 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   qpos0 ; ) mjtNum*   qpos0 ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// qpos values at default pose              (nq x 1) ) // qpos values at default pose              (nq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   qpos_spring ; ) mjtNum*   qpos_spring ; 
PlaceHolderNode(          )           
PlaceHolderNode(// reference pose for springs               (nq x 1) ) // reference pose for springs               (nq x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// bodies ) // bodies 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_parentid ; ) int*      body_parentid ; 
PlaceHolderNode(        )         
PlaceHolderNode(// id of body's parent                      (nbody x 1) ) // id of body's parent                      (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_rootid ; ) int*      body_rootid ; 
PlaceHolderNode(          )           
PlaceHolderNode(// id of root above body                    (nbody x 1) ) // id of root above body                    (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_weldid ; ) int*      body_weldid ; 
PlaceHolderNode(          )           
PlaceHolderNode(// id of body that this body is welded to   (nbody x 1) ) // id of body that this body is welded to   (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_mocapid ; ) int*      body_mocapid ; 
PlaceHolderNode(         )          
PlaceHolderNode(// id of mocap data ;  -1: none               (nbody x 1) ) // id of mocap data ;  -1: none               (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_jntnum ; ) int*      body_jntnum ; 
PlaceHolderNode(          )           
PlaceHolderNode(// number of joints for this body           (nbody x 1) ) // number of joints for this body           (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_jntadr ; ) int*      body_jntadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// start addr of joints ;  -1: no joints      (nbody x 1) ) // start addr of joints ;  -1: no joints      (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_dofnum ; ) int*      body_dofnum ; 
PlaceHolderNode(          )           
PlaceHolderNode(// number of motion degrees of freedom      (nbody x 1) ) // number of motion degrees of freedom      (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_dofadr ; ) int*      body_dofadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// start addr of dofs ;  -1: no dofs          (nbody x 1) ) // start addr of dofs ;  -1: no dofs          (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_treeid ; ) int*      body_treeid ; 
PlaceHolderNode(          )           
PlaceHolderNode(// id of body's kinematic tree ;  -1: static  (nbody x 1) ) // id of body's kinematic tree ;  -1: static  (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_geomnum ; ) int*      body_geomnum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of geoms                          (nbody x 1) ) // number of geoms                          (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_geomadr ; ) int*      body_geomadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// start addr of geoms ;  -1: no geoms        (nbody x 1) ) // start addr of geoms ;  -1: no geoms        (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  body_simple ; ) mjtByte*  body_simple ; 
PlaceHolderNode(          )           
PlaceHolderNode(// 1: diag M ;  2: diag M ,  sliders only       (nbody x 1) ) // 1: diag M ;  2: diag M ,  sliders only       (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  body_sameframe ; ) mjtByte*  body_sameframe ; 
PlaceHolderNode(       )        
PlaceHolderNode(// same frame as inertia (mjtSameframe)     (nbody x 1) ) // same frame as inertia (mjtSameframe)     (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_pos ; ) mjtNum*   body_pos ; 
PlaceHolderNode(             )              
PlaceHolderNode(// position offset rel. to parent body      (nbody x 3) ) // position offset rel. to parent body      (nbody x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_quat ; ) mjtNum*   body_quat ; 
PlaceHolderNode(            )             
PlaceHolderNode(// orientation offset rel. to parent body   (nbody x 4) ) // orientation offset rel. to parent body   (nbody x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_ipos ; ) mjtNum*   body_ipos ; 
PlaceHolderNode(            )             
PlaceHolderNode(// local position of center of mass         (nbody x 3) ) // local position of center of mass         (nbody x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_iquat ; ) mjtNum*   body_iquat ; 
PlaceHolderNode(           )            
PlaceHolderNode(// local orientation of inertia ellipsoid   (nbody x 4) ) // local orientation of inertia ellipsoid   (nbody x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_mass ; ) mjtNum*   body_mass ; 
PlaceHolderNode(            )             
PlaceHolderNode(// mass                                     (nbody x 1) ) // mass                                     (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_subtreemass ; ) mjtNum*   body_subtreemass ; 
PlaceHolderNode(     )      
PlaceHolderNode(// mass of subtree starting at this body    (nbody x 1) ) // mass of subtree starting at this body    (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_inertia ; ) mjtNum*   body_inertia ; 
PlaceHolderNode(         )          
PlaceHolderNode(// diagonal inertia in ipos/iquat frame     (nbody x 3) ) // diagonal inertia in ipos/iquat frame     (nbody x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_invweight0 ; ) mjtNum*   body_invweight0 ; 
PlaceHolderNode(      )       
PlaceHolderNode(// mean inv inert in qpos0 (trn ,  rot)       (nbody x 2) ) // mean inv inert in qpos0 (trn ,  rot)       (nbody x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_gravcomp ; ) mjtNum*   body_gravcomp ; 
PlaceHolderNode(        )         
PlaceHolderNode(// antigravity force ,  units of body weight  (nbody x 1) ) // antigravity force ,  units of body weight  (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_margin ; ) mjtNum*   body_margin ; 
PlaceHolderNode(          )           
PlaceHolderNode(// MAX over all geom margins                (nbody x 1) ) // MAX over all geom margins                (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   body_user ; ) mjtNum*   body_user ; 
PlaceHolderNode(            )             
PlaceHolderNode(// user data                                (nbody x nuser_body) ) // user data                                (nbody x nuser_body) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_plugin ; ) int*      body_plugin ; 
PlaceHolderNode(          )           
PlaceHolderNode(// plugin instance id ;  -1: not in use       (nbody x 1) ) // plugin instance id ;  -1: not in use       (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_contype ; ) int*      body_contype ; 
PlaceHolderNode(         )          
PlaceHolderNode(// OR over all geom contypes                (nbody x 1) ) // OR over all geom contypes                (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_conaffinity ; ) int*      body_conaffinity ; 
PlaceHolderNode(     )      
PlaceHolderNode(// OR over all geom conaffinities           (nbody x 1) ) // OR over all geom conaffinities           (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_bvhadr ; ) int*      body_bvhadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// address of bvh root                      (nbody x 1) ) // address of bvh root                      (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      body_bvhnum ; ) int*      body_bvhnum ; 
PlaceHolderNode(          )           
PlaceHolderNode(// number of bounding volumes               (nbody x 1) ) // number of bounding volumes               (nbody x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// bounding volume hierarchy ) // bounding volume hierarchy 
PlaceHolderNode(  )   
PlaceHolderNode(int*      bvh_depth ; ) int*      bvh_depth ; 
PlaceHolderNode(            )             
PlaceHolderNode(// depth in the bounding volume hierarchy   (nbvh x 1) ) // depth in the bounding volume hierarchy   (nbvh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      bvh_child ; ) int*      bvh_child ; 
PlaceHolderNode(            )             
PlaceHolderNode(// left and right children in tree          (nbvh x 2) ) // left and right children in tree          (nbvh x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      bvh_nodeid ; ) int*      bvh_nodeid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// geom or elem id of node ;  -1: non-leaf    (nbvh x 1) ) // geom or elem id of node ;  -1: non-leaf    (nbvh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   bvh_aabb ; ) mjtNum*   bvh_aabb ; 
PlaceHolderNode(             )              
PlaceHolderNode(// local bounding box (center ,  size)        (nbvhstatic x 6) ) // local bounding box (center ,  size)        (nbvhstatic x 6) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// joints ) // joints 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_type ; ) int*      jnt_type ; 
PlaceHolderNode(             )              
PlaceHolderNode(// type of joint (mjtJoint)                 (njnt x 1) ) // type of joint (mjtJoint)                 (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_qposadr ; ) int*      jnt_qposadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// start addr in 'qpos' for joint's data    (njnt x 1) ) // start addr in 'qpos' for joint's data    (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_dofadr ; ) int*      jnt_dofadr ; 
PlaceHolderNode(           )            
PlaceHolderNode(// start addr in 'qvel' for joint's data    (njnt x 1) ) // start addr in 'qvel' for joint's data    (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_bodyid ; ) int*      jnt_bodyid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// id of joint's body                       (njnt x 1) ) // id of joint's body                       (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      jnt_group ; ) int*      jnt_group ; 
PlaceHolderNode(            )             
PlaceHolderNode(// group for visibility                     (njnt x 1) ) // group for visibility                     (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  jnt_limited ; ) mjtByte*  jnt_limited ; 
PlaceHolderNode(          )           
PlaceHolderNode(// does joint have limits                   (njnt x 1) ) // does joint have limits                   (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  jnt_actfrclimited ; ) mjtByte*  jnt_actfrclimited ; 
PlaceHolderNode(    )     
PlaceHolderNode(// does joint have actuator force limits    (njnt x 1) ) // does joint have actuator force limits    (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  jnt_actgravcomp ; ) mjtByte*  jnt_actgravcomp ; 
PlaceHolderNode(      )       
PlaceHolderNode(// is gravcomp force applied via actuators  (njnt x 1) ) // is gravcomp force applied via actuators  (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_solref ; ) mjtNum*   jnt_solref ; 
PlaceHolderNode(           )            
PlaceHolderNode(// constraint solver reference: limit       (njnt x mjNREF) ) // constraint solver reference: limit       (njnt x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_solimp ; ) mjtNum*   jnt_solimp ; 
PlaceHolderNode(           )            
PlaceHolderNode(// constraint solver impedance: limit       (njnt x mjNIMP) ) // constraint solver impedance: limit       (njnt x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_pos ; ) mjtNum*   jnt_pos ; 
PlaceHolderNode(              )               
PlaceHolderNode(// local anchor position                    (njnt x 3) ) // local anchor position                    (njnt x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_axis ; ) mjtNum*   jnt_axis ; 
PlaceHolderNode(             )              
PlaceHolderNode(// local joint axis                         (njnt x 3) ) // local joint axis                         (njnt x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_stiffness ; ) mjtNum*   jnt_stiffness ; 
PlaceHolderNode(        )         
PlaceHolderNode(// stiffness coefficient                    (njnt x 1) ) // stiffness coefficient                    (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_range ; ) mjtNum*   jnt_range ; 
PlaceHolderNode(            )             
PlaceHolderNode(// joint limits                             (njnt x 2) ) // joint limits                             (njnt x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_actfrcrange ; ) mjtNum*   jnt_actfrcrange ; 
PlaceHolderNode(      )       
PlaceHolderNode(// range of total actuator force            (njnt x 2) ) // range of total actuator force            (njnt x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_margin ; ) mjtNum*   jnt_margin ; 
PlaceHolderNode(           )            
PlaceHolderNode(// min distance for limit detection         (njnt x 1) ) // min distance for limit detection         (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   jnt_user ; ) mjtNum*   jnt_user ; 
PlaceHolderNode(             )              
PlaceHolderNode(// user data                                (njnt x nuser_jnt) ) // user data                                (njnt x nuser_jnt) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// dofs ) // dofs 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_bodyid ; ) int*      dof_bodyid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// id of dof's body                         (nv x 1) ) // id of dof's body                         (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_jntid ; ) int*      dof_jntid ; 
PlaceHolderNode(            )             
PlaceHolderNode(// id of dof's joint                        (nv x 1) ) // id of dof's joint                        (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_parentid ; ) int*      dof_parentid ; 
PlaceHolderNode(         )          
PlaceHolderNode(// id of dof's parent ;  -1: none             (nv x 1) ) // id of dof's parent ;  -1: none             (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_treeid ; ) int*      dof_treeid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// id of dof's kinematic tree               (nv x 1) ) // id of dof's kinematic tree               (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_Madr ; ) int*      dof_Madr ; 
PlaceHolderNode(             )              
PlaceHolderNode(// dof address in M-diagonal                (nv x 1) ) // dof address in M-diagonal                (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      dof_simplenum ; ) int*      dof_simplenum ; 
PlaceHolderNode(        )         
PlaceHolderNode(// number of consecutive simple dofs        (nv x 1) ) // number of consecutive simple dofs        (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_solref ; ) mjtNum*   dof_solref ; 
PlaceHolderNode(           )            
PlaceHolderNode(// constraint solver reference:frictionloss (nv x mjNREF) ) // constraint solver reference:frictionloss (nv x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_solimp ; ) mjtNum*   dof_solimp ; 
PlaceHolderNode(           )            
PlaceHolderNode(// constraint solver impedance:frictionloss (nv x mjNIMP) ) // constraint solver impedance:frictionloss (nv x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_frictionloss ; ) mjtNum*   dof_frictionloss ; 
PlaceHolderNode(     )      
PlaceHolderNode(// dof friction loss                        (nv x 1) ) // dof friction loss                        (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_armature ; ) mjtNum*   dof_armature ; 
PlaceHolderNode(         )          
PlaceHolderNode(// dof armature inertia/mass                (nv x 1) ) // dof armature inertia/mass                (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_damping ; ) mjtNum*   dof_damping ; 
PlaceHolderNode(          )           
PlaceHolderNode(// damping coefficient                      (nv x 1) ) // damping coefficient                      (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_invweight0 ; ) mjtNum*   dof_invweight0 ; 
PlaceHolderNode(       )        
PlaceHolderNode(// diag. inverse inertia in qpos0           (nv x 1) ) // diag. inverse inertia in qpos0           (nv x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   dof_M0 ; ) mjtNum*   dof_M0 ; 
PlaceHolderNode(               )                
PlaceHolderNode(// diag. inertia in qpos0                   (nv x 1) ) // diag. inertia in qpos0                   (nv x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// geoms ) // geoms 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_type ; ) int*      geom_type ; 
PlaceHolderNode(            )             
PlaceHolderNode(// geometric type (mjtGeom)                 (ngeom x 1) ) // geometric type (mjtGeom)                 (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_contype ; ) int*      geom_contype ; 
PlaceHolderNode(         )          
PlaceHolderNode(// geom contact type                        (ngeom x 1) ) // geom contact type                        (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_conaffinity ; ) int*      geom_conaffinity ; 
PlaceHolderNode(     )      
PlaceHolderNode(// geom contact affinity                    (ngeom x 1) ) // geom contact affinity                    (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_condim ; ) int*      geom_condim ; 
PlaceHolderNode(          )           
PlaceHolderNode(// contact dimensionality (1 ,  3 ,  4 ,  6)      (ngeom x 1) ) // contact dimensionality (1 ,  3 ,  4 ,  6)      (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_bodyid ; ) int*      geom_bodyid ; 
PlaceHolderNode(          )           
PlaceHolderNode(// id of geom's body                        (ngeom x 1) ) // id of geom's body                        (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_dataid ; ) int*      geom_dataid ; 
PlaceHolderNode(          )           
PlaceHolderNode(// id of geom's mesh/hfield ;  -1: none       (ngeom x 1) ) // id of geom's mesh/hfield ;  -1: none       (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_matid ; ) int*      geom_matid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// material id for rendering ;  -1: none      (ngeom x 1) ) // material id for rendering ;  -1: none      (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_group ; ) int*      geom_group ; 
PlaceHolderNode(           )            
PlaceHolderNode(// group for visibility                     (ngeom x 1) ) // group for visibility                     (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_priority ; ) int*      geom_priority ; 
PlaceHolderNode(        )         
PlaceHolderNode(// geom contact priority                    (ngeom x 1) ) // geom contact priority                    (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      geom_plugin ; ) int*      geom_plugin ; 
PlaceHolderNode(          )           
PlaceHolderNode(// plugin instance id ;  -1: not in use       (ngeom x 1) ) // plugin instance id ;  -1: not in use       (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  geom_sameframe ; ) mjtByte*  geom_sameframe ; 
PlaceHolderNode(       )        
PlaceHolderNode(// same frame as body (mjtSameframe)        (ngeom x 1) ) // same frame as body (mjtSameframe)        (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_solmix ; ) mjtNum*   geom_solmix ; 
PlaceHolderNode(          )           
PlaceHolderNode(// mixing coef for solref/imp in geom pair  (ngeom x 1) ) // mixing coef for solref/imp in geom pair  (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_solref ; ) mjtNum*   geom_solref ; 
PlaceHolderNode(          )           
PlaceHolderNode(// constraint solver reference: contact     (ngeom x mjNREF) ) // constraint solver reference: contact     (ngeom x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_solimp ; ) mjtNum*   geom_solimp ; 
PlaceHolderNode(          )           
PlaceHolderNode(// constraint solver impedance: contact     (ngeom x mjNIMP) ) // constraint solver impedance: contact     (ngeom x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_size ; ) mjtNum*   geom_size ; 
PlaceHolderNode(            )             
PlaceHolderNode(// geom-specific size parameters            (ngeom x 3) ) // geom-specific size parameters            (ngeom x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_aabb ; ) mjtNum*   geom_aabb ; 
PlaceHolderNode(            )             
PlaceHolderNode(// bounding box ,  (center ,  size)             (ngeom x 6) ) // bounding box ,  (center ,  size)             (ngeom x 6) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_rbound ; ) mjtNum*   geom_rbound ; 
PlaceHolderNode(          )           
PlaceHolderNode(// radius of bounding sphere                (ngeom x 1) ) // radius of bounding sphere                (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_pos ; ) mjtNum*   geom_pos ; 
PlaceHolderNode(             )              
PlaceHolderNode(// local position offset rel. to body       (ngeom x 3) ) // local position offset rel. to body       (ngeom x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_quat ; ) mjtNum*   geom_quat ; 
PlaceHolderNode(            )             
PlaceHolderNode(// local orientation offset rel. to body    (ngeom x 4) ) // local orientation offset rel. to body    (ngeom x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_friction ; ) mjtNum*   geom_friction ; 
PlaceHolderNode(        )         
PlaceHolderNode(// friction for (slide ,  spin ,  roll)         (ngeom x 3) ) // friction for (slide ,  spin ,  roll)         (ngeom x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_margin ; ) mjtNum*   geom_margin ; 
PlaceHolderNode(          )           
PlaceHolderNode(// detect contact if dist<margin            (ngeom x 1) ) // detect contact if dist<margin            (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_gap ; ) mjtNum*   geom_gap ; 
PlaceHolderNode(             )              
PlaceHolderNode(// include in solver if dist<margin-gap     (ngeom x 1) ) // include in solver if dist<margin-gap     (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_fluid ; ) mjtNum*   geom_fluid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// fluid interaction parameters             (ngeom x mjNFLUID) ) // fluid interaction parameters             (ngeom x mjNFLUID) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   geom_user ; ) mjtNum*   geom_user ; 
PlaceHolderNode(            )             
PlaceHolderNode(// user data                                (ngeom x nuser_geom) ) // user data                                (ngeom x nuser_geom) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    geom_rgba ; ) float*    geom_rgba ; 
PlaceHolderNode(            )             
PlaceHolderNode(// rgba when material is omitted            (ngeom x 4) ) // rgba when material is omitted            (ngeom x 4) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sites ) // sites 
PlaceHolderNode(  )   
PlaceHolderNode(int*      site_type ; ) int*      site_type ; 
PlaceHolderNode(            )             
PlaceHolderNode(// geom type for rendering (mjtGeom)        (nsite x 1) ) // geom type for rendering (mjtGeom)        (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      site_bodyid ; ) int*      site_bodyid ; 
PlaceHolderNode(          )           
PlaceHolderNode(// id of site's body                        (nsite x 1) ) // id of site's body                        (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      site_matid ; ) int*      site_matid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// material id for rendering ;  -1: none      (nsite x 1) ) // material id for rendering ;  -1: none      (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      site_group ; ) int*      site_group ; 
PlaceHolderNode(           )            
PlaceHolderNode(// group for visibility                     (nsite x 1) ) // group for visibility                     (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  site_sameframe ; ) mjtByte*  site_sameframe ; 
PlaceHolderNode(       )        
PlaceHolderNode(// same frame as body (mjtSameframe)        (nsite x 1) ) // same frame as body (mjtSameframe)        (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   site_size ; ) mjtNum*   site_size ; 
PlaceHolderNode(            )             
PlaceHolderNode(// geom size for rendering                  (nsite x 3) ) // geom size for rendering                  (nsite x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   site_pos ; ) mjtNum*   site_pos ; 
PlaceHolderNode(             )              
PlaceHolderNode(// local position offset rel. to body       (nsite x 3) ) // local position offset rel. to body       (nsite x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   site_quat ; ) mjtNum*   site_quat ; 
PlaceHolderNode(            )             
PlaceHolderNode(// local orientation offset rel. to body    (nsite x 4) ) // local orientation offset rel. to body    (nsite x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   site_user ; ) mjtNum*   site_user ; 
PlaceHolderNode(            )             
PlaceHolderNode(// user data                                (nsite x nuser_site) ) // user data                                (nsite x nuser_site) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    site_rgba ; ) float*    site_rgba ; 
PlaceHolderNode(            )             
PlaceHolderNode(// rgba when material is omitted            (nsite x 4) ) // rgba when material is omitted            (nsite x 4) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// cameras ) // cameras 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_mode ; ) int*      cam_mode ; 
PlaceHolderNode(             )              
PlaceHolderNode(// camera tracking mode (mjtCamLight)       (ncam x 1) ) // camera tracking mode (mjtCamLight)       (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_bodyid ; ) int*      cam_bodyid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// id of camera's body                      (ncam x 1) ) // id of camera's body                      (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_targetbodyid ; ) int*      cam_targetbodyid ; 
PlaceHolderNode(     )      
PlaceHolderNode(// id of targeted body ;  -1: none            (ncam x 1) ) // id of targeted body ;  -1: none            (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_pos ; ) mjtNum*   cam_pos ; 
PlaceHolderNode(              )               
PlaceHolderNode(// position rel. to body frame              (ncam x 3) ) // position rel. to body frame              (ncam x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_quat ; ) mjtNum*   cam_quat ; 
PlaceHolderNode(             )              
PlaceHolderNode(// orientation rel. to body frame           (ncam x 4) ) // orientation rel. to body frame           (ncam x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_poscom0 ; ) mjtNum*   cam_poscom0 ; 
PlaceHolderNode(          )           
PlaceHolderNode(// global position rel. to sub-com in qpos0 (ncam x 3) ) // global position rel. to sub-com in qpos0 (ncam x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_pos0 ; ) mjtNum*   cam_pos0 ; 
PlaceHolderNode(             )              
PlaceHolderNode(// global position rel. to body in qpos0    (ncam x 3) ) // global position rel. to body in qpos0    (ncam x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_mat0 ; ) mjtNum*   cam_mat0 ; 
PlaceHolderNode(             )              
PlaceHolderNode(// global orientation in qpos0              (ncam x 9) ) // global orientation in qpos0              (ncam x 9) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_orthographic ; ) int*      cam_orthographic ; 
PlaceHolderNode(     )      
PlaceHolderNode(// orthographic camera ;  0: no ,  1: yes       (ncam x 1) ) // orthographic camera ;  0: no ,  1: yes       (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_fovy ; ) mjtNum*   cam_fovy ; 
PlaceHolderNode(             )              
PlaceHolderNode(// y field-of-view (ortho ? len : deg)      (ncam x 1) ) // y field-of-view (ortho ? len : deg)      (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_ipd ; ) mjtNum*   cam_ipd ; 
PlaceHolderNode(              )               
PlaceHolderNode(// inter-pupilary distance                  (ncam x 1) ) // inter-pupilary distance                  (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      cam_resolution ; ) int*      cam_resolution ; 
PlaceHolderNode(       )        
PlaceHolderNode(// resolution: pixels [width ,  height]       (ncam x 2) ) // resolution: pixels [width ,  height]       (ncam x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    cam_sensorsize ; ) float*    cam_sensorsize ; 
PlaceHolderNode(       )        
PlaceHolderNode(// sensor size: length [width ,  height]      (ncam x 2) ) // sensor size: length [width ,  height]      (ncam x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    cam_intrinsic ; ) float*    cam_intrinsic ; 
PlaceHolderNode(        )         
PlaceHolderNode(// [focal length ;  principal point]          (ncam x 4) ) // [focal length ;  principal point]          (ncam x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   cam_user ; ) mjtNum*   cam_user ; 
PlaceHolderNode(             )              
PlaceHolderNode(// user data                                (ncam x nuser_cam) ) // user data                                (ncam x nuser_cam) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// lights ) // lights 
PlaceHolderNode(  )   
PlaceHolderNode(int*      light_mode ; ) int*      light_mode ; 
PlaceHolderNode(           )            
PlaceHolderNode(// light tracking mode (mjtCamLight)        (nlight x 1) ) // light tracking mode (mjtCamLight)        (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      light_bodyid ; ) int*      light_bodyid ; 
PlaceHolderNode(         )          
PlaceHolderNode(// id of light's body                       (nlight x 1) ) // id of light's body                       (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      light_targetbodyid ; ) int*      light_targetbodyid ; 
PlaceHolderNode(   )    
PlaceHolderNode(// id of targeted body ;  -1: none            (nlight x 1) ) // id of targeted body ;  -1: none            (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  light_directional ; ) mjtByte*  light_directional ; 
PlaceHolderNode(    )     
PlaceHolderNode(// directional light                        (nlight x 1) ) // directional light                        (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  light_castshadow ; ) mjtByte*  light_castshadow ; 
PlaceHolderNode(     )      
PlaceHolderNode(// does light cast shadows                  (nlight x 1) ) // does light cast shadows                  (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_bulbradius ; ) float*    light_bulbradius ; 
PlaceHolderNode(     )      
PlaceHolderNode(// light radius for soft shadows            (nlight x 1) ) // light radius for soft shadows            (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  light_active ; ) mjtByte*  light_active ; 
PlaceHolderNode(         )          
PlaceHolderNode(// is light on                              (nlight x 1) ) // is light on                              (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_pos ; ) mjtNum*   light_pos ; 
PlaceHolderNode(            )             
PlaceHolderNode(// position rel. to body frame              (nlight x 3) ) // position rel. to body frame              (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_dir ; ) mjtNum*   light_dir ; 
PlaceHolderNode(            )             
PlaceHolderNode(// direction rel. to body frame             (nlight x 3) ) // direction rel. to body frame             (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_poscom0 ; ) mjtNum*   light_poscom0 ; 
PlaceHolderNode(        )         
PlaceHolderNode(// global position rel. to sub-com in qpos0 (nlight x 3) ) // global position rel. to sub-com in qpos0 (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_pos0 ; ) mjtNum*   light_pos0 ; 
PlaceHolderNode(           )            
PlaceHolderNode(// global position rel. to body in qpos0    (nlight x 3) ) // global position rel. to body in qpos0    (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   light_dir0 ; ) mjtNum*   light_dir0 ; 
PlaceHolderNode(           )            
PlaceHolderNode(// global direction in qpos0                (nlight x 3) ) // global direction in qpos0                (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_attenuation ; ) float*    light_attenuation ; 
PlaceHolderNode(    )     
PlaceHolderNode(// OpenGL attenuation (quadratic model)     (nlight x 3) ) // OpenGL attenuation (quadratic model)     (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_cutoff ; ) float*    light_cutoff ; 
PlaceHolderNode(         )          
PlaceHolderNode(// OpenGL cutoff                            (nlight x 1) ) // OpenGL cutoff                            (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_exponent ; ) float*    light_exponent ; 
PlaceHolderNode(       )        
PlaceHolderNode(// OpenGL exponent                          (nlight x 1) ) // OpenGL exponent                          (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_ambient ; ) float*    light_ambient ; 
PlaceHolderNode(        )         
PlaceHolderNode(// ambient rgb (alpha=1)                    (nlight x 3) ) // ambient rgb (alpha=1)                    (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_diffuse ; ) float*    light_diffuse ; 
PlaceHolderNode(        )         
PlaceHolderNode(// diffuse rgb (alpha=1)                    (nlight x 3) ) // diffuse rgb (alpha=1)                    (nlight x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    light_specular ; ) float*    light_specular ; 
PlaceHolderNode(       )        
PlaceHolderNode(// specular rgb (alpha=1)                   (nlight x 3) ) // specular rgb (alpha=1)                   (nlight x 3) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// flexes: contact properties ) // flexes: contact properties 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_contype ; ) int*      flex_contype ; 
PlaceHolderNode(         )          
PlaceHolderNode(// flex contact type                        (nflex x 1) ) // flex contact type                        (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_conaffinity ; ) int*      flex_conaffinity ; 
PlaceHolderNode(     )      
PlaceHolderNode(// flex contact affinity                    (nflex x 1) ) // flex contact affinity                    (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_condim ; ) int*      flex_condim ; 
PlaceHolderNode(          )           
PlaceHolderNode(// contact dimensionality (1 ,  3 ,  4 ,  6)      (nflex x 1) ) // contact dimensionality (1 ,  3 ,  4 ,  6)      (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_priority ; ) int*      flex_priority ; 
PlaceHolderNode(        )         
PlaceHolderNode(// flex contact priority                    (nflex x 1) ) // flex contact priority                    (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_solmix ; ) mjtNum*   flex_solmix ; 
PlaceHolderNode(          )           
PlaceHolderNode(// mix coef for solref/imp in contact pair  (nflex x 1) ) // mix coef for solref/imp in contact pair  (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_solref ; ) mjtNum*   flex_solref ; 
PlaceHolderNode(          )           
PlaceHolderNode(// constraint solver reference: contact     (nflex x mjNREF) ) // constraint solver reference: contact     (nflex x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_solimp ; ) mjtNum*   flex_solimp ; 
PlaceHolderNode(          )           
PlaceHolderNode(// constraint solver impedance: contact     (nflex x mjNIMP) ) // constraint solver impedance: contact     (nflex x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_friction ; ) mjtNum*   flex_friction ; 
PlaceHolderNode(        )         
PlaceHolderNode(// friction for (slide ,  spin ,  roll)         (nflex x 3) ) // friction for (slide ,  spin ,  roll)         (nflex x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_margin ; ) mjtNum*   flex_margin ; 
PlaceHolderNode(          )           
PlaceHolderNode(// detect contact if dist<margin            (nflex x 1) ) // detect contact if dist<margin            (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_gap ; ) mjtNum*   flex_gap ; 
PlaceHolderNode(             )              
PlaceHolderNode(// include in solver if dist<margin-gap     (nflex x 1) ) // include in solver if dist<margin-gap     (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_internal ; ) mjtByte*  flex_internal ; 
PlaceHolderNode(        )         
PlaceHolderNode(// internal flex collision enabled          (nflex x 1) ) // internal flex collision enabled          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_selfcollide ; ) int*      flex_selfcollide ; 
PlaceHolderNode(     )      
PlaceHolderNode(// self collision mode (mjtFlexSelf)        (nflex x 1) ) // self collision mode (mjtFlexSelf)        (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_activelayers ; ) int*      flex_activelayers ; 
PlaceHolderNode(    )     
PlaceHolderNode(// number of active element layers ,  3D only (nflex x 1) ) // number of active element layers ,  3D only (nflex x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// flexes: other properties ) // flexes: other properties 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_dim ; ) int*      flex_dim ; 
PlaceHolderNode(             )              
PlaceHolderNode(// 1: lines ,  2: triangles ,  3: tetrahedra    (nflex x 1) ) // 1: lines ,  2: triangles ,  3: tetrahedra    (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_matid ; ) int*      flex_matid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// material id for rendering                (nflex x 1) ) // material id for rendering                (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_group ; ) int*      flex_group ; 
PlaceHolderNode(           )            
PlaceHolderNode(// group for visibility                     (nflex x 1) ) // group for visibility                     (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_vertadr ; ) int*      flex_vertadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// first vertex address                     (nflex x 1) ) // first vertex address                     (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_vertnum ; ) int*      flex_vertnum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of vertices                       (nflex x 1) ) // number of vertices                       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_edgeadr ; ) int*      flex_edgeadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// first edge address                       (nflex x 1) ) // first edge address                       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_edgenum ; ) int*      flex_edgenum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of edges                          (nflex x 1) ) // number of edges                          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemadr ; ) int*      flex_elemadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// first element address                    (nflex x 1) ) // first element address                    (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemnum ; ) int*      flex_elemnum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of elements                       (nflex x 1) ) // number of elements                       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemdataadr ; ) int*      flex_elemdataadr ; 
PlaceHolderNode(     )      
PlaceHolderNode(// first element vertex id address          (nflex x 1) ) // first element vertex id address          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemedgeadr ; ) int*      flex_elemedgeadr ; 
PlaceHolderNode(     )      
PlaceHolderNode(// first element edge id address            (nflex x 1) ) // first element edge id address            (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_shellnum ; ) int*      flex_shellnum ; 
PlaceHolderNode(        )         
PlaceHolderNode(// number of shells                         (nflex x 1) ) // number of shells                         (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_shelldataadr ; ) int*      flex_shelldataadr ; 
PlaceHolderNode(    )     
PlaceHolderNode(// first shell data address                 (nflex x 1) ) // first shell data address                 (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_evpairadr ; ) int*      flex_evpairadr ; 
PlaceHolderNode(       )        
PlaceHolderNode(// first evpair address                     (nflex x 1) ) // first evpair address                     (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_evpairnum ; ) int*      flex_evpairnum ; 
PlaceHolderNode(       )        
PlaceHolderNode(// number of evpairs                        (nflex x 1) ) // number of evpairs                        (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_texcoordadr ; ) int*      flex_texcoordadr ; 
PlaceHolderNode(     )      
PlaceHolderNode(// address in flex_texcoord ;  -1: none       (nflex x 1) ) // address in flex_texcoord ;  -1: none       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_vertbodyid ; ) int*      flex_vertbodyid ; 
PlaceHolderNode(      )       
PlaceHolderNode(// vertex body ids                          (nflexvert x 1) ) // vertex body ids                          (nflexvert x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_edge ; ) int*      flex_edge ; 
PlaceHolderNode(            )             
PlaceHolderNode(// edge vertex ids (2 per edge)             (nflexedge x 2) ) // edge vertex ids (2 per edge)             (nflexedge x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elem ; ) int*      flex_elem ; 
PlaceHolderNode(            )             
PlaceHolderNode(// element vertex ids (dim+1 per elem)      (nflexelemdata x 1) ) // element vertex ids (dim+1 per elem)      (nflexelemdata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemedge ; ) int*      flex_elemedge ; 
PlaceHolderNode(        )         
PlaceHolderNode(// element edge ids                         (nflexelemedge x 1) ) // element edge ids                         (nflexelemedge x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_elemlayer ; ) int*      flex_elemlayer ; 
PlaceHolderNode(       )        
PlaceHolderNode(// element distance from surface ,  3D only   (nflexelem x 1) ) // element distance from surface ,  3D only   (nflexelem x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_shell ; ) int*      flex_shell ; 
PlaceHolderNode(           )            
PlaceHolderNode(// shell fragment vertex ids (dim per frag) (nflexshelldata x 1) ) // shell fragment vertex ids (dim per frag) (nflexshelldata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_evpair ; ) int*      flex_evpair ; 
PlaceHolderNode(          )           
PlaceHolderNode(// (element ,  vertex) collision pairs        (nflexevpair x 2) ) // (element ,  vertex) collision pairs        (nflexevpair x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_vert ; ) mjtNum*   flex_vert ; 
PlaceHolderNode(            )             
PlaceHolderNode(// vertex positions in local body frames    (nflexvert x 3) ) // vertex positions in local body frames    (nflexvert x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_xvert0 ; ) mjtNum*   flex_xvert0 ; 
PlaceHolderNode(          )           
PlaceHolderNode(// Cartesian vertex positions in qpos0      (nflexvert x 3) ) // Cartesian vertex positions in qpos0      (nflexvert x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flexedge_length0 ; ) mjtNum*   flexedge_length0 ; 
PlaceHolderNode(     )      
PlaceHolderNode(// edge lengths in qpos0                    (nflexedge x 1) ) // edge lengths in qpos0                    (nflexedge x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flexedge_invweight0 ; ) mjtNum*   flexedge_invweight0 ; 
PlaceHolderNode(  )   
PlaceHolderNode(// edge inv. weight in qpos0                (nflexedge x 1) ) // edge inv. weight in qpos0                (nflexedge x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_radius ; ) mjtNum*   flex_radius ; 
PlaceHolderNode(          )           
PlaceHolderNode(// radius around primitive element          (nflex x 1) ) // radius around primitive element          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_stiffness ; ) mjtNum*   flex_stiffness ; 
PlaceHolderNode(       )        
PlaceHolderNode(// finite element stiffness matrix          (nflexelem x 21) ) // finite element stiffness matrix          (nflexelem x 21) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_damping ; ) mjtNum*   flex_damping ; 
PlaceHolderNode(         )          
PlaceHolderNode(// Rayleigh's damping coefficient           (nflex x 1) ) // Rayleigh's damping coefficient           (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_edgestiffness ; ) mjtNum*   flex_edgestiffness ; 
PlaceHolderNode(   )    
PlaceHolderNode(// edge stiffness                           (nflex x 1) ) // edge stiffness                           (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   flex_edgedamping ; ) mjtNum*   flex_edgedamping ; 
PlaceHolderNode(     )      
PlaceHolderNode(// edge damping                             (nflex x 1) ) // edge damping                             (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_edgeequality ; ) mjtByte*  flex_edgeequality ; 
PlaceHolderNode(    )     
PlaceHolderNode(// is edge equality constraint defined      (nflex x 1) ) // is edge equality constraint defined      (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_rigid ; ) mjtByte*  flex_rigid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// are all verices in the same body         (nflex x 1) ) // are all verices in the same body         (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flexedge_rigid ; ) mjtByte*  flexedge_rigid ; 
PlaceHolderNode(       )        
PlaceHolderNode(// are both edge vertices in same body      (nflexedge x 1) ) // are both edge vertices in same body      (nflexedge x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_centered ; ) mjtByte*  flex_centered ; 
PlaceHolderNode(        )         
PlaceHolderNode(// are all vertex coordinates (0 , 0 , 0)       (nflex x 1) ) // are all vertex coordinates (0 , 0 , 0)       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  flex_flatskin ; ) mjtByte*  flex_flatskin ; 
PlaceHolderNode(        )         
PlaceHolderNode(// render flex skin with flat shading       (nflex x 1) ) // render flex skin with flat shading       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_bvhadr ; ) int*      flex_bvhadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// address of bvh root ;  -1: no bvh          (nflex x 1) ) // address of bvh root ;  -1: no bvh          (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      flex_bvhnum ; ) int*      flex_bvhnum ; 
PlaceHolderNode(          )           
PlaceHolderNode(// number of bounding volumes               (nflex x 1) ) // number of bounding volumes               (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    flex_rgba ; ) float*    flex_rgba ; 
PlaceHolderNode(            )             
PlaceHolderNode(// rgba when material is omitted            (nflex x 4) ) // rgba when material is omitted            (nflex x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    flex_texcoord ; ) float*    flex_texcoord ; 
PlaceHolderNode(        )         
PlaceHolderNode(// vertex texture coordinates               (nflextexcoord x 2) ) // vertex texture coordinates               (nflextexcoord x 2) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// meshes ) // meshes 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_vertadr ; ) int*      mesh_vertadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// first vertex address                     (nmesh x 1) ) // first vertex address                     (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_vertnum ; ) int*      mesh_vertnum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of vertices                       (nmesh x 1) ) // number of vertices                       (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_faceadr ; ) int*      mesh_faceadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// first face address                       (nmesh x 1) ) // first face address                       (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_facenum ; ) int*      mesh_facenum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of faces                          (nmesh x 1) ) // number of faces                          (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_bvhadr ; ) int*      mesh_bvhadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// address of bvh root                      (nmesh x 1) ) // address of bvh root                      (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_bvhnum ; ) int*      mesh_bvhnum ; 
PlaceHolderNode(          )           
PlaceHolderNode(// number of bvh                            (nmesh x 1) ) // number of bvh                            (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_normaladr ; ) int*      mesh_normaladr ; 
PlaceHolderNode(       )        
PlaceHolderNode(// first normal address                     (nmesh x 1) ) // first normal address                     (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_normalnum ; ) int*      mesh_normalnum ; 
PlaceHolderNode(       )        
PlaceHolderNode(// number of normals                        (nmesh x 1) ) // number of normals                        (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_texcoordadr ; ) int*      mesh_texcoordadr ; 
PlaceHolderNode(     )      
PlaceHolderNode(// texcoord data address ;  -1: no texcoord   (nmesh x 1) ) // texcoord data address ;  -1: no texcoord   (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_texcoordnum ; ) int*      mesh_texcoordnum ; 
PlaceHolderNode(     )      
PlaceHolderNode(// number of texcoord                       (nmesh x 1) ) // number of texcoord                       (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_graphadr ; ) int*      mesh_graphadr ; 
PlaceHolderNode(        )         
PlaceHolderNode(// graph data address ;  -1: no graph         (nmesh x 1) ) // graph data address ;  -1: no graph         (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mesh_vert ; ) float*    mesh_vert ; 
PlaceHolderNode(            )             
PlaceHolderNode(// vertex positions for all meshes          (nmeshvert x 3) ) // vertex positions for all meshes          (nmeshvert x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mesh_normal ; ) float*    mesh_normal ; 
PlaceHolderNode(          )           
PlaceHolderNode(// normals for all meshes                   (nmeshnormal x 3) ) // normals for all meshes                   (nmeshnormal x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mesh_texcoord ; ) float*    mesh_texcoord ; 
PlaceHolderNode(        )         
PlaceHolderNode(// vertex texcoords for all meshes          (nmeshtexcoord x 2) ) // vertex texcoords for all meshes          (nmeshtexcoord x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_face ; ) int*      mesh_face ; 
PlaceHolderNode(            )             
PlaceHolderNode(// vertex face data                         (nmeshface x 3) ) // vertex face data                         (nmeshface x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_facenormal ; ) int*      mesh_facenormal ; 
PlaceHolderNode(      )       
PlaceHolderNode(// normal face data                         (nmeshface x 3) ) // normal face data                         (nmeshface x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_facetexcoord ; ) int*      mesh_facetexcoord ; 
PlaceHolderNode(    )     
PlaceHolderNode(// texture face data                        (nmeshface x 3) ) // texture face data                        (nmeshface x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_graph ; ) int*      mesh_graph ; 
PlaceHolderNode(           )            
PlaceHolderNode(// convex graph data                        (nmeshgraph x 1) ) // convex graph data                        (nmeshgraph x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   mesh_scale ; ) mjtNum*   mesh_scale ; 
PlaceHolderNode(           )            
PlaceHolderNode(// scaling applied to asset vertices        (nmesh x 3) ) // scaling applied to asset vertices        (nmesh x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   mesh_pos ; ) mjtNum*   mesh_pos ; 
PlaceHolderNode(             )              
PlaceHolderNode(// translation applied to asset vertices    (nmesh x 3) ) // translation applied to asset vertices    (nmesh x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   mesh_quat ; ) mjtNum*   mesh_quat ; 
PlaceHolderNode(            )             
PlaceHolderNode(// rotation applied to asset vertices       (nmesh x 4) ) // rotation applied to asset vertices       (nmesh x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mesh_pathadr ; ) int*      mesh_pathadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// address of asset path for mesh ;  -1: none (nmesh x 1) ) // address of asset path for mesh ;  -1: none (nmesh x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// skins ) // skins 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_matid ; ) int*      skin_matid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// skin material id ;  -1: none               (nskin x 1) ) // skin material id ;  -1: none               (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_group ; ) int*      skin_group ; 
PlaceHolderNode(           )            
PlaceHolderNode(// group for visibility                     (nskin x 1) ) // group for visibility                     (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_rgba ; ) float*    skin_rgba ; 
PlaceHolderNode(            )             
PlaceHolderNode(// skin rgba                                (nskin x 4) ) // skin rgba                                (nskin x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_inflate ; ) float*    skin_inflate ; 
PlaceHolderNode(         )          
PlaceHolderNode(// inflate skin in normal direction         (nskin x 1) ) // inflate skin in normal direction         (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_vertadr ; ) int*      skin_vertadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// first vertex address                     (nskin x 1) ) // first vertex address                     (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_vertnum ; ) int*      skin_vertnum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of vertices                       (nskin x 1) ) // number of vertices                       (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_texcoordadr ; ) int*      skin_texcoordadr ; 
PlaceHolderNode(     )      
PlaceHolderNode(// texcoord data address ;  -1: no texcoord   (nskin x 1) ) // texcoord data address ;  -1: no texcoord   (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_faceadr ; ) int*      skin_faceadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// first face address                       (nskin x 1) ) // first face address                       (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_facenum ; ) int*      skin_facenum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of faces                          (nskin x 1) ) // number of faces                          (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_boneadr ; ) int*      skin_boneadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// first bone in skin                       (nskin x 1) ) // first bone in skin                       (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonenum ; ) int*      skin_bonenum ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of bones in skin                  (nskin x 1) ) // number of bones in skin                  (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_vert ; ) float*    skin_vert ; 
PlaceHolderNode(            )             
PlaceHolderNode(// vertex positions for all skin meshes     (nskinvert x 3) ) // vertex positions for all skin meshes     (nskinvert x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_texcoord ; ) float*    skin_texcoord ; 
PlaceHolderNode(        )         
PlaceHolderNode(// vertex texcoords for all skin meshes     (nskintexvert x 2) ) // vertex texcoords for all skin meshes     (nskintexvert x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_face ; ) int*      skin_face ; 
PlaceHolderNode(            )             
PlaceHolderNode(// triangle faces for all skin meshes       (nskinface x 3) ) // triangle faces for all skin meshes       (nskinface x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonevertadr ; ) int*      skin_bonevertadr ; 
PlaceHolderNode(     )      
PlaceHolderNode(// first vertex in each bone                (nskinbone x 1) ) // first vertex in each bone                (nskinbone x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonevertnum ; ) int*      skin_bonevertnum ; 
PlaceHolderNode(     )      
PlaceHolderNode(// number of vertices in each bone          (nskinbone x 1) ) // number of vertices in each bone          (nskinbone x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_bonebindpos ; ) float*    skin_bonebindpos ; 
PlaceHolderNode(     )      
PlaceHolderNode(// bind pos of each bone                    (nskinbone x 3) ) // bind pos of each bone                    (nskinbone x 3) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_bonebindquat ; ) float*    skin_bonebindquat ; 
PlaceHolderNode(    )     
PlaceHolderNode(// bind quat of each bone                   (nskinbone x 4) ) // bind quat of each bone                   (nskinbone x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonebodyid ; ) int*      skin_bonebodyid ; 
PlaceHolderNode(      )       
PlaceHolderNode(// body id of each bone                     (nskinbone x 1) ) // body id of each bone                     (nskinbone x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_bonevertid ; ) int*      skin_bonevertid ; 
PlaceHolderNode(      )       
PlaceHolderNode(// mesh ids of vertices in each bone        (nskinbonevert x 1) ) // mesh ids of vertices in each bone        (nskinbonevert x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    skin_bonevertweight ; ) float*    skin_bonevertweight ; 
PlaceHolderNode(  )   
PlaceHolderNode(// weights of vertices in each bone         (nskinbonevert x 1) ) // weights of vertices in each bone         (nskinbonevert x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      skin_pathadr ; ) int*      skin_pathadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// address of asset path for skin ;  -1: none (nskin x 1) ) // address of asset path for skin ;  -1: none (nskin x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// height fields ) // height fields 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   hfield_size ; ) mjtNum*   hfield_size ; 
PlaceHolderNode(          )           
PlaceHolderNode(// (x ,  y ,  z_top ,  z_bottom)                  (nhfield x 4) ) // (x ,  y ,  z_top ,  z_bottom)                  (nhfield x 4) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      hfield_nrow ; ) int*      hfield_nrow ; 
PlaceHolderNode(          )           
PlaceHolderNode(// number of rows in grid                   (nhfield x 1) ) // number of rows in grid                   (nhfield x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      hfield_ncol ; ) int*      hfield_ncol ; 
PlaceHolderNode(          )           
PlaceHolderNode(// number of columns in grid                (nhfield x 1) ) // number of columns in grid                (nhfield x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      hfield_adr ; ) int*      hfield_adr ; 
PlaceHolderNode(           )            
PlaceHolderNode(// address in hfield_data                   (nhfield x 1) ) // address in hfield_data                   (nhfield x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    hfield_data ; ) float*    hfield_data ; 
PlaceHolderNode(          )           
PlaceHolderNode(// elevation data                           (nhfielddata x 1) ) // elevation data                           (nhfielddata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      hfield_pathadr ; ) int*      hfield_pathadr ; 
PlaceHolderNode(       )        
PlaceHolderNode(// address of hfield asset path ;  -1: none   (nhfield x 1) ) // address of hfield asset path ;  -1: none   (nhfield x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// textures ) // textures 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_type ; ) int*      tex_type ; 
PlaceHolderNode(             )              
PlaceHolderNode(// texture type (mjtTexture)                (ntex x 1) ) // texture type (mjtTexture)                (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_height ; ) int*      tex_height ; 
PlaceHolderNode(           )            
PlaceHolderNode(// number of rows in texture image          (ntex x 1) ) // number of rows in texture image          (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_width ; ) int*      tex_width ; 
PlaceHolderNode(            )             
PlaceHolderNode(// number of columns in texture image       (ntex x 1) ) // number of columns in texture image       (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_nchannel ; ) int*      tex_nchannel ; 
PlaceHolderNode(         )          
PlaceHolderNode(// number of channels in texture image      (ntex x 1) ) // number of channels in texture image      (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_adr ; ) int*      tex_adr ; 
PlaceHolderNode(              )               
PlaceHolderNode(// start address in tex_data                (ntex x 1) ) // start address in tex_data                (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  tex_data ; ) mjtByte*  tex_data ; 
PlaceHolderNode(             )              
PlaceHolderNode(// pixel values                             (ntexdata x 1) ) // pixel values                             (ntexdata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tex_pathadr ; ) int*      tex_pathadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// address of texture asset path ;  -1: none  (ntex x 1) ) // address of texture asset path ;  -1: none  (ntex x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// materials ) // materials 
PlaceHolderNode(  )   
PlaceHolderNode(int*      mat_texid ; ) int*      mat_texid ; 
PlaceHolderNode(            )             
PlaceHolderNode(// indices of textures ;  -1: none            (nmat x mjNTEXROLE) ) // indices of textures ;  -1: none            (nmat x mjNTEXROLE) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  mat_texuniform ; ) mjtByte*  mat_texuniform ; 
PlaceHolderNode(       )        
PlaceHolderNode(// make texture cube uniform                (nmat x 1) ) // make texture cube uniform                (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_texrepeat ; ) float*    mat_texrepeat ; 
PlaceHolderNode(        )         
PlaceHolderNode(// texture repetition for 2d mapping        (nmat x 2) ) // texture repetition for 2d mapping        (nmat x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_emission ; ) float*    mat_emission ; 
PlaceHolderNode(         )          
PlaceHolderNode(// emission (x rgb)                         (nmat x 1) ) // emission (x rgb)                         (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_specular ; ) float*    mat_specular ; 
PlaceHolderNode(         )          
PlaceHolderNode(// specular (x white)                       (nmat x 1) ) // specular (x white)                       (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_shininess ; ) float*    mat_shininess ; 
PlaceHolderNode(        )         
PlaceHolderNode(// shininess coef                           (nmat x 1) ) // shininess coef                           (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_reflectance ; ) float*    mat_reflectance ; 
PlaceHolderNode(      )       
PlaceHolderNode(// reflectance (0: disable)                 (nmat x 1) ) // reflectance (0: disable)                 (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_metallic ; ) float*    mat_metallic ; 
PlaceHolderNode(         )          
PlaceHolderNode(// metallic coef                            (nmat x 1) ) // metallic coef                            (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_roughness ; ) float*    mat_roughness ; 
PlaceHolderNode(        )         
PlaceHolderNode(// roughness coef                           (nmat x 1) ) // roughness coef                           (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    mat_rgba ; ) float*    mat_rgba ; 
PlaceHolderNode(             )              
PlaceHolderNode(// rgba                                     (nmat x 4) ) // rgba                                     (nmat x 4) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// predefined geom pairs for collision detection ;  has precedence over exclude ) // predefined geom pairs for collision detection ;  has precedence over exclude 
PlaceHolderNode(  )   
PlaceHolderNode(int*      pair_dim ; ) int*      pair_dim ; 
PlaceHolderNode(             )              
PlaceHolderNode(// contact dimensionality                   (npair x 1) ) // contact dimensionality                   (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      pair_geom1 ; ) int*      pair_geom1 ; 
PlaceHolderNode(           )            
PlaceHolderNode(// id of geom1                              (npair x 1) ) // id of geom1                              (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      pair_geom2 ; ) int*      pair_geom2 ; 
PlaceHolderNode(           )            
PlaceHolderNode(// id of geom2                              (npair x 1) ) // id of geom2                              (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      pair_signature ; ) int*      pair_signature ; 
PlaceHolderNode(       )        
PlaceHolderNode(// body1 << 16 + body2                      (npair x 1) ) // body1 << 16 + body2                      (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_solref ; ) mjtNum*   pair_solref ; 
PlaceHolderNode(          )           
PlaceHolderNode(// solver reference: contact normal         (npair x mjNREF) ) // solver reference: contact normal         (npair x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_solreffriction ; ) mjtNum*   pair_solreffriction ; 
PlaceHolderNode(  )   
PlaceHolderNode(// solver reference: contact friction       (npair x mjNREF) ) // solver reference: contact friction       (npair x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_solimp ; ) mjtNum*   pair_solimp ; 
PlaceHolderNode(          )           
PlaceHolderNode(// solver impedance: contact                (npair x mjNIMP) ) // solver impedance: contact                (npair x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_margin ; ) mjtNum*   pair_margin ; 
PlaceHolderNode(          )           
PlaceHolderNode(// detect contact if dist<margin            (npair x 1) ) // detect contact if dist<margin            (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_gap ; ) mjtNum*   pair_gap ; 
PlaceHolderNode(             )              
PlaceHolderNode(// include in solver if dist<margin-gap     (npair x 1) ) // include in solver if dist<margin-gap     (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   pair_friction ; ) mjtNum*   pair_friction ; 
PlaceHolderNode(        )         
PlaceHolderNode(// tangent1 ,  2 ,  spin ,  roll1 ,  2              (npair x 5) ) // tangent1 ,  2 ,  spin ,  roll1 ,  2              (npair x 5) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// excluded body pairs for collision detection ) // excluded body pairs for collision detection 
PlaceHolderNode(  )   
PlaceHolderNode(int*      exclude_signature ; ) int*      exclude_signature ; 
PlaceHolderNode(    )     
PlaceHolderNode(// body1 << 16 + body2                      (nexclude x 1) ) // body1 << 16 + body2                      (nexclude x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// equality constraints ) // equality constraints 
PlaceHolderNode(  )   
PlaceHolderNode(int*      eq_type ; ) int*      eq_type ; 
PlaceHolderNode(              )               
PlaceHolderNode(// constraint type (mjtEq)                  (neq x 1) ) // constraint type (mjtEq)                  (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      eq_obj1id ; ) int*      eq_obj1id ; 
PlaceHolderNode(            )             
PlaceHolderNode(// id of object 1                           (neq x 1) ) // id of object 1                           (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      eq_obj2id ; ) int*      eq_obj2id ; 
PlaceHolderNode(            )             
PlaceHolderNode(// id of object 2                           (neq x 1) ) // id of object 2                           (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      eq_objtype ; ) int*      eq_objtype ; 
PlaceHolderNode(           )            
PlaceHolderNode(// type of both objects (mjtObj)            (neq x 1) ) // type of both objects (mjtObj)            (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  eq_active0 ; ) mjtByte*  eq_active0 ; 
PlaceHolderNode(           )            
PlaceHolderNode(// initial enable/disable constraint state  (neq x 1) ) // initial enable/disable constraint state  (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   eq_solref ; ) mjtNum*   eq_solref ; 
PlaceHolderNode(            )             
PlaceHolderNode(// constraint solver reference              (neq x mjNREF) ) // constraint solver reference              (neq x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   eq_solimp ; ) mjtNum*   eq_solimp ; 
PlaceHolderNode(            )             
PlaceHolderNode(// constraint solver impedance              (neq x mjNIMP) ) // constraint solver impedance              (neq x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   eq_data ; ) mjtNum*   eq_data ; 
PlaceHolderNode(              )               
PlaceHolderNode(// numeric data for constraint              (neq x mjNEQDATA) ) // numeric data for constraint              (neq x mjNEQDATA) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// tendons ) // tendons 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tendon_adr ; ) int*      tendon_adr ; 
PlaceHolderNode(           )            
PlaceHolderNode(// address of first object in tendon's path (ntendon x 1) ) // address of first object in tendon's path (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tendon_num ; ) int*      tendon_num ; 
PlaceHolderNode(           )            
PlaceHolderNode(// number of objects in tendon's path       (ntendon x 1) ) // number of objects in tendon's path       (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tendon_matid ; ) int*      tendon_matid ; 
PlaceHolderNode(         )          
PlaceHolderNode(// material id for rendering                (ntendon x 1) ) // material id for rendering                (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tendon_group ; ) int*      tendon_group ; 
PlaceHolderNode(         )          
PlaceHolderNode(// group for visibility                     (ntendon x 1) ) // group for visibility                     (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  tendon_limited ; ) mjtByte*  tendon_limited ; 
PlaceHolderNode(       )        
PlaceHolderNode(// does tendon have length limits           (ntendon x 1) ) // does tendon have length limits           (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_width ; ) mjtNum*   tendon_width ; 
PlaceHolderNode(         )          
PlaceHolderNode(// width for rendering                      (ntendon x 1) ) // width for rendering                      (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_solref_lim ; ) mjtNum*   tendon_solref_lim ; 
PlaceHolderNode(    )     
PlaceHolderNode(// constraint solver reference: limit       (ntendon x mjNREF) ) // constraint solver reference: limit       (ntendon x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_solimp_lim ; ) mjtNum*   tendon_solimp_lim ; 
PlaceHolderNode(    )     
PlaceHolderNode(// constraint solver impedance: limit       (ntendon x mjNIMP) ) // constraint solver impedance: limit       (ntendon x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_solref_fri ; ) mjtNum*   tendon_solref_fri ; 
PlaceHolderNode(    )     
PlaceHolderNode(// constraint solver reference: friction    (ntendon x mjNREF) ) // constraint solver reference: friction    (ntendon x mjNREF) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_solimp_fri ; ) mjtNum*   tendon_solimp_fri ; 
PlaceHolderNode(    )     
PlaceHolderNode(// constraint solver impedance: friction    (ntendon x mjNIMP) ) // constraint solver impedance: friction    (ntendon x mjNIMP) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_range ; ) mjtNum*   tendon_range ; 
PlaceHolderNode(         )          
PlaceHolderNode(// tendon length limits                     (ntendon x 2) ) // tendon length limits                     (ntendon x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_margin ; ) mjtNum*   tendon_margin ; 
PlaceHolderNode(        )         
PlaceHolderNode(// min distance for limit detection         (ntendon x 1) ) // min distance for limit detection         (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_stiffness ; ) mjtNum*   tendon_stiffness ; 
PlaceHolderNode(     )      
PlaceHolderNode(// stiffness coefficient                    (ntendon x 1) ) // stiffness coefficient                    (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_damping ; ) mjtNum*   tendon_damping ; 
PlaceHolderNode(       )        
PlaceHolderNode(// damping coefficient                      (ntendon x 1) ) // damping coefficient                      (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_frictionloss ; ) mjtNum*   tendon_frictionloss ; 
PlaceHolderNode(  )   
PlaceHolderNode(// loss due to friction                     (ntendon x 1) ) // loss due to friction                     (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_lengthspring ; ) mjtNum*   tendon_lengthspring ; 
PlaceHolderNode(  )   
PlaceHolderNode(// spring resting length range              (ntendon x 2) ) // spring resting length range              (ntendon x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_length0 ; ) mjtNum*   tendon_length0 ; 
PlaceHolderNode(       )        
PlaceHolderNode(// tendon length in qpos0                   (ntendon x 1) ) // tendon length in qpos0                   (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_invweight0 ; ) mjtNum*   tendon_invweight0 ; 
PlaceHolderNode(    )     
PlaceHolderNode(// inv. weight in qpos0                     (ntendon x 1) ) // inv. weight in qpos0                     (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tendon_user ; ) mjtNum*   tendon_user ; 
PlaceHolderNode(          )           
PlaceHolderNode(// user data                                (ntendon x nuser_tendon) ) // user data                                (ntendon x nuser_tendon) 
PlaceHolderNode(  )   
PlaceHolderNode(float*    tendon_rgba ; ) float*    tendon_rgba ; 
PlaceHolderNode(          )           
PlaceHolderNode(// rgba when material is omitted            (ntendon x 4) ) // rgba when material is omitted            (ntendon x 4) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// list of all wrap objects in tendon paths ) // list of all wrap objects in tendon paths 
PlaceHolderNode(  )   
PlaceHolderNode(int*      wrap_type ; ) int*      wrap_type ; 
PlaceHolderNode(            )             
PlaceHolderNode(// wrap object type (mjtWrap)               (nwrap x 1) ) // wrap object type (mjtWrap)               (nwrap x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      wrap_objid ; ) int*      wrap_objid ; 
PlaceHolderNode(           )            
PlaceHolderNode(// object id: geom ,  site ,  joint             (nwrap x 1) ) // object id: geom ,  site ,  joint             (nwrap x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   wrap_prm ; ) mjtNum*   wrap_prm ; 
PlaceHolderNode(             )              
PlaceHolderNode(// divisor ,  joint coef ,  or site id          (nwrap x 1) ) // divisor ,  joint coef ,  or site id          (nwrap x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// actuators ) // actuators 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_trntype ; ) int*      actuator_trntype ; 
PlaceHolderNode(     )      
PlaceHolderNode(// transmission type (mjtTrn)               (nu x 1) ) // transmission type (mjtTrn)               (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_dyntype ; ) int*      actuator_dyntype ; 
PlaceHolderNode(     )      
PlaceHolderNode(// dynamics type (mjtDyn)                   (nu x 1) ) // dynamics type (mjtDyn)                   (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_gaintype ; ) int*      actuator_gaintype ; 
PlaceHolderNode(    )     
PlaceHolderNode(// gain type (mjtGain)                      (nu x 1) ) // gain type (mjtGain)                      (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_biastype ; ) int*      actuator_biastype ; 
PlaceHolderNode(    )     
PlaceHolderNode(// bias type (mjtBias)                      (nu x 1) ) // bias type (mjtBias)                      (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_trnid ; ) int*      actuator_trnid ; 
PlaceHolderNode(       )        
PlaceHolderNode(// transmission id: joint ,  tendon ,  site     (nu x 2) ) // transmission id: joint ,  tendon ,  site     (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_actadr ; ) int*      actuator_actadr ; 
PlaceHolderNode(      )       
PlaceHolderNode(// first activation address ;  -1: stateless  (nu x 1) ) // first activation address ;  -1: stateless  (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_actnum ; ) int*      actuator_actnum ; 
PlaceHolderNode(      )       
PlaceHolderNode(// number of activation variables           (nu x 1) ) // number of activation variables           (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_group ; ) int*      actuator_group ; 
PlaceHolderNode(       )        
PlaceHolderNode(// group for visibility                     (nu x 1) ) // group for visibility                     (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  actuator_ctrllimited ; ) mjtByte*  actuator_ctrllimited ; 
PlaceHolderNode( )  
PlaceHolderNode(// is control limited                       (nu x 1) ) // is control limited                       (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  actuator_forcelimited ; ) mjtByte*  actuator_forcelimited ; 
PlaceHolderNode(// is force limited                         (nu x 1) ) // is force limited                         (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  actuator_actlimited ; ) mjtByte*  actuator_actlimited ; 
PlaceHolderNode(  )   
PlaceHolderNode(// is activation limited                    (nu x 1) ) // is activation limited                    (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_dynprm ; ) mjtNum*   actuator_dynprm ; 
PlaceHolderNode(      )       
PlaceHolderNode(// dynamics parameters                      (nu x mjNDYN) ) // dynamics parameters                      (nu x mjNDYN) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_gainprm ; ) mjtNum*   actuator_gainprm ; 
PlaceHolderNode(     )      
PlaceHolderNode(// gain parameters                          (nu x mjNGAIN) ) // gain parameters                          (nu x mjNGAIN) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_biasprm ; ) mjtNum*   actuator_biasprm ; 
PlaceHolderNode(     )      
PlaceHolderNode(// bias parameters                          (nu x mjNBIAS) ) // bias parameters                          (nu x mjNBIAS) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtByte*  actuator_actearly ; ) mjtByte*  actuator_actearly ; 
PlaceHolderNode(    )     
PlaceHolderNode(// step activation before force             (nu x 1) ) // step activation before force             (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_ctrlrange ; ) mjtNum*   actuator_ctrlrange ; 
PlaceHolderNode(   )    
PlaceHolderNode(// range of controls                        (nu x 2) ) // range of controls                        (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_forcerange ; ) mjtNum*   actuator_forcerange ; 
PlaceHolderNode(  )   
PlaceHolderNode(// range of forces                          (nu x 2) ) // range of forces                          (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_actrange ; ) mjtNum*   actuator_actrange ; 
PlaceHolderNode(    )     
PlaceHolderNode(// range of activations                     (nu x 2) ) // range of activations                     (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_gear ; ) mjtNum*   actuator_gear ; 
PlaceHolderNode(        )         
PlaceHolderNode(// scale length and transmitted force       (nu x 6) ) // scale length and transmitted force       (nu x 6) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_cranklength ; ) mjtNum*   actuator_cranklength ; 
PlaceHolderNode( )  
PlaceHolderNode(// crank length for slider-crank            (nu x 1) ) // crank length for slider-crank            (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_acc0 ; ) mjtNum*   actuator_acc0 ; 
PlaceHolderNode(        )         
PlaceHolderNode(// acceleration from unit force in qpos0    (nu x 1) ) // acceleration from unit force in qpos0    (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_length0 ; ) mjtNum*   actuator_length0 ; 
PlaceHolderNode(     )      
PlaceHolderNode(// actuator length in qpos0                 (nu x 1) ) // actuator length in qpos0                 (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_lengthrange ; ) mjtNum*   actuator_lengthrange ; 
PlaceHolderNode( )  
PlaceHolderNode(// feasible actuator length range           (nu x 2) ) // feasible actuator length range           (nu x 2) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   actuator_user ; ) mjtNum*   actuator_user ; 
PlaceHolderNode(        )         
PlaceHolderNode(// user data                                (nu x nuser_actuator) ) // user data                                (nu x nuser_actuator) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      actuator_plugin ; ) int*      actuator_plugin ; 
PlaceHolderNode(      )       
PlaceHolderNode(// plugin instance id ;  -1: not a plugin     (nu x 1) ) // plugin instance id ;  -1: not a plugin     (nu x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// sensors ) // sensors 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_type ; ) int*      sensor_type ; 
PlaceHolderNode(          )           
PlaceHolderNode(// sensor type (mjtSensor)                  (nsensor x 1) ) // sensor type (mjtSensor)                  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_datatype ; ) int*      sensor_datatype ; 
PlaceHolderNode(      )       
PlaceHolderNode(// numeric data type (mjtDataType)          (nsensor x 1) ) // numeric data type (mjtDataType)          (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_needstage ; ) int*      sensor_needstage ; 
PlaceHolderNode(     )      
PlaceHolderNode(// required compute stage (mjtStage)        (nsensor x 1) ) // required compute stage (mjtStage)        (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_objtype ; ) int*      sensor_objtype ; 
PlaceHolderNode(       )        
PlaceHolderNode(// type of sensorized object (mjtObj)       (nsensor x 1) ) // type of sensorized object (mjtObj)       (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_objid ; ) int*      sensor_objid ; 
PlaceHolderNode(         )          
PlaceHolderNode(// id of sensorized object                  (nsensor x 1) ) // id of sensorized object                  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_reftype ; ) int*      sensor_reftype ; 
PlaceHolderNode(       )        
PlaceHolderNode(// type of reference frame (mjtObj)         (nsensor x 1) ) // type of reference frame (mjtObj)         (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_refid ; ) int*      sensor_refid ; 
PlaceHolderNode(         )          
PlaceHolderNode(// id of reference frame ;  -1: global frame  (nsensor x 1) ) // id of reference frame ;  -1: global frame  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_dim ; ) int*      sensor_dim ; 
PlaceHolderNode(           )            
PlaceHolderNode(// number of scalar outputs                 (nsensor x 1) ) // number of scalar outputs                 (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_adr ; ) int*      sensor_adr ; 
PlaceHolderNode(           )            
PlaceHolderNode(// address in sensor array                  (nsensor x 1) ) // address in sensor array                  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   sensor_cutoff ; ) mjtNum*   sensor_cutoff ; 
PlaceHolderNode(        )         
PlaceHolderNode(// cutoff for real and positive ;  0: ignore  (nsensor x 1) ) // cutoff for real and positive ;  0: ignore  (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   sensor_noise ; ) mjtNum*   sensor_noise ; 
PlaceHolderNode(         )          
PlaceHolderNode(// noise standard deviation                 (nsensor x 1) ) // noise standard deviation                 (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   sensor_user ; ) mjtNum*   sensor_user ; 
PlaceHolderNode(          )           
PlaceHolderNode(// user data                                (nsensor x nuser_sensor) ) // user data                                (nsensor x nuser_sensor) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      sensor_plugin ; ) int*      sensor_plugin ; 
PlaceHolderNode(        )         
PlaceHolderNode(// plugin instance id ;  -1: not a plugin     (nsensor x 1) ) // plugin instance id ;  -1: not a plugin     (nsensor x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// plugin instances ) // plugin instances 
PlaceHolderNode(  )   
PlaceHolderNode(int*      plugin ; ) int*      plugin ; 
PlaceHolderNode(               )                
PlaceHolderNode(// globally registered plugin slot number   (nplugin x 1) ) // globally registered plugin slot number   (nplugin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      plugin_stateadr ; ) int*      plugin_stateadr ; 
PlaceHolderNode(      )       
PlaceHolderNode(// address in the plugin state array        (nplugin x 1) ) // address in the plugin state array        (nplugin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      plugin_statenum ; ) int*      plugin_statenum ; 
PlaceHolderNode(      )       
PlaceHolderNode(// number of states in the plugin instance  (nplugin x 1) ) // number of states in the plugin instance  (nplugin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(char*     plugin_attr ; ) char*     plugin_attr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// config attributes of plugin instances    (npluginattr x 1) ) // config attributes of plugin instances    (npluginattr x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      plugin_attradr ; ) int*      plugin_attradr ; 
PlaceHolderNode(       )        
PlaceHolderNode(// address to each instance's config attrib (nplugin x 1) ) // address to each instance's config attrib (nplugin x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// custom numeric fields ) // custom numeric fields 
PlaceHolderNode(  )   
PlaceHolderNode(int*      numeric_adr ; ) int*      numeric_adr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// address of field in numeric_data         (nnumeric x 1) ) // address of field in numeric_data         (nnumeric x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      numeric_size ; ) int*      numeric_size ; 
PlaceHolderNode(         )          
PlaceHolderNode(// size of numeric field                    (nnumeric x 1) ) // size of numeric field                    (nnumeric x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   numeric_data ; ) mjtNum*   numeric_data ; 
PlaceHolderNode(         )          
PlaceHolderNode(// array of all numeric fields              (nnumericdata x 1) ) // array of all numeric fields              (nnumericdata x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// custom text fields ) // custom text fields 
PlaceHolderNode(  )   
PlaceHolderNode(int*      text_adr ; ) int*      text_adr ; 
PlaceHolderNode(             )              
PlaceHolderNode(// address of text in text_data             (ntext x 1) ) // address of text in text_data             (ntext x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      text_size ; ) int*      text_size ; 
PlaceHolderNode(            )             
PlaceHolderNode(// size of text field (strlen+1)            (ntext x 1) ) // size of text field (strlen+1)            (ntext x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(char*     text_data ; ) char*     text_data ; 
PlaceHolderNode(            )             
PlaceHolderNode(// array of all text fields (0-terminated)  (ntextdata x 1) ) // array of all text fields (0-terminated)  (ntextdata x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// custom tuple fields ) // custom tuple fields 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tuple_adr ; ) int*      tuple_adr ; 
PlaceHolderNode(            )             
PlaceHolderNode(// address of text in text_data             (ntuple x 1) ) // address of text in text_data             (ntuple x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tuple_size ; ) int*      tuple_size ; 
PlaceHolderNode(           )            
PlaceHolderNode(// number of objects in tuple               (ntuple x 1) ) // number of objects in tuple               (ntuple x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tuple_objtype ; ) int*      tuple_objtype ; 
PlaceHolderNode(        )         
PlaceHolderNode(// array of object types in all tuples      (ntupledata x 1) ) // array of object types in all tuples      (ntupledata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      tuple_objid ; ) int*      tuple_objid ; 
PlaceHolderNode(          )           
PlaceHolderNode(// array of object ids in all tuples        (ntupledata x 1) ) // array of object ids in all tuples        (ntupledata x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   tuple_objprm ; ) mjtNum*   tuple_objprm ; 
PlaceHolderNode(         )          
PlaceHolderNode(// array of object params in all tuples     (ntupledata x 1) ) // array of object params in all tuples     (ntupledata x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// keyframes ) // keyframes 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_time ; ) mjtNum*   key_time ; 
PlaceHolderNode(             )              
PlaceHolderNode(// key time                                 (nkey x 1) ) // key time                                 (nkey x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_qpos ; ) mjtNum*   key_qpos ; 
PlaceHolderNode(             )              
PlaceHolderNode(// key position                             (nkey x nq) ) // key position                             (nkey x nq) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_qvel ; ) mjtNum*   key_qvel ; 
PlaceHolderNode(             )              
PlaceHolderNode(// key velocity                             (nkey x nv) ) // key velocity                             (nkey x nv) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_act ; ) mjtNum*   key_act ; 
PlaceHolderNode(              )               
PlaceHolderNode(// key activation                           (nkey x na) ) // key activation                           (nkey x na) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_mpos ; ) mjtNum*   key_mpos ; 
PlaceHolderNode(             )              
PlaceHolderNode(// key mocap position                       (nkey x nmocap*3) ) // key mocap position                       (nkey x nmocap*3) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_mquat ; ) mjtNum*   key_mquat ; 
PlaceHolderNode(            )             
PlaceHolderNode(// key mocap quaternion                     (nkey x nmocap*4) ) // key mocap quaternion                     (nkey x nmocap*4) 
PlaceHolderNode(  )   
PlaceHolderNode(mjtNum*   key_ctrl ; ) mjtNum*   key_ctrl ; 
PlaceHolderNode(             )              
PlaceHolderNode(// key control                              (nkey x nu) ) // key control                              (nkey x nu) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// names ) // names 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_bodyadr ; ) int*      name_bodyadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// body name pointers                       (nbody x 1) ) // body name pointers                       (nbody x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_jntadr ; ) int*      name_jntadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// joint name pointers                      (njnt x 1) ) // joint name pointers                      (njnt x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_geomadr ; ) int*      name_geomadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// geom name pointers                       (ngeom x 1) ) // geom name pointers                       (ngeom x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_siteadr ; ) int*      name_siteadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// site name pointers                       (nsite x 1) ) // site name pointers                       (nsite x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_camadr ; ) int*      name_camadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// camera name pointers                     (ncam x 1) ) // camera name pointers                     (ncam x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_lightadr ; ) int*      name_lightadr ; 
PlaceHolderNode(        )         
PlaceHolderNode(// light name pointers                      (nlight x 1) ) // light name pointers                      (nlight x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_flexadr ; ) int*      name_flexadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// flex name pointers                       (nflex x 1) ) // flex name pointers                       (nflex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_meshadr ; ) int*      name_meshadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// mesh name pointers                       (nmesh x 1) ) // mesh name pointers                       (nmesh x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_skinadr ; ) int*      name_skinadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// skin name pointers                       (nskin x 1) ) // skin name pointers                       (nskin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_hfieldadr ; ) int*      name_hfieldadr ; 
PlaceHolderNode(       )        
PlaceHolderNode(// hfield name pointers                     (nhfield x 1) ) // hfield name pointers                     (nhfield x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_texadr ; ) int*      name_texadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// texture name pointers                    (ntex x 1) ) // texture name pointers                    (ntex x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_matadr ; ) int*      name_matadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// material name pointers                   (nmat x 1) ) // material name pointers                   (nmat x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_pairadr ; ) int*      name_pairadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// geom pair name pointers                  (npair x 1) ) // geom pair name pointers                  (npair x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_excludeadr ; ) int*      name_excludeadr ; 
PlaceHolderNode(      )       
PlaceHolderNode(// exclude name pointers                    (nexclude x 1) ) // exclude name pointers                    (nexclude x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_eqadr ; ) int*      name_eqadr ; 
PlaceHolderNode(           )            
PlaceHolderNode(// equality constraint name pointers        (neq x 1) ) // equality constraint name pointers        (neq x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_tendonadr ; ) int*      name_tendonadr ; 
PlaceHolderNode(       )        
PlaceHolderNode(// tendon name pointers                     (ntendon x 1) ) // tendon name pointers                     (ntendon x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_actuatoradr ; ) int*      name_actuatoradr ; 
PlaceHolderNode(     )      
PlaceHolderNode(// actuator name pointers                   (nu x 1) ) // actuator name pointers                   (nu x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_sensoradr ; ) int*      name_sensoradr ; 
PlaceHolderNode(       )        
PlaceHolderNode(// sensor name pointers                     (nsensor x 1) ) // sensor name pointers                     (nsensor x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_numericadr ; ) int*      name_numericadr ; 
PlaceHolderNode(      )       
PlaceHolderNode(// numeric name pointers                    (nnumeric x 1) ) // numeric name pointers                    (nnumeric x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_textadr ; ) int*      name_textadr ; 
PlaceHolderNode(         )          
PlaceHolderNode(// text name pointers                       (ntext x 1) ) // text name pointers                       (ntext x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_tupleadr ; ) int*      name_tupleadr ; 
PlaceHolderNode(        )         
PlaceHolderNode(// tuple name pointers                      (ntuple x 1) ) // tuple name pointers                      (ntuple x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_keyadr ; ) int*      name_keyadr ; 
PlaceHolderNode(          )           
PlaceHolderNode(// keyframe name pointers                   (nkey x 1) ) // keyframe name pointers                   (nkey x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      name_pluginadr ; ) int*      name_pluginadr ; 
PlaceHolderNode(       )        
PlaceHolderNode(// plugin instance name pointers            (nplugin x 1) ) // plugin instance name pointers            (nplugin x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(char*     names ; ) char*     names ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// names of all objects ,  0-terminated       (nnames x 1) ) // names of all objects ,  0-terminated       (nnames x 1) 
PlaceHolderNode(  )   
PlaceHolderNode(int*      names_map ; ) int*      names_map ; 
PlaceHolderNode(            )             
PlaceHolderNode(// internal hash map of names               (nnames_map x 1) ) // internal hash map of names               (nnames_map x 1) 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(// paths ) // paths 
PlaceHolderNode(  )   
PlaceHolderNode(char*     paths ; ) char*     paths ; 
PlaceHolderNode(                )                 
PlaceHolderNode(// paths to assets ,  0-terminated            (npaths x 1) ) // paths to assets ,  0-terminated            (npaths x 1) 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjModel ; ) typedef <children> mjModel ; 
PlaceHolderNode(struct mjModel_ ) struct mjModel_ 
PlaceHolderNode(mjModel ) mjModel 
PlaceHolderNode( 
 )  
 
PlaceHolderNode(#endif ) #endif 
PlaceHolderNode( )  
PlaceHolderNode(// MUJOCO_MJMODEL_H_ ) // MUJOCO_MJMODEL_H_ 
PlaceHolderNode( )  
