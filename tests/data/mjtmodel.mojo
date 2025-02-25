
# Copyright 2021 DeepMind Technologies Limited 
# 
# Licensed under the Apache License ,  Version 2.0 (the "License") ;  
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at 
# 
#     http://www.apache.org/licenses/LICENSE-2.0 
# 
# Unless required by applicable law or agreed to in writing ,  software 
# distributed under the License is distributed on an "AS IS" BASIS ,  
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. 
# See the License for the specific language governing permissions and 
# limitations under the License. 
 
# PlaceHolderNode(#ifndef MUJOCO_MJMODEL_H_ ) #ifndef MUJOCO_MJMODEL_H_ 
# PlaceHolderNode(#define MUJOCO_MJMODEL_H_ 
 ) #define MUJOCO_MJMODEL_H_ 
 
# PlaceHolderNode(#include <stddef.h> ) #include <stddef.h> 
# PlaceHolderNode(#include <stdint.h> ) #include <stdint.h> 
 
 
# PlaceHolderNode(#include <mujoco/mjtnum.h> ) #include <mujoco/mjtnum.h> 
 
# global constants 
# PlaceHolderNode(#define mjPI            3.14159265358979323846 ) #define mjPI            3.14159265358979323846 
# PlaceHolderNode(#define mjMAXVAL        1E+10     ) #define mjMAXVAL        1E+10     
# maximum value in qpos ,  qvel ,  qacc 
# PlaceHolderNode(#define mjMINMU         1E-5      ) #define mjMINMU         1E-5      
# minimum friction coefficient 
# PlaceHolderNode(#define mjMINIMP        0.0001    ) #define mjMINIMP        0.0001    
# minimum constraint impedance 
# PlaceHolderNode(#define mjMAXIMP        0.9999    ) #define mjMAXIMP        0.9999    
# maximum constraint impedance 
# PlaceHolderNode(#define mjMAXCONPAIR    50        ) #define mjMAXCONPAIR    50        
# maximum number of contacts per geom pair 
# PlaceHolderNode(#define mjMAXTREEDEPTH  50        ) #define mjMAXTREEDEPTH  50        
# maximum bounding volume hierarchy depth 
 
 
# sizes --------------------------------------------------------- 
 
# PlaceHolderNode(#define mjNEQDATA       11        ) #define mjNEQDATA       11        
# number of eq_data fields 
# PlaceHolderNode(#define mjNDYN          10        ) #define mjNDYN          10        
# number of actuator dynamics parameters 
# PlaceHolderNode(#define mjNGAIN         10        ) #define mjNGAIN         10        
# number of actuator gain parameters 
# PlaceHolderNode(#define mjNBIAS         10        ) #define mjNBIAS         10        
# number of actuator bias parameters 
# PlaceHolderNode(#define mjNFLUID        12        ) #define mjNFLUID        12        
# number of fluid interaction parameters 
# PlaceHolderNode(#define mjNREF          2         ) #define mjNREF          2         
# number of solver reference parameters 
# PlaceHolderNode(#define mjNIMP          5         ) #define mjNIMP          5         
# number of solver impedance parameters 
# PlaceHolderNode(#define mjNSOLVER       200       ) #define mjNSOLVER       200       
# size of one mjData.solver array 
# PlaceHolderNode(#define mjNISLAND       20        ) #define mjNISLAND       20        
# number of mjData.solver arrays 
 
# enum types (mjt) ---------------------------------------------- 
 
# PlaceHolderNode(typedef <children> 
mjtDisableBit ; ) typedef <children> 
mjtDisableBit ; 
# PlaceHolderNode(enum mjtDisableBit_ ) enum mjtDisableBit_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
    
# disable default feature bitflags 
  
# PlaceHolderNode(mjDSBL_CONSTRAINT   = 1<<0 , ) mjDSBL_CONSTRAINT   = 1<<0 , 
     
# entire constraint solver 
  
# PlaceHolderNode(mjDSBL_EQUALITY     = 1<<1 , ) mjDSBL_EQUALITY     = 1<<1 , 
     
# equality constraints 
  
# PlaceHolderNode(mjDSBL_FRICTIONLOSS = 1<<2 , ) mjDSBL_FRICTIONLOSS = 1<<2 , 
     
# joint and tendon frictionloss constraints 
  
# PlaceHolderNode(mjDSBL_LIMIT        = 1<<3 , ) mjDSBL_LIMIT        = 1<<3 , 
     
# joint and tendon limit constraints 
  
# PlaceHolderNode(mjDSBL_CONTACT      = 1<<4 , ) mjDSBL_CONTACT      = 1<<4 , 
     
# contact constraints 
  
# PlaceHolderNode(mjDSBL_PASSIVE      = 1<<5 , ) mjDSBL_PASSIVE      = 1<<5 , 
     
# passive forces 
  
# PlaceHolderNode(mjDSBL_GRAVITY      = 1<<6 , ) mjDSBL_GRAVITY      = 1<<6 , 
     
# gravitational forces 
  
# PlaceHolderNode(mjDSBL_CLAMPCTRL    = 1<<7 , ) mjDSBL_CLAMPCTRL    = 1<<7 , 
     
# clamp control to specified range 
  
# PlaceHolderNode(mjDSBL_WARMSTART    = 1<<8 , ) mjDSBL_WARMSTART    = 1<<8 , 
     
# warmstart constraint solver 
  
# PlaceHolderNode(mjDSBL_FILTERPARENT = 1<<9 , ) mjDSBL_FILTERPARENT = 1<<9 , 
     
# remove collisions with parent body 
  
# PlaceHolderNode(mjDSBL_ACTUATION    = 1<<10 , ) mjDSBL_ACTUATION    = 1<<10 , 
    
# apply actuation forces 
  
# PlaceHolderNode(mjDSBL_REFSAFE      = 1<<11 , ) mjDSBL_REFSAFE      = 1<<11 , 
    
# integrator safety: make ref[0]>=2*timestep 
  
# PlaceHolderNode(mjDSBL_SENSOR       = 1<<12 , ) mjDSBL_SENSOR       = 1<<12 , 
    
# sensors 
  
# PlaceHolderNode(mjDSBL_MIDPHASE     = 1<<13 , ) mjDSBL_MIDPHASE     = 1<<13 , 
    
# mid-phase collision filtering 
  
# PlaceHolderNode(mjDSBL_EULERDAMP    = 1<<14 , ) mjDSBL_EULERDAMP    = 1<<14 , 
    
# implicit integration of joint damping in Euler integrator 
  
# PlaceHolderNode(mjDSBL_AUTORESET    = 1<<15 , ) mjDSBL_AUTORESET    = 1<<15 , 
    
# automatic reset when numerical issues are detected 
 
  
# PlaceHolderNode(mjNDISABLE          = 16 ) mjNDISABLE          = 16 
       
# number of disable flags 
# PlaceHolderNode(mjtDisableBit ) mjtDisableBit 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtEnableBit ; ) typedef <children> 
mjtEnableBit ; 
# PlaceHolderNode(enum mjtEnableBit_ ) enum mjtEnableBit_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
     
# enable optional feature bitflags 
  
# PlaceHolderNode(mjENBL_OVERRIDE     = 1<<0 , ) mjENBL_OVERRIDE     = 1<<0 , 
     
# override contact parameters 
  
# PlaceHolderNode(mjENBL_ENERGY       = 1<<1 , ) mjENBL_ENERGY       = 1<<1 , 
     
# energy computation 
  
# PlaceHolderNode(mjENBL_FWDINV       = 1<<2 , ) mjENBL_FWDINV       = 1<<2 , 
     
# record solver statistics 
  
# PlaceHolderNode(mjENBL_INVDISCRETE  = 1<<3 , ) mjENBL_INVDISCRETE  = 1<<3 , 
     
# discrete-time inverse dynamics 
                                  
# experimental features: 
  
# PlaceHolderNode(mjENBL_MULTICCD     = 1<<4 , ) mjENBL_MULTICCD     = 1<<4 , 
     
# multi-point convex collision detection 
  
# PlaceHolderNode(mjENBL_ISLAND       = 1<<5 , ) mjENBL_ISLAND       = 1<<5 , 
     
# constraint island discovery 
  
# PlaceHolderNode(mjENBL_NATIVECCD    = 1<<6 , ) mjENBL_NATIVECCD    = 1<<6 , 
     
# native convex collision detection 
 
  
# PlaceHolderNode(mjNENABLE           = 7 ) mjNENABLE           = 7 
        
# number of enable flags 
# PlaceHolderNode(mjtEnableBit ) mjtEnableBit 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtJoint ; ) typedef <children> 
mjtJoint ; 
# PlaceHolderNode(enum mjtJoint_ ) enum mjtJoint_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
         
# type of degree of freedom 
  
# PlaceHolderNode(mjJNT_FREE          = 0 , ) mjJNT_FREE          = 0 , 
        
# global position and orientation (quat)       (7) 
  
# PlaceHolderNode(mjJNT_BALL , ) mjJNT_BALL , 
                     
# orientation (quat) relative to parent        (4) 
  
# PlaceHolderNode(mjJNT_SLIDE , ) mjJNT_SLIDE , 
                    
# sliding distance along body-fixed axis       (1) 
  
# PlaceHolderNode(mjJNT_HINGE                     ) mjJNT_HINGE                     
# rotation angle (rad) around body-fixed axis  (1) 
# PlaceHolderNode(mjtJoint ) mjtJoint 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtGeom ; ) typedef <children> 
mjtGeom ; 
# PlaceHolderNode(enum mjtGeom_ ) enum mjtGeom_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
          
# type of geometric shape 
  
# regular geom types 
  
# PlaceHolderNode(mjGEOM_PLANE        = 0 , ) mjGEOM_PLANE        = 0 , 
        
# plane 
  
# PlaceHolderNode(mjGEOM_HFIELD , ) mjGEOM_HFIELD , 
                  
# height field 
  
# PlaceHolderNode(mjGEOM_SPHERE , ) mjGEOM_SPHERE , 
                  
# sphere 
  
# PlaceHolderNode(mjGEOM_CAPSULE , ) mjGEOM_CAPSULE , 
                 
# capsule 
  
# PlaceHolderNode(mjGEOM_ELLIPSOID , ) mjGEOM_ELLIPSOID , 
               
# ellipsoid 
  
# PlaceHolderNode(mjGEOM_CYLINDER , ) mjGEOM_CYLINDER , 
                
# cylinder 
  
# PlaceHolderNode(mjGEOM_BOX , ) mjGEOM_BOX , 
                     
# box 
  
# PlaceHolderNode(mjGEOM_MESH , ) mjGEOM_MESH , 
                    
# mesh 
  
# PlaceHolderNode(mjGEOM_SDF , ) mjGEOM_SDF , 
                     
# signed distance field 
 
  
# PlaceHolderNode(mjNGEOMTYPES , ) mjNGEOMTYPES , 
                   
# number of regular geom types 
 
  
# rendering-only geom types: not used in mjModel ,  not counted in mjNGEOMTYPES 
  
# PlaceHolderNode(mjGEOM_ARROW        = 100 , ) mjGEOM_ARROW        = 100 , 
      
# arrow 
  
# PlaceHolderNode(mjGEOM_ARROW1 , ) mjGEOM_ARROW1 , 
                  
# arrow without wedges 
  
# PlaceHolderNode(mjGEOM_ARROW2 , ) mjGEOM_ARROW2 , 
                  
# arrow in both directions 
  
# PlaceHolderNode(mjGEOM_LINE , ) mjGEOM_LINE , 
                    
# line 
  
# PlaceHolderNode(mjGEOM_LINEBOX , ) mjGEOM_LINEBOX , 
                 
# box with line edges 
  
# PlaceHolderNode(mjGEOM_FLEX , ) mjGEOM_FLEX , 
                    
# flex 
  
# PlaceHolderNode(mjGEOM_SKIN , ) mjGEOM_SKIN , 
                    
# skin 
  
# PlaceHolderNode(mjGEOM_LABEL , ) mjGEOM_LABEL , 
                   
# text label 
  
# PlaceHolderNode(mjGEOM_TRIANGLE , ) mjGEOM_TRIANGLE , 
                
# triangle 
 
  
# PlaceHolderNode(mjGEOM_NONE         = 1001 ) mjGEOM_NONE         = 1001 
     
# missing geom type 
# PlaceHolderNode(mjtGeom ) mjtGeom 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtCamLight ; ) typedef <children> 
mjtCamLight ; 
# PlaceHolderNode(enum mjtCamLight_ ) enum mjtCamLight_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
      
# tracking mode for camera and light 
  
# PlaceHolderNode(mjCAMLIGHT_FIXED    = 0 , ) mjCAMLIGHT_FIXED    = 0 , 
        
# pos and rot fixed in body 
  
# PlaceHolderNode(mjCAMLIGHT_TRACK , ) mjCAMLIGHT_TRACK , 
               
# pos tracks body ,  rot fixed in global 
  
# PlaceHolderNode(mjCAMLIGHT_TRACKCOM , ) mjCAMLIGHT_TRACKCOM , 
            
# pos tracks subtree com ,  rot fixed in body 
  
# PlaceHolderNode(mjCAMLIGHT_TARGETBODY , ) mjCAMLIGHT_TARGETBODY , 
          
# pos fixed in body ,  rot tracks target body 
  
# PlaceHolderNode(mjCAMLIGHT_TARGETBODYCOM        ) mjCAMLIGHT_TARGETBODYCOM        
# pos fixed in body ,  rot tracks target subtree com 
# PlaceHolderNode(mjtCamLight ) mjtCamLight 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtTexture ; ) typedef <children> 
mjtTexture ; 
# PlaceHolderNode(enum mjtTexture_ ) enum mjtTexture_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
       
# type of texture 
  
# PlaceHolderNode(mjTEXTURE_2D        = 0 , ) mjTEXTURE_2D        = 0 , 
        
# 2d texture ,  suitable for planes and hfields 
  
# PlaceHolderNode(mjTEXTURE_CUBE , ) mjTEXTURE_CUBE , 
                 
# cube texture ,  suitable for all other geom types 
  
# PlaceHolderNode(mjTEXTURE_SKYBOX                ) mjTEXTURE_SKYBOX                
# cube texture used as skybox 
# PlaceHolderNode(mjtTexture ) mjtTexture 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtIntegrator ; ) typedef <children> 
mjtIntegrator ; 
# PlaceHolderNode(enum mjtTextureRole_ ) enum mjtTextureRole_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
   
# role of texture map in rendering 
  
# PlaceHolderNode(mjTEXROLE_USER      = 0 , ) mjTEXROLE_USER      = 0 , 
        
# unspecified 
  
# PlaceHolderNode(mjTEXROLE_RGB , ) mjTEXROLE_RGB , 
                  
# base color (albedo) 
  
# PlaceHolderNode(mjTEXROLE_OCCLUSION , ) mjTEXROLE_OCCLUSION , 
            
# ambient occlusion 
  
# PlaceHolderNode(mjTEXROLE_ROUGHNESS , ) mjTEXROLE_ROUGHNESS , 
            
# roughness 
  
# PlaceHolderNode(mjTEXROLE_METALLIC , ) mjTEXROLE_METALLIC , 
             
# metallic 
  
# PlaceHolderNode(mjTEXROLE_NORMAL , ) mjTEXROLE_NORMAL , 
               
# normal (bump) map 
  
# PlaceHolderNode(mjTEXROLE_OPACITY , ) mjTEXROLE_OPACITY , 
              
# transperancy 
  
# PlaceHolderNode(mjTEXROLE_EMISSIVE , ) mjTEXROLE_EMISSIVE , 
             
# light emission 
  
# PlaceHolderNode(mjTEXROLE_RGBA , ) mjTEXROLE_RGBA , 
                 
# base color ,  opacity 
  
# PlaceHolderNode(mjTEXROLE_ORM , ) mjTEXROLE_ORM , 
                  
# occlusion ,  roughness ,  metallic 
  
