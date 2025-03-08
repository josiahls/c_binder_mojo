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
 
#ifndef MUJOCO_MJMODEL_H_ 
alias MUJOCO_MJMODEL_H_ =  
 
#include <stddef.h> 
#include <stdint.h> 
 
 
#include <mujoco/mjtnum.h> 
 
# global constants 
alias mjPI = 3.14159265358979323846 
alias mjMAXVAL = 1E+10 
# maximum value in qpos ,  qvel ,  qacc 
alias mjMINMU = 1E-5 
# minimum friction coefficient 
alias mjMINIMP = 0.0001 
# minimum constraint impedance 
alias mjMAXIMP = 0.9999 
# maximum constraint impedance 
alias mjMAXCONPAIR = 50 
# maximum number of contacts per geom pair 
alias mjMAXTREEDEPTH = 50 
# maximum bounding volume hierarchy depth 
 
 
# ---------------------------------- sizes --------------------------------------------------------- 
 
alias mjNEQDATA = 11 
# number of eq_data fields 
alias mjNDYN = 10 
# number of actuator dynamics parameters 
alias mjNGAIN = 10 
# number of actuator gain parameters 
alias mjNBIAS = 10 
# number of actuator bias parameters 
alias mjNFLUID = 12 
# number of fluid interaction parameters 
alias mjNREF = 2 
# number of solver reference parameters 
alias mjNIMP = 5 
# number of solver impedance parameters 
alias mjNSOLVER = 200 
# size of one mjData.solver array 
alias mjNISLAND = 20 
# number of mjData.solver arrays 
 
# ---------------------------------- enum types (mjt) ---------------------------------------------- 
 

# Mojo Enum 
struct mjtDisableBit_: 

    
# disable default feature bitflags 
  
alias mjDSBL_CONSTRAINT = 1 
     
# entire constraint solver 
  
alias mjDSBL_EQUALITY = 2 
     
# equality constraints 
  
alias mjDSBL_FRICTIONLOSS = 4 
     
# joint and tendon frictionloss constraints 
  
alias mjDSBL_LIMIT = 8 
     
# joint and tendon limit constraints 
  
alias mjDSBL_CONTACT = 16 
     
# contact constraints 
  
alias mjDSBL_PASSIVE = 32 
     
# passive forces 
  
alias mjDSBL_GRAVITY = 64 
     
# gravitational forces 
  
alias mjDSBL_CLAMPCTRL = 128 
     
# clamp control to specified range 
  
alias mjDSBL_WARMSTART = 256 
     
# warmstart constraint solver 
  
alias mjDSBL_FILTERPARENT = 512 
     
# remove collisions with parent body 
  
alias mjDSBL_ACTUATION = 1024 
    
# apply actuation forces 
  
alias mjDSBL_REFSAFE = 2048 
    
# integrator safety: make ref[0]>=2*timestep 
  
alias mjDSBL_SENSOR = 4096 
    
# sensors 
  
alias mjDSBL_MIDPHASE = 8192 
    
# mid-phase collision filtering 
  
alias mjDSBL_EULERDAMP = 16384 
    
# implicit integration of joint damping in Euler integrator 
  
alias mjDSBL_AUTORESET = 32768 
    
# automatic reset when numerical issues are detected 
 
  
alias mjNDISABLE = 16 
       
# number of disable flags 
alias mjtDisableBit = mjtDisableBit_ 
 
 
 

# Mojo Enum 
struct mjtEnableBit_: 

     
# enable optional feature bitflags 
  
alias mjENBL_OVERRIDE = 1 
     
# override contact parameters 
  
alias mjENBL_ENERGY = 2 
     
# energy computation 
  
alias mjENBL_FWDINV = 4 
     
# record solver statistics 
  
alias mjENBL_INVDISCRETE = 8 
     
# discrete-time inverse dynamics 
                                  
# experimental features: 
  
alias mjENBL_MULTICCD = 16 
     
# multi-point convex collision detection 
  
alias mjENBL_ISLAND = 32 
     
# constraint island discovery 
  
alias mjENBL_NATIVECCD = 64 
     
# native convex collision detection 
 
  
alias mjNENABLE = 7 
        
# number of enable flags 
alias mjtEnableBit = mjtEnableBit_ 
 
 
 

# Mojo Enum 
struct mjtJoint_: 

         
# type of degree of freedom 
  
alias mjJNT_FREE = 0 
        
# global position and orientation (quat)       (7) 
  
alias mjJNT_BALL = 1 
                     
# orientation (quat) relative to parent        (4) 
  
alias mjJNT_SLIDE = 2 
                    
# sliding distance along body-fixed axis       (1) 
  
alias mjJNT_HINGE = 3 
# rotation angle (rad) around body-fixed axis  (1) 
alias mjtJoint = mjtJoint_ 
 
 
 

# Mojo Enum 
struct mjtGeom_: 

          
# type of geometric shape 
  
# regular geom types 
  
alias mjGEOM_PLANE = 0 
        
# plane 
  
alias mjGEOM_HFIELD = 1 
                  
# height field 
  
alias mjGEOM_SPHERE = 2 
                  
# sphere 
  
alias mjGEOM_CAPSULE = 3 
                 
# capsule 
  
alias mjGEOM_ELLIPSOID = 4 
               
# ellipsoid 
  
alias mjGEOM_CYLINDER = 5 
                
# cylinder 
  
alias mjGEOM_BOX = 6 
                     
# box 
  
alias mjGEOM_MESH = 7 
                    
# mesh 
  
alias mjGEOM_SDF = 8 
                     
# signed distance field 
 
  
alias mjNGEOMTYPES = 9 
                   
# number of regular geom types 
 
  
# rendering-only geom types: not used in mjModel ,  not counted in mjNGEOMTYPES 
  
alias mjGEOM_ARROW = 100 
      
# arrow 
  
alias mjGEOM_ARROW1 = 101 
                  
# arrow without wedges 
  
alias mjGEOM_ARROW2 = 102 
                  
# arrow in both directions 
  
alias mjGEOM_LINE = 103 
                    
# line 
  
alias mjGEOM_LINEBOX = 104 
                 
# box with line edges 
  
alias mjGEOM_FLEX = 105 
                    
# flex 
  
alias mjGEOM_SKIN = 106 
                    
# skin 
  
alias mjGEOM_LABEL = 107 
                   
# text label 
  
alias mjGEOM_TRIANGLE = 108 
                
# triangle 
 
  
alias mjGEOM_NONE = 1001 
     
# missing geom type 
alias mjtGeom = mjtGeom_ 
 
 
 

# Mojo Enum 
struct mjtCamLight_: 

      
# tracking mode for camera and light 
  
alias mjCAMLIGHT_FIXED = 0 
        
# pos and rot fixed in body 
  
alias mjCAMLIGHT_TRACK = 1 
               
# pos tracks body ,  rot fixed in global 
  
alias mjCAMLIGHT_TRACKCOM = 2 
            
# pos tracks subtree com ,  rot fixed in body 
  
alias mjCAMLIGHT_TARGETBODY = 3 
          
# pos fixed in body ,  rot tracks target body 
  
alias mjCAMLIGHT_TARGETBODYCOM = 4 
# pos fixed in body ,  rot tracks target subtree com 
alias mjtCamLight = mjtCamLight_ 
 
 
 

# Mojo Enum 
struct mjtTexture_: 

       
# type of texture 
  
alias mjTEXTURE_2D = 0 
        
# 2d texture ,  suitable for planes and hfields 
  
alias mjTEXTURE_CUBE = 1 
                 
# cube texture ,  suitable for all other geom types 
  
alias mjTEXTURE_SKYBOX = 2 
# cube texture used as skybox 
alias mjtTexture = mjtTexture_ 
 
 
 

# Mojo Enum 
struct mjtTextureRole_: 

   
# role of texture map in rendering 
  
alias mjTEXROLE_USER = 0 
        
# unspecified 
  
alias mjTEXROLE_RGB = 1 
                  
# base color (albedo) 
  
alias mjTEXROLE_OCCLUSION = 2 
            
# ambient occlusion 
  
alias mjTEXROLE_ROUGHNESS = 3 
            
# roughness 
  
alias mjTEXROLE_METALLIC = 4 
             
# metallic 
  
alias mjTEXROLE_NORMAL = 5 
               
# normal (bump) map 
  
alias mjTEXROLE_OPACITY = 6 
              
# transperancy 
  
alias mjTEXROLE_EMISSIVE = 7 
             
# light emission 
  
alias mjTEXROLE_RGBA = 8 
                 
# base color ,  opacity 
  
alias mjTEXROLE_ORM = 9 
                  
# occlusion ,  roughness ,  metallic 
  
alias mjNTEXROLE = 10 
alias mjtTextureRole = mjtTextureRole_ 
 
 
 

# Mojo Enum 
struct mjtIntegrator_: 

    
# integrator mode 
  
alias mjINT_EULER = 0 
        
# semi-implicit Euler 
  
alias mjINT_RK4 = 1 
                      
# 4th-order Runge Kutta 
  
alias mjINT_IMPLICIT = 2 
                 
# implicit in velocity 
  
alias mjINT_IMPLICITFAST = 3 
# implicit in velocity ,  no rne derivative 
alias mjtIntegrator = mjtIntegrator_ 
 
 
 

# Mojo Enum 
struct mjtCone_: 

          
# type of friction cone 
  
alias mjCONE_PYRAMIDAL = 0 
       
# pyramidal 
  
alias mjCONE_ELLIPTIC = 1 
# elliptic 
alias mjtCone = mjtCone_ 
 
 
 

# Mojo Enum 
struct mjtJacobian_: 

      
# type of constraint Jacobian 
  
alias mjJAC_DENSE = 0 
       
# dense 
  
alias mjJAC_SPARSE = 1 
                   
# sparse 
  
alias mjJAC_AUTO = 2 
# dense if nv<60 ,  sparse otherwise 
alias mjtJacobian = mjtJacobian_ 
 
 
 

# Mojo Enum 
struct mjtSolver_: 

        
# constraint solver algorithm 
  
alias mjSOL_PGS = 0 
       
# PGS    (dual) 
  
alias mjSOL_CG = 1 
                       
# CG     (primal) 
  
alias mjSOL_NEWTON = 2 
# Newton (primal) 
alias mjtSolver = mjtSolver_ 
 
 
 

# Mojo Enum 
struct mjtEq_: 

            
# type of equality constraint 
  
alias mjEQ_CONNECT = 0 
        
# connect two bodies at a point (ball joint) 
  
alias mjEQ_WELD = 1 
                      
# fix relative position and orientation of two bodies 
  
alias mjEQ_JOINT = 2 
                     
# couple the values of two scalar joints with cubic 
  
alias mjEQ_TENDON = 3 
                    
# couple the lengths of two tendons with cubic 
  
alias mjEQ_FLEX = 4 
                      
# fix all edge lengths of a flex 
  
alias mjEQ_DISTANCE = 5 
# unsupported ,  will cause an error if used 
alias mjtEq = mjtEq_ 
 
 
 

# Mojo Enum 
struct mjtWrap_: 

          
# type of tendon wrap object 
  
alias mjWRAP_NONE = 0 
        
# null object 
  
alias mjWRAP_JOINT = 1 
                   
# constant moment arm 
  
alias mjWRAP_PULLEY = 2 
                  
# pulley used to split tendon 
  
alias mjWRAP_SITE = 3 
                    
# pass through site 
  
alias mjWRAP_SPHERE = 4 
                  
# wrap around sphere 
  
alias mjWRAP_CYLINDER = 5 
# wrap around (infinite) cylinder 
alias mjtWrap = mjtWrap_ 
 
 
 

# Mojo Enum 
struct mjtTrn_: 

           
# type of actuator transmission 
  
alias mjTRN_JOINT = 0 
        
# force on joint 
  
alias mjTRN_JOINTINPARENT = 1 
            
# force on joint ,  expressed in parent frame 
  
alias mjTRN_SLIDERCRANK = 2 
              
# force via slider-crank linkage 
  
alias mjTRN_TENDON = 3 
                   
# force on tendon 
  
alias mjTRN_SITE = 4 
                     
# force on site 
  
alias mjTRN_BODY = 5 
                     
# adhesion force on a body's geoms 
 
  
alias mjTRN_UNDEFINED = 1000 
     
# undefined transmission type 
alias mjtTrn = mjtTrn_ 
 
 
 

# Mojo Enum 
struct mjtDyn_: 

           
# type of actuator dynamics 
  
alias mjDYN_NONE = 0 
        
# no internal dynamics ;  ctrl specifies force 
  
alias mjDYN_INTEGRATOR = 1 
               
# integrator: da/dt = u 
  
alias mjDYN_FILTER = 2 
                   
# linear filter: da/dt = (u-a) / tau 
  
alias mjDYN_FILTEREXACT = 3 
              
# linear filter: da/dt = (u-a) / tau ,  with exact integration 
  
alias mjDYN_MUSCLE = 4 
                   
# piece-wise linear filter with two time constants 
  
alias mjDYN_USER = 5 
# user-defined dynamics type 
alias mjtDyn = mjtDyn_ 
 
 
 

# Mojo Enum 
struct mjtGain_: 

          
# type of actuator gain 
  
alias mjGAIN_FIXED = 0 
        
# fixed gain 
  
alias mjGAIN_AFFINE = 1 
                  
# const + kp*length + kv*velocity 
  
alias mjGAIN_MUSCLE = 2 
                  
# muscle FLV curve computed by mju_muscleGain() 
  
alias mjGAIN_USER = 3 
# user-defined gain type 
alias mjtGain = mjtGain_ 
 
 
 

# Mojo Enum 
struct mjtBias_: 

          
# type of actuator bias 
  
alias mjBIAS_NONE = 0 
        
# no bias 
  
alias mjBIAS_AFFINE = 1 
                  
# const + kp*length + kv*velocity 
  
alias mjBIAS_MUSCLE = 2 
                  
# muscle passive force computed by mju_muscleBias() 
  
alias mjBIAS_USER = 3 
# user-defined bias type 
alias mjtBias = mjtBias_ 
 
 
 

# Mojo Enum 
struct mjtObj_: 

           
# type of MujoCo object 
  
alias mjOBJ_UNKNOWN = 0 
        
# unknown object type 
  
alias mjOBJ_BODY = 1 
                     
# body 
  
alias mjOBJ_XBODY = 2 
                    
# body ,  used to access regular frame instead of i-frame 
  
alias mjOBJ_JOINT = 3 
                    
# joint 
  
alias mjOBJ_DOF = 4 
                      
# dof 
  
alias mjOBJ_GEOM = 5 
                     
# geom 
  
alias mjOBJ_SITE = 6 
                     
# site 
  
alias mjOBJ_CAMERA = 7 
                   
# camera 
  
alias mjOBJ_LIGHT = 8 
                    
# light 
  
alias mjOBJ_FLEX = 9 
                     
# flex 
  
alias mjOBJ_MESH = 10 
                     
# mesh 
  
alias mjOBJ_SKIN = 11 
                     
# skin 
  
alias mjOBJ_HFIELD = 12 
                   
# heightfield 
  
alias mjOBJ_TEXTURE = 13 
                  
# texture 
  
alias mjOBJ_MATERIAL = 14 
                 
# material for rendering 
  
alias mjOBJ_PAIR = 15 
                     
# geom pair to include 
  
alias mjOBJ_EXCLUDE = 16 
                  
# body pair to exclude 
  
alias mjOBJ_EQUALITY = 17 
                 
# equality constraint 
  
alias mjOBJ_TENDON = 18 
                   
# tendon 
  
alias mjOBJ_ACTUATOR = 19 
                 
# actuator 
  
alias mjOBJ_SENSOR = 20 
                   
# sensor 
  
alias mjOBJ_NUMERIC = 21 
                  
# numeric 
  
alias mjOBJ_TEXT = 22 
                     
# text 
  
alias mjOBJ_TUPLE = 23 
                    
# tuple 
  
alias mjOBJ_KEY = 24 
                      
# keyframe 
  
alias mjOBJ_PLUGIN = 25 
                   
# plugin instance 
 
  
alias mjNOBJECT = 26 
                      
# number of object types 
 
  
# meta elements ,  do not appear in mjModel 
  
alias mjOBJ_FRAME = 100 
      
# frame 
alias mjtObj = mjtObj_ 
 
 
 

# Mojo Enum 
struct mjtConstraint_: 

    
# type of constraint 
  
alias mjCNSTR_EQUALITY = 0 
        
# equality constraint 
  
alias mjCNSTR_FRICTION_DOF = 1 
           
# dof friction 
  
alias mjCNSTR_FRICTION_TENDON = 2 
        
# tendon friction 
  
alias mjCNSTR_LIMIT_JOINT = 3 
            
# joint limit 
  
alias mjCNSTR_LIMIT_TENDON = 4 
           
# tendon limit 
  
alias mjCNSTR_CONTACT_FRICTIONLESS = 5 
   
# frictionless contact 
  
alias mjCNSTR_CONTACT_PYRAMIDAL = 6 
      
# frictional contact ,  pyramidal friction cone 
  
alias mjCNSTR_CONTACT_ELLIPTIC = 7 
# frictional contact ,  elliptic friction cone 
alias mjtConstraint = mjtConstraint_ 
 
 
 

# Mojo Enum 
struct mjtConstraintState_: 

 
# constraint state 
  
alias mjCNSTRSTATE_SATISFIED = 0 
       
# constraint satisfied ,  zero cost (limit ,  contact) 
  
alias mjCNSTRSTATE_QUADRATIC = 1 
           
# quadratic cost (equality ,  friction ,  limit ,  contact) 
  
alias mjCNSTRSTATE_LINEARNEG = 2 
           
# linear cost ,  negative side (friction) 
  
alias mjCNSTRSTATE_LINEARPOS = 3 
           
# linear cost ,  positive side (friction) 
  
alias mjCNSTRSTATE_CONE = 4 
# squared distance to cone cost (elliptic contact) 
alias mjtConstraintState = mjtConstraintState_ 
 
 
 

# Mojo Enum 
struct mjtSensor_: 

        
# type of sensor 
  
# common robotic sensors ,  attached to a site 
  
alias mjSENS_TOUCH = 0 
        
# scalar contact normal forces summed over sensor zone 
  
alias mjSENS_ACCELEROMETER = 1 
           
# 3D linear acceleration ,  in local frame 
  
alias mjSENS_VELOCIMETER = 2 
             
# 3D linear velocity ,  in local frame 
  
alias mjSENS_GYRO = 3 
                    
# 3D angular velocity ,  in local frame 
  
alias mjSENS_FORCE = 4 
                   
# 3D force between site's body and its parent body 
  
alias mjSENS_TORQUE = 5 
                  
# 3D torque between site's body and its parent body 
  
alias mjSENS_MAGNETOMETER = 6 
            
# 3D magnetometer 
  
alias mjSENS_RANGEFINDER = 7 
             
# scalar distance to nearest geom or site along z-axis 
  
alias mjSENS_CAMPROJECTION = 8 
           
# pixel coordinates of a site in the camera image 
 
  
# sensors related to scalar joints ,  tendons ,  actuators 
  
alias mjSENS_JOINTPOS = 9 
                
# scalar joint position (hinge and slide only) 
  
alias mjSENS_JOINTVEL = 10 
                
# scalar joint velocity (hinge and slide only) 
  
alias mjSENS_TENDONPOS = 11 
               
# scalar tendon position 
  
alias mjSENS_TENDONVEL = 12 
               
# scalar tendon velocity 
  
alias mjSENS_ACTUATORPOS = 13 
             
# scalar actuator position 
  
alias mjSENS_ACTUATORVEL = 14 
             
# scalar actuator velocity 
  
alias mjSENS_ACTUATORFRC = 15 
             
# scalar actuator force 
  
alias mjSENS_JOINTACTFRC = 16 
             
# scalar actuator force ,  measured at the joint 
 
  
# sensors related to ball joints 
  
alias mjSENS_BALLQUAT = 17 
                
# 4D ball joint quaternion 
  
alias mjSENS_BALLANGVEL = 18 
              
# 3D ball joint angular velocity 
 
  
# joint and tendon limit sensors ,  in constraint space 
  
alias mjSENS_JOINTLIMITPOS = 19 
           
# joint limit distance-margin 
  
alias mjSENS_JOINTLIMITVEL = 20 
           