# PlaceHolderNode(mjNTEXROLE 
} mjtTextureRole ;  
 
 
typedef enum mjtIntegrator_ {     ) mjNTEXROLE 
} mjtTextureRole ;  
 
 
typedef enum mjtIntegrator_ {     
# integrator mode 
  
# PlaceHolderNode(mjINT_EULER         = 0 , ) mjINT_EULER         = 0 , 
        
# semi-implicit Euler 
  
# PlaceHolderNode(mjINT_RK4 , ) mjINT_RK4 , 
                      
# 4th-order Runge Kutta 
  
# PlaceHolderNode(mjINT_IMPLICIT , ) mjINT_IMPLICIT , 
                 
# implicit in velocity 
  
# PlaceHolderNode(mjINT_IMPLICITFAST              ) mjINT_IMPLICITFAST              
# implicit in velocity ,  no rne derivative 
# PlaceHolderNode(mjtIntegrator ) mjtIntegrator 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtCone ; ) typedef <children> 
mjtCone ; 
# PlaceHolderNode(enum mjtCone_ ) enum mjtCone_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
          
# type of friction cone 
  
# PlaceHolderNode(mjCONE_PYRAMIDAL     = 0 , ) mjCONE_PYRAMIDAL     = 0 , 
       
# pyramidal 
  
# PlaceHolderNode(mjCONE_ELLIPTIC                 ) mjCONE_ELLIPTIC                 
# elliptic 
# PlaceHolderNode(mjtCone ) mjtCone 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtJacobian ; ) typedef <children> 
mjtJacobian ; 
# PlaceHolderNode(enum mjtJacobian_ ) enum mjtJacobian_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
      
# type of constraint Jacobian 
  
# PlaceHolderNode(mjJAC_DENSE          = 0 , ) mjJAC_DENSE          = 0 , 
       
# dense 
  
# PlaceHolderNode(mjJAC_SPARSE , ) mjJAC_SPARSE , 
                   
# sparse 
  
# PlaceHolderNode(mjJAC_AUTO                      ) mjJAC_AUTO                      
# dense if nv<60 ,  sparse otherwise 
# PlaceHolderNode(mjtJacobian ) mjtJacobian 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtSolver ; ) typedef <children> 
mjtSolver ; 
# PlaceHolderNode(enum mjtSolver_ ) enum mjtSolver_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
        
# constraint solver algorithm 
  
# PlaceHolderNode(mjSOL_PGS            = 0 , ) mjSOL_PGS            = 0 , 
       
# PGS    (dual) 
  
# PlaceHolderNode(mjSOL_CG , ) mjSOL_CG , 
                       
# CG     (primal) 
  
# PlaceHolderNode(mjSOL_NEWTON                    ) mjSOL_NEWTON                    
# Newton (primal) 
# PlaceHolderNode(mjtSolver ) mjtSolver 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtEq ; ) typedef <children> 
mjtEq ; 
# PlaceHolderNode(enum mjtEq_ ) enum mjtEq_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
            
# type of equality constraint 
  
# PlaceHolderNode(mjEQ_CONNECT        = 0 , ) mjEQ_CONNECT        = 0 , 
        
# connect two bodies at a point (ball joint) 
  
# PlaceHolderNode(mjEQ_WELD , ) mjEQ_WELD , 
                      
# fix relative position and orientation of two bodies 
  
# PlaceHolderNode(mjEQ_JOINT , ) mjEQ_JOINT , 
                     
# couple the values of two scalar joints with cubic 
  
# PlaceHolderNode(mjEQ_TENDON , ) mjEQ_TENDON , 
                    
# couple the lengths of two tendons with cubic 
  
# PlaceHolderNode(mjEQ_FLEX , ) mjEQ_FLEX , 
                      
# fix all edge lengths of a flex 
  
# PlaceHolderNode(mjEQ_DISTANCE                   ) mjEQ_DISTANCE                   
# unsupported ,  will cause an error if used 
# PlaceHolderNode(mjtEq ) mjtEq 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtWrap ; ) typedef <children> 
mjtWrap ; 
# PlaceHolderNode(enum mjtWrap_ ) enum mjtWrap_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
          
# type of tendon wrap object 
  
# PlaceHolderNode(mjWRAP_NONE         = 0 , ) mjWRAP_NONE         = 0 , 
        
# null object 
  
# PlaceHolderNode(mjWRAP_JOINT , ) mjWRAP_JOINT , 
                   
# constant moment arm 
  
# PlaceHolderNode(mjWRAP_PULLEY , ) mjWRAP_PULLEY , 
                  
# pulley used to split tendon 
  
# PlaceHolderNode(mjWRAP_SITE , ) mjWRAP_SITE , 
                    
# pass through site 
  
# PlaceHolderNode(mjWRAP_SPHERE , ) mjWRAP_SPHERE , 
                  
# wrap around sphere 
  
# PlaceHolderNode(mjWRAP_CYLINDER                 ) mjWRAP_CYLINDER                 
# wrap around (infinite) cylinder 
# PlaceHolderNode(mjtWrap ) mjtWrap 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtTrn ; ) typedef <children> 
mjtTrn ; 
# PlaceHolderNode(enum mjtTrn_ ) enum mjtTrn_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
           
# type of actuator transmission 
  
# PlaceHolderNode(mjTRN_JOINT         = 0 , ) mjTRN_JOINT         = 0 , 
        
# force on joint 
  
# PlaceHolderNode(mjTRN_JOINTINPARENT , ) mjTRN_JOINTINPARENT , 
            
# force on joint ,  expressed in parent frame 
  
# PlaceHolderNode(mjTRN_SLIDERCRANK , ) mjTRN_SLIDERCRANK , 
              
# force via slider-crank linkage 
  
# PlaceHolderNode(mjTRN_TENDON , ) mjTRN_TENDON , 
                   
# force on tendon 
  
# PlaceHolderNode(mjTRN_SITE , ) mjTRN_SITE , 
                     
# force on site 
  
# PlaceHolderNode(mjTRN_BODY , ) mjTRN_BODY , 
                     
# adhesion force on a body's geoms 
 
  
# PlaceHolderNode(mjTRN_UNDEFINED     = 1000 ) mjTRN_UNDEFINED     = 1000 
     
# undefined transmission type 
# PlaceHolderNode(mjtTrn ) mjtTrn 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtDyn ; ) typedef <children> 
mjtDyn ; 
# PlaceHolderNode(enum mjtDyn_ ) enum mjtDyn_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
           
# type of actuator dynamics 
  
# PlaceHolderNode(mjDYN_NONE          = 0 , ) mjDYN_NONE          = 0 , 
        
# no internal dynamics ;  ctrl specifies force 
  
# PlaceHolderNode(mjDYN_INTEGRATOR , ) mjDYN_INTEGRATOR , 
               
# integrator: da/dt = u 
  
# PlaceHolderNode(mjDYN_FILTER , ) mjDYN_FILTER , 
                   
# linear filter: da/dt = (u-a) / tau 
  
# PlaceHolderNode(mjDYN_FILTEREXACT , ) mjDYN_FILTEREXACT , 
              
# linear filter: da/dt = (u-a) / tau ,  with exact integration 
  
# PlaceHolderNode(mjDYN_MUSCLE , ) mjDYN_MUSCLE , 
                   
# piece-wise linear filter with two time constants 
  
# PlaceHolderNode(mjDYN_USER                      ) mjDYN_USER                      
# user-defined dynamics type 
# PlaceHolderNode(mjtDyn ) mjtDyn 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtGain ; ) typedef <children> 
mjtGain ; 
# PlaceHolderNode(enum mjtGain_ ) enum mjtGain_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
          
# type of actuator gain 
  
# PlaceHolderNode(mjGAIN_FIXED        = 0 , ) mjGAIN_FIXED        = 0 , 
        
# fixed gain 
  
# PlaceHolderNode(mjGAIN_AFFINE , ) mjGAIN_AFFINE , 
                  
# const + kp*length + kv*velocity 
  
# PlaceHolderNode(mjGAIN_MUSCLE , ) mjGAIN_MUSCLE , 
                  
# muscle FLV curve computed by mju_muscleGain() 
  
# PlaceHolderNode(mjGAIN_USER                     ) mjGAIN_USER                     
# user-defined gain type 
# PlaceHolderNode(mjtGain ) mjtGain 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtBias ; ) typedef <children> 
mjtBias ; 
# PlaceHolderNode(enum mjtBias_ ) enum mjtBias_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
          
# type of actuator bias 
  
# PlaceHolderNode(mjBIAS_NONE         = 0 , ) mjBIAS_NONE         = 0 , 
        
# no bias 
  
# PlaceHolderNode(mjBIAS_AFFINE , ) mjBIAS_AFFINE , 
                  
# const + kp*length + kv*velocity 
  
# PlaceHolderNode(mjBIAS_MUSCLE , ) mjBIAS_MUSCLE , 
                  
# muscle passive force computed by mju_muscleBias() 
  
# PlaceHolderNode(mjBIAS_USER                     ) mjBIAS_USER                     
# user-defined bias type 
# PlaceHolderNode(mjtBias ) mjtBias 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtObj ; ) typedef <children> 
mjtObj ; 
# PlaceHolderNode(enum mjtObj_ ) enum mjtObj_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
           
# type of MujoCo object 
  
# PlaceHolderNode(mjOBJ_UNKNOWN       = 0 , ) mjOBJ_UNKNOWN       = 0 , 
        
# unknown object type 
  
# PlaceHolderNode(mjOBJ_BODY , ) mjOBJ_BODY , 
                     
# body 
  
# PlaceHolderNode(mjOBJ_XBODY , ) mjOBJ_XBODY , 
                    
# body ,  used to access regular frame instead of i-frame 
  
# PlaceHolderNode(mjOBJ_JOINT , ) mjOBJ_JOINT , 
                    
# joint 
  
# PlaceHolderNode(mjOBJ_DOF , ) mjOBJ_DOF , 
                      
# dof 
  
# PlaceHolderNode(mjOBJ_GEOM , ) mjOBJ_GEOM , 
                     
# geom 
  
# PlaceHolderNode(mjOBJ_SITE , ) mjOBJ_SITE , 
                     
# site 
  
# PlaceHolderNode(mjOBJ_CAMERA , ) mjOBJ_CAMERA , 
                   
# camera 
  
# PlaceHolderNode(mjOBJ_LIGHT , ) mjOBJ_LIGHT , 
                    
# light 
  
# PlaceHolderNode(mjOBJ_FLEX , ) mjOBJ_FLEX , 
                     
# flex 
  
# PlaceHolderNode(mjOBJ_MESH , ) mjOBJ_MESH , 
                     
# mesh 
  
# PlaceHolderNode(mjOBJ_SKIN , ) mjOBJ_SKIN , 
                     
# skin 
  
# PlaceHolderNode(mjOBJ_HFIELD , ) mjOBJ_HFIELD , 
                   
# heightfield 
  
# PlaceHolderNode(mjOBJ_TEXTURE , ) mjOBJ_TEXTURE , 
                  
# texture 
  
# PlaceHolderNode(mjOBJ_MATERIAL , ) mjOBJ_MATERIAL , 
                 
# material for rendering 
  
# PlaceHolderNode(mjOBJ_PAIR , ) mjOBJ_PAIR , 
                     
# geom pair to include 
  
# PlaceHolderNode(mjOBJ_EXCLUDE , ) mjOBJ_EXCLUDE , 
                  
# body pair to exclude 
  
# PlaceHolderNode(mjOBJ_EQUALITY , ) mjOBJ_EQUALITY , 
                 
# equality constraint 
  
# PlaceHolderNode(mjOBJ_TENDON , ) mjOBJ_TENDON , 
                   
# tendon 
  
# PlaceHolderNode(mjOBJ_ACTUATOR , ) mjOBJ_ACTUATOR , 
                 
# actuator 
  
# PlaceHolderNode(mjOBJ_SENSOR , ) mjOBJ_SENSOR , 
                   
# sensor 
  
# PlaceHolderNode(mjOBJ_NUMERIC , ) mjOBJ_NUMERIC , 
                  
# numeric 
  
# PlaceHolderNode(mjOBJ_TEXT , ) mjOBJ_TEXT , 
                     
# text 
  
# PlaceHolderNode(mjOBJ_TUPLE , ) mjOBJ_TUPLE , 
                    
# tuple 
  
# PlaceHolderNode(mjOBJ_KEY , ) mjOBJ_KEY , 
                      
# keyframe 
  
# PlaceHolderNode(mjOBJ_PLUGIN , ) mjOBJ_PLUGIN , 
                   
# plugin instance 
 
  
# PlaceHolderNode(mjNOBJECT , ) mjNOBJECT , 
                      
# number of object types 
 
  
# meta elements ,  do not appear in mjModel 
  
# PlaceHolderNode(mjOBJ_FRAME         = 100 ) mjOBJ_FRAME         = 100 
      
# frame 
# PlaceHolderNode(mjtObj ) mjtObj 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtConstraint ; ) typedef <children> 
mjtConstraint ; 
# PlaceHolderNode(enum mjtConstraint_ ) enum mjtConstraint_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
    
# type of constraint 
  
# PlaceHolderNode(mjCNSTR_EQUALITY    = 0 , ) mjCNSTR_EQUALITY    = 0 , 
        
# equality constraint 
  
# PlaceHolderNode(mjCNSTR_FRICTION_DOF , ) mjCNSTR_FRICTION_DOF , 
           
# dof friction 
  
# PlaceHolderNode(mjCNSTR_FRICTION_TENDON , ) mjCNSTR_FRICTION_TENDON , 
        
# tendon friction 
  
# PlaceHolderNode(mjCNSTR_LIMIT_JOINT , ) mjCNSTR_LIMIT_JOINT , 
            
# joint limit 
  
# PlaceHolderNode(mjCNSTR_LIMIT_TENDON , ) mjCNSTR_LIMIT_TENDON , 
           
# tendon limit 
  
# PlaceHolderNode(mjCNSTR_CONTACT_FRICTIONLESS , ) mjCNSTR_CONTACT_FRICTIONLESS , 
   
# frictionless contact 
  
# PlaceHolderNode(mjCNSTR_CONTACT_PYRAMIDAL , ) mjCNSTR_CONTACT_PYRAMIDAL , 
      
# frictional contact ,  pyramidal friction cone 
  
# PlaceHolderNode(mjCNSTR_CONTACT_ELLIPTIC        ) mjCNSTR_CONTACT_ELLIPTIC        
# frictional contact ,  elliptic friction cone 
# PlaceHolderNode(mjtConstraint ) mjtConstraint 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtConstraintState ; ) typedef <children> 
mjtConstraintState ; 
# PlaceHolderNode(enum mjtConstraintState_ ) enum mjtConstraintState_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
 
# constraint state 
  
# PlaceHolderNode(mjCNSTRSTATE_SATISFIED = 0 , ) mjCNSTRSTATE_SATISFIED = 0 , 
       
# constraint satisfied ,  zero cost (limit ,  contact) 
  
# PlaceHolderNode(mjCNSTRSTATE_QUADRATIC , ) mjCNSTRSTATE_QUADRATIC , 
           
# quadratic cost (equality ,  friction ,  limit ,  contact) 
  
# PlaceHolderNode(mjCNSTRSTATE_LINEARNEG , ) mjCNSTRSTATE_LINEARNEG , 
           
# linear cost ,  negative side (friction) 
  
# PlaceHolderNode(mjCNSTRSTATE_LINEARPOS , ) mjCNSTRSTATE_LINEARPOS , 
           
# linear cost ,  positive side (friction) 
  
# PlaceHolderNode(mjCNSTRSTATE_CONE                 ) mjCNSTRSTATE_CONE                 
# squared distance to cone cost (elliptic contact) 
# PlaceHolderNode(mjtConstraintState ) mjtConstraintState 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtSensor ; ) typedef <children> 
mjtSensor ; 
# PlaceHolderNode(enum mjtSensor_ ) enum mjtSensor_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
        
# type of sensor 
  
# common robotic sensors ,  attached to a site 
  
# PlaceHolderNode(mjSENS_TOUCH        = 0 , ) mjSENS_TOUCH        = 0 , 
        
# scalar contact normal forces summed over sensor zone 
  
# PlaceHolderNode(mjSENS_ACCELEROMETER , ) mjSENS_ACCELEROMETER , 
           
# 3D linear acceleration ,  in local frame 
  
# PlaceHolderNode(mjSENS_VELOCIMETER , ) mjSENS_VELOCIMETER , 
             
# 3D linear velocity ,  in local frame 
  
# PlaceHolderNode(mjSENS_GYRO , ) mjSENS_GYRO , 
                    
# 3D angular velocity ,  in local frame 
  
# PlaceHolderNode(mjSENS_FORCE , ) mjSENS_FORCE , 
                   
# 3D force between site's body and its parent body 
  
# PlaceHolderNode(mjSENS_TORQUE , ) mjSENS_TORQUE , 
                  
# 3D torque between site's body and its parent body 
  
# PlaceHolderNode(mjSENS_MAGNETOMETER , ) mjSENS_MAGNETOMETER , 
            
# 3D magnetometer 
  
# PlaceHolderNode(mjSENS_RANGEFINDER , ) mjSENS_RANGEFINDER , 
             
# scalar distance to nearest geom or site along z-axis 
  
# PlaceHolderNode(mjSENS_CAMPROJECTION , ) mjSENS_CAMPROJECTION , 
           
# pixel coordinates of a site in the camera image 
 
  
# sensors related to scalar joints ,  tendons ,  actuators 
  
# PlaceHolderNode(mjSENS_JOINTPOS , ) mjSENS_JOINTPOS , 
                
# scalar joint position (hinge and slide only) 
  
# PlaceHolderNode(mjSENS_JOINTVEL , ) mjSENS_JOINTVEL , 
                
# scalar joint velocity (hinge and slide only) 
  
# PlaceHolderNode(mjSENS_TENDONPOS , ) mjSENS_TENDONPOS , 
               
# scalar tendon position 
  
# PlaceHolderNode(mjSENS_TENDONVEL , ) mjSENS_TENDONVEL , 
               
# scalar tendon velocity 
  
# PlaceHolderNode(mjSENS_ACTUATORPOS , ) mjSENS_ACTUATORPOS , 
             
# scalar actuator position 
  
# PlaceHolderNode(mjSENS_ACTUATORVEL , ) mjSENS_ACTUATORVEL , 
             
# scalar actuator velocity 
  
# PlaceHolderNode(mjSENS_ACTUATORFRC , ) mjSENS_ACTUATORFRC , 
             
# scalar actuator force 
  
# PlaceHolderNode(mjSENS_JOINTACTFRC , ) mjSENS_JOINTACTFRC , 
             
# scalar actuator force ,  measured at the joint 
 
  
# sensors related to ball joints 
  
# PlaceHolderNode(mjSENS_BALLQUAT , ) mjSENS_BALLQUAT , 
                
# 4D ball joint quaternion 
  
# PlaceHolderNode(mjSENS_BALLANGVEL , ) mjSENS_BALLANGVEL , 
              
# 3D ball joint angular velocity 
 
  
# joint and tendon limit sensors ,  in constraint space 
  
# PlaceHolderNode(mjSENS_JOINTLIMITPOS , ) mjSENS_JOINTLIMITPOS , 
           
# joint limit distance-margin 
  
# PlaceHolderNode(mjSENS_JOINTLIMITVEL , ) mjSENS_JOINTLIMITVEL , 
           
# joint limit velocity 
  
# PlaceHolderNode(mjSENS_JOINTLIMITFRC , ) mjSENS_JOINTLIMITFRC , 
           
# joint limit force 
  
# PlaceHolderNode(mjSENS_TENDONLIMITPOS , ) mjSENS_TENDONLIMITPOS , 
          
# tendon limit distance-margin 
  
# PlaceHolderNode(mjSENS_TENDONLIMITVEL , ) mjSENS_TENDONLIMITVEL , 
          
# tendon limit velocity 
  
# PlaceHolderNode(mjSENS_TENDONLIMITFRC , ) mjSENS_TENDONLIMITFRC , 
          
# tendon limit force 
 
  
# sensors attached to an object with spatial frame: (x)body ,  geom ,  site ,  camera 
  
# PlaceHolderNode(mjSENS_FRAMEPOS , ) mjSENS_FRAMEPOS , 
                
# 3D position 
  
# PlaceHolderNode(mjSENS_FRAMEQUAT , ) mjSENS_FRAMEQUAT , 
               
# 4D unit quaternion orientation 
  
# PlaceHolderNode(mjSENS_FRAMEXAXIS , ) mjSENS_FRAMEXAXIS , 
              
# 3D unit vector: x-axis of object's frame 
  
# PlaceHolderNode(mjSENS_FRAMEYAXIS , ) mjSENS_FRAMEYAXIS , 
              
# 3D unit vector: y-axis of object's frame 
  
# PlaceHolderNode(mjSENS_FRAMEZAXIS , ) mjSENS_FRAMEZAXIS , 
              
# 3D unit vector: z-axis of object's frame 
  
# PlaceHolderNode(mjSENS_FRAMELINVEL , ) mjSENS_FRAMELINVEL , 
             
# 3D linear velocity 
  
# PlaceHolderNode(mjSENS_FRAMEANGVEL , ) mjSENS_FRAMEANGVEL , 
             
# 3D angular velocity 
  
# PlaceHolderNode(mjSENS_FRAMELINACC , ) mjSENS_FRAMELINACC , 
             
# 3D linear acceleration 
  
# PlaceHolderNode(mjSENS_FRAMEANGACC , ) mjSENS_FRAMEANGACC , 
             
# 3D angular acceleration 
 
  
# sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) 
  
# PlaceHolderNode(mjSENS_SUBTREECOM , ) mjSENS_SUBTREECOM , 
              
# 3D center of mass of subtree 
  
# PlaceHolderNode(mjSENS_SUBTREELINVEL , ) mjSENS_SUBTREELINVEL , 
           
# 3D linear velocity of subtree 
  
# PlaceHolderNode(mjSENS_SUBTREEANGMOM , ) mjSENS_SUBTREEANGMOM , 
           
# 3D angular momentum of subtree 
 
  
# sensors for geometric distance ;  attached to geoms or bodies 
  
# PlaceHolderNode(mjSENS_GEOMDIST , ) mjSENS_GEOMDIST , 
                
# signed distance between two geoms 
  
# PlaceHolderNode(mjSENS_GEOMNORMAL , ) mjSENS_GEOMNORMAL , 
              
# normal direction between two geoms 
  
# PlaceHolderNode(mjSENS_GEOMFROMTO , ) mjSENS_GEOMFROMTO , 
              
# segment between two geoms 
 
  
# global sensors 
  
# PlaceHolderNode(mjSENS_CLOCK , ) mjSENS_CLOCK , 
                   
# simulation time 
 
  
# plugin-controlled sensors 
  
# PlaceHolderNode(mjSENS_PLUGIN , ) mjSENS_PLUGIN , 
                  
# plugin-controlled 
 
  
# user-defined sensor 
  
# PlaceHolderNode(mjSENS_USER                     ) mjSENS_USER                     
# sensor data provided by mjcb_sensor callback 
# PlaceHolderNode(mjtSensor ) mjtSensor 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtStage ; ) typedef <children> 
mjtStage ; 
# PlaceHolderNode(enum mjtStage_ ) enum mjtStage_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
         
# computation stage 
  
# PlaceHolderNode(mjSTAGE_NONE        = 0 , ) mjSTAGE_NONE        = 0 , 
        
# no computations 
  
# PlaceHolderNode(mjSTAGE_POS , ) mjSTAGE_POS , 
                    
# position-dependent computations 
  
# PlaceHolderNode(mjSTAGE_VEL , ) mjSTAGE_VEL , 
                    
# velocity-dependent computations 
  
# PlaceHolderNode(mjSTAGE_ACC                     ) mjSTAGE_ACC                     
# acceleration/force-dependent computations 
# PlaceHolderNode(mjtStage ) mjtStage 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtDataType ; ) typedef <children> 
mjtDataType ; 
# PlaceHolderNode(enum mjtDataType_ ) enum mjtDataType_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
      
# data type for sensors 
  
# PlaceHolderNode(mjDATATYPE_REAL     = 0 , ) mjDATATYPE_REAL     = 0 , 
        
# real values ,  no constraints 
  
# PlaceHolderNode(mjDATATYPE_POSITIVE , ) mjDATATYPE_POSITIVE , 
            
# positive values ;  0 or negative: inactive 
  
# PlaceHolderNode(mjDATATYPE_AXIS , ) mjDATATYPE_AXIS , 
                
# 3D unit vector 
  
# PlaceHolderNode(mjDATATYPE_QUATERNION           ) mjDATATYPE_QUATERNION           
# unit quaternion 
# PlaceHolderNode(mjtDataType ) mjtDataType 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtSameFrame ; ) typedef <children> 
mjtSameFrame ; 
# PlaceHolderNode(enum mjtSameFrame_ ) enum mjtSameFrame_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
     
# frame alignment of bodies with their children 
  
# PlaceHolderNode(mjSAMEFRAME_NONE    = 0 , ) mjSAMEFRAME_NONE    = 0 , 
        
# no alignment 
  
# PlaceHolderNode(mjSAMEFRAME_BODY , ) mjSAMEFRAME_BODY , 
               
# frame is same as body frame 
  
# PlaceHolderNode(mjSAMEFRAME_INERTIA , ) mjSAMEFRAME_INERTIA , 
            
# frame is same as inertial frame 
  
# PlaceHolderNode(mjSAMEFRAME_BODYROT , ) mjSAMEFRAME_BODYROT , 
            
# frame orientation is same as body orientation 
  
# PlaceHolderNode(mjSAMEFRAME_INERTIAROT          ) mjSAMEFRAME_INERTIAROT          
# frame orientation is same as inertia orientation 
# PlaceHolderNode(mjtSameFrame ) mjtSameFrame 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtLRMode ; ) typedef <children> 
mjtLRMode ; 
# PlaceHolderNode(enum mjtLRMode_ ) enum mjtLRMode_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
        
# mode for actuator length range computation 
  
# PlaceHolderNode(mjLRMODE_NONE   = 0 , ) mjLRMODE_NONE   = 0 , 
            
# do not process any actuators 
  
# PlaceHolderNode(mjLRMODE_MUSCLE , ) mjLRMODE_MUSCLE , 
                
# process muscle actuators 
  
# PlaceHolderNode(mjLRMODE_MUSCLEUSER , ) mjLRMODE_MUSCLEUSER , 
            
# process muscle and user actuators 
  
# PlaceHolderNode(mjLRMODE_ALL                    ) mjLRMODE_ALL                    
# process all actuators 
# PlaceHolderNode(mjtLRMode ) mjtLRMode 
 
 
 
# PlaceHolderNode(typedef <children> 
mjtFlexSelf ; ) typedef <children> 
mjtFlexSelf ; 
# PlaceHolderNode(enum mjtFlexSelf_ ) enum mjtFlexSelf_ 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
      