# joint limit velocity 
  
alias mjSENS_JOINTLIMITFRC = 21 
           
# joint limit force 
  
alias mjSENS_TENDONLIMITPOS = 22 
          
# tendon limit distance-margin 
  
alias mjSENS_TENDONLIMITVEL = 23 
          
# tendon limit velocity 
  
alias mjSENS_TENDONLIMITFRC = 24 
          
# tendon limit force 
 
  
# sensors attached to an object with spatial frame: (x)body ,  geom ,  site ,  camera 
  
alias mjSENS_FRAMEPOS = 25 
                
# 3D position 
  
alias mjSENS_FRAMEQUAT = 26 
               
# 4D unit quaternion orientation 
  
alias mjSENS_FRAMEXAXIS = 27 
              
# 3D unit vector: x-axis of object's frame 
  
alias mjSENS_FRAMEYAXIS = 28 
              
# 3D unit vector: y-axis of object's frame 
  
alias mjSENS_FRAMEZAXIS = 29 
              
# 3D unit vector: z-axis of object's frame 
  
alias mjSENS_FRAMELINVEL = 30 
             
# 3D linear velocity 
  
alias mjSENS_FRAMEANGVEL = 31 
             
# 3D angular velocity 
  
alias mjSENS_FRAMELINACC = 32 
             
# 3D linear acceleration 
  
alias mjSENS_FRAMEANGACC = 33 
             
# 3D angular acceleration 
 
  
# sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) 
  
alias mjSENS_SUBTREECOM = 34 
              
# 3D center of mass of subtree 
  
alias mjSENS_SUBTREELINVEL = 35 
           
# 3D linear velocity of subtree 
  
alias mjSENS_SUBTREEANGMOM = 36 
           
# 3D angular momentum of subtree 
 
  
# sensors for geometric distance ;  attached to geoms or bodies 
  
alias mjSENS_GEOMDIST = 37 
                
# signed distance between two geoms 
  
alias mjSENS_GEOMNORMAL = 38 
              
# normal direction between two geoms 
  
alias mjSENS_GEOMFROMTO = 39 
              
# segment between two geoms 
 
  
# global sensors 
  
alias mjSENS_CLOCK = 40 
                   
# simulation time 
 
  
# plugin-controlled sensors 
  
alias mjSENS_PLUGIN = 41 
                  
# plugin-controlled 
 
  
# user-defined sensor 
  
alias mjSENS_USER = 42 
# sensor data provided by mjcb_sensor callback 
alias mjtSensor = mjtSensor_ 
 
 
 

# Mojo Enum 
struct mjtStage_: 

         
# computation stage 
  
alias mjSTAGE_NONE = 0 
        
# no computations 
  
alias mjSTAGE_POS = 1 
                    
# position-dependent computations 
  
alias mjSTAGE_VEL = 2 
                    
# velocity-dependent computations 
  
alias mjSTAGE_ACC = 3 
# acceleration/force-dependent computations 
alias mjtStage = mjtStage_ 
 
 
 

# Mojo Enum 
struct mjtDataType_: 

      
# data type for sensors 
  
alias mjDATATYPE_REAL = 0 
        
# real values ,  no constraints 
  
alias mjDATATYPE_POSITIVE = 1 
            
# positive values ;  0 or negative: inactive 
  
alias mjDATATYPE_AXIS = 2 
                
# 3D unit vector 
  
alias mjDATATYPE_QUATERNION = 3 
# unit quaternion 
alias mjtDataType = mjtDataType_ 
 
 
 

# Mojo Enum 
struct mjtSameFrame_: 

     
# frame alignment of bodies with their children 
  
alias mjSAMEFRAME_NONE = 0 
        
# no alignment 
  
alias mjSAMEFRAME_BODY = 1 
               
# frame is same as body frame 
  
alias mjSAMEFRAME_INERTIA = 2 
            
# frame is same as inertial frame 
  
alias mjSAMEFRAME_BODYROT = 3 
            
# frame orientation is same as body orientation 
  
alias mjSAMEFRAME_INERTIAROT = 4 
# frame orientation is same as inertia orientation 
alias mjtSameFrame = mjtSameFrame_ 
 
 
 

# Mojo Enum 
struct mjtLRMode_: 

        
# mode for actuator length range computation 
  
alias mjLRMODE_NONE = 0 
            
# do not process any actuators 
  
alias mjLRMODE_MUSCLE = 1 
                
# process muscle actuators 
  
alias mjLRMODE_MUSCLEUSER = 2 
            
# process muscle and user actuators 
  
alias mjLRMODE_ALL = 3 
# process all actuators 
alias mjtLRMode = mjtLRMode_ 
 
 
 

# Mojo Enum 
struct mjtFlexSelf_: 

      
# mode for flex selfcollide 
  
alias mjFLEXSELF_NONE = 0 
          
# no self-collisions 
  
alias mjFLEXSELF_NARROW = 1 
              
# skip midphase ,  go directly to narrowphase 
  
alias mjFLEXSELF_BVH = 2 
                 
# use BVH in midphase (if midphase enabled) 
  
alias mjFLEXSELF_SAP = 3 
                 
# use SAP in midphase 
  
alias mjFLEXSELF_AUTO = 4 
# choose between BVH and SAP automatically 
alias mjtFlexSelf = mjtFlexSelf_ 
 
 
 
# ---------------------------------- mjLROpt ------------------------------------------------------- 
 
struct mjLROpt_: 

                
# options for mj_setLengthRange() 
  
# flags 
  
var mode: int 
                       
# which actuators to process (mjtLRMode) 
  
var useexisting: int 
                
# use existing length range if available 
  
var uselimit: int 
                   
# use joint and tendon limits if available 
 
  
# algorithm parameters 
  
var accel: mjtNum 
                   
# target acceleration used to compute force 
  
var maxforce: mjtNum 
                
# maximum force ;  0: no limit 
  
var timeconst: mjtNum 
               
# time constant for velocity reduction ;  min 0.01 
  
var timestep: mjtNum 
                
# simulation timestep ;  0: use mjOption.timestep 
  
var inttotal: mjtNum 
                
# total simulation time interval 
  
var interval: mjtNum 
                
# evaluation time interval (at the end) 
  
var tolrange: mjtNum 
                
# convergence tolerance (relative to range) 
 


alias mjLROpt = mjLROpt_ 
 
 
 
# ---------------------------------- mjVFS --------------------------------------------------------- 
 
struct mjVFS_: 

                              
# virtual file system for loading from memory 
  
var impl_: void* 
                                
# internal pointer to VFS memory 
 


alias mjVFS = mjVFS_ 
 
 
# ---------------------------------- mjOption ------------------------------------------------------ 
 
struct mjOption_: 

               
# physics options 
  
# timing parameters 
  
var timestep: mjtNum 
                
# timestep 
  
var apirate: mjtNum 
                 
# update rate for remote API (Hz) 
 
  
# solver parameters 
  
var impratio: mjtNum 
                
# ratio of friction-to-normal contact impedance 
  
var tolerance: mjtNum 
               
# main solver tolerance 
  
var ls_tolerance: mjtNum 
            
# CG/Newton linesearch tolerance 
  
var noslip_tolerance: mjtNum 
        
# noslip solver tolerance 
  
var ccd_tolerance: mjtNum 
           
# convex collision solver tolerance 
 
  
# physical constants 
  
var gravity[3]: mjtNum 
              
# gravitational acceleration 
  
var wind[3]: mjtNum 
                 
# wind (for lift ,  drag and viscosity) 
  
var magnetic[3]: mjtNum 
             
# global magnetic flux 
  
var density: mjtNum 
                 
# density of medium 
  
var viscosity: mjtNum 
               
# viscosity of medium 
 
  
# override contact solver parameters (if enabled) 
  
var o_margin: mjtNum 
                
# margin 
  
var o_solref[mjNREF]: mjtNum 
        
# solref 
  
var o_solimp[mjNIMP]: mjtNum 
        
# solimp 
  
var o_friction[5]: mjtNum 
           
# friction 
 
  
# discrete settings 
  
var integrator: int 
                 
# integration mode (mjtIntegrator) 
  
var cone: int 
                       
# type of friction cone (mjtCone) 
  
var jacobian: int 
                   
# type of Jacobian (mjtJacobian) 
  
var solver: int 
                     
# solver algorithm (mjtSolver) 
  
var iterations: int 
                 
# maximum number of main solver iterations 
  
var ls_iterations: int 
              
# maximum number of CG/Newton linesearch iterations 
  
var noslip_iterations: int 
          
# maximum number of noslip solver iterations 
  
var ccd_iterations: int 
             
# maximum number of convex collision solver iterations 
  
var disableflags: int 
               
# bit flags for disabling standard features 
  
var enableflags: int 
                
# bit flags for enabling optional features 
  
var disableactuator: int 
            
# bit flags for disabling actuators by group id 
 
  
# sdf collision settings 
  
var sdf_initpoints: int 
             
# number of starting points for gradient descent 
  
var sdf_iterations: int 
             
# max number of iterations for gradient descent 
 


alias mjOption = mjOption_ 
 
 
 
# ---------------------------------- mjVisual ------------------------------------------------------ 
 
struct mjVisual_: 

               
# visualization options 
  
var global: mjVisual__global 
 
 
  
var quality: mjVisual__quality 
 
 
  
var headlight: mjVisual__headlight 
 
 
  
var map: mjVisual__map 
 
 
  
var scale: mjVisual__scale 
 
 
  
var rgba: mjVisual__rgba 
 
 


alias mjVisual = mjVisual_ 
 
 
 
# ---------------------------------- mjStatistic --------------------------------------------------- 
 
struct mjStatistic_: 

            
# model statistics (in qpos0) 
  
var meaninertia: mjtNum 
             
# mean diagonal inertia 
  
var meanmass: mjtNum 
                
# mean body mass 
  
var meansize: mjtNum 
                
# mean body size 
  
var extent: mjtNum 
                  
# spatial extent 
  
var center[3]: mjtNum 
               
# center of model 
 


alias mjStatistic = mjStatistic_ 
 
 
 
# ---------------------------------- mjModel ------------------------------------------------------- 
 
struct mjModel_: 

  
# ------------------------------- sizes 
 
  
# sizes needed at mjModel construction 
  