# mode for flex selfcollide 
  
# PlaceHolderNode(mjFLEXSELF_NONE   = 0 , ) mjFLEXSELF_NONE   = 0 , 
          
# no self-collisions 
  
# PlaceHolderNode(mjFLEXSELF_NARROW , ) mjFLEXSELF_NARROW , 
              
# skip midphase ,  go directly to narrowphase 
  
# PlaceHolderNode(mjFLEXSELF_BVH , ) mjFLEXSELF_BVH , 
                 
# use BVH in midphase (if midphase enabled) 
  
# PlaceHolderNode(mjFLEXSELF_SAP , ) mjFLEXSELF_SAP , 
                 
# use SAP in midphase 
  
# PlaceHolderNode(mjFLEXSELF_AUTO                 ) mjFLEXSELF_AUTO                 
# choose between BVH and SAP automatically 
# PlaceHolderNode(mjtFlexSelf ) mjtFlexSelf 
 
 
 
# mjLROpt ------------------------------------------------------- 
 
# PlaceHolderNode(struct mjLROpt_ 
<children> ; ) struct mjLROpt_ 
<children> ; 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
                
# options for mj_setLengthRange() 
  
# flags 
  
# PlaceHolderNode(int mode ; ) int mode ; 
                       
# which actuators to process (mjtLRMode) 
  
# PlaceHolderNode(int useexisting ; ) int useexisting ; 
                
# use existing length range if available 
  
# PlaceHolderNode(int uselimit ; ) int uselimit ; 
                   
# use joint and tendon limits if available 
 
  
# algorithm parameters 
  
# PlaceHolderNode(mjtNum accel ; ) mjtNum accel ; 
                   
# target acceleration used to compute force 
  
# PlaceHolderNode(mjtNum maxforce ; ) mjtNum maxforce ; 
                
# maximum force ;  0: no limit 
  
# PlaceHolderNode(mjtNum timeconst ; ) mjtNum timeconst ; 
               
# time constant for velocity reduction ;  min 0.01 
  
# PlaceHolderNode(mjtNum timestep ; ) mjtNum timestep ; 
                
# simulation timestep ;  0: use mjOption.timestep 
  
# PlaceHolderNode(mjtNum inttotal ; ) mjtNum inttotal ; 
                
# total simulation time interval 
  
# PlaceHolderNode(mjtNum interval ; ) mjtNum interval ; 
                
# evaluation time interval (at the end) 
  
# PlaceHolderNode(mjtNum tolrange ; ) mjtNum tolrange ; 
                
# convergence tolerance (relative to range) 
 
# PlaceHolderNode(typedef <children> mjLROpt ; ) typedef <children> mjLROpt ; 
# PlaceHolderNode(struct mjLROpt_ ) struct mjLROpt_ 
# PlaceHolderNode(mjLROpt ) mjLROpt 
 
 
 
# mjVFS --------------------------------------------------------- 
 
# PlaceHolderNode(struct mjVFS_ 
<children> ; ) struct mjVFS_ 
<children> ; 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
                              
# virtual file system for loading from memory 
  
# PlaceHolderNode(void* impl_ ; ) void* impl_ ; 
                                
# internal pointer to VFS memory 
 
# PlaceHolderNode(typedef <children> mjVFS ; ) typedef <children> mjVFS ; 
# PlaceHolderNode(struct mjVFS_ ) struct mjVFS_ 
# PlaceHolderNode(mjVFS ) mjVFS 
 
 
# mjOption ------------------------------------------------------ 
 
# PlaceHolderNode(struct mjOption_ 
<children> ; ) struct mjOption_ 
<children> ; 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
               
# physics options 
  
# timing parameters 
  
# PlaceHolderNode(mjtNum timestep ; ) mjtNum timestep ; 
                
# timestep 
  
# PlaceHolderNode(mjtNum apirate ; ) mjtNum apirate ; 
                 
# update rate for remote API (Hz) 
 
  
# solver parameters 
  
# PlaceHolderNode(mjtNum impratio ; ) mjtNum impratio ; 
                
# ratio of friction-to-normal contact impedance 
  
# PlaceHolderNode(mjtNum tolerance ; ) mjtNum tolerance ; 
               
# main solver tolerance 
  
# PlaceHolderNode(mjtNum ls_tolerance ; ) mjtNum ls_tolerance ; 
            
# CG/Newton linesearch tolerance 
  
# PlaceHolderNode(mjtNum noslip_tolerance ; ) mjtNum noslip_tolerance ; 
        
# noslip solver tolerance 
  
# PlaceHolderNode(mjtNum ccd_tolerance ; ) mjtNum ccd_tolerance ; 
           
# convex collision solver tolerance 
 
  
# physical constants 
  
# PlaceHolderNode(mjtNum gravity[3] ; ) mjtNum gravity[3] ; 
              
# gravitational acceleration 
  
# PlaceHolderNode(mjtNum wind[3] ; ) mjtNum wind[3] ; 
                 
# wind (for lift ,  drag and viscosity) 
  
# PlaceHolderNode(mjtNum magnetic[3] ; ) mjtNum magnetic[3] ; 
             
# global magnetic flux 
  
# PlaceHolderNode(mjtNum density ; ) mjtNum density ; 
                 
# density of medium 
  
# PlaceHolderNode(mjtNum viscosity ; ) mjtNum viscosity ; 
               
# viscosity of medium 
 
  
# override contact solver parameters (if enabled) 
  
# PlaceHolderNode(mjtNum o_margin ; ) mjtNum o_margin ; 
                
# margin 
  
# PlaceHolderNode(mjtNum o_solref[mjNREF] ; ) mjtNum o_solref[mjNREF] ; 
        
# solref 
  
# PlaceHolderNode(mjtNum o_solimp[mjNIMP] ; ) mjtNum o_solimp[mjNIMP] ; 
        
# solimp 
  
# PlaceHolderNode(mjtNum o_friction[5] ; ) mjtNum o_friction[5] ; 
           
# friction 
 
  
# discrete settings 
  
# PlaceHolderNode(int integrator ; ) int integrator ; 
                 
# integration mode (mjtIntegrator) 
  
# PlaceHolderNode(int cone ; ) int cone ; 
                       
# type of friction cone (mjtCone) 
  
# PlaceHolderNode(int jacobian ; ) int jacobian ; 
                   
# type of Jacobian (mjtJacobian) 
  
# PlaceHolderNode(int solver ; ) int solver ; 
                     
# solver algorithm (mjtSolver) 
  
# PlaceHolderNode(int iterations ; ) int iterations ; 
                 
# maximum number of main solver iterations 
  
# PlaceHolderNode(int ls_iterations ; ) int ls_iterations ; 
              
# maximum number of CG/Newton linesearch iterations 
  
# PlaceHolderNode(int noslip_iterations ; ) int noslip_iterations ; 
          
# maximum number of noslip solver iterations 
  
# PlaceHolderNode(int ccd_iterations ; ) int ccd_iterations ; 
             
# maximum number of convex collision solver iterations 
  
# PlaceHolderNode(int disableflags ; ) int disableflags ; 
               
# bit flags for disabling standard features 
  
# PlaceHolderNode(int enableflags ; ) int enableflags ; 
                
# bit flags for enabling optional features 
  
# PlaceHolderNode(int disableactuator ; ) int disableactuator ; 
            
# bit flags for disabling actuators by group id 
 
  
# sdf collision settings 
  
# PlaceHolderNode(int sdf_initpoints ; ) int sdf_initpoints ; 
             
# number of starting points for gradient descent 
  
# PlaceHolderNode(int sdf_iterations ; ) int sdf_iterations ; 
             
# max number of iterations for gradient descent 
 
# PlaceHolderNode(typedef <children> mjOption ; ) typedef <children> mjOption ; 
# PlaceHolderNode(struct mjOption_ ) struct mjOption_ 
# PlaceHolderNode(mjOption ) mjOption 
 
 
 
# mjVisual ------------------------------------------------------ 
 
# PlaceHolderNode(struct mjVisual_ 
<children> ; ) struct mjVisual_ 
<children> ; 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
               
# visualization options 
  
# PlaceHolderNode(<children> 
global ; ) <children> 
global ; 
# PlaceHolderNode(struct ) struct 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
                       
# global parameters 
    
# PlaceHolderNode(int orthographic ; ) int orthographic ; 
             
# is the free camera orthographic (0: no ,  1: yes) 
    
# PlaceHolderNode(float fovy ; ) float fovy ; 
                   
# y field-of-view of free camera (orthographic ? length : degree) 
    
# PlaceHolderNode(float ipd ; ) float ipd ; 
                    
# inter-pupilary distance for free camera 
    
# PlaceHolderNode(float azimuth ; ) float azimuth ; 
                
# initial azimuth of free camera (degrees) 
    
# PlaceHolderNode(float elevation ; ) float elevation ; 
              
# initial elevation of free camera (degrees) 
    
# PlaceHolderNode(float linewidth ; ) float linewidth ; 
              
# line width for wireframe and ray rendering 
    
# PlaceHolderNode(float glow ; ) float glow ; 
                   
# glow coefficient for selected body 
    
# PlaceHolderNode(float realtime ; ) float realtime ; 
               
# initial real-time factor (1: real time) 
    
# PlaceHolderNode(int   offwidth ; ) int   offwidth ; 
               
# width of offscreen buffer 
    
# PlaceHolderNode(int   offheight ; ) int   offheight ; 
              
# height of offscreen buffer 
    
# PlaceHolderNode(int   ellipsoidinertia ; ) int   ellipsoidinertia ; 
       
# geom for inertia visualization (0: box ,  1: ellipsoid) 
    
# PlaceHolderNode(int   bvactive ; ) int   bvactive ; 
               
# visualize active bounding volumes (0: no ,  1: yes) 
  
 
 
  
# PlaceHolderNode(<children> 
quality ; ) <children> 
quality ; 
# PlaceHolderNode(struct ) struct 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
                       
# rendering quality 
    
# PlaceHolderNode(int   shadowsize ; ) int   shadowsize ; 
             
# size of shadowmap texture 
    
# PlaceHolderNode(int   offsamples ; ) int   offsamples ; 
             
# number of multisamples for offscreen rendering 
    
# PlaceHolderNode(int   numslices ; ) int   numslices ; 
              
# number of slices for builtin geom drawing 
    
# PlaceHolderNode(int   numstacks ; ) int   numstacks ; 
              
# number of stacks for builtin geom drawing 
    
# PlaceHolderNode(int   numquads ; ) int   numquads ; 
               
# number of quads for box rendering 
  
 
 
  
# PlaceHolderNode(<children> 
headlight ; ) <children> 
headlight ; 
# PlaceHolderNode(struct ) struct 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
                       
# head light 
    
# PlaceHolderNode(float ambient[3] ; ) float ambient[3] ; 
             
# ambient rgb (alpha=1) 
    
# PlaceHolderNode(float diffuse[3] ; ) float diffuse[3] ; 
             
# diffuse rgb (alpha=1) 
    
# PlaceHolderNode(float specular[3] ; ) float specular[3] ; 
            
# specular rgb (alpha=1) 
    
# PlaceHolderNode(int   active ; ) int   active ; 
                 
# is headlight active 
  
 
 
  
# PlaceHolderNode(<children> 
map ; ) <children> 
map ; 
# PlaceHolderNode(struct ) struct 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
                       
# mapping 
    
# PlaceHolderNode(float stiffness ; ) float stiffness ; 
              
# mouse perturbation stiffness (space->force) 
    
# PlaceHolderNode(float stiffnessrot ; ) float stiffnessrot ; 
           
# mouse perturbation stiffness (space->torque) 
    
# PlaceHolderNode(float force ; ) float force ; 
                  
# from force units to space units 
    
# PlaceHolderNode(float torque ; ) float torque ; 
                 
# from torque units to space units 
    
# PlaceHolderNode(float alpha ; ) float alpha ; 
                  
# scale geom alphas when transparency is enabled 
    
# PlaceHolderNode(float fogstart ; ) float fogstart ; 
               
# OpenGL fog starts at fogstart * mjModel.stat.extent 
    
# PlaceHolderNode(float fogend ; ) float fogend ; 
                 
# OpenGL fog ends at fogend * mjModel.stat.extent 
    
# PlaceHolderNode(float znear ; ) float znear ; 
                  
# near clipping plane = znear * mjModel.stat.extent 
    
# PlaceHolderNode(float zfar ; ) float zfar ; 
                   
# far clipping plane = zfar * mjModel.stat.extent 
    
# PlaceHolderNode(float haze ; ) float haze ; 
                   
# haze ratio 
    
# PlaceHolderNode(float shadowclip ; ) float shadowclip ; 
             
# directional light: shadowclip * mjModel.stat.extent 
    
# PlaceHolderNode(float shadowscale ; ) float shadowscale ; 
            
# spot light: shadowscale * light.cutoff 
    
# PlaceHolderNode(float actuatortendon ; ) float actuatortendon ; 
         
# scale tendon width 
  
 
 
  
# PlaceHolderNode(<children> 
scale ; ) <children> 
scale ; 
# PlaceHolderNode(struct ) struct 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
                       
# scale of decor elements relative to mean body size 
    
# PlaceHolderNode(float forcewidth ; ) float forcewidth ; 
             
# width of force arrow 
    
# PlaceHolderNode(float contactwidth ; ) float contactwidth ; 
           
# contact width 
    
# PlaceHolderNode(float contactheight ; ) float contactheight ; 
          
# contact height 
    
# PlaceHolderNode(float connect ; ) float connect ; 
                
# autoconnect capsule width 
    
# PlaceHolderNode(float com ; ) float com ; 
                    
# com radius 
    
# PlaceHolderNode(float camera ; ) float camera ; 
                 
# camera object 
    
# PlaceHolderNode(float light ; ) float light ; 
                  
# light object 
    
# PlaceHolderNode(float selectpoint ; ) float selectpoint ; 
            
# selection point 
    
# PlaceHolderNode(float jointlength ; ) float jointlength ; 
            
# joint length 
    
# PlaceHolderNode(float jointwidth ; ) float jointwidth ; 
             
# joint width 
    
# PlaceHolderNode(float actuatorlength ; ) float actuatorlength ; 
         
# actuator length 
    
# PlaceHolderNode(float actuatorwidth ; ) float actuatorwidth ; 
          
# actuator width 
    
# PlaceHolderNode(float framelength ; ) float framelength ; 
            
# bodyframe axis length 
    
# PlaceHolderNode(float framewidth ; ) float framewidth ; 
             
# bodyframe axis width 
    
# PlaceHolderNode(float constraint ; ) float constraint ; 
             
# constraint width 
    
# PlaceHolderNode(float slidercrank ; ) float slidercrank ; 
            
# slidercrank width 
    
# PlaceHolderNode(float frustum ; ) float frustum ; 
                
# frustum zfar plane 
  
 
 
  
# PlaceHolderNode(<children> 
rgba ; ) <children> 
rgba ; 
# PlaceHolderNode(struct ) struct 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
                       
# color of decor elements 
    
# PlaceHolderNode(float fog[4] ; ) float fog[4] ; 
                 
# fog 
    
# PlaceHolderNode(float haze[4] ; ) float haze[4] ; 
                
# haze 
    
# PlaceHolderNode(float force[4] ; ) float force[4] ; 
               
# external force 
    
# PlaceHolderNode(float inertia[4] ; ) float inertia[4] ; 
             
# inertia box 
    
# PlaceHolderNode(float joint[4] ; ) float joint[4] ; 
               
# joint 
    
# PlaceHolderNode(float actuator[4] ; ) float actuator[4] ; 
            
# actuator ,  neutral 
    
# PlaceHolderNode(float actuatornegative[4] ; ) float actuatornegative[4] ; 
    
# actuator ,  negative limit 
    
# PlaceHolderNode(float actuatorpositive[4] ; ) float actuatorpositive[4] ; 
    
# actuator ,  positive limit 
    
# PlaceHolderNode(float com[4] ; ) float com[4] ; 
                 
# center of mass 
    
# PlaceHolderNode(float camera[4] ; ) float camera[4] ; 
              
# camera object 
    
# PlaceHolderNode(float light[4] ; ) float light[4] ; 
               
# light object 
    
# PlaceHolderNode(float selectpoint[4] ; ) float selectpoint[4] ; 
         
# selection point 
    
# PlaceHolderNode(float connect[4] ; ) float connect[4] ; 
             
# auto connect 
    
# PlaceHolderNode(float contactpoint[4] ; ) float contactpoint[4] ; 
        
# contact point 
    
# PlaceHolderNode(float contactforce[4] ; ) float contactforce[4] ; 
        
# contact force 
    
# PlaceHolderNode(float contactfriction[4] ; ) float contactfriction[4] ; 
     
# contact friction force 
    
# PlaceHolderNode(float contacttorque[4] ; ) float contacttorque[4] ; 
       
# contact torque 
    
# PlaceHolderNode(float contactgap[4] ; ) float contactgap[4] ; 
          
# contact point in gap 
    
# PlaceHolderNode(float rangefinder[4] ; ) float rangefinder[4] ; 
         
# rangefinder ray 
    
# PlaceHolderNode(float constraint[4] ; ) float constraint[4] ; 
          
# constraint 
    
# PlaceHolderNode(float slidercrank[4] ; ) float slidercrank[4] ; 
         
# slidercrank 
    
# PlaceHolderNode(float crankbroken[4] ; ) float crankbroken[4] ; 
         
# used when crank must be stretched/broken 
    
# PlaceHolderNode(float frustum[4] ; ) float frustum[4] ; 
             
# camera frustum 
    
# PlaceHolderNode(float bv[4] ; ) float bv[4] ; 
                  
# bounding volume 
    
# PlaceHolderNode(float bvactive[4] ; ) float bvactive[4] ; 
            
# active bounding volume 
  
 
 
# PlaceHolderNode(typedef <children> mjVisual ; ) typedef <children> mjVisual ; 
# PlaceHolderNode(struct mjVisual_ ) struct mjVisual_ 
# PlaceHolderNode(mjVisual ) mjVisual 
 
 
 
# mjStatistic --------------------------------------------------- 
 
# PlaceHolderNode(struct mjStatistic_ 
<children> ; ) struct mjStatistic_ 
<children> ; 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
            
# model statistics (in qpos0) 
  
# PlaceHolderNode(mjtNum meaninertia ; ) mjtNum meaninertia ; 
             
# mean diagonal inertia 
  
# PlaceHolderNode(mjtNum meanmass ; ) mjtNum meanmass ; 
                
# mean body mass 
  
# PlaceHolderNode(mjtNum meansize ; ) mjtNum meansize ; 
                
# mean body size 
  
# PlaceHolderNode(mjtNum extent ; ) mjtNum extent ; 
                  
# spatial extent 
  
# PlaceHolderNode(mjtNum center[3] ; ) mjtNum center[3] ; 
               
# center of model 
 
# PlaceHolderNode(typedef <children> mjStatistic ; ) typedef <children> mjStatistic ; 
# PlaceHolderNode(struct mjStatistic_ ) struct mjStatistic_ 
# PlaceHolderNode(mjStatistic ) mjStatistic 
 
 
 
# mjModel ------------------------------------------------------- 
 
# PlaceHolderNode(struct mjModel_ 
<children> ; ) struct mjModel_ 
<children> ; 
# PlaceHolderNode({ 
<children> } ) { 
<children> } 
  
# ------------------------------- sizes 
 
  
# sizes needed at mjModel construction 
  
# PlaceHolderNode(int nq ; ) int nq ; 
                         
# number of generalized coordinates = dim(qpos) 
  
# PlaceHolderNode(int nv ; ) int nv ; 
                         
# number of degrees of freedom = dim(qvel) 
  
# PlaceHolderNode(int nu ; ) int nu ; 
                         
# number of actuators/controls = dim(ctrl) 
  
# PlaceHolderNode(int na ; ) int na ; 
                         
# number of activation states = dim(act) 
  
# PlaceHolderNode(int nbody ; ) int nbody ; 
                      
# number of bodies 
  
# PlaceHolderNode(int nbvh ; ) int nbvh ; 
                       
# number of total bounding volumes in all bodies 
  
# PlaceHolderNode(int nbvhstatic ; ) int nbvhstatic ; 
                 
# number of static bounding volumes (aabb stored in mjModel) 
  
# PlaceHolderNode(int nbvhdynamic ; ) int nbvhdynamic ; 
                
# number of dynamic bounding volumes (aabb stored in mjData) 
  
# PlaceHolderNode(int njnt ; ) int njnt ; 
                       
# number of joints 
  
# PlaceHolderNode(int ngeom ; ) int ngeom ; 
                      
# number of geoms 
  
# PlaceHolderNode(int nsite ; ) int nsite ; 
                      
# number of sites 
  
# PlaceHolderNode(int ncam ; ) int ncam ; 
                       
# number of cameras 
  
# PlaceHolderNode(int nlight ; ) int nlight ; 
                     
# number of lights 
  
# PlaceHolderNode(int nflex ; ) int nflex ; 
                      
# number of flexes 
  
# PlaceHolderNode(int nflexvert ; ) int nflexvert ; 
                  
# number of vertices in all flexes 
  
# PlaceHolderNode(int nflexedge ; ) int nflexedge ; 
                  
# number of edges in all flexes 
  
# PlaceHolderNode(int nflexelem ; ) int nflexelem ; 
                  
# number of elements in all flexes 
  
# PlaceHolderNode(int nflexelemdata ; ) int nflexelemdata ; 
              
# number of element vertex ids in all flexes 
  
# PlaceHolderNode(int nflexelemedge ; ) int nflexelemedge ; 
              
# number of element edge ids in all flexes 
  
# PlaceHolderNode(int nflexshelldata ; ) int nflexshelldata ; 
             
# number of shell fragment vertex ids in all flexes 
  
# PlaceHolderNode(int nflexevpair ; ) int nflexevpair ; 
                
# number of element-vertex pairs in all flexes 
  
# PlaceHolderNode(int nflextexcoord ; ) int nflextexcoord ; 
              
# number of vertices with texture coordinates 
  
# PlaceHolderNode(int nmesh ; ) int nmesh ; 
                      
# number of meshes 
  
# PlaceHolderNode(int nmeshvert ; ) int nmeshvert ; 
                  
# number of vertices in all meshes 
  
# PlaceHolderNode(int nmeshnormal ; ) int nmeshnormal ; 
                
# number of normals in all meshes 
  
# PlaceHolderNode(int nmeshtexcoord ; ) int nmeshtexcoord ; 
              
# number of texcoords in all meshes 
  
# PlaceHolderNode(int nmeshface ; ) int nmeshface ; 
                  
# number of triangular faces in all meshes 
  
# PlaceHolderNode(int nmeshgraph ; ) int nmeshgraph ; 
                 
# number of ints in mesh auxiliary data 
  
# PlaceHolderNode(int nskin ; ) int nskin ; 
                      
# number of skins 
  
# PlaceHolderNode(int nskinvert ; ) int nskinvert ; 
                  
# number of vertices in all skins 
  
# PlaceHolderNode(int nskintexvert ; ) int nskintexvert ; 
               
# number of vertiex with texcoords in all skins 
  
# PlaceHolderNode(int nskinface ; ) int nskinface ; 
                  
# number of triangular faces in all skins 
  
# PlaceHolderNode(int nskinbone ; ) int nskinbone ; 
                  
# number of bones in all skins 
  
# PlaceHolderNode(int nskinbonevert ; ) int nskinbonevert ; 
              
# number of vertices in all skin bones 
  
# PlaceHolderNode(int nhfield ; ) int nhfield ; 
                    
# number of heightfields 
  
# PlaceHolderNode(int nhfielddata ; ) int nhfielddata ; 
                
# number of data points in all heightfields 
  
# PlaceHolderNode(int ntex ; ) int ntex ; 
                       
# number of textures 
  
# PlaceHolderNode(int ntexdata ; ) int ntexdata ; 
                   
# number of bytes in texture rgb data 
  
# PlaceHolderNode(int nmat ; ) int nmat ; 
                       
# number of materials 
  
# PlaceHolderNode(int npair ; ) int npair ; 
                      
# number of predefined geom pairs 
  
# PlaceHolderNode(int nexclude ; ) int nexclude ; 
                   
# number of excluded geom pairs 
  
# PlaceHolderNode(int neq ; ) int neq ; 
                        
# number of equality constraints 
  
# PlaceHolderNode(int ntendon ; ) int ntendon ; 
                    
# number of tendons 
  
# PlaceHolderNode(int nwrap ; ) int nwrap ; 
                      
# number of wrap objects in all tendon paths 
  
# PlaceHolderNode(int nsensor ; ) int nsensor ; 
                    
# number of sensors 
  
# PlaceHolderNode(int nnumeric ; ) int nnumeric ; 
                   
# number of numeric custom fields 
  