var nq: int 
                         
# number of generalized coordinates = dim(qpos) 
  
var nv: int 
                         
# number of degrees of freedom = dim(qvel) 
  
var nu: int 
                         
# number of actuators/controls = dim(ctrl) 
  
var na: int 
                         
# number of activation states = dim(act) 
  
var nbody: int 
                      
# number of bodies 
  
var nbvh: int 
                       
# number of total bounding volumes in all bodies 
  
var nbvhstatic: int 
                 
# number of static bounding volumes (aabb stored in mjModel) 
  
var nbvhdynamic: int 
                
# number of dynamic bounding volumes (aabb stored in mjData) 
  
var njnt: int 
                       
# number of joints 
  
var ngeom: int 
                      
# number of geoms 
  
var nsite: int 
                      
# number of sites 
  
var ncam: int 
                       
# number of cameras 
  
var nlight: int 
                     
# number of lights 
  
var nflex: int 
                      
# number of flexes 
  
var nflexvert: int 
                  
# number of vertices in all flexes 
  
var nflexedge: int 
                  
# number of edges in all flexes 
  
var nflexelem: int 
                  
# number of elements in all flexes 
  
var nflexelemdata: int 
              
# number of element vertex ids in all flexes 
  
var nflexelemedge: int 
              
# number of element edge ids in all flexes 
  
var nflexshelldata: int 
             
# number of shell fragment vertex ids in all flexes 
  
var nflexevpair: int 
                
# number of element-vertex pairs in all flexes 
  
var nflextexcoord: int 
              
# number of vertices with texture coordinates 
  
var nmesh: int 
                      
# number of meshes 
  
var nmeshvert: int 
                  
# number of vertices in all meshes 
  
var nmeshnormal: int 
                
# number of normals in all meshes 
  
var nmeshtexcoord: int 
              
# number of texcoords in all meshes 
  
var nmeshface: int 
                  
# number of triangular faces in all meshes 
  
var nmeshgraph: int 
                 
# number of ints in mesh auxiliary data 
  
var nskin: int 
                      
# number of skins 
  
var nskinvert: int 
                  
# number of vertices in all skins 
  
var nskintexvert: int 
               
# number of vertiex with texcoords in all skins 
  
var nskinface: int 
                  
# number of triangular faces in all skins 
  
var nskinbone: int 
                  
# number of bones in all skins 
  
var nskinbonevert: int 
              
# number of vertices in all skin bones 
  
var nhfield: int 
                    
# number of heightfields 
  
var nhfielddata: int 
                
# number of data points in all heightfields 
  
var ntex: int 
                       
# number of textures 
  
var ntexdata: int 
                   
# number of bytes in texture rgb data 
  
var nmat: int 
                       
# number of materials 
  
var npair: int 
                      
# number of predefined geom pairs 
  
var nexclude: int 
                   
# number of excluded geom pairs 
  
var neq: int 
                        
# number of equality constraints 
  
var ntendon: int 
                    
# number of tendons 
  
var nwrap: int 
                      
# number of wrap objects in all tendon paths 
  
var nsensor: int 
                    
# number of sensors 
  
var nnumeric: int 
                   
# number of numeric custom fields 
  
var nnumericdata: int 
               
# number of mjtNums in all numeric fields 
  
var ntext: int 
                      
# number of text custom fields 
  
var ntextdata: int 
                  
# number of mjtBytes in all text fields 
  
var ntuple: int 
                     
# number of tuple custom fields 
  
var ntupledata: int 
                 
# number of objects in all tuple fields 
  
var nkey: int 
                       
# number of keyframes 
  
var nmocap: int 
                     
# number of mocap bodies 
  
var nplugin: int 
                    
# number of plugin instances 
  
var npluginattr: int 
                
# number of chars in all plugin config attributes 
  
var nuser_body: int 
                 
# number of mjtNums in body_user 
  
var nuser_jnt: int 
                  
# number of mjtNums in jnt_user 
  
var nuser_geom: int 
                 
# number of mjtNums in geom_user 
  
var nuser_site: int 
                 
# number of mjtNums in site_user 
  
var nuser_cam: int 
                  
# number of mjtNums in cam_user 
  
var nuser_tendon: int 
               
# number of mjtNums in tendon_user 
  
var nuser_actuator: int 
             
# number of mjtNums in actuator_user 
  
var nuser_sensor: int 
               
# number of mjtNums in sensor_user 
  
var nnames: int 
                     
# number of chars in all names 
  
var nnames_map: int 
                 
# number of slots in the names hash map 
  
var npaths: int 
                     
# number of chars in all paths 
 
  
# sizes set after mjModel construction (only affect mjData) 
  
var nM: int 
                         
# number of non-zeros in sparse inertia matrix 
  
var nB: int 
                         
# number of non-zeros in sparse body-dof matrix 
  
var nC: int 
                         
# number of non-zeros in sparse reduced dof-dof matrix 
  
var nD: int 
                         
# number of non-zeros in sparse dof-dof matrix 
  
var ntree: int 
                      
# number of kinematic trees under world body 
  
var ngravcomp: int 
                  
# number of bodies with nonzero gravcomp 
  
var nemax: int 
                      
# number of potential equality-constraint rows 
  
var njmax: int 
                      
# number of available rows in constraint Jacobian 
  
var nconmax: int 
                    
# number of potential contacts in contact list 
  
var nuserdata: int 
                  
# number of mjtNums reserved for the user 
  
var nsensordata: int 
                
# number of mjtNums in sensor data vector 
  
var npluginstate: int 
               
# number of mjtNums in plugin state vector 
 
  
var narena: size_t 
                  
# number of bytes in the mjData arena (inclusive of stack) 
  
var nbuffer: size_t 
                 
# number of bytes in buffer 
 
  
# ------------------------------- options and statistics 
 
  
var opt: mjOption 
                   
# physics options 
  
var vis: mjVisual 
                   
# visualization options 
  
var stat: mjStatistic 
               
# model statistics 
 
  
# ------------------------------- buffers 
 
  
# main buffer 
  
var buffer: void* 
               
# main buffer ;  all pointers point in it    (nbuffer) 
 
  
# default generalized coordinates 
  
var qpos0: mjtNum* 
                
# qpos values at default pose              (nq x 1) 
  
var qpos_spring: mjtNum* 
          
# reference pose for springs               (nq x 1) 
 
  
# bodies 
  
var body_parentid: int* 
        
# id of body's parent                      (nbody x 1) 
  
var body_rootid: int* 
          
# id of root above body                    (nbody x 1) 
  
var body_weldid: int* 
          
# id of body that this body is welded to   (nbody x 1) 
  
var body_mocapid: int* 
         
# id of mocap data ;  -1: none               (nbody x 1) 
  
var body_jntnum: int* 
          
# number of joints for this body           (nbody x 1) 
  
var body_jntadr: int* 
          
# start addr of joints ;  -1: no joints      (nbody x 1) 
  
var body_dofnum: int* 
          
# number of motion degrees of freedom      (nbody x 1) 
  
var body_dofadr: int* 
          
# start addr of dofs ;  -1: no dofs          (nbody x 1) 
  
var body_treeid: int* 
          
# id of body's kinematic tree ;  -1: static  (nbody x 1) 
  
var body_geomnum: int* 
         
# number of geoms                          (nbody x 1) 
  
var body_geomadr: int* 
         
# start addr of geoms ;  -1: no geoms        (nbody x 1) 
  
var body_simple: mjtByte* 
          
# 1: diag M ;  2: diag M ,  sliders only       (nbody x 1) 
  
var body_sameframe: mjtByte* 
       
# same frame as inertia (mjtSameframe)     (nbody x 1) 
  
var body_pos: mjtNum* 
             
# position offset rel. to parent body      (nbody x 3) 
  
var body_quat: mjtNum* 
            
# orientation offset rel. to parent body   (nbody x 4) 
  
var body_ipos: mjtNum* 
            
# local position of center of mass         (nbody x 3) 
  
var body_iquat: mjtNum* 
           
# local orientation of inertia ellipsoid   (nbody x 4) 
  
var body_mass: mjtNum* 
            
# mass                                     (nbody x 1) 
  
var body_subtreemass: mjtNum* 
     
# mass of subtree starting at this body    (nbody x 1) 
  
var body_inertia: mjtNum* 
         
# diagonal inertia in ipos/iquat frame     (nbody x 3) 
  
var body_invweight0: mjtNum* 
      
# mean inv inert in qpos0 (trn ,  rot)       (nbody x 2) 
  
var body_gravcomp: mjtNum* 
        
# antigravity force ,  units of body weight  (nbody x 1) 
  
var body_margin: mjtNum* 
          
# MAX over all geom margins                (nbody x 1) 
  
var body_user: mjtNum* 
            
# user data                                (nbody x nuser_body) 
  
var body_plugin: int* 
          
# plugin instance id ;  -1: not in use       (nbody x 1) 
  
var body_contype: int* 
         
# OR over all geom contypes                (nbody x 1) 
  
var body_conaffinity: int* 
     
# OR over all geom conaffinities           (nbody x 1) 
  
var body_bvhadr: int* 
          
# address of bvh root                      (nbody x 1) 
  
var body_bvhnum: int* 
          
# number of bounding volumes               (nbody x 1) 
 
  
# bounding volume hierarchy 
  
var bvh_depth: int* 
            
# depth in the bounding volume hierarchy   (nbvh x 1) 
  
var bvh_child: int* 
            
# left and right children in tree          (nbvh x 2) 
  
var bvh_nodeid: int* 
           
# geom or elem id of node ;  -1: non-leaf    (nbvh x 1) 
  
var bvh_aabb: mjtNum* 
             
# local bounding box (center ,  size)        (nbvhstatic x 6) 
 
  
# joints 
  
var jnt_type: int* 
             
# type of joint (mjtJoint)                 (njnt x 1) 
  
var jnt_qposadr: int* 
          
# start addr in 'qpos' for joint's data    (njnt x 1) 
  
var jnt_dofadr: int* 
           
# start addr in 'qvel' for joint's data    (njnt x 1) 
  
var jnt_bodyid: int* 
           
# id of joint's body                       (njnt x 1) 
  
var jnt_group: int* 
            
# group for visibility                     (njnt x 1) 
  