# PlaceHolderNode(int nnumericdata ; ) int nnumericdata ; 
               
# number of mjtNums in all numeric fields 
  
# PlaceHolderNode(int ntext ; ) int ntext ; 
                      
# number of text custom fields 
  
# PlaceHolderNode(int ntextdata ; ) int ntextdata ; 
                  
# number of mjtBytes in all text fields 
  
# PlaceHolderNode(int ntuple ; ) int ntuple ; 
                     
# number of tuple custom fields 
  
# PlaceHolderNode(int ntupledata ; ) int ntupledata ; 
                 
# number of objects in all tuple fields 
  
# PlaceHolderNode(int nkey ; ) int nkey ; 
                       
# number of keyframes 
  
# PlaceHolderNode(int nmocap ; ) int nmocap ; 
                     
# number of mocap bodies 
  
# PlaceHolderNode(int nplugin ; ) int nplugin ; 
                    
# number of plugin instances 
  
# PlaceHolderNode(int npluginattr ; ) int npluginattr ; 
                
# number of chars in all plugin config attributes 
  
# PlaceHolderNode(int nuser_body ; ) int nuser_body ; 
                 
# number of mjtNums in body_user 
  
# PlaceHolderNode(int nuser_jnt ; ) int nuser_jnt ; 
                  
# number of mjtNums in jnt_user 
  
# PlaceHolderNode(int nuser_geom ; ) int nuser_geom ; 
                 
# number of mjtNums in geom_user 
  
# PlaceHolderNode(int nuser_site ; ) int nuser_site ; 
                 
# number of mjtNums in site_user 
  
# PlaceHolderNode(int nuser_cam ; ) int nuser_cam ; 
                  
# number of mjtNums in cam_user 
  
# PlaceHolderNode(int nuser_tendon ; ) int nuser_tendon ; 
               
# number of mjtNums in tendon_user 
  
# PlaceHolderNode(int nuser_actuator ; ) int nuser_actuator ; 
             
# number of mjtNums in actuator_user 
  
# PlaceHolderNode(int nuser_sensor ; ) int nuser_sensor ; 
               
# number of mjtNums in sensor_user 
  
# PlaceHolderNode(int nnames ; ) int nnames ; 
                     
# number of chars in all names 
  
# PlaceHolderNode(int nnames_map ; ) int nnames_map ; 
                 
# number of slots in the names hash map 
  
# PlaceHolderNode(int npaths ; ) int npaths ; 
                     
# number of chars in all paths 
 
  
# sizes set after mjModel construction (only affect mjData) 
  
# PlaceHolderNode(int nM ; ) int nM ; 
                         
# number of non-zeros in sparse inertia matrix 
  
# PlaceHolderNode(int nB ; ) int nB ; 
                         
# number of non-zeros in sparse body-dof matrix 
  
# PlaceHolderNode(int nC ; ) int nC ; 
                         
# number of non-zeros in sparse reduced dof-dof matrix 
  
# PlaceHolderNode(int nD ; ) int nD ; 
                         
# number of non-zeros in sparse dof-dof matrix 
  
# PlaceHolderNode(int ntree ; ) int ntree ; 
                      
# number of kinematic trees under world body 
  
# PlaceHolderNode(int ngravcomp ; ) int ngravcomp ; 
                  
# number of bodies with nonzero gravcomp 
  
# PlaceHolderNode(int nemax ; ) int nemax ; 
                      
# number of potential equality-constraint rows 
  
# PlaceHolderNode(int njmax ; ) int njmax ; 
                      
# number of available rows in constraint Jacobian 
  
# PlaceHolderNode(int nconmax ; ) int nconmax ; 
                    
# number of potential contacts in contact list 
  
# PlaceHolderNode(int nuserdata ; ) int nuserdata ; 
                  
# number of mjtNums reserved for the user 
  
# PlaceHolderNode(int nsensordata ; ) int nsensordata ; 
                
# number of mjtNums in sensor data vector 
  
# PlaceHolderNode(int npluginstate ; ) int npluginstate ; 
               
# number of mjtNums in plugin state vector 
 
  
# PlaceHolderNode(size_t narena ; ) size_t narena ; 
                  
# number of bytes in the mjData arena (inclusive of stack) 
  
# PlaceHolderNode(size_t nbuffer ; ) size_t nbuffer ; 
                 
# number of bytes in buffer 
 
  
# ------------------------------- options and statistics 
 
  
# PlaceHolderNode(mjOption opt ; ) mjOption opt ; 
                   
# physics options 
  
# PlaceHolderNode(mjVisual vis ; ) mjVisual vis ; 
                   
# visualization options 
  
# PlaceHolderNode(mjStatistic stat ; ) mjStatistic stat ; 
               
# model statistics 
 
  
# ------------------------------- buffers 
 
  
# main buffer 
  
# PlaceHolderNode(void*     buffer ; ) void*     buffer ; 
               
# main buffer ;  all pointers point in it    (nbuffer) 
 
  
# default generalized coordinates 
  
# PlaceHolderNode(mjtNum*   qpos0 ; ) mjtNum*   qpos0 ; 
                
# qpos values at default pose              (nq x 1) 
  
# PlaceHolderNode(mjtNum*   qpos_spring ; ) mjtNum*   qpos_spring ; 
          
# reference pose for springs               (nq x 1) 
 
  
# bodies 
  
# PlaceHolderNode(int*      body_parentid ; ) int*      body_parentid ; 
        
# id of body's parent                      (nbody x 1) 
  
# PlaceHolderNode(int*      body_rootid ; ) int*      body_rootid ; 
          
# id of root above body                    (nbody x 1) 
  
# PlaceHolderNode(int*      body_weldid ; ) int*      body_weldid ; 
          
# id of body that this body is welded to   (nbody x 1) 
  
# PlaceHolderNode(int*      body_mocapid ; ) int*      body_mocapid ; 
         
# id of mocap data ;  -1: none               (nbody x 1) 
  
# PlaceHolderNode(int*      body_jntnum ; ) int*      body_jntnum ; 
          
# number of joints for this body           (nbody x 1) 
  
# PlaceHolderNode(int*      body_jntadr ; ) int*      body_jntadr ; 
          
# start addr of joints ;  -1: no joints      (nbody x 1) 
  
# PlaceHolderNode(int*      body_dofnum ; ) int*      body_dofnum ; 
          
# number of motion degrees of freedom      (nbody x 1) 
  
# PlaceHolderNode(int*      body_dofadr ; ) int*      body_dofadr ; 
          
# start addr of dofs ;  -1: no dofs          (nbody x 1) 
  
# PlaceHolderNode(int*      body_treeid ; ) int*      body_treeid ; 
          
# id of body's kinematic tree ;  -1: static  (nbody x 1) 
  
# PlaceHolderNode(int*      body_geomnum ; ) int*      body_geomnum ; 
         
# number of geoms                          (nbody x 1) 
  
# PlaceHolderNode(int*      body_geomadr ; ) int*      body_geomadr ; 
         
# start addr of geoms ;  -1: no geoms        (nbody x 1) 
  
# PlaceHolderNode(mjtByte*  body_simple ; ) mjtByte*  body_simple ; 
          
# 1: diag M ;  2: diag M ,  sliders only       (nbody x 1) 
  
# PlaceHolderNode(mjtByte*  body_sameframe ; ) mjtByte*  body_sameframe ; 
       
# same frame as inertia (mjtSameframe)     (nbody x 1) 
  
# PlaceHolderNode(mjtNum*   body_pos ; ) mjtNum*   body_pos ; 
             
# position offset rel. to parent body      (nbody x 3) 
  
# PlaceHolderNode(mjtNum*   body_quat ; ) mjtNum*   body_quat ; 
            
# orientation offset rel. to parent body   (nbody x 4) 
  
# PlaceHolderNode(mjtNum*   body_ipos ; ) mjtNum*   body_ipos ; 
            
# local position of center of mass         (nbody x 3) 
  
# PlaceHolderNode(mjtNum*   body_iquat ; ) mjtNum*   body_iquat ; 
           
# local orientation of inertia ellipsoid   (nbody x 4) 
  
# PlaceHolderNode(mjtNum*   body_mass ; ) mjtNum*   body_mass ; 
            
# mass                                     (nbody x 1) 
  
# PlaceHolderNode(mjtNum*   body_subtreemass ; ) mjtNum*   body_subtreemass ; 
     
# mass of subtree starting at this body    (nbody x 1) 
  
# PlaceHolderNode(mjtNum*   body_inertia ; ) mjtNum*   body_inertia ; 
         
# diagonal inertia in ipos/iquat frame     (nbody x 3) 
  
# PlaceHolderNode(mjtNum*   body_invweight0 ; ) mjtNum*   body_invweight0 ; 
      
# mean inv inert in qpos0 (trn ,  rot)       (nbody x 2) 
  
# PlaceHolderNode(mjtNum*   body_gravcomp ; ) mjtNum*   body_gravcomp ; 
        
# antigravity force ,  units of body weight  (nbody x 1) 
  
# PlaceHolderNode(mjtNum*   body_margin ; ) mjtNum*   body_margin ; 
          
# MAX over all geom margins                (nbody x 1) 
  
# PlaceHolderNode(mjtNum*   body_user ; ) mjtNum*   body_user ; 
            
# user data                                (nbody x nuser_body) 
  
# PlaceHolderNode(int*      body_plugin ; ) int*      body_plugin ; 
          
# plugin instance id ;  -1: not in use       (nbody x 1) 
  
# PlaceHolderNode(int*      body_contype ; ) int*      body_contype ; 
         
# OR over all geom contypes                (nbody x 1) 
  
# PlaceHolderNode(int*      body_conaffinity ; ) int*      body_conaffinity ; 
     
# OR over all geom conaffinities           (nbody x 1) 
  
# PlaceHolderNode(int*      body_bvhadr ; ) int*      body_bvhadr ; 
          
# address of bvh root                      (nbody x 1) 
  
# PlaceHolderNode(int*      body_bvhnum ; ) int*      body_bvhnum ; 
          
# number of bounding volumes               (nbody x 1) 
 
  
# bounding volume hierarchy 
  
# PlaceHolderNode(int*      bvh_depth ; ) int*      bvh_depth ; 
            
# depth in the bounding volume hierarchy   (nbvh x 1) 
  
# PlaceHolderNode(int*      bvh_child ; ) int*      bvh_child ; 
            
# left and right children in tree          (nbvh x 2) 
  
# PlaceHolderNode(int*      bvh_nodeid ; ) int*      bvh_nodeid ; 
           
# geom or elem id of node ;  -1: non-leaf    (nbvh x 1) 
  
# PlaceHolderNode(mjtNum*   bvh_aabb ; ) mjtNum*   bvh_aabb ; 
             
# local bounding box (center ,  size)        (nbvhstatic x 6) 
 
  
# joints 
  
# PlaceHolderNode(int*      jnt_type ; ) int*      jnt_type ; 
             
# type of joint (mjtJoint)                 (njnt x 1) 
  
# PlaceHolderNode(int*      jnt_qposadr ; ) int*      jnt_qposadr ; 
          
# start addr in 'qpos' for joint's data    (njnt x 1) 
  
# PlaceHolderNode(int*      jnt_dofadr ; ) int*      jnt_dofadr ; 
           
# start addr in 'qvel' for joint's data    (njnt x 1) 
  
# PlaceHolderNode(int*      jnt_bodyid ; ) int*      jnt_bodyid ; 
           
# id of joint's body                       (njnt x 1) 
  
# PlaceHolderNode(int*      jnt_group ; ) int*      jnt_group ; 
            
# group for visibility                     (njnt x 1) 
  
# PlaceHolderNode(mjtByte*  jnt_limited ; ) mjtByte*  jnt_limited ; 
          
# does joint have limits                   (njnt x 1) 
  
# PlaceHolderNode(mjtByte*  jnt_actfrclimited ; ) mjtByte*  jnt_actfrclimited ; 
    
# does joint have actuator force limits    (njnt x 1) 
  
# PlaceHolderNode(mjtByte*  jnt_actgravcomp ; ) mjtByte*  jnt_actgravcomp ; 
      
# is gravcomp force applied via actuators  (njnt x 1) 
  
# PlaceHolderNode(mjtNum*   jnt_solref ; ) mjtNum*   jnt_solref ; 
           
# constraint solver reference: limit       (njnt x mjNREF) 
  
# PlaceHolderNode(mjtNum*   jnt_solimp ; ) mjtNum*   jnt_solimp ; 
           
# constraint solver impedance: limit       (njnt x mjNIMP) 
  
# PlaceHolderNode(mjtNum*   jnt_pos ; ) mjtNum*   jnt_pos ; 
              
# local anchor position                    (njnt x 3) 
  
# PlaceHolderNode(mjtNum*   jnt_axis ; ) mjtNum*   jnt_axis ; 
             
# local joint axis                         (njnt x 3) 
  
# PlaceHolderNode(mjtNum*   jnt_stiffness ; ) mjtNum*   jnt_stiffness ; 
        
# stiffness coefficient                    (njnt x 1) 
  
# PlaceHolderNode(mjtNum*   jnt_range ; ) mjtNum*   jnt_range ; 
            
# joint limits                             (njnt x 2) 
  
# PlaceHolderNode(mjtNum*   jnt_actfrcrange ; ) mjtNum*   jnt_actfrcrange ; 
      
# range of total actuator force            (njnt x 2) 
  
# PlaceHolderNode(mjtNum*   jnt_margin ; ) mjtNum*   jnt_margin ; 
           
# min distance for limit detection         (njnt x 1) 
  
# PlaceHolderNode(mjtNum*   jnt_user ; ) mjtNum*   jnt_user ; 
             
# user data                                (njnt x nuser_jnt) 
 
  
# dofs 
  
# PlaceHolderNode(int*      dof_bodyid ; ) int*      dof_bodyid ; 
           
# id of dof's body                         (nv x 1) 
  
# PlaceHolderNode(int*      dof_jntid ; ) int*      dof_jntid ; 
            
# id of dof's joint                        (nv x 1) 
  
# PlaceHolderNode(int*      dof_parentid ; ) int*      dof_parentid ; 
         
# id of dof's parent ;  -1: none             (nv x 1) 
  
# PlaceHolderNode(int*      dof_treeid ; ) int*      dof_treeid ; 
           
# id of dof's kinematic tree               (nv x 1) 
  
# PlaceHolderNode(int*      dof_Madr ; ) int*      dof_Madr ; 
             
# dof address in M-diagonal                (nv x 1) 
  
# PlaceHolderNode(int*      dof_simplenum ; ) int*      dof_simplenum ; 
        
# number of consecutive simple dofs        (nv x 1) 
  
# PlaceHolderNode(mjtNum*   dof_solref ; ) mjtNum*   dof_solref ; 
           
# constraint solver reference:frictionloss (nv x mjNREF) 
  
# PlaceHolderNode(mjtNum*   dof_solimp ; ) mjtNum*   dof_solimp ; 
           
# constraint solver impedance:frictionloss (nv x mjNIMP) 
  
# PlaceHolderNode(mjtNum*   dof_frictionloss ; ) mjtNum*   dof_frictionloss ; 
     
# dof friction loss                        (nv x 1) 
  
# PlaceHolderNode(mjtNum*   dof_armature ; ) mjtNum*   dof_armature ; 
         
# dof armature inertia/mass                (nv x 1) 
  
# PlaceHolderNode(mjtNum*   dof_damping ; ) mjtNum*   dof_damping ; 
          
# damping coefficient                      (nv x 1) 
  
# PlaceHolderNode(mjtNum*   dof_invweight0 ; ) mjtNum*   dof_invweight0 ; 
       
# diag. inverse inertia in qpos0           (nv x 1) 
  
# PlaceHolderNode(mjtNum*   dof_M0 ; ) mjtNum*   dof_M0 ; 
               
# diag. inertia in qpos0                   (nv x 1) 
 
  
# geoms 
  
# PlaceHolderNode(int*      geom_type ; ) int*      geom_type ; 
            
# geometric type (mjtGeom)                 (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_contype ; ) int*      geom_contype ; 
         
# geom contact type                        (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_conaffinity ; ) int*      geom_conaffinity ; 
     
# geom contact affinity                    (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_condim ; ) int*      geom_condim ; 
          
# contact dimensionality (1 ,  3 ,  4 ,  6)      (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_bodyid ; ) int*      geom_bodyid ; 
          
# id of geom's body                        (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_dataid ; ) int*      geom_dataid ; 
          
# id of geom's mesh/hfield ;  -1: none       (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_matid ; ) int*      geom_matid ; 
           
# material id for rendering ;  -1: none      (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_group ; ) int*      geom_group ; 
           
# group for visibility                     (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_priority ; ) int*      geom_priority ; 
        
# geom contact priority                    (ngeom x 1) 
  
# PlaceHolderNode(int*      geom_plugin ; ) int*      geom_plugin ; 
          
# plugin instance id ;  -1: not in use       (ngeom x 1) 
  
# PlaceHolderNode(mjtByte*  geom_sameframe ; ) mjtByte*  geom_sameframe ; 
       
# same frame as body (mjtSameframe)        (ngeom x 1) 
  
# PlaceHolderNode(mjtNum*   geom_solmix ; ) mjtNum*   geom_solmix ; 
          
# mixing coef for solref/imp in geom pair  (ngeom x 1) 
  
# PlaceHolderNode(mjtNum*   geom_solref ; ) mjtNum*   geom_solref ; 
          
# constraint solver reference: contact     (ngeom x mjNREF) 
  
# PlaceHolderNode(mjtNum*   geom_solimp ; ) mjtNum*   geom_solimp ; 
          
# constraint solver impedance: contact     (ngeom x mjNIMP) 
  
# PlaceHolderNode(mjtNum*   geom_size ; ) mjtNum*   geom_size ; 
            
# geom-specific size parameters            (ngeom x 3) 
  
# PlaceHolderNode(mjtNum*   geom_aabb ; ) mjtNum*   geom_aabb ; 
            
# bounding box ,  (center ,  size)             (ngeom x 6) 
  
# PlaceHolderNode(mjtNum*   geom_rbound ; ) mjtNum*   geom_rbound ; 
          
# radius of bounding sphere                (ngeom x 1) 
  
# PlaceHolderNode(mjtNum*   geom_pos ; ) mjtNum*   geom_pos ; 
             
# local position offset rel. to body       (ngeom x 3) 
  
# PlaceHolderNode(mjtNum*   geom_quat ; ) mjtNum*   geom_quat ; 
            
# local orientation offset rel. to body    (ngeom x 4) 
  
# PlaceHolderNode(mjtNum*   geom_friction ; ) mjtNum*   geom_friction ; 
        
# friction for (slide ,  spin ,  roll)         (ngeom x 3) 
  
# PlaceHolderNode(mjtNum*   geom_margin ; ) mjtNum*   geom_margin ; 
          
# detect contact if dist<margin            (ngeom x 1) 
  
# PlaceHolderNode(mjtNum*   geom_gap ; ) mjtNum*   geom_gap ; 
             
# include in solver if dist<margin-gap     (ngeom x 1) 
  
# PlaceHolderNode(mjtNum*   geom_fluid ; ) mjtNum*   geom_fluid ; 
           
# fluid interaction parameters             (ngeom x mjNFLUID) 
  
# PlaceHolderNode(mjtNum*   geom_user ; ) mjtNum*   geom_user ; 
            
# user data                                (ngeom x nuser_geom) 
  
# PlaceHolderNode(float*    geom_rgba ; ) float*    geom_rgba ; 
            
# rgba when material is omitted            (ngeom x 4) 
 
  
# sites 
  
# PlaceHolderNode(int*      site_type ; ) int*      site_type ; 
            
# geom type for rendering (mjtGeom)        (nsite x 1) 
  
# PlaceHolderNode(int*      site_bodyid ; ) int*      site_bodyid ; 
          
# id of site's body                        (nsite x 1) 
  
# PlaceHolderNode(int*      site_matid ; ) int*      site_matid ; 
           
# material id for rendering ;  -1: none      (nsite x 1) 
  
# PlaceHolderNode(int*      site_group ; ) int*      site_group ; 
           
# group for visibility                     (nsite x 1) 
  
# PlaceHolderNode(mjtByte*  site_sameframe ; ) mjtByte*  site_sameframe ; 
       
# same frame as body (mjtSameframe)        (nsite x 1) 
  
# PlaceHolderNode(mjtNum*   site_size ; ) mjtNum*   site_size ; 
            
# geom size for rendering                  (nsite x 3) 
  
# PlaceHolderNode(mjtNum*   site_pos ; ) mjtNum*   site_pos ; 
             
# local position offset rel. to body       (nsite x 3) 
  
# PlaceHolderNode(mjtNum*   site_quat ; ) mjtNum*   site_quat ; 
            
# local orientation offset rel. to body    (nsite x 4) 
  
# PlaceHolderNode(mjtNum*   site_user ; ) mjtNum*   site_user ; 
            
# user data                                (nsite x nuser_site) 
  
# PlaceHolderNode(float*    site_rgba ; ) float*    site_rgba ; 
            
# rgba when material is omitted            (nsite x 4) 
 
  
# cameras 
  
# PlaceHolderNode(int*      cam_mode ; ) int*      cam_mode ; 
             
# camera tracking mode (mjtCamLight)       (ncam x 1) 
  
# PlaceHolderNode(int*      cam_bodyid ; ) int*      cam_bodyid ; 
           
# id of camera's body                      (ncam x 1) 
  
# PlaceHolderNode(int*      cam_targetbodyid ; ) int*      cam_targetbodyid ; 
     
# id of targeted body ;  -1: none            (ncam x 1) 
  
# PlaceHolderNode(mjtNum*   cam_pos ; ) mjtNum*   cam_pos ; 
              
# position rel. to body frame              (ncam x 3) 
  
# PlaceHolderNode(mjtNum*   cam_quat ; ) mjtNum*   cam_quat ; 
             
# orientation rel. to body frame           (ncam x 4) 
  
# PlaceHolderNode(mjtNum*   cam_poscom0 ; ) mjtNum*   cam_poscom0 ; 
          
# global position rel. to sub-com in qpos0 (ncam x 3) 
  
# PlaceHolderNode(mjtNum*   cam_pos0 ; ) mjtNum*   cam_pos0 ; 
             
# global position rel. to body in qpos0    (ncam x 3) 
  
# PlaceHolderNode(mjtNum*   cam_mat0 ; ) mjtNum*   cam_mat0 ; 
             
# global orientation in qpos0              (ncam x 9) 
  
# PlaceHolderNode(int*      cam_orthographic ; ) int*      cam_orthographic ; 
     
# orthographic camera ;  0: no ,  1: yes       (ncam x 1) 
  
# PlaceHolderNode(mjtNum*   cam_fovy ; ) mjtNum*   cam_fovy ; 
             
# y field-of-view (ortho ? len : deg)      (ncam x 1) 
  
# PlaceHolderNode(mjtNum*   cam_ipd ; ) mjtNum*   cam_ipd ; 
              
# inter-pupilary distance                  (ncam x 1) 
  
# PlaceHolderNode(int*      cam_resolution ; ) int*      cam_resolution ; 
       
# resolution: pixels [width ,  height]       (ncam x 2) 
  
# PlaceHolderNode(float*    cam_sensorsize ; ) float*    cam_sensorsize ; 
       
# sensor size: length [width ,  height]      (ncam x 2) 
  
# PlaceHolderNode(float*    cam_intrinsic ; ) float*    cam_intrinsic ; 
        
# [focal length ;  principal point]          (ncam x 4) 
  
# PlaceHolderNode(mjtNum*   cam_user ; ) mjtNum*   cam_user ; 
             
# user data                                (ncam x nuser_cam) 
 
  
# lights 
  
# PlaceHolderNode(int*      light_mode ; ) int*      light_mode ; 
           
# light tracking mode (mjtCamLight)        (nlight x 1) 
  
# PlaceHolderNode(int*      light_bodyid ; ) int*      light_bodyid ; 
         
# id of light's body                       (nlight x 1) 
  
# PlaceHolderNode(int*      light_targetbodyid ; ) int*      light_targetbodyid ; 
   
# id of targeted body ;  -1: none            (nlight x 1) 
  
# PlaceHolderNode(mjtByte*  light_directional ; ) mjtByte*  light_directional ; 
    
# directional light                        (nlight x 1) 
  
# PlaceHolderNode(mjtByte*  light_castshadow ; ) mjtByte*  light_castshadow ; 
     
# does light cast shadows                  (nlight x 1) 
  
# PlaceHolderNode(float*    light_bulbradius ; ) float*    light_bulbradius ; 
     
# light radius for soft shadows            (nlight x 1) 
  
# PlaceHolderNode(mjtByte*  light_active ; ) mjtByte*  light_active ; 
         
# is light on                              (nlight x 1) 
  
# PlaceHolderNode(mjtNum*   light_pos ; ) mjtNum*   light_pos ; 
            
# position rel. to body frame              (nlight x 3) 
  
# PlaceHolderNode(mjtNum*   light_dir ; ) mjtNum*   light_dir ; 
            
# direction rel. to body frame             (nlight x 3) 
  
# PlaceHolderNode(mjtNum*   light_poscom0 ; ) mjtNum*   light_poscom0 ; 
        
# global position rel. to sub-com in qpos0 (nlight x 3) 
  
# PlaceHolderNode(mjtNum*   light_pos0 ; ) mjtNum*   light_pos0 ; 
           
# global position rel. to body in qpos0    (nlight x 3) 
  
# PlaceHolderNode(mjtNum*   light_dir0 ; ) mjtNum*   light_dir0 ; 
           
# global direction in qpos0                (nlight x 3) 
  
# PlaceHolderNode(float*    light_attenuation ; ) float*    light_attenuation ; 
    
# OpenGL attenuation (quadratic model)     (nlight x 3) 
  
# PlaceHolderNode(float*    light_cutoff ; ) float*    light_cutoff ; 
         
# OpenGL cutoff                            (nlight x 1) 
  
# PlaceHolderNode(float*    light_exponent ; ) float*    light_exponent ; 
       
# OpenGL exponent                          (nlight x 1) 
  
# PlaceHolderNode(float*    light_ambient ; ) float*    light_ambient ; 
        
# ambient rgb (alpha=1)                    (nlight x 3) 
  
# PlaceHolderNode(float*    light_diffuse ; ) float*    light_diffuse ; 
        
# diffuse rgb (alpha=1)                    (nlight x 3) 
  
# PlaceHolderNode(float*    light_specular ; ) float*    light_specular ; 
       
# specular rgb (alpha=1)                   (nlight x 3) 
 
  
# flexes: contact properties 
  
# PlaceHolderNode(int*      flex_contype ; ) int*      flex_contype ; 
         
# flex contact type                        (nflex x 1) 
  
# PlaceHolderNode(int*      flex_conaffinity ; ) int*      flex_conaffinity ; 
     
# flex contact affinity                    (nflex x 1) 
  
# PlaceHolderNode(int*      flex_condim ; ) int*      flex_condim ; 
          
# contact dimensionality (1 ,  3 ,  4 ,  6)      (nflex x 1) 
  
# PlaceHolderNode(int*      flex_priority ; ) int*      flex_priority ; 
        
# flex contact priority                    (nflex x 1) 
  
# PlaceHolderNode(mjtNum*   flex_solmix ; ) mjtNum*   flex_solmix ; 
          
# mix coef for solref/imp in contact pair  (nflex x 1) 
  
# PlaceHolderNode(mjtNum*   flex_solref ; ) mjtNum*   flex_solref ; 
          
# constraint solver reference: contact     (nflex x mjNREF) 
  
# PlaceHolderNode(mjtNum*   flex_solimp ; ) mjtNum*   flex_solimp ; 
          
# constraint solver impedance: contact     (nflex x mjNIMP) 
  
# PlaceHolderNode(mjtNum*   flex_friction ; ) mjtNum*   flex_friction ; 
        
# friction for (slide ,  spin ,  roll)         (nflex x 3) 
  
# PlaceHolderNode(mjtNum*   flex_margin ; ) mjtNum*   flex_margin ; 
          
# detect contact if dist<margin            (nflex x 1) 
  
# PlaceHolderNode(mjtNum*   flex_gap ; ) mjtNum*   flex_gap ; 
             
# include in solver if dist<margin-gap     (nflex x 1) 
  
# PlaceHolderNode(mjtByte*  flex_internal ; ) mjtByte*  flex_internal ; 
        
# internal flex collision enabled          (nflex x 1) 
  
# PlaceHolderNode(int*      flex_selfcollide ; ) int*      flex_selfcollide ; 
     
# self collision mode (mjtFlexSelf)        (nflex x 1) 
  
# PlaceHolderNode(int*      flex_activelayers ; ) int*      flex_activelayers ; 
    
# number of active element layers ,  3D only (nflex x 1) 
 
  
# flexes: other properties 
  
# PlaceHolderNode(int*      flex_dim ; ) int*      flex_dim ; 
             
# 1: lines ,  2: triangles ,  3: tetrahedra    (nflex x 1) 
  
# PlaceHolderNode(int*      flex_matid ; ) int*      flex_matid ; 
           
# material id for rendering                (nflex x 1) 
  
# PlaceHolderNode(int*      flex_group ; ) int*      flex_group ; 
           
# group for visibility                     (nflex x 1) 
  
# PlaceHolderNode(int*      flex_vertadr ; ) int*      flex_vertadr ; 
         
# first vertex address                     (nflex x 1) 
  
# PlaceHolderNode(int*      flex_vertnum ; ) int*      flex_vertnum ; 
         
# number of vertices                       (nflex x 1) 
  
# PlaceHolderNode(int*      flex_edgeadr ; ) int*      flex_edgeadr ; 
         
# first edge address                       (nflex x 1) 
  
# PlaceHolderNode(int*      flex_edgenum ; ) int*      flex_edgenum ; 
         
# number of edges                          (nflex x 1) 
  
# PlaceHolderNode(int*      flex_elemadr ; ) int*      flex_elemadr ; 
         
# first element address                    (nflex x 1) 
  
# PlaceHolderNode(int*      flex_elemnum ; ) int*      flex_elemnum ; 
         
# number of elements                       (nflex x 1) 
  
# PlaceHolderNode(int*      flex_elemdataadr ; ) int*      flex_elemdataadr ; 
     
# first element vertex id address          (nflex x 1) 
  
# PlaceHolderNode(int*      flex_elemedgeadr ; ) int*      flex_elemedgeadr ; 
     
# first element edge id address            (nflex x 1) 
  
# PlaceHolderNode(int*      flex_shellnum ; ) int*      flex_shellnum ; 
        
# number of shells                         (nflex x 1) 
  
# PlaceHolderNode(int*      flex_shelldataadr ; ) int*      flex_shelldataadr ; 
    
# first shell data address                 (nflex x 1) 
  
# PlaceHolderNode(int*      flex_evpairadr ; ) int*      flex_evpairadr ; 
       
# first evpair address                     (nflex x 1) 
  
# PlaceHolderNode(int*      flex_evpairnum ; ) int*      flex_evpairnum ; 
       
# number of evpairs                        (nflex x 1) 
  
# PlaceHolderNode(int*      flex_texcoordadr ; ) int*      flex_texcoordadr ; 
     
# address in flex_texcoord ;  -1: none       (nflex x 1) 
  
# PlaceHolderNode(int*      flex_vertbodyid ; ) int*      flex_vertbodyid ; 
      
# vertex body ids                          (nflexvert x 1) 
  
# PlaceHolderNode(int*      flex_edge ; ) int*      flex_edge ; 
            
# edge vertex ids (2 per edge)             (nflexedge x 2) 
  
# PlaceHolderNode(int*      flex_elem ; ) int*      flex_elem ; 
            
# element vertex ids (dim+1 per elem)      (nflexelemdata x 1) 
  
# PlaceHolderNode(int*      flex_elemedge ; ) int*      flex_elemedge ; 
        
# element edge ids                         (nflexelemedge x 1) 
  
# PlaceHolderNode(int*      flex_elemlayer ; ) int*      flex_elemlayer ; 
       
# element distance from surface ,  3D only   (nflexelem x 1) 
  
# PlaceHolderNode(int*      flex_shell ; ) int*      flex_shell ; 
           
# shell fragment vertex ids (dim per frag) (nflexshelldata x 1) 
  
# PlaceHolderNode(int*      flex_evpair ; ) int*      flex_evpair ; 
          
# (element ,  vertex) collision pairs        (nflexevpair x 2) 
  
# PlaceHolderNode(mjtNum*   flex_vert ; ) mjtNum*   flex_vert ; 
            
# vertex positions in local body frames    (nflexvert x 3) 
  
# PlaceHolderNode(mjtNum*   flex_xvert0 ; ) mjtNum*   flex_xvert0 ; 
          
# Cartesian vertex positions in qpos0      (nflexvert x 3) 
  
# PlaceHolderNode(mjtNum*   flexedge_length0 ; ) mjtNum*   flexedge_length0 ; 
     
# edge lengths in qpos0                    (nflexedge x 1) 
  
# PlaceHolderNode(mjtNum*   flexedge_invweight0 ; ) mjtNum*   flexedge_invweight0 ; 
  
# edge inv. weight in qpos0                (nflexedge x 1) 
  
# PlaceHolderNode(mjtNum*   flex_radius ; ) mjtNum*   flex_radius ; 
          
# radius around primitive element          (nflex x 1) 
  
# PlaceHolderNode(mjtNum*   flex_stiffness ; ) mjtNum*   flex_stiffness ; 
       
# finite element stiffness matrix          (nflexelem x 21) 
  
# PlaceHolderNode(mjtNum*   flex_damping ; ) mjtNum*   flex_damping ; 
         
# Rayleigh's damping coefficient           (nflex x 1) 
  