var jnt_limited: mjtByte* 
          
# does joint have limits                   (njnt x 1) 
  
var jnt_actfrclimited: mjtByte* 
    
# does joint have actuator force limits    (njnt x 1) 
  
var jnt_actgravcomp: mjtByte* 
      
# is gravcomp force applied via actuators  (njnt x 1) 
  
var jnt_solref: mjtNum* 
           
# constraint solver reference: limit       (njnt x mjNREF) 
  
var jnt_solimp: mjtNum* 
           
# constraint solver impedance: limit       (njnt x mjNIMP) 
  
var jnt_pos: mjtNum* 
              
# local anchor position                    (njnt x 3) 
  
var jnt_axis: mjtNum* 
             
# local joint axis                         (njnt x 3) 
  
var jnt_stiffness: mjtNum* 
        
# stiffness coefficient                    (njnt x 1) 
  
var jnt_range: mjtNum* 
            
# joint limits                             (njnt x 2) 
  
var jnt_actfrcrange: mjtNum* 
      
# range of total actuator force            (njnt x 2) 
  
var jnt_margin: mjtNum* 
           
# min distance for limit detection         (njnt x 1) 
  
var jnt_user: mjtNum* 
             
# user data                                (njnt x nuser_jnt) 
 
  
# dofs 
  
var dof_bodyid: int* 
           
# id of dof's body                         (nv x 1) 
  
var dof_jntid: int* 
            
# id of dof's joint                        (nv x 1) 
  
var dof_parentid: int* 
         
# id of dof's parent ;  -1: none             (nv x 1) 
  
var dof_treeid: int* 
           
# id of dof's kinematic tree               (nv x 1) 
  
var dof_Madr: int* 
             
# dof address in M-diagonal                (nv x 1) 
  
var dof_simplenum: int* 
        
# number of consecutive simple dofs        (nv x 1) 
  
var dof_solref: mjtNum* 
           
# constraint solver reference:frictionloss (nv x mjNREF) 
  
var dof_solimp: mjtNum* 
           
# constraint solver impedance:frictionloss (nv x mjNIMP) 
  
var dof_frictionloss: mjtNum* 
     
# dof friction loss                        (nv x 1) 
  
var dof_armature: mjtNum* 
         
# dof armature inertia/mass                (nv x 1) 
  
var dof_damping: mjtNum* 
          
# damping coefficient                      (nv x 1) 
  
var dof_invweight0: mjtNum* 
       
# diag. inverse inertia in qpos0           (nv x 1) 
  
var dof_M0: mjtNum* 
               
# diag. inertia in qpos0                   (nv x 1) 
 
  
# geoms 
  
var geom_type: int* 
            
# geometric type (mjtGeom)                 (ngeom x 1) 
  
var geom_contype: int* 
         
# geom contact type                        (ngeom x 1) 
  
var geom_conaffinity: int* 
     
# geom contact affinity                    (ngeom x 1) 
  
var geom_condim: int* 
          
# contact dimensionality (1 ,  3 ,  4 ,  6)      (ngeom x 1) 
  
var geom_bodyid: int* 
          
# id of geom's body                        (ngeom x 1) 
  
var geom_dataid: int* 
          
# id of geom's mesh/hfield ;  -1: none       (ngeom x 1) 
  
var geom_matid: int* 
           
# material id for rendering ;  -1: none      (ngeom x 1) 
  
var geom_group: int* 
           
# group for visibility                     (ngeom x 1) 
  
var geom_priority: int* 
        
# geom contact priority                    (ngeom x 1) 
  
var geom_plugin: int* 
          
# plugin instance id ;  -1: not in use       (ngeom x 1) 
  
var geom_sameframe: mjtByte* 
       
# same frame as body (mjtSameframe)        (ngeom x 1) 
  
var geom_solmix: mjtNum* 
          
# mixing coef for solref/imp in geom pair  (ngeom x 1) 
  
var geom_solref: mjtNum* 
          
# constraint solver reference: contact     (ngeom x mjNREF) 
  
var geom_solimp: mjtNum* 
          
# constraint solver impedance: contact     (ngeom x mjNIMP) 
  
var geom_size: mjtNum* 
            
# geom-specific size parameters            (ngeom x 3) 
  
var geom_aabb: mjtNum* 
            
# bounding box ,  (center ,  size)             (ngeom x 6) 
  
var geom_rbound: mjtNum* 
          
# radius of bounding sphere                (ngeom x 1) 
  
var geom_pos: mjtNum* 
             
# local position offset rel. to body       (ngeom x 3) 
  
var geom_quat: mjtNum* 
            
# local orientation offset rel. to body    (ngeom x 4) 
  
var geom_friction: mjtNum* 
        
# friction for (slide ,  spin ,  roll)         (ngeom x 3) 
  
var geom_margin: mjtNum* 
          
# detect contact if dist<margin            (ngeom x 1) 
  
var geom_gap: mjtNum* 
             
# include in solver if dist<margin-gap     (ngeom x 1) 
  
var geom_fluid: mjtNum* 
           
# fluid interaction parameters             (ngeom x mjNFLUID) 
  
var geom_user: mjtNum* 
            
# user data                                (ngeom x nuser_geom) 
  
var geom_rgba: float* 
            
# rgba when material is omitted            (ngeom x 4) 
 
  
# sites 
  
var site_type: int* 
            
# geom type for rendering (mjtGeom)        (nsite x 1) 
  
var site_bodyid: int* 
          
# id of site's body                        (nsite x 1) 
  
var site_matid: int* 
           
# material id for rendering ;  -1: none      (nsite x 1) 
  
var site_group: int* 
           
# group for visibility                     (nsite x 1) 
  
var site_sameframe: mjtByte* 
       
# same frame as body (mjtSameframe)        (nsite x 1) 
  
var site_size: mjtNum* 
            
# geom size for rendering                  (nsite x 3) 
  
var site_pos: mjtNum* 
             
# local position offset rel. to body       (nsite x 3) 
  
var site_quat: mjtNum* 
            
# local orientation offset rel. to body    (nsite x 4) 
  
var site_user: mjtNum* 
            
# user data                                (nsite x nuser_site) 
  
var site_rgba: float* 
            
# rgba when material is omitted            (nsite x 4) 
 
  
# cameras 
  
var cam_mode: int* 
             
# camera tracking mode (mjtCamLight)       (ncam x 1) 
  
var cam_bodyid: int* 
           
# id of camera's body                      (ncam x 1) 
  
var cam_targetbodyid: int* 
     
# id of targeted body ;  -1: none            (ncam x 1) 
  
var cam_pos: mjtNum* 
              
# position rel. to body frame              (ncam x 3) 
  
var cam_quat: mjtNum* 
             
# orientation rel. to body frame           (ncam x 4) 
  
var cam_poscom0: mjtNum* 
          
# global position rel. to sub-com in qpos0 (ncam x 3) 
  
var cam_pos0: mjtNum* 
             
# global position rel. to body in qpos0    (ncam x 3) 
  
var cam_mat0: mjtNum* 
             
# global orientation in qpos0              (ncam x 9) 
  
var cam_orthographic: int* 
     
# orthographic camera ;  0: no ,  1: yes       (ncam x 1) 
  
var cam_fovy: mjtNum* 
             
# y field-of-view (ortho ? len : deg)      (ncam x 1) 
  
var cam_ipd: mjtNum* 
              
# inter-pupilary distance                  (ncam x 1) 
  
var cam_resolution: int* 
       
# resolution: pixels [width ,  height]       (ncam x 2) 
  
var cam_sensorsize: float* 
       
# sensor size: length [width ,  height]      (ncam x 2) 
  
var cam_intrinsic: float* 
        
# [focal length ;  principal point]          (ncam x 4) 
  
var cam_user: mjtNum* 
             
# user data                                (ncam x nuser_cam) 
 
  
# lights 
  
var light_mode: int* 
           
# light tracking mode (mjtCamLight)        (nlight x 1) 
  
var light_bodyid: int* 
         
# id of light's body                       (nlight x 1) 
  
var light_targetbodyid: int* 
   
# id of targeted body ;  -1: none            (nlight x 1) 
  
var light_directional: mjtByte* 
    
# directional light                        (nlight x 1) 
  
var light_castshadow: mjtByte* 
     
# does light cast shadows                  (nlight x 1) 
  
var light_bulbradius: float* 
     
# light radius for soft shadows            (nlight x 1) 
  
var light_active: mjtByte* 
         
# is light on                              (nlight x 1) 
  
var light_pos: mjtNum* 
            
# position rel. to body frame              (nlight x 3) 
  
var light_dir: mjtNum* 
            
# direction rel. to body frame             (nlight x 3) 
  
var light_poscom0: mjtNum* 
        
# global position rel. to sub-com in qpos0 (nlight x 3) 
  
var light_pos0: mjtNum* 
           
# global position rel. to body in qpos0    (nlight x 3) 
  
var light_dir0: mjtNum* 
           
# global direction in qpos0                (nlight x 3) 
  
var light_attenuation: float* 
    
# OpenGL attenuation (quadratic model)     (nlight x 3) 
  
var light_cutoff: float* 
         
# OpenGL cutoff                            (nlight x 1) 
  
var light_exponent: float* 
       
# OpenGL exponent                          (nlight x 1) 
  
var light_ambient: float* 
        
# ambient rgb (alpha=1)                    (nlight x 3) 
  
var light_diffuse: float* 
        
# diffuse rgb (alpha=1)                    (nlight x 3) 
  
var light_specular: float* 
       
# specular rgb (alpha=1)                   (nlight x 3) 
 
  
# flexes: contact properties 
  
var flex_contype: int* 
         
# flex contact type                        (nflex x 1) 
  
var flex_conaffinity: int* 
     
# flex contact affinity                    (nflex x 1) 
  
var flex_condim: int* 
          
# contact dimensionality (1 ,  3 ,  4 ,  6)      (nflex x 1) 
  
var flex_priority: int* 
        
# flex contact priority                    (nflex x 1) 
  
var flex_solmix: mjtNum* 
          
# mix coef for solref/imp in contact pair  (nflex x 1) 
  
var flex_solref: mjtNum* 
          
# constraint solver reference: contact     (nflex x mjNREF) 
  
var flex_solimp: mjtNum* 
          