# PlaceHolderNode(mjtNum*   flex_edgestiffness ; ) mjtNum*   flex_edgestiffness ; 
   
# edge stiffness                           (nflex x 1) 
  
# PlaceHolderNode(mjtNum*   flex_edgedamping ; ) mjtNum*   flex_edgedamping ; 
     
# edge damping                             (nflex x 1) 
  
# PlaceHolderNode(mjtByte*  flex_edgeequality ; ) mjtByte*  flex_edgeequality ; 
    
# is edge equality constraint defined      (nflex x 1) 
  
# PlaceHolderNode(mjtByte*  flex_rigid ; ) mjtByte*  flex_rigid ; 
           
# are all verices in the same body         (nflex x 1) 
  
# PlaceHolderNode(mjtByte*  flexedge_rigid ; ) mjtByte*  flexedge_rigid ; 
       
# are both edge vertices in same body      (nflexedge x 1) 
  
# PlaceHolderNode(mjtByte*  flex_centered ; ) mjtByte*  flex_centered ; 
        
# are all vertex coordinates (0 , 0 , 0)       (nflex x 1) 
  
# PlaceHolderNode(mjtByte*  flex_flatskin ; ) mjtByte*  flex_flatskin ; 
        
# render flex skin with flat shading       (nflex x 1) 
  
# PlaceHolderNode(int*      flex_bvhadr ; ) int*      flex_bvhadr ; 
          
# address of bvh root ;  -1: no bvh          (nflex x 1) 
  
# PlaceHolderNode(int*      flex_bvhnum ; ) int*      flex_bvhnum ; 
          
# number of bounding volumes               (nflex x 1) 
  
# PlaceHolderNode(float*    flex_rgba ; ) float*    flex_rgba ; 
            
# rgba when material is omitted            (nflex x 4) 
  
# PlaceHolderNode(float*    flex_texcoord ; ) float*    flex_texcoord ; 
        
# vertex texture coordinates               (nflextexcoord x 2) 
 
  
# meshes 
  
# PlaceHolderNode(int*      mesh_vertadr ; ) int*      mesh_vertadr ; 
         
# first vertex address                     (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_vertnum ; ) int*      mesh_vertnum ; 
         
# number of vertices                       (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_faceadr ; ) int*      mesh_faceadr ; 
         
# first face address                       (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_facenum ; ) int*      mesh_facenum ; 
         
# number of faces                          (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_bvhadr ; ) int*      mesh_bvhadr ; 
          
# address of bvh root                      (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_bvhnum ; ) int*      mesh_bvhnum ; 
          
# number of bvh                            (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_normaladr ; ) int*      mesh_normaladr ; 
       
# first normal address                     (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_normalnum ; ) int*      mesh_normalnum ; 
       
# number of normals                        (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_texcoordadr ; ) int*      mesh_texcoordadr ; 
     
# texcoord data address ;  -1: no texcoord   (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_texcoordnum ; ) int*      mesh_texcoordnum ; 
     
# number of texcoord                       (nmesh x 1) 
  
# PlaceHolderNode(int*      mesh_graphadr ; ) int*      mesh_graphadr ; 
        
# graph data address ;  -1: no graph         (nmesh x 1) 
  
# PlaceHolderNode(float*    mesh_vert ; ) float*    mesh_vert ; 
            
# vertex positions for all meshes          (nmeshvert x 3) 
  
# PlaceHolderNode(float*    mesh_normal ; ) float*    mesh_normal ; 
          
# normals for all meshes                   (nmeshnormal x 3) 
  
# PlaceHolderNode(float*    mesh_texcoord ; ) float*    mesh_texcoord ; 
        
# vertex texcoords for all meshes          (nmeshtexcoord x 2) 
  
# PlaceHolderNode(int*      mesh_face ; ) int*      mesh_face ; 
            
# vertex face data                         (nmeshface x 3) 
  
# PlaceHolderNode(int*      mesh_facenormal ; ) int*      mesh_facenormal ; 
      
# normal face data                         (nmeshface x 3) 
  
# PlaceHolderNode(int*      mesh_facetexcoord ; ) int*      mesh_facetexcoord ; 
    
# texture face data                        (nmeshface x 3) 
  
# PlaceHolderNode(int*      mesh_graph ; ) int*      mesh_graph ; 
           
# convex graph data                        (nmeshgraph x 1) 
  
# PlaceHolderNode(mjtNum*   mesh_scale ; ) mjtNum*   mesh_scale ; 
           
# scaling applied to asset vertices        (nmesh x 3) 
  
# PlaceHolderNode(mjtNum*   mesh_pos ; ) mjtNum*   mesh_pos ; 
             
# translation applied to asset vertices    (nmesh x 3) 
  
# PlaceHolderNode(mjtNum*   mesh_quat ; ) mjtNum*   mesh_quat ; 
            
# rotation applied to asset vertices       (nmesh x 4) 
  
# PlaceHolderNode(int*      mesh_pathadr ; ) int*      mesh_pathadr ; 
         
# address of asset path for mesh ;  -1: none (nmesh x 1) 
 
  
# skins 
  
# PlaceHolderNode(int*      skin_matid ; ) int*      skin_matid ; 
           
# skin material id ;  -1: none               (nskin x 1) 
  
# PlaceHolderNode(int*      skin_group ; ) int*      skin_group ; 
           
# group for visibility                     (nskin x 1) 
  
# PlaceHolderNode(float*    skin_rgba ; ) float*    skin_rgba ; 
            
# skin rgba                                (nskin x 4) 
  
# PlaceHolderNode(float*    skin_inflate ; ) float*    skin_inflate ; 
         
# inflate skin in normal direction         (nskin x 1) 
  
# PlaceHolderNode(int*      skin_vertadr ; ) int*      skin_vertadr ; 
         
# first vertex address                     (nskin x 1) 
  
# PlaceHolderNode(int*      skin_vertnum ; ) int*      skin_vertnum ; 
         
# number of vertices                       (nskin x 1) 
  
# PlaceHolderNode(int*      skin_texcoordadr ; ) int*      skin_texcoordadr ; 
     
# texcoord data address ;  -1: no texcoord   (nskin x 1) 
  
# PlaceHolderNode(int*      skin_faceadr ; ) int*      skin_faceadr ; 
         
# first face address                       (nskin x 1) 
  
# PlaceHolderNode(int*      skin_facenum ; ) int*      skin_facenum ; 
         
# number of faces                          (nskin x 1) 
  
# PlaceHolderNode(int*      skin_boneadr ; ) int*      skin_boneadr ; 
         
# first bone in skin                       (nskin x 1) 
  
# PlaceHolderNode(int*      skin_bonenum ; ) int*      skin_bonenum ; 
         
# number of bones in skin                  (nskin x 1) 
  
# PlaceHolderNode(float*    skin_vert ; ) float*    skin_vert ; 
            
# vertex positions for all skin meshes     (nskinvert x 3) 
  
# PlaceHolderNode(float*    skin_texcoord ; ) float*    skin_texcoord ; 
        
# vertex texcoords for all skin meshes     (nskintexvert x 2) 
  
# PlaceHolderNode(int*      skin_face ; ) int*      skin_face ; 
            
# triangle faces for all skin meshes       (nskinface x 3) 
  
# PlaceHolderNode(int*      skin_bonevertadr ; ) int*      skin_bonevertadr ; 
     
# first vertex in each bone                (nskinbone x 1) 
  
# PlaceHolderNode(int*      skin_bonevertnum ; ) int*      skin_bonevertnum ; 
     
# number of vertices in each bone          (nskinbone x 1) 
  
# PlaceHolderNode(float*    skin_bonebindpos ; ) float*    skin_bonebindpos ; 
     
# bind pos of each bone                    (nskinbone x 3) 
  
# PlaceHolderNode(float*    skin_bonebindquat ; ) float*    skin_bonebindquat ; 
    
# bind quat of each bone                   (nskinbone x 4) 
  
# PlaceHolderNode(int*      skin_bonebodyid ; ) int*      skin_bonebodyid ; 
      
# body id of each bone                     (nskinbone x 1) 
  
# PlaceHolderNode(int*      skin_bonevertid ; ) int*      skin_bonevertid ; 
      
# mesh ids of vertices in each bone        (nskinbonevert x 1) 
  
# PlaceHolderNode(float*    skin_bonevertweight ; ) float*    skin_bonevertweight ; 
  
# weights of vertices in each bone         (nskinbonevert x 1) 
  
# PlaceHolderNode(int*      skin_pathadr ; ) int*      skin_pathadr ; 
         
# address of asset path for skin ;  -1: none (nskin x 1) 
 
  
# height fields 
  
# PlaceHolderNode(mjtNum*   hfield_size ; ) mjtNum*   hfield_size ; 
          
# (x ,  y ,  z_top ,  z_bottom)                  (nhfield x 4) 
  
# PlaceHolderNode(int*      hfield_nrow ; ) int*      hfield_nrow ; 
          
# number of rows in grid                   (nhfield x 1) 
  
# PlaceHolderNode(int*      hfield_ncol ; ) int*      hfield_ncol ; 
          
# number of columns in grid                (nhfield x 1) 
  
# PlaceHolderNode(int*      hfield_adr ; ) int*      hfield_adr ; 
           
# address in hfield_data                   (nhfield x 1) 
  
# PlaceHolderNode(float*    hfield_data ; ) float*    hfield_data ; 
          
# elevation data                           (nhfielddata x 1) 
  
# PlaceHolderNode(int*      hfield_pathadr ; ) int*      hfield_pathadr ; 
       
# address of hfield asset path ;  -1: none   (nhfield x 1) 
 
  
# textures 
  
# PlaceHolderNode(int*      tex_type ; ) int*      tex_type ; 
             
# texture type (mjtTexture)                (ntex x 1) 
  
# PlaceHolderNode(int*      tex_height ; ) int*      tex_height ; 
           
# number of rows in texture image          (ntex x 1) 
  
# PlaceHolderNode(int*      tex_width ; ) int*      tex_width ; 
            
# number of columns in texture image       (ntex x 1) 
  
# PlaceHolderNode(int*      tex_nchannel ; ) int*      tex_nchannel ; 
         
# number of channels in texture image      (ntex x 1) 
  
# PlaceHolderNode(int*      tex_adr ; ) int*      tex_adr ; 
              
# start address in tex_data                (ntex x 1) 
  
# PlaceHolderNode(mjtByte*  tex_data ; ) mjtByte*  tex_data ; 
             
# pixel values                             (ntexdata x 1) 
  
# PlaceHolderNode(int*      tex_pathadr ; ) int*      tex_pathadr ; 
          
# address of texture asset path ;  -1: none  (ntex x 1) 
 
  
# materials 
  
# PlaceHolderNode(int*      mat_texid ; ) int*      mat_texid ; 
            
# indices of textures ;  -1: none            (nmat x mjNTEXROLE) 
  
# PlaceHolderNode(mjtByte*  mat_texuniform ; ) mjtByte*  mat_texuniform ; 
       
# make texture cube uniform                (nmat x 1) 
  
# PlaceHolderNode(float*    mat_texrepeat ; ) float*    mat_texrepeat ; 
        
# texture repetition for 2d mapping        (nmat x 2) 
  
# PlaceHolderNode(float*    mat_emission ; ) float*    mat_emission ; 
         
# emission (x rgb)                         (nmat x 1) 
  
# PlaceHolderNode(float*    mat_specular ; ) float*    mat_specular ; 
         
# specular (x white)                       (nmat x 1) 
  
# PlaceHolderNode(float*    mat_shininess ; ) float*    mat_shininess ; 
        
# shininess coef                           (nmat x 1) 
  
# PlaceHolderNode(float*    mat_reflectance ; ) float*    mat_reflectance ; 
      
# reflectance (0: disable)                 (nmat x 1) 
  
# PlaceHolderNode(float*    mat_metallic ; ) float*    mat_metallic ; 
         
# metallic coef                            (nmat x 1) 
  
# PlaceHolderNode(float*    mat_roughness ; ) float*    mat_roughness ; 
        
# roughness coef                           (nmat x 1) 
  
# PlaceHolderNode(float*    mat_rgba ; ) float*    mat_rgba ; 
             
# rgba                                     (nmat x 4) 
 
  
# predefined geom pairs for collision detection ;  has precedence over exclude 
  
# PlaceHolderNode(int*      pair_dim ; ) int*      pair_dim ; 
             
# contact dimensionality                   (npair x 1) 
  
# PlaceHolderNode(int*      pair_geom1 ; ) int*      pair_geom1 ; 
           
# id of geom1                              (npair x 1) 
  
# PlaceHolderNode(int*      pair_geom2 ; ) int*      pair_geom2 ; 
           
# id of geom2                              (npair x 1) 
  
# PlaceHolderNode(int*      pair_signature ; ) int*      pair_signature ; 
       
# body1 << 16 + body2                      (npair x 1) 
  
# PlaceHolderNode(mjtNum*   pair_solref ; ) mjtNum*   pair_solref ; 
          
# solver reference: contact normal         (npair x mjNREF) 
  
# PlaceHolderNode(mjtNum*   pair_solreffriction ; ) mjtNum*   pair_solreffriction ; 
  
# solver reference: contact friction       (npair x mjNREF) 
  
# PlaceHolderNode(mjtNum*   pair_solimp ; ) mjtNum*   pair_solimp ; 
          
# solver impedance: contact                (npair x mjNIMP) 
  
# PlaceHolderNode(mjtNum*   pair_margin ; ) mjtNum*   pair_margin ; 
          
# detect contact if dist<margin            (npair x 1) 
  
# PlaceHolderNode(mjtNum*   pair_gap ; ) mjtNum*   pair_gap ; 
             
# include in solver if dist<margin-gap     (npair x 1) 
  
# PlaceHolderNode(mjtNum*   pair_friction ; ) mjtNum*   pair_friction ; 
        
# tangent1 ,  2 ,  spin ,  roll1 ,  2              (npair x 5) 
 
  
# excluded body pairs for collision detection 
  
# PlaceHolderNode(int*      exclude_signature ; ) int*      exclude_signature ; 
    
# body1 << 16 + body2                      (nexclude x 1) 
 
  
# equality constraints 
  
# PlaceHolderNode(int*      eq_type ; ) int*      eq_type ; 
              
# constraint type (mjtEq)                  (neq x 1) 
  
# PlaceHolderNode(int*      eq_obj1id ; ) int*      eq_obj1id ; 
            
# id of object 1                           (neq x 1) 
  
# PlaceHolderNode(int*      eq_obj2id ; ) int*      eq_obj2id ; 
            
# id of object 2                           (neq x 1) 
  
# PlaceHolderNode(int*      eq_objtype ; ) int*      eq_objtype ; 
           
# type of both objects (mjtObj)            (neq x 1) 
  
# PlaceHolderNode(mjtByte*  eq_active0 ; ) mjtByte*  eq_active0 ; 
           
# initial enable/disable constraint state  (neq x 1) 
  
# PlaceHolderNode(mjtNum*   eq_solref ; ) mjtNum*   eq_solref ; 
            
# constraint solver reference              (neq x mjNREF) 
  
# PlaceHolderNode(mjtNum*   eq_solimp ; ) mjtNum*   eq_solimp ; 
            
# constraint solver impedance              (neq x mjNIMP) 
  
# PlaceHolderNode(mjtNum*   eq_data ; ) mjtNum*   eq_data ; 
              
# numeric data for constraint              (neq x mjNEQDATA) 
 
  
# tendons 
  
# PlaceHolderNode(int*      tendon_adr ; ) int*      tendon_adr ; 
           
# address of first object in tendon's path (ntendon x 1) 
  
# PlaceHolderNode(int*      tendon_num ; ) int*      tendon_num ; 
           
# number of objects in tendon's path       (ntendon x 1) 
  
# PlaceHolderNode(int*      tendon_matid ; ) int*      tendon_matid ; 
         
# material id for rendering                (ntendon x 1) 
  
# PlaceHolderNode(int*      tendon_group ; ) int*      tendon_group ; 
         
# group for visibility                     (ntendon x 1) 
  
# PlaceHolderNode(mjtByte*  tendon_limited ; ) mjtByte*  tendon_limited ; 
       
# does tendon have length limits           (ntendon x 1) 
  
# PlaceHolderNode(mjtNum*   tendon_width ; ) mjtNum*   tendon_width ; 
         
# width for rendering                      (ntendon x 1) 
  
# PlaceHolderNode(mjtNum*   tendon_solref_lim ; ) mjtNum*   tendon_solref_lim ; 
    
# constraint solver reference: limit       (ntendon x mjNREF) 
  
# PlaceHolderNode(mjtNum*   tendon_solimp_lim ; ) mjtNum*   tendon_solimp_lim ; 
    
# constraint solver impedance: limit       (ntendon x mjNIMP) 
  
# PlaceHolderNode(mjtNum*   tendon_solref_fri ; ) mjtNum*   tendon_solref_fri ; 
    
# constraint solver reference: friction    (ntendon x mjNREF) 
  