# constraint solver impedance: contact     (nflex x mjNIMP) 
  
var flex_friction: mjtNum* 
        
# friction for (slide ,  spin ,  roll)         (nflex x 3) 
  
var flex_margin: mjtNum* 
          
# detect contact if dist<margin            (nflex x 1) 
  
var flex_gap: mjtNum* 
             
# include in solver if dist<margin-gap     (nflex x 1) 
  
var flex_internal: mjtByte* 
        
# internal flex collision enabled          (nflex x 1) 
  
var flex_selfcollide: int* 
     
# self collision mode (mjtFlexSelf)        (nflex x 1) 
  
var flex_activelayers: int* 
    
# number of active element layers ,  3D only (nflex x 1) 
 
  
# flexes: other properties 
  
var flex_dim: int* 
             
# 1: lines ,  2: triangles ,  3: tetrahedra    (nflex x 1) 
  
var flex_matid: int* 
           
# material id for rendering                (nflex x 1) 
  
var flex_group: int* 
           
# group for visibility                     (nflex x 1) 
  
var flex_vertadr: int* 
         
# first vertex address                     (nflex x 1) 
  
var flex_vertnum: int* 
         
# number of vertices                       (nflex x 1) 
  
var flex_edgeadr: int* 
         
# first edge address                       (nflex x 1) 
  
var flex_edgenum: int* 
         
# number of edges                          (nflex x 1) 
  
var flex_elemadr: int* 
         
# first element address                    (nflex x 1) 
  
var flex_elemnum: int* 
         
# number of elements                       (nflex x 1) 
  
var flex_elemdataadr: int* 
     
# first element vertex id address          (nflex x 1) 
  
var flex_elemedgeadr: int* 
     
# first element edge id address            (nflex x 1) 
  
var flex_shellnum: int* 
        
# number of shells                         (nflex x 1) 
  
var flex_shelldataadr: int* 
    
# first shell data address                 (nflex x 1) 
  
var flex_evpairadr: int* 
       
# first evpair address                     (nflex x 1) 
  
var flex_evpairnum: int* 
       
# number of evpairs                        (nflex x 1) 
  
var flex_texcoordadr: int* 
     
# address in flex_texcoord ;  -1: none       (nflex x 1) 
  
var flex_vertbodyid: int* 
      
# vertex body ids                          (nflexvert x 1) 
  
var flex_edge: int* 
            
# edge vertex ids (2 per edge)             (nflexedge x 2) 
  
var flex_elem: int* 
            
# element vertex ids (dim+1 per elem)      (nflexelemdata x 1) 
  
var flex_elemedge: int* 
        
# element edge ids                         (nflexelemedge x 1) 
  
var flex_elemlayer: int* 
       
# element distance from surface ,  3D only   (nflexelem x 1) 
  
var flex_shell: int* 
           
# shell fragment vertex ids (dim per frag) (nflexshelldata x 1) 
  
var flex_evpair: int* 
          
# (element ,  vertex) collision pairs        (nflexevpair x 2) 
  
var flex_vert: mjtNum* 
            
# vertex positions in local body frames    (nflexvert x 3) 
  
var flex_xvert0: mjtNum* 
          
# Cartesian vertex positions in qpos0      (nflexvert x 3) 
  
var flexedge_length0: mjtNum* 
     
# edge lengths in qpos0                    (nflexedge x 1) 
  
var flexedge_invweight0: mjtNum* 
  
# edge inv. weight in qpos0                (nflexedge x 1) 
  
var flex_radius: mjtNum* 
          
# radius around primitive element          (nflex x 1) 
  
var flex_stiffness: mjtNum* 
       
# finite element stiffness matrix          (nflexelem x 21) 
  
var flex_damping: mjtNum* 
         
# Rayleigh's damping coefficient           (nflex x 1) 
  
var flex_edgestiffness: mjtNum* 
   
# edge stiffness                           (nflex x 1) 
  
var flex_edgedamping: mjtNum* 
     
# edge damping                             (nflex x 1) 
  
var flex_edgeequality: mjtByte* 
    
# is edge equality constraint defined      (nflex x 1) 
  
var flex_rigid: mjtByte* 
           
# are all verices in the same body         (nflex x 1) 
  
var flexedge_rigid: mjtByte* 
       
# are both edge vertices in same body      (nflexedge x 1) 
  
var flex_centered: mjtByte* 
        
# are all vertex coordinates (0 , 0 , 0)       (nflex x 1) 
  
var flex_flatskin: mjtByte* 
        
# render flex skin with flat shading       (nflex x 1) 
  
var flex_bvhadr: int* 
          
# address of bvh root ;  -1: no bvh          (nflex x 1) 
  
var flex_bvhnum: int* 
          
# number of bounding volumes               (nflex x 1) 
  
var flex_rgba: float* 
            
# rgba when material is omitted            (nflex x 4) 
  
var flex_texcoord: float* 
        
# vertex texture coordinates               (nflextexcoord x 2) 
 
  
# meshes 
  
var mesh_vertadr: int* 
         
# first vertex address                     (nmesh x 1) 
  
var mesh_vertnum: int* 
         
# number of vertices                       (nmesh x 1) 
  
var mesh_faceadr: int* 
         
# first face address                       (nmesh x 1) 
  
var mesh_facenum: int* 
         
# number of faces                          (nmesh x 1) 
  
var mesh_bvhadr: int* 
          
# address of bvh root                      (nmesh x 1) 
  
var mesh_bvhnum: int* 
          
# number of bvh                            (nmesh x 1) 
  
var mesh_normaladr: int* 
       
# first normal address                     (nmesh x 1) 
  
var mesh_normalnum: int* 
       
# number of normals                        (nmesh x 1) 
  
var mesh_texcoordadr: int* 
     
# texcoord data address ;  -1: no texcoord   (nmesh x 1) 
  
var mesh_texcoordnum: int* 
     
# number of texcoord                       (nmesh x 1) 
  
var mesh_graphadr: int* 
        
# graph data address ;  -1: no graph         (nmesh x 1) 
  
var mesh_vert: float* 
            
# vertex positions for all meshes          (nmeshvert x 3) 
  
var mesh_normal: float* 
          
# normals for all meshes                   (nmeshnormal x 3) 
  
var mesh_texcoord: float* 
        
# vertex texcoords for all meshes          (nmeshtexcoord x 2) 
  
var mesh_face: int* 
            
# vertex face data                         (nmeshface x 3) 
  
var mesh_facenormal: int* 
      
# normal face data                         (nmeshface x 3) 
  
var mesh_facetexcoord: int* 
    
# texture face data                        (nmeshface x 3) 
  
var mesh_graph: int* 
           
# convex graph data                        (nmeshgraph x 1) 
  
var mesh_scale: mjtNum* 
           
# scaling applied to asset vertices        (nmesh x 3) 
  
var mesh_pos: mjtNum* 
             
# translation applied to asset vertices    (nmesh x 3) 
  
var mesh_quat: mjtNum* 
            
# rotation applied to asset vertices       (nmesh x 4) 
  
var mesh_pathadr: int* 
         
# address of asset path for mesh ;  -1: none (nmesh x 1) 
 
  
# skins 
  
var skin_matid: int* 
           
# skin material id ;  -1: none               (nskin x 1) 
  
var skin_group: int* 
           
# group for visibility                     (nskin x 1) 
  
var skin_rgba: float* 
            
# skin rgba                                (nskin x 4) 
  
var skin_inflate: float* 
         
# inflate skin in normal direction         (nskin x 1) 
  
var skin_vertadr: int* 
         
# first vertex address                     (nskin x 1) 
  
var skin_vertnum: int* 
         
# number of vertices                       (nskin x 1) 
  
var skin_texcoordadr: int* 
     
# texcoord data address ;  -1: no texcoord   (nskin x 1) 
  
var skin_faceadr: int* 
         
# first face address                       (nskin x 1) 
  
var skin_facenum: int* 
         
# number of faces                          (nskin x 1) 
  
var skin_boneadr: int* 
         
# first bone in skin                       (nskin x 1) 
  
var skin_bonenum: int* 
         
# number of bones in skin                  (nskin x 1) 
  
var skin_vert: float* 
            
# vertex positions for all skin meshes     (nskinvert x 3) 
  
var skin_texcoord: float* 
        
# vertex texcoords for all skin meshes     (nskintexvert x 2) 
  
var skin_face: int* 
            
# triangle faces for all skin meshes       (nskinface x 3) 
  
var skin_bonevertadr: int* 
     
# first vertex in each bone                (nskinbone x 1) 
  
var skin_bonevertnum: int* 
     
# number of vertices in each bone          (nskinbone x 1) 
  
var skin_bonebindpos: float* 
     
# bind pos of each bone                    (nskinbone x 3) 
  
var skin_bonebindquat: float* 
    
# bind quat of each bone                   (nskinbone x 4) 
  
var skin_bonebodyid: int* 
      
# body id of each bone                     (nskinbone x 1) 
  
var skin_bonevertid: int* 
      
# mesh ids of vertices in each bone        (nskinbonevert x 1) 
  
var skin_bonevertweight: float* 
  
# weights of vertices in each bone         (nskinbonevert x 1) 
  
var skin_pathadr: int* 
         
# address of asset path for skin ;  -1: none (nskin x 1) 
 
  
# height fields 
  
var hfield_size: mjtNum* 
          
# (x ,  y ,  z_top ,  z_bottom)                  (nhfield x 4) 
  
var hfield_nrow: int* 
          
# number of rows in grid                   (nhfield x 1) 
  
var hfield_ncol: int* 
          
# number of columns in grid                (nhfield x 1) 
  
var hfield_adr: int* 
           
# address in hfield_data                   (nhfield x 1) 
  
var hfield_data: float* 
          
# elevation data                           (nhfielddata x 1) 
  
var hfield_pathadr: int* 
       
# address of hfield asset path ;  -1: none   (nhfield x 1) 
 
  
# textures 
  
var tex_type: int* 
             
# texture type (mjtTexture)                (ntex x 1) 
  
var tex_height: int* 
           
# number of rows in texture image          (ntex x 1) 
  
var tex_width: int* 
            
# number of columns in texture image       (ntex x 1) 
  
var tex_nchannel: int* 
         
# number of channels in texture image      (ntex x 1) 
  
var tex_adr: int* 
              
# start address in tex_data                (ntex x 1) 
  
var tex_data: mjtByte* 
             
# pixel values                             (ntexdata x 1) 
  
var tex_pathadr: int* 
          
# address of texture asset path ;  -1: none  (ntex x 1) 
 
  
# materials 
  
var mat_texid: int* 
            
# indices of textures ;  -1: none            (nmat x mjNTEXROLE) 
  
var mat_texuniform: mjtByte* 
       
# make texture cube uniform                (nmat x 1) 
  
var mat_texrepeat: float* 
        
# texture repetition for 2d mapping        (nmat x 2) 
  
var mat_emission: float* 
         
# emission (x rgb)                         (nmat x 1) 
  
var mat_specular: float* 
         
# specular (x white)                       (nmat x 1) 
  
var mat_shininess: float* 
        
# shininess coef                           (nmat x 1) 
  
var mat_reflectance: float* 
      
# reflectance (0: disable)                 (nmat x 1) 
  
var mat_metallic: float* 
         
# metallic coef                            (nmat x 1) 
  
var mat_roughness: float* 
        
# roughness coef                           (nmat x 1) 
  
var mat_rgba: float* 
             
# rgba                                     (nmat x 4) 
 
  
# predefined geom pairs for collision detection ;  has precedence over exclude 
  
var pair_dim: int* 
             
# contact dimensionality                   (npair x 1) 
  
var pair_geom1: int* 
           
# id of geom1                              (npair x 1) 
  
var pair_geom2: int* 
           
# id of geom2                              (npair x 1) 
  
var pair_signature: int* 
       
# body1 << 16 + body2                      (npair x 1) 
  
var pair_solref: mjtNum* 
          
# solver reference: contact normal         (npair x mjNREF) 
  
var pair_solreffriction: mjtNum* 
  
# solver reference: contact friction       (npair x mjNREF) 
  
var pair_solimp: mjtNum* 
          
# solver impedance: contact                (npair x mjNIMP) 
  
var pair_margin: mjtNum* 
          
# detect contact if dist<margin            (npair x 1) 
  
var pair_gap: mjtNum* 
             
# include in solver if dist<margin-gap     (npair x 1) 
  
var pair_friction: mjtNum* 
        
# tangent1 ,  2 ,  spin ,  roll1 ,  2              (npair x 5) 
 
  
# excluded body pairs for collision detection 
  
var exclude_signature: int* 
    
# body1 << 16 + body2                      (nexclude x 1) 
 
  
# equality constraints 
  
var eq_type: int* 
              
# constraint type (mjtEq)                  (neq x 1) 
  
var eq_obj1id: int* 
            
# id of object 1                           (neq x 1) 
  
var eq_obj2id: int* 
            
# id of object 2                           (neq x 1) 
  
var eq_objtype: int* 
           
# type of both objects (mjtObj)            (neq x 1) 
  
var eq_active0: mjtByte* 
           
# initial enable/disable constraint state  (neq x 1) 
  
var eq_solref: mjtNum* 
            
# constraint solver reference              (neq x mjNREF) 
  
var eq_solimp: mjtNum* 
            
# constraint solver impedance              (neq x mjNIMP) 
  
var eq_data: mjtNum* 
              
# numeric data for constraint              (neq x mjNEQDATA) 
 
  
# tendons 
  
var tendon_adr: int* 
           
# address of first object in tendon's path (ntendon x 1) 
  
var tendon_num: int* 
           
# number of objects in tendon's path       (ntendon x 1) 
  
var tendon_matid: int* 
         
# material id for rendering                (ntendon x 1) 
  
var tendon_group: int* 
         
# group for visibility                     (ntendon x 1) 
  
var tendon_limited: mjtByte* 
       
# does tendon have length limits           (ntendon x 1) 
  
var tendon_width: mjtNum* 
         
# width for rendering                      (ntendon x 1) 
  
var tendon_solref_lim: mjtNum* 
    
# constraint solver reference: limit       (ntendon x mjNREF) 
  
var tendon_solimp_lim: mjtNum* 
    
# constraint solver impedance: limit       (ntendon x mjNIMP) 
  
var tendon_solref_fri: mjtNum* 
    
# constraint solver reference: friction    (ntendon x mjNREF) 
  
var tendon_solimp_fri: mjtNum* 
    
# constraint solver impedance: friction    (ntendon x mjNIMP) 
  
var tendon_range: mjtNum* 
         
# tendon length limits                     (ntendon x 2) 
  
var tendon_margin: mjtNum* 
        
# min distance for limit detection         (ntendon x 1) 
  
var tendon_stiffness: mjtNum* 
     
# stiffness coefficient                    (ntendon x 1) 
  
var tendon_damping: mjtNum* 
       
# damping coefficient                      (ntendon x 1) 
  
var tendon_frictionloss: mjtNum* 
  
# loss due to friction                     (ntendon x 1) 
  
var tendon_lengthspring: mjtNum* 
  
# spring resting length range              (ntendon x 2) 
  
var tendon_length0: mjtNum* 
       
# tendon length in qpos0                   (ntendon x 1) 
  
var tendon_invweight0: mjtNum* 
    
# inv. weight in qpos0                     (ntendon x 1) 
  
var tendon_user: mjtNum* 
          
# user data                                (ntendon x nuser_tendon) 
  
var tendon_rgba: float* 
          
# rgba when material is omitted            (ntendon x 4) 
 
  
# list of all wrap objects in tendon paths 
  
var wrap_type: int* 
            
# wrap object type (mjtWrap)               (nwrap x 1) 
  
var wrap_objid: int* 
           
# object id: geom ,  site ,  joint             (nwrap x 1) 
  
var wrap_prm: mjtNum* 
             
# divisor ,  joint coef ,  or site id          (nwrap x 1) 
 
  
# actuators 
  
var actuator_trntype: int* 
     
# transmission type (mjtTrn)               (nu x 1) 
  
var actuator_dyntype: int* 
     
# dynamics type (mjtDyn)                   (nu x 1) 
  
var actuator_gaintype: int* 
    
# gain type (mjtGain)                      (nu x 1) 
  
var actuator_biastype: int* 
    
# bias type (mjtBias)                      (nu x 1) 
  
var actuator_trnid: int* 
       
# transmission id: joint ,  tendon ,  site     (nu x 2) 
  
var actuator_actadr: int* 
      
# first activation address ;  -1: stateless  (nu x 1) 
  
var actuator_actnum: int* 
      
# number of activation variables           (nu x 1) 
  
var actuator_group: int* 
       
# group for visibility                     (nu x 1) 
  
var actuator_ctrllimited: mjtByte* 
 
# is control limited                       (nu x 1) 
  
var actuator_forcelimited: mjtByte* 
# is force limited                         (nu x 1) 
  
var actuator_actlimited: mjtByte* 
  
# is activation limited                    (nu x 1) 
  
var actuator_dynprm: mjtNum* 
      
# dynamics parameters                      (nu x mjNDYN) 
  
var actuator_gainprm: mjtNum* 
     
# gain parameters                          (nu x mjNGAIN) 
  
var actuator_biasprm: mjtNum* 
     
# bias parameters                          (nu x mjNBIAS) 
  
var actuator_actearly: mjtByte* 
    
# step activation before force             (nu x 1) 
  
var actuator_ctrlrange: mjtNum* 
   
# range of controls                        (nu x 2) 
  
var actuator_forcerange: mjtNum* 
  
# range of forces                          (nu x 2) 
  
var actuator_actrange: mjtNum* 
    
# range of activations                     (nu x 2) 
  
var actuator_gear: mjtNum* 
        
# scale length and transmitted force       (nu x 6) 
  
var actuator_cranklength: mjtNum* 
 
# crank length for slider-crank            (nu x 1) 
  
var actuator_acc0: mjtNum* 
        
# acceleration from unit force in qpos0    (nu x 1) 
  
var actuator_length0: mjtNum* 
     
# actuator length in qpos0                 (nu x 1) 
  
var actuator_lengthrange: mjtNum* 
 
# feasible actuator length range           (nu x 2) 
  
var actuator_user: mjtNum* 
        
# user data                                (nu x nuser_actuator) 
  
var actuator_plugin: int* 
      
# plugin instance id ;  -1: not a plugin     (nu x 1) 
 
  
# sensors 
  
var sensor_type: int* 
          
# sensor type (mjtSensor)                  (nsensor x 1) 
  
var sensor_datatype: int* 
      
# numeric data type (mjtDataType)          (nsensor x 1) 
  
var sensor_needstage: int* 
     
# required compute stage (mjtStage)        (nsensor x 1) 
  
var sensor_objtype: int* 
       
# type of sensorized object (mjtObj)       (nsensor x 1) 
  
var sensor_objid: int* 
         
# id of sensorized object                  (nsensor x 1) 
  
var sensor_reftype: int* 
       
# type of reference frame (mjtObj)         (nsensor x 1) 
  
var sensor_refid: int* 
         
# id of reference frame ;  -1: global frame  (nsensor x 1) 
  
var sensor_dim: int* 
           
# number of scalar outputs                 (nsensor x 1) 
  
var sensor_adr: int* 
           
# address in sensor array                  (nsensor x 1) 
  
var sensor_cutoff: mjtNum* 
        
# cutoff for real and positive ;  0: ignore  (nsensor x 1) 
  
var sensor_noise: mjtNum* 
         
# noise standard deviation                 (nsensor x 1) 
  
var sensor_user: mjtNum* 
          
# user data                                (nsensor x nuser_sensor) 
  
var sensor_plugin: int* 
        
# plugin instance id ;  -1: not a plugin     (nsensor x 1) 
 
  
# plugin instances 
  
var plugin: int* 
               
# globally registered plugin slot number   (nplugin x 1) 
  
var plugin_stateadr: int* 
      
# address in the plugin state array        (nplugin x 1) 
  
var plugin_statenum: int* 
      
# number of states in the plugin instance  (nplugin x 1) 
  
var plugin_attr: char* 
          
# config attributes of plugin instances    (npluginattr x 1) 
  
var plugin_attradr: int* 
       
# address to each instance's config attrib (nplugin x 1) 
 
  
# custom numeric fields 
  
var numeric_adr: int* 
          