# PlaceHolderNode(mjtNum*   tendon_solimp_fri ; ) mjtNum*   tendon_solimp_fri ; 
    
# constraint solver impedance: friction    (ntendon x mjNIMP) 
  
# PlaceHolderNode(mjtNum*   tendon_range ; ) mjtNum*   tendon_range ; 
         
# tendon length limits                     (ntendon x 2) 
  
# PlaceHolderNode(mjtNum*   tendon_margin ; ) mjtNum*   tendon_margin ; 
        
# min distance for limit detection         (ntendon x 1) 
  
# PlaceHolderNode(mjtNum*   tendon_stiffness ; ) mjtNum*   tendon_stiffness ; 
     
# stiffness coefficient                    (ntendon x 1) 
  
# PlaceHolderNode(mjtNum*   tendon_damping ; ) mjtNum*   tendon_damping ; 
       
# damping coefficient                      (ntendon x 1) 
  
# PlaceHolderNode(mjtNum*   tendon_frictionloss ; ) mjtNum*   tendon_frictionloss ; 
  
# loss due to friction                     (ntendon x 1) 
  
# PlaceHolderNode(mjtNum*   tendon_lengthspring ; ) mjtNum*   tendon_lengthspring ; 
  
# spring resting length range              (ntendon x 2) 
  
# PlaceHolderNode(mjtNum*   tendon_length0 ; ) mjtNum*   tendon_length0 ; 
       
# tendon length in qpos0                   (ntendon x 1) 
  
# PlaceHolderNode(mjtNum*   tendon_invweight0 ; ) mjtNum*   tendon_invweight0 ; 
    
# inv. weight in qpos0                     (ntendon x 1) 
  
# PlaceHolderNode(mjtNum*   tendon_user ; ) mjtNum*   tendon_user ; 
          
# user data                                (ntendon x nuser_tendon) 
  
# PlaceHolderNode(float*    tendon_rgba ; ) float*    tendon_rgba ; 
          
# rgba when material is omitted            (ntendon x 4) 
 
  
# list of all wrap objects in tendon paths 
  
# PlaceHolderNode(int*      wrap_type ; ) int*      wrap_type ; 
            
# wrap object type (mjtWrap)               (nwrap x 1) 
  
# PlaceHolderNode(int*      wrap_objid ; ) int*      wrap_objid ; 
           
# object id: geom ,  site ,  joint             (nwrap x 1) 
  
# PlaceHolderNode(mjtNum*   wrap_prm ; ) mjtNum*   wrap_prm ; 
             
# divisor ,  joint coef ,  or site id          (nwrap x 1) 
 
  
# actuators 
  
# PlaceHolderNode(int*      actuator_trntype ; ) int*      actuator_trntype ; 
     
# transmission type (mjtTrn)               (nu x 1) 
  
# PlaceHolderNode(int*      actuator_dyntype ; ) int*      actuator_dyntype ; 
     
# dynamics type (mjtDyn)                   (nu x 1) 
  
# PlaceHolderNode(int*      actuator_gaintype ; ) int*      actuator_gaintype ; 
    
# gain type (mjtGain)                      (nu x 1) 
  
# PlaceHolderNode(int*      actuator_biastype ; ) int*      actuator_biastype ; 
    
# bias type (mjtBias)                      (nu x 1) 
  
# PlaceHolderNode(int*      actuator_trnid ; ) int*      actuator_trnid ; 
       
# transmission id: joint ,  tendon ,  site     (nu x 2) 
  
# PlaceHolderNode(int*      actuator_actadr ; ) int*      actuator_actadr ; 
      
# first activation address ;  -1: stateless  (nu x 1) 
  
# PlaceHolderNode(int*      actuator_actnum ; ) int*      actuator_actnum ; 
      
# number of activation variables           (nu x 1) 
  
# PlaceHolderNode(int*      actuator_group ; ) int*      actuator_group ; 
       
# group for visibility                     (nu x 1) 
  
# PlaceHolderNode(mjtByte*  actuator_ctrllimited ; ) mjtByte*  actuator_ctrllimited ; 
 
# is control limited                       (nu x 1) 
  
# PlaceHolderNode(mjtByte*  actuator_forcelimited ; ) mjtByte*  actuator_forcelimited ; 
# is force limited                         (nu x 1) 
  
# PlaceHolderNode(mjtByte*  actuator_actlimited ; ) mjtByte*  actuator_actlimited ; 
  
# is activation limited                    (nu x 1) 
  
# PlaceHolderNode(mjtNum*   actuator_dynprm ; ) mjtNum*   actuator_dynprm ; 
      
# dynamics parameters                      (nu x mjNDYN) 
  
# PlaceHolderNode(mjtNum*   actuator_gainprm ; ) mjtNum*   actuator_gainprm ; 
     
# gain parameters                          (nu x mjNGAIN) 
  
# PlaceHolderNode(mjtNum*   actuator_biasprm ; ) mjtNum*   actuator_biasprm ; 
     
# bias parameters                          (nu x mjNBIAS) 
  
# PlaceHolderNode(mjtByte*  actuator_actearly ; ) mjtByte*  actuator_actearly ; 
    
# step activation before force             (nu x 1) 
  
# PlaceHolderNode(mjtNum*   actuator_ctrlrange ; ) mjtNum*   actuator_ctrlrange ; 
   
# range of controls                        (nu x 2) 
  
# PlaceHolderNode(mjtNum*   actuator_forcerange ; ) mjtNum*   actuator_forcerange ; 
  
# range of forces                          (nu x 2) 
  
# PlaceHolderNode(mjtNum*   actuator_actrange ; ) mjtNum*   actuator_actrange ; 
    
# range of activations                     (nu x 2) 
  
# PlaceHolderNode(mjtNum*   actuator_gear ; ) mjtNum*   actuator_gear ; 
        
# scale length and transmitted force       (nu x 6) 
  
# PlaceHolderNode(mjtNum*   actuator_cranklength ; ) mjtNum*   actuator_cranklength ; 
 
# crank length for slider-crank            (nu x 1) 
  
# PlaceHolderNode(mjtNum*   actuator_acc0 ; ) mjtNum*   actuator_acc0 ; 
        
# acceleration from unit force in qpos0    (nu x 1) 
  
# PlaceHolderNode(mjtNum*   actuator_length0 ; ) mjtNum*   actuator_length0 ; 
     
# actuator length in qpos0                 (nu x 1) 
  
# PlaceHolderNode(mjtNum*   actuator_lengthrange ; ) mjtNum*   actuator_lengthrange ; 
 
# feasible actuator length range           (nu x 2) 
  
# PlaceHolderNode(mjtNum*   actuator_user ; ) mjtNum*   actuator_user ; 
        
# user data                                (nu x nuser_actuator) 
  
# PlaceHolderNode(int*      actuator_plugin ; ) int*      actuator_plugin ; 
      
# plugin instance id ;  -1: not a plugin     (nu x 1) 
 
  
# sensors 
  
# PlaceHolderNode(int*      sensor_type ; ) int*      sensor_type ; 
          
# sensor type (mjtSensor)                  (nsensor x 1) 
  
# PlaceHolderNode(int*      sensor_datatype ; ) int*      sensor_datatype ; 
      
# numeric data type (mjtDataType)          (nsensor x 1) 
  
# PlaceHolderNode(int*      sensor_needstage ; ) int*      sensor_needstage ; 
     
# required compute stage (mjtStage)        (nsensor x 1) 
  
# PlaceHolderNode(int*      sensor_objtype ; ) int*      sensor_objtype ; 
       
# type of sensorized object (mjtObj)       (nsensor x 1) 
  
# PlaceHolderNode(int*      sensor_objid ; ) int*      sensor_objid ; 
         
# id of sensorized object                  (nsensor x 1) 
  
# PlaceHolderNode(int*      sensor_reftype ; ) int*      sensor_reftype ; 
       
# type of reference frame (mjtObj)         (nsensor x 1) 
  
# PlaceHolderNode(int*      sensor_refid ; ) int*      sensor_refid ; 
         
# id of reference frame ;  -1: global frame  (nsensor x 1) 
  
# PlaceHolderNode(int*      sensor_dim ; ) int*      sensor_dim ; 
           
# number of scalar outputs                 (nsensor x 1) 
  
# PlaceHolderNode(int*      sensor_adr ; ) int*      sensor_adr ; 
           
# address in sensor array                  (nsensor x 1) 
  
# PlaceHolderNode(mjtNum*   sensor_cutoff ; ) mjtNum*   sensor_cutoff ; 
        
# cutoff for real and positive ;  0: ignore  (nsensor x 1) 
  
# PlaceHolderNode(mjtNum*   sensor_noise ; ) mjtNum*   sensor_noise ; 
         
# noise standard deviation                 (nsensor x 1) 
  
# PlaceHolderNode(mjtNum*   sensor_user ; ) mjtNum*   sensor_user ; 
          
# user data                                (nsensor x nuser_sensor) 
  
# PlaceHolderNode(int*      sensor_plugin ; ) int*      sensor_plugin ; 
        
# plugin instance id ;  -1: not a plugin     (nsensor x 1) 
 
  
# plugin instances 
  
# PlaceHolderNode(int*      plugin ; ) int*      plugin ; 
               
# globally registered plugin slot number   (nplugin x 1) 
  
# PlaceHolderNode(int*      plugin_stateadr ; ) int*      plugin_stateadr ; 
      
# address in the plugin state array        (nplugin x 1) 
  
# PlaceHolderNode(int*      plugin_statenum ; ) int*      plugin_statenum ; 
      
# number of states in the plugin instance  (nplugin x 1) 
  
# PlaceHolderNode(char*     plugin_attr ; ) char*     plugin_attr ; 
          
# config attributes of plugin instances    (npluginattr x 1) 
  
# PlaceHolderNode(int*      plugin_attradr ; ) int*      plugin_attradr ; 
       
# address to each instance's config attrib (nplugin x 1) 
 
  
# custom numeric fields 
  
# PlaceHolderNode(int*      numeric_adr ; ) int*      numeric_adr ; 
          
# address of field in numeric_data         (nnumeric x 1) 
  
# PlaceHolderNode(int*      numeric_size ; ) int*      numeric_size ; 
         
# size of numeric field                    (nnumeric x 1) 
  
# PlaceHolderNode(mjtNum*   numeric_data ; ) mjtNum*   numeric_data ; 
         
# array of all numeric fields              (nnumericdata x 1) 
 
  
# custom text fields 
  
# PlaceHolderNode(int*      text_adr ; ) int*      text_adr ; 
             
# address of text in text_data             (ntext x 1) 
  
# PlaceHolderNode(int*      text_size ; ) int*      text_size ; 
            
# size of text field (strlen+1)            (ntext x 1) 
  
# PlaceHolderNode(char*     text_data ; ) char*     text_data ; 
            
# array of all text fields (0-terminated)  (ntextdata x 1) 
 
  
# custom tuple fields 
  
# PlaceHolderNode(int*      tuple_adr ; ) int*      tuple_adr ; 
            
# address of text in text_data             (ntuple x 1) 
  
# PlaceHolderNode(int*      tuple_size ; ) int*      tuple_size ; 
           
# number of objects in tuple               (ntuple x 1) 
  
# PlaceHolderNode(int*      tuple_objtype ; ) int*      tuple_objtype ; 
        
# array of object types in all tuples      (ntupledata x 1) 
  
# PlaceHolderNode(int*      tuple_objid ; ) int*      tuple_objid ; 
          
# array of object ids in all tuples        (ntupledata x 1) 
  
# PlaceHolderNode(mjtNum*   tuple_objprm ; ) mjtNum*   tuple_objprm ; 
         
# array of object params in all tuples     (ntupledata x 1) 
 
  
# keyframes 
  
# PlaceHolderNode(mjtNum*   key_time ; ) mjtNum*   key_time ; 
             
# key time                                 (nkey x 1) 
  
# PlaceHolderNode(mjtNum*   key_qpos ; ) mjtNum*   key_qpos ; 
             
# key position                             (nkey x nq) 
  
# PlaceHolderNode(mjtNum*   key_qvel ; ) mjtNum*   key_qvel ; 
             
# key velocity                             (nkey x nv) 
  
# PlaceHolderNode(mjtNum*   key_act ; ) mjtNum*   key_act ; 
              
# key activation                           (nkey x na) 
  
# PlaceHolderNode(mjtNum*   key_mpos ; ) mjtNum*   key_mpos ; 
             
# key mocap position                       (nkey x nmocap*3) 
  
# PlaceHolderNode(mjtNum*   key_mquat ; ) mjtNum*   key_mquat ; 
            
# key mocap quaternion                     (nkey x nmocap*4) 
  
# PlaceHolderNode(mjtNum*   key_ctrl ; ) mjtNum*   key_ctrl ; 
             
# key control                              (nkey x nu) 
 
  
# names 
  
# PlaceHolderNode(int*      name_bodyadr ; ) int*      name_bodyadr ; 
         
# body name pointers                       (nbody x 1) 
  
# PlaceHolderNode(int*      name_jntadr ; ) int*      name_jntadr ; 
          
# joint name pointers                      (njnt x 1) 
  
# PlaceHolderNode(int*      name_geomadr ; ) int*      name_geomadr ; 
         
# geom name pointers                       (ngeom x 1) 
  
# PlaceHolderNode(int*      name_siteadr ; ) int*      name_siteadr ; 
         
# site name pointers                       (nsite x 1) 
  
# PlaceHolderNode(int*      name_camadr ; ) int*      name_camadr ; 
          
# camera name pointers                     (ncam x 1) 
  
# PlaceHolderNode(int*      name_lightadr ; ) int*      name_lightadr ; 
        
# light name pointers                      (nlight x 1) 
  
# PlaceHolderNode(int*      name_flexadr ; ) int*      name_flexadr ; 
         
# flex name pointers                       (nflex x 1) 
  
# PlaceHolderNode(int*      name_meshadr ; ) int*      name_meshadr ; 
         
# mesh name pointers                       (nmesh x 1) 
  
# PlaceHolderNode(int*      name_skinadr ; ) int*      name_skinadr ; 
         
# skin name pointers                       (nskin x 1) 
  
# PlaceHolderNode(int*      name_hfieldadr ; ) int*      name_hfieldadr ; 
       
# hfield name pointers                     (nhfield x 1) 
  
# PlaceHolderNode(int*      name_texadr ; ) int*      name_texadr ; 
          
# texture name pointers                    (ntex x 1) 
  
# PlaceHolderNode(int*      name_matadr ; ) int*      name_matadr ; 
          
# material name pointers                   (nmat x 1) 
  
# PlaceHolderNode(int*      name_pairadr ; ) int*      name_pairadr ; 
         
# geom pair name pointers                  (npair x 1) 
  
# PlaceHolderNode(int*      name_excludeadr ; ) int*      name_excludeadr ; 
      
# exclude name pointers                    (nexclude x 1) 
  
# PlaceHolderNode(int*      name_eqadr ; ) int*      name_eqadr ; 
           
# equality constraint name pointers        (neq x 1) 
  
# PlaceHolderNode(int*      name_tendonadr ; ) int*      name_tendonadr ; 
       
# tendon name pointers                     (ntendon x 1) 
  
# PlaceHolderNode(int*      name_actuatoradr ; ) int*      name_actuatoradr ; 
     
# actuator name pointers                   (nu x 1) 
  
# PlaceHolderNode(int*      name_sensoradr ; ) int*      name_sensoradr ; 
       
# sensor name pointers                     (nsensor x 1) 
  
# PlaceHolderNode(int*      name_numericadr ; ) int*      name_numericadr ; 
      
# numeric name pointers                    (nnumeric x 1) 
  
# PlaceHolderNode(int*      name_textadr ; ) int*      name_textadr ; 
         
# text name pointers                       (ntext x 1) 
  
# PlaceHolderNode(int*      name_tupleadr ; ) int*      name_tupleadr ; 
        
# tuple name pointers                      (ntuple x 1) 
  
# PlaceHolderNode(int*      name_keyadr ; ) int*      name_keyadr ; 
          
# keyframe name pointers                   (nkey x 1) 
  
# PlaceHolderNode(int*      name_pluginadr ; ) int*      name_pluginadr ; 
       
# plugin instance name pointers            (nplugin x 1) 
  
# PlaceHolderNode(char*     names ; ) char*     names ; 
                
# names of all objects ,  0-terminated       (nnames x 1) 
  
# PlaceHolderNode(int*      names_map ; ) int*      names_map ; 
            
# internal hash map of names               (nnames_map x 1) 
 
  
# paths 
  
# PlaceHolderNode(char*     paths ; ) char*     paths ; 
                
# paths to assets ,  0-terminated            (npaths x 1) 
 
# PlaceHolderNode(typedef <children> mjModel ; ) typedef <children> mjModel ; 
# PlaceHolderNode(struct mjModel_ ) struct mjModel_ 
# PlaceHolderNode(mjModel ) mjModel 
 
 
# PlaceHolderNode(#endif ) #endif 
 
# MUJOCO_MJMODEL_H_ 
 