# address of field in numeric_data         (nnumeric x 1) 
  
var numeric_size: int* 
         
# size of numeric field                    (nnumeric x 1) 
  
var numeric_data: mjtNum* 
         
# array of all numeric fields              (nnumericdata x 1) 
 
  
# custom text fields 
  
var text_adr: int* 
             
# address of text in text_data             (ntext x 1) 
  
var text_size: int* 
            
# size of text field (strlen+1)            (ntext x 1) 
  
var text_data: char* 
            
# array of all text fields (0-terminated)  (ntextdata x 1) 
 
  
# custom tuple fields 
  
var tuple_adr: int* 
            
# address of text in text_data             (ntuple x 1) 
  
var tuple_size: int* 
           
# number of objects in tuple               (ntuple x 1) 
  
var tuple_objtype: int* 
        
# array of object types in all tuples      (ntupledata x 1) 
  
var tuple_objid: int* 
          
# array of object ids in all tuples        (ntupledata x 1) 
  
var tuple_objprm: mjtNum* 
         
# array of object params in all tuples     (ntupledata x 1) 
 
  
# keyframes 
  
var key_time: mjtNum* 
             
# key time                                 (nkey x 1) 
  
var key_qpos: mjtNum* 
             
# key position                             (nkey x nq) 
  
var key_qvel: mjtNum* 
             
# key velocity                             (nkey x nv) 
  
var key_act: mjtNum* 
              
# key activation                           (nkey x na) 
  
var key_mpos: mjtNum* 
             
# key mocap position                       (nkey x nmocap*3) 
  
var key_mquat: mjtNum* 
            
# key mocap quaternion                     (nkey x nmocap*4) 
  
var key_ctrl: mjtNum* 
             
# key control                              (nkey x nu) 
 
  
# names 
  
var name_bodyadr: int* 
         
# body name pointers                       (nbody x 1) 
  
var name_jntadr: int* 
          
# joint name pointers                      (njnt x 1) 
  
var name_geomadr: int* 
         
# geom name pointers                       (ngeom x 1) 
  
var name_siteadr: int* 
         
# site name pointers                       (nsite x 1) 
  
var name_camadr: int* 
          
# camera name pointers                     (ncam x 1) 
  
var name_lightadr: int* 
        
# light name pointers                      (nlight x 1) 
  
var name_flexadr: int* 
         
# flex name pointers                       (nflex x 1) 
  
var name_meshadr: int* 
         
# mesh name pointers                       (nmesh x 1) 
  
var name_skinadr: int* 
         
# skin name pointers                       (nskin x 1) 
  
var name_hfieldadr: int* 
       
# hfield name pointers                     (nhfield x 1) 
  
var name_texadr: int* 
          
# texture name pointers                    (ntex x 1) 
  
var name_matadr: int* 
          
# material name pointers                   (nmat x 1) 
  
var name_pairadr: int* 
         
# geom pair name pointers                  (npair x 1) 
  
var name_excludeadr: int* 
      
# exclude name pointers                    (nexclude x 1) 
  
var name_eqadr: int* 
           
# equality constraint name pointers        (neq x 1) 
  
var name_tendonadr: int* 
       
# tendon name pointers                     (ntendon x 1) 
  
var name_actuatoradr: int* 
     
# actuator name pointers                   (nu x 1) 
  
var name_sensoradr: int* 
       
# sensor name pointers                     (nsensor x 1) 
  
var name_numericadr: int* 
      
# numeric name pointers                    (nnumeric x 1) 
  
var name_textadr: int* 
         
# text name pointers                       (ntext x 1) 
  
var name_tupleadr: int* 
        
# tuple name pointers                      (ntuple x 1) 
  
var name_keyadr: int* 
          
# keyframe name pointers                   (nkey x 1) 
  
var name_pluginadr: int* 
       
# plugin instance name pointers            (nplugin x 1) 
  
var names: char* 
                
# names of all objects ,  0-terminated       (nnames x 1) 
  
var names_map: int* 
            
# internal hash map of names               (nnames_map x 1) 
 
  
# paths 
  
var paths: char* 
                
# paths to assets ,  0-terminated            (npaths x 1) 
 


alias mjModel = mjModel_ 
 
 
struct mjVisual__global: 

	                       
	# global parameters 
	    
	var orthographic: int 
	             
	# is the free camera orthographic (0: no ,  1: yes) 
	    
	var fovy: float 
	                   
	# y field-of-view of free camera (orthographic ? length : degree) 
	    
	var ipd: float 
	                    
	# inter-pupilary distance for free camera 
	    
	var azimuth: float 
	                
	# initial azimuth of free camera (degrees) 
	    
	var elevation: float 
	              
	# initial elevation of free camera (degrees) 
	    
	var linewidth: float 
	              
	# line width for wireframe and ray rendering 
	    
	var glow: float 
	                   
	# glow coefficient for selected body 
	    
	var realtime: float 
	               
	# initial real-time factor (1: real time) 
	    
	var offwidth: int 
	               
	# width of offscreen buffer 
	    
	var offheight: int 
	              
	# height of offscreen buffer 
	    
	var ellipsoidinertia: int 
	       
	# geom for inertia visualization (0: box ,  1: ellipsoid) 
	    
	var bvactive: int 
	               
	# visualize active bounding volumes (0: no ,  1: yes) 
	  
struct mjVisual__quality: 

	                       
	# rendering quality 
	    
	var shadowsize: int 
	             
	# size of shadowmap texture 
	    
	var offsamples: int 
	             
	# number of multisamples for offscreen rendering 
	    
	var numslices: int 
	              
	# number of slices for builtin geom drawing 
	    
	var numstacks: int 
	              
	# number of stacks for builtin geom drawing 
	    
	var numquads: int 
	               
	# number of quads for box rendering 
	  
struct mjVisual__headlight: 

	                       
	# head light 
	    
	var ambient[3]: float 
	             
	# ambient rgb (alpha=1) 
	    
	var diffuse[3]: float 
	             
	# diffuse rgb (alpha=1) 
	    
	var specular[3]: float 
	            
	# specular rgb (alpha=1) 
	    
	var active: int 
	                 
	# is headlight active 
	  
struct mjVisual__map: 

	                       
	# mapping 
	    
	var stiffness: float 
	              
	# mouse perturbation stiffness (space->force) 
	    
	var stiffnessrot: float 
	           
	# mouse perturbation stiffness (space->torque) 
	    
	var force: float 
	                  
	# from force units to space units 
	    
	var torque: float 
	                 
	# from torque units to space units 
	    
	var alpha: float 
	                  
	# scale geom alphas when transparency is enabled 
	    
	var fogstart: float 
	               
	# OpenGL fog starts at fogstart * mjModel.stat.extent 
	    
	var fogend: float 
	                 
	# OpenGL fog ends at fogend * mjModel.stat.extent 
	    
	var znear: float 
	                  
	# near clipping plane = znear * mjModel.stat.extent 
	    
	var zfar: float 
	                   
	# far clipping plane = zfar * mjModel.stat.extent 
	    
	var haze: float 
	                   
	# haze ratio 
	    
	var shadowclip: float 
	             
	# directional light: shadowclip * mjModel.stat.extent 
	    
	var shadowscale: float 
	            
	# spot light: shadowscale * light.cutoff 
	    
	var actuatortendon: float 
	         
	# scale tendon width 
	  
struct mjVisual__scale: 

	                       
	# scale of decor elements relative to mean body size 
	    
	var forcewidth: float 
	             
	# width of force arrow 
	    
	var contactwidth: float 
	           
	# contact width 
	    
	var contactheight: float 
	          
	# contact height 
	    
	var connect: float 
	                
	# autoconnect capsule width 
	    
	var com: float 
	                    
	# com radius 
	    
	var camera: float 
	                 
	# camera object 
	    
	var light: float 
	                  
	# light object 
	    
	var selectpoint: float 
	            
	# selection point 
	    
	var jointlength: float 
	            
	# joint length 
	    
	var jointwidth: float 
	             
	# joint width 
	    
	var actuatorlength: float 
	         
	# actuator length 
	    
	var actuatorwidth: float 
	          
	# actuator width 
	    
	var framelength: float 
	            
	# bodyframe axis length 
	    
	var framewidth: float 
	             
	# bodyframe axis width 
	    
	var constraint: float 
	             
	# constraint width 
	    
	var slidercrank: float 
	            
	# slidercrank width 
	    
	var frustum: float 
	                
	# frustum zfar plane 
	  
struct mjVisual__rgba: 

	                       
	# color of decor elements 
	    
	var fog[4]: float 
	                 
	# fog 
	    
	var haze[4]: float 
	                
	# haze 
	    
	var force[4]: float 
	               
	# external force 
	    
	var inertia[4]: float 
	             
	# inertia box 
	    
	var joint[4]: float 
	               
	# joint 
	    
	var actuator[4]: float 
	            
	# actuator ,  neutral 
	    
	var actuatornegative[4]: float 
	    
	# actuator ,  negative limit 
	    
	var actuatorpositive[4]: float 
	    
	# actuator ,  positive limit 
	    
	var com[4]: float 
	                 
	# center of mass 
	    
	var camera[4]: float 
	              
	# camera object 
	    
	var light[4]: float 
	               
	# light object 
	    
	var selectpoint[4]: float 
	         
	# selection point 
	    
	var connect[4]: float 
	             
	# auto connect 
	    
	var contactpoint[4]: float 
	        
	# contact point 
	    
	var contactforce[4]: float 
	        
	# contact force 
	    
	var contactfriction[4]: float 
	     
	# contact friction force 
	    
	var contacttorque[4]: float 
	       
	# contact torque 
	    
	var contactgap[4]: float 
	          
	# contact point in gap 
	    
	var rangefinder[4]: float 
	         
	# rangefinder ray 
	    
	var constraint[4]: float 
	          
	# constraint 
	    
	var slidercrank[4]: float 
	         
	# slidercrank 
	    
	var crankbroken[4]: float 
	         
	# used when crank must be stretched/broken 
	    
	var frustum[4]: float 
	             
	# camera frustum 
	    
	var bv[4]: float 
	                  
	# bounding volume 
	    
	var bvactive[4]: float 
	            
	# active bounding volume 
	  
 
# MUJOCO_MJMODEL_H_ 
 