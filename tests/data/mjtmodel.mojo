RootNode(c_node_idx=0, c_parent_idx=0, mojo_node_idx=0, mojo_parent_idx=-1, mojo_children_idxs=1, 2, 3, 4, 5, 6, ... len=18) 
	SingleLineCommentNode(c_node_idx=1, c_parent_idx=0, mojo_node_idx=1, mojo_parent_idx=0) 
	# Copyright 2021 DeepMind Technologies Limited 
	SingleLineCommentNode(c_node_idx=2, c_parent_idx=0, mojo_node_idx=2, mojo_parent_idx=0) 
	# 
	SingleLineCommentNode(c_node_idx=3, c_parent_idx=0, mojo_node_idx=3, mojo_parent_idx=0) 
	# Licensed under the Apache License ,  Version 2.0 (the "License") ;  
	SingleLineCommentNode(c_node_idx=4, c_parent_idx=0, mojo_node_idx=4, mojo_parent_idx=0) 
	# you may not use this file except in compliance with the License. 
	SingleLineCommentNode(c_node_idx=5, c_parent_idx=0, mojo_node_idx=5, mojo_parent_idx=0) 
	# You may obtain a copy of the License at 
	SingleLineCommentNode(c_node_idx=6, c_parent_idx=0, mojo_node_idx=6, mojo_parent_idx=0) 
	# 
	SingleLineCommentNode(c_node_idx=7, c_parent_idx=0, mojo_node_idx=7, mojo_parent_idx=0) 
	#     http://www.apache.org/licenses/LICENSE-2.0 
	SingleLineCommentNode(c_node_idx=8, c_parent_idx=0, mojo_node_idx=8, mojo_parent_idx=0) 
	# 
	SingleLineCommentNode(c_node_idx=9, c_parent_idx=0, mojo_node_idx=9, mojo_parent_idx=0) 
	# Unless required by applicable law or agreed to in writing ,  software 
	SingleLineCommentNode(c_node_idx=10, c_parent_idx=0, mojo_node_idx=10, mojo_parent_idx=0) 
	# distributed under the License is distributed on an "AS IS" BASIS ,  
	SingleLineCommentNode(c_node_idx=11, c_parent_idx=0, mojo_node_idx=11, mojo_parent_idx=0) 
	# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. 
	SingleLineCommentNode(c_node_idx=12, c_parent_idx=0, mojo_node_idx=12, mojo_parent_idx=0) 
	# See the License for the specific language governing permissions and 
	SingleLineCommentNode(c_node_idx=13, c_parent_idx=0, mojo_node_idx=13, mojo_parent_idx=0) 
	# limitations under the License. 
	WhitespaceNode(c_node_idx=14, c_parent_idx=0, mojo_node_idx=14, mojo_parent_idx=0) 
	 
	MacroIfNDefNode(c_node_idx=15, c_parent_idx=0, mojo_node_idx=15, mojo_parent_idx=0, c_children_idxs=16, 17, 18, 19, 20, 21, ... len=131, mojo_children_idxs=16, 17, 18, 19, 20, 21, ... len=131) 
	#ifndef MUJOCO_MJMODEL_H_ 
		MacroDefineNode(header_guard=MUJOCO_MJMODEL_H_, c_node_idx=16, c_parent_idx=15, mojo_node_idx=16, mojo_parent_idx=15) 
		alias MUJOCO_MJMODEL_H_ =  
		WhitespaceNode(c_node_idx=17, c_parent_idx=15, mojo_node_idx=17, mojo_parent_idx=15) 
		 
		PlaceHolderNode(c_node_idx=18, c_parent_idx=15, mojo_node_idx=18, mojo_parent_idx=15) 
		#include <stddef.h> 
		PlaceHolderNode(c_node_idx=19, c_parent_idx=15, mojo_node_idx=19, mojo_parent_idx=15) 
		#include <stdint.h> 
		WhitespaceNode(c_node_idx=20, c_parent_idx=15, mojo_node_idx=20, mojo_parent_idx=15) 
		 
		 
		PlaceHolderNode(c_node_idx=21, c_parent_idx=15, mojo_node_idx=21, mojo_parent_idx=15) 
		#include <mujoco/mjtnum.h> 
		WhitespaceNode(c_node_idx=22, c_parent_idx=15, mojo_node_idx=22, mojo_parent_idx=15) 
		 
		SingleLineCommentNode(c_node_idx=23, c_parent_idx=15, mojo_node_idx=23, mojo_parent_idx=15) 
		# global constants 
		MacroDefineNode(macro=mjPI, value=3.14159265358979323846, c_node_idx=24, c_parent_idx=15, mojo_node_idx=24, mojo_parent_idx=15) 
		alias mjPI = 3.14159265358979323846 
		MacroDefineNode(macro=mjMAXVAL, value=1E+10, c_node_idx=25, c_parent_idx=15, mojo_node_idx=25, mojo_parent_idx=15) 
		alias mjMAXVAL = 1E+10 
		SingleLineCommentNode(c_node_idx=26, c_parent_idx=15, mojo_node_idx=26, mojo_parent_idx=15) 
		# maximum value in qpos ,  qvel ,  qacc 
		MacroDefineNode(macro=mjMINMU, value=1E-5, c_node_idx=27, c_parent_idx=15, mojo_node_idx=27, mojo_parent_idx=15) 
		alias mjMINMU = 1E-5 
		SingleLineCommentNode(c_node_idx=28, c_parent_idx=15, mojo_node_idx=28, mojo_parent_idx=15) 
		# minimum friction coefficient 
		MacroDefineNode(macro=mjMINIMP, value=0.0001, c_node_idx=29, c_parent_idx=15, mojo_node_idx=29, mojo_parent_idx=15) 
		alias mjMINIMP = 0.0001 
		SingleLineCommentNode(c_node_idx=30, c_parent_idx=15, mojo_node_idx=30, mojo_parent_idx=15) 
		# minimum constraint impedance 
		MacroDefineNode(macro=mjMAXIMP, value=0.9999, c_node_idx=31, c_parent_idx=15, mojo_node_idx=31, mojo_parent_idx=15) 
		alias mjMAXIMP = 0.9999 
		SingleLineCommentNode(c_node_idx=32, c_parent_idx=15, mojo_node_idx=32, mojo_parent_idx=15) 
		# maximum constraint impedance 
		MacroDefineNode(macro=mjMAXCONPAIR, value=50, c_node_idx=33, c_parent_idx=15, mojo_node_idx=33, mojo_parent_idx=15) 
		alias mjMAXCONPAIR = 50 
		SingleLineCommentNode(c_node_idx=34, c_parent_idx=15, mojo_node_idx=34, mojo_parent_idx=15) 
		# maximum number of contacts per geom pair 
		MacroDefineNode(macro=mjMAXTREEDEPTH, value=50, c_node_idx=35, c_parent_idx=15, mojo_node_idx=35, mojo_parent_idx=15) 
		alias mjMAXTREEDEPTH = 50 
		SingleLineCommentNode(c_node_idx=36, c_parent_idx=15, mojo_node_idx=36, mojo_parent_idx=15) 
		# maximum bounding volume hierarchy depth 
		WhitespaceNode(c_node_idx=37, c_parent_idx=15, mojo_node_idx=37, mojo_parent_idx=15) 
		 
		 
		SingleLineCommentNode(c_node_idx=38, c_parent_idx=15, mojo_node_idx=38, mojo_parent_idx=15) 
		# ---------------------------------- sizes --------------------------------------------------------- 
		WhitespaceNode(c_node_idx=39, c_parent_idx=15, mojo_node_idx=39, mojo_parent_idx=15) 
		 
		MacroDefineNode(macro=mjNEQDATA, value=11, c_node_idx=40, c_parent_idx=15, mojo_node_idx=40, mojo_parent_idx=15) 
		alias mjNEQDATA = 11 
		SingleLineCommentNode(c_node_idx=41, c_parent_idx=15, mojo_node_idx=41, mojo_parent_idx=15) 
		# number of eq_data fields 
		MacroDefineNode(macro=mjNDYN, value=10, c_node_idx=42, c_parent_idx=15, mojo_node_idx=42, mojo_parent_idx=15) 
		alias mjNDYN = 10 
		SingleLineCommentNode(c_node_idx=43, c_parent_idx=15, mojo_node_idx=43, mojo_parent_idx=15) 
		# number of actuator dynamics parameters 
		MacroDefineNode(macro=mjNGAIN, value=10, c_node_idx=44, c_parent_idx=15, mojo_node_idx=44, mojo_parent_idx=15) 
		alias mjNGAIN = 10 
		SingleLineCommentNode(c_node_idx=45, c_parent_idx=15, mojo_node_idx=45, mojo_parent_idx=15) 
		# number of actuator gain parameters 
		MacroDefineNode(macro=mjNBIAS, value=10, c_node_idx=46, c_parent_idx=15, mojo_node_idx=46, mojo_parent_idx=15) 
		alias mjNBIAS = 10 
		SingleLineCommentNode(c_node_idx=47, c_parent_idx=15, mojo_node_idx=47, mojo_parent_idx=15) 
		# number of actuator bias parameters 
		MacroDefineNode(macro=mjNFLUID, value=12, c_node_idx=48, c_parent_idx=15, mojo_node_idx=48, mojo_parent_idx=15) 
		alias mjNFLUID = 12 
		SingleLineCommentNode(c_node_idx=49, c_parent_idx=15, mojo_node_idx=49, mojo_parent_idx=15) 
		# number of fluid interaction parameters 
		MacroDefineNode(macro=mjNREF, value=2, c_node_idx=50, c_parent_idx=15, mojo_node_idx=50, mojo_parent_idx=15) 
		alias mjNREF = 2 
		SingleLineCommentNode(c_node_idx=51, c_parent_idx=15, mojo_node_idx=51, mojo_parent_idx=15) 
		# number of solver reference parameters 
		MacroDefineNode(macro=mjNIMP, value=5, c_node_idx=52, c_parent_idx=15, mojo_node_idx=52, mojo_parent_idx=15) 
		alias mjNIMP = 5 
		SingleLineCommentNode(c_node_idx=53, c_parent_idx=15, mojo_node_idx=53, mojo_parent_idx=15) 
		# number of solver impedance parameters 
		MacroDefineNode(macro=mjNSOLVER, value=200, c_node_idx=54, c_parent_idx=15, mojo_node_idx=54, mojo_parent_idx=15) 
		alias mjNSOLVER = 200 
		SingleLineCommentNode(c_node_idx=55, c_parent_idx=15, mojo_node_idx=55, mojo_parent_idx=15) 
		# size of one mjData.solver array 
		MacroDefineNode(macro=mjNISLAND, value=20, c_node_idx=56, c_parent_idx=15, mojo_node_idx=56, mojo_parent_idx=15) 
		alias mjNISLAND = 20 
		SingleLineCommentNode(c_node_idx=57, c_parent_idx=15, mojo_node_idx=57, mojo_parent_idx=15) 
		# number of mjData.solver arrays 
		WhitespaceNode(c_node_idx=58, c_parent_idx=15, mojo_node_idx=58, mojo_parent_idx=15) 
		 
		SingleLineCommentNode(c_node_idx=59, c_parent_idx=15, mojo_node_idx=59, mojo_parent_idx=15) 
		# ---------------------------------- enum types (mjt) ---------------------------------------------- 
		WhitespaceNode(c_node_idx=60, c_parent_idx=15, mojo_node_idx=60, mojo_parent_idx=15) 
		 
		TypedefNode(alias=mjtDisableBit, c_node_idx=61, c_parent_idx=15, mojo_node_idx=61, mojo_parent_idx=15, c_children_idxs=62, 134, mojo_children_idxs=62) 
		EnumNode(name=mjtDisableBit_, c_node_idx=62, c_parent_idx=61, mojo_node_idx=62, mojo_parent_idx=61, c_children_idxs=63, mojo_children_idxs=63) 
		#  enum mjtDisableBit_ 
			PlaceHolderNode(c_node_idx=63, c_parent_idx=62, mojo_node_idx=63, mojo_parent_idx=62, c_children_idxs=64, 65, 66, 67, 68, 69, ... len=70, mojo_children_idxs=64, 65, 66, 67, 68, 69, ... len=70) 
			{ 
			WhitespaceNode(c_node_idx=64, c_parent_idx=63, mojo_node_idx=64, mojo_parent_idx=63) 
			    
			SingleLineCommentNode(c_node_idx=65, c_parent_idx=63, mojo_node_idx=65, mojo_parent_idx=63) 
			# disable default feature bitflags 
			WhitespaceNode(c_node_idx=66, c_parent_idx=63, mojo_node_idx=66, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=67, c_parent_idx=63, mojo_node_idx=67, mojo_parent_idx=63) 
			mjDSBL_CONSTRAINT   = 1<<0 , 
			WhitespaceNode(c_node_idx=68, c_parent_idx=63, mojo_node_idx=68, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=69, c_parent_idx=63, mojo_node_idx=69, mojo_parent_idx=63) 
			# entire constraint solver 
			WhitespaceNode(c_node_idx=70, c_parent_idx=63, mojo_node_idx=70, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=71, c_parent_idx=63, mojo_node_idx=71, mojo_parent_idx=63) 
			mjDSBL_EQUALITY     = 1<<1 , 
			WhitespaceNode(c_node_idx=72, c_parent_idx=63, mojo_node_idx=72, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=73, c_parent_idx=63, mojo_node_idx=73, mojo_parent_idx=63) 
			# equality constraints 
			WhitespaceNode(c_node_idx=74, c_parent_idx=63, mojo_node_idx=74, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=75, c_parent_idx=63, mojo_node_idx=75, mojo_parent_idx=63) 
			mjDSBL_FRICTIONLOSS = 1<<2 , 
			WhitespaceNode(c_node_idx=76, c_parent_idx=63, mojo_node_idx=76, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=77, c_parent_idx=63, mojo_node_idx=77, mojo_parent_idx=63) 
			# joint and tendon frictionloss constraints 
			WhitespaceNode(c_node_idx=78, c_parent_idx=63, mojo_node_idx=78, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=79, c_parent_idx=63, mojo_node_idx=79, mojo_parent_idx=63) 
			mjDSBL_LIMIT        = 1<<3 , 
			WhitespaceNode(c_node_idx=80, c_parent_idx=63, mojo_node_idx=80, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=81, c_parent_idx=63, mojo_node_idx=81, mojo_parent_idx=63) 
			# joint and tendon limit constraints 
			WhitespaceNode(c_node_idx=82, c_parent_idx=63, mojo_node_idx=82, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=83, c_parent_idx=63, mojo_node_idx=83, mojo_parent_idx=63) 
			mjDSBL_CONTACT      = 1<<4 , 
			WhitespaceNode(c_node_idx=84, c_parent_idx=63, mojo_node_idx=84, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=85, c_parent_idx=63, mojo_node_idx=85, mojo_parent_idx=63) 
			# contact constraints 
			WhitespaceNode(c_node_idx=86, c_parent_idx=63, mojo_node_idx=86, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=87, c_parent_idx=63, mojo_node_idx=87, mojo_parent_idx=63) 
			mjDSBL_PASSIVE      = 1<<5 , 
			WhitespaceNode(c_node_idx=88, c_parent_idx=63, mojo_node_idx=88, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=89, c_parent_idx=63, mojo_node_idx=89, mojo_parent_idx=63) 
			# passive forces 
			WhitespaceNode(c_node_idx=90, c_parent_idx=63, mojo_node_idx=90, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=91, c_parent_idx=63, mojo_node_idx=91, mojo_parent_idx=63) 
			mjDSBL_GRAVITY      = 1<<6 , 
			WhitespaceNode(c_node_idx=92, c_parent_idx=63, mojo_node_idx=92, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=93, c_parent_idx=63, mojo_node_idx=93, mojo_parent_idx=63) 
			# gravitational forces 
			WhitespaceNode(c_node_idx=94, c_parent_idx=63, mojo_node_idx=94, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=95, c_parent_idx=63, mojo_node_idx=95, mojo_parent_idx=63) 
			mjDSBL_CLAMPCTRL    = 1<<7 , 
			WhitespaceNode(c_node_idx=96, c_parent_idx=63, mojo_node_idx=96, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=97, c_parent_idx=63, mojo_node_idx=97, mojo_parent_idx=63) 
			# clamp control to specified range 
			WhitespaceNode(c_node_idx=98, c_parent_idx=63, mojo_node_idx=98, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=99, c_parent_idx=63, mojo_node_idx=99, mojo_parent_idx=63) 
			mjDSBL_WARMSTART    = 1<<8 , 
			WhitespaceNode(c_node_idx=100, c_parent_idx=63, mojo_node_idx=100, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=101, c_parent_idx=63, mojo_node_idx=101, mojo_parent_idx=63) 
			# warmstart constraint solver 
			WhitespaceNode(c_node_idx=102, c_parent_idx=63, mojo_node_idx=102, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=103, c_parent_idx=63, mojo_node_idx=103, mojo_parent_idx=63) 
			mjDSBL_FILTERPARENT = 1<<9 , 
			WhitespaceNode(c_node_idx=104, c_parent_idx=63, mojo_node_idx=104, mojo_parent_idx=63) 
			     
			SingleLineCommentNode(c_node_idx=105, c_parent_idx=63, mojo_node_idx=105, mojo_parent_idx=63) 
			# remove collisions with parent body 
			WhitespaceNode(c_node_idx=106, c_parent_idx=63, mojo_node_idx=106, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=107, c_parent_idx=63, mojo_node_idx=107, mojo_parent_idx=63) 
			mjDSBL_ACTUATION    = 1<<10 , 
			WhitespaceNode(c_node_idx=108, c_parent_idx=63, mojo_node_idx=108, mojo_parent_idx=63) 
			    
			SingleLineCommentNode(c_node_idx=109, c_parent_idx=63, mojo_node_idx=109, mojo_parent_idx=63) 
			# apply actuation forces 
			WhitespaceNode(c_node_idx=110, c_parent_idx=63, mojo_node_idx=110, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=111, c_parent_idx=63, mojo_node_idx=111, mojo_parent_idx=63) 
			mjDSBL_REFSAFE      = 1<<11 , 
			WhitespaceNode(c_node_idx=112, c_parent_idx=63, mojo_node_idx=112, mojo_parent_idx=63) 
			    
			SingleLineCommentNode(c_node_idx=113, c_parent_idx=63, mojo_node_idx=113, mojo_parent_idx=63) 
			# integrator safety: make ref[0]>=2*timestep 
			WhitespaceNode(c_node_idx=114, c_parent_idx=63, mojo_node_idx=114, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=115, c_parent_idx=63, mojo_node_idx=115, mojo_parent_idx=63) 
			mjDSBL_SENSOR       = 1<<12 , 
			WhitespaceNode(c_node_idx=116, c_parent_idx=63, mojo_node_idx=116, mojo_parent_idx=63) 
			    
			SingleLineCommentNode(c_node_idx=117, c_parent_idx=63, mojo_node_idx=117, mojo_parent_idx=63) 
			# sensors 
			WhitespaceNode(c_node_idx=118, c_parent_idx=63, mojo_node_idx=118, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=119, c_parent_idx=63, mojo_node_idx=119, mojo_parent_idx=63) 
			mjDSBL_MIDPHASE     = 1<<13 , 
			WhitespaceNode(c_node_idx=120, c_parent_idx=63, mojo_node_idx=120, mojo_parent_idx=63) 
			    
			SingleLineCommentNode(c_node_idx=121, c_parent_idx=63, mojo_node_idx=121, mojo_parent_idx=63) 
			# mid-phase collision filtering 
			WhitespaceNode(c_node_idx=122, c_parent_idx=63, mojo_node_idx=122, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=123, c_parent_idx=63, mojo_node_idx=123, mojo_parent_idx=63) 
			mjDSBL_EULERDAMP    = 1<<14 , 
			WhitespaceNode(c_node_idx=124, c_parent_idx=63, mojo_node_idx=124, mojo_parent_idx=63) 
			    
			SingleLineCommentNode(c_node_idx=125, c_parent_idx=63, mojo_node_idx=125, mojo_parent_idx=63) 
			# implicit integration of joint damping in Euler integrator 
			WhitespaceNode(c_node_idx=126, c_parent_idx=63, mojo_node_idx=126, mojo_parent_idx=63) 
			  
			PlaceHolderNode(c_node_idx=127, c_parent_idx=63, mojo_node_idx=127, mojo_parent_idx=63) 
			mjDSBL_AUTORESET    = 1<<15 , 
			WhitespaceNode(c_node_idx=128, c_parent_idx=63, mojo_node_idx=128, mojo_parent_idx=63) 
			    
			SingleLineCommentNode(c_node_idx=129, c_parent_idx=63, mojo_node_idx=129, mojo_parent_idx=63) 
			# automatic reset when numerical issues are detected 
			WhitespaceNode(c_node_idx=130, c_parent_idx=63, mojo_node_idx=130, mojo_parent_idx=63) 
			 
			  
			PlaceHolderNode(c_node_idx=131, c_parent_idx=63, mojo_node_idx=131, mojo_parent_idx=63) 
			mjNDISABLE          = 16 
			WhitespaceNode(c_node_idx=132, c_parent_idx=63, mojo_node_idx=132, mojo_parent_idx=63) 
			       
			SingleLineCommentNode(c_node_idx=133, c_parent_idx=63, mojo_node_idx=133, mojo_parent_idx=63) 
			# number of disable flags 
			} 
		alias mjtDisableBit = mjtDisableBit_ 
		WhitespaceNode(c_node_idx=135, c_parent_idx=15, mojo_node_idx=134, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtEnableBit, c_node_idx=136, c_parent_idx=15, mojo_node_idx=135, mojo_parent_idx=15, c_children_idxs=137, 175, mojo_children_idxs=136) 
		EnumNode(name=mjtEnableBit_, c_node_idx=137, c_parent_idx=136, mojo_node_idx=136, mojo_parent_idx=135, c_children_idxs=138, mojo_children_idxs=137) 
		#  enum mjtEnableBit_ 
			PlaceHolderNode(c_node_idx=138, c_parent_idx=137, mojo_node_idx=137, mojo_parent_idx=136, c_children_idxs=139, 140, 141, 142, 143, 144, ... len=36, mojo_children_idxs=138, 139, 140, 141, 142, 143, ... len=36) 
			{ 
			WhitespaceNode(c_node_idx=139, c_parent_idx=138, mojo_node_idx=138, mojo_parent_idx=137) 
			     
			SingleLineCommentNode(c_node_idx=140, c_parent_idx=138, mojo_node_idx=139, mojo_parent_idx=137) 
			# enable optional feature bitflags 
			WhitespaceNode(c_node_idx=141, c_parent_idx=138, mojo_node_idx=140, mojo_parent_idx=137) 
			  
			PlaceHolderNode(c_node_idx=142, c_parent_idx=138, mojo_node_idx=141, mojo_parent_idx=137) 
			mjENBL_OVERRIDE     = 1<<0 , 
			WhitespaceNode(c_node_idx=143, c_parent_idx=138, mojo_node_idx=142, mojo_parent_idx=137) 
			     
			SingleLineCommentNode(c_node_idx=144, c_parent_idx=138, mojo_node_idx=143, mojo_parent_idx=137) 
			# override contact parameters 
			WhitespaceNode(c_node_idx=145, c_parent_idx=138, mojo_node_idx=144, mojo_parent_idx=137) 
			  
			PlaceHolderNode(c_node_idx=146, c_parent_idx=138, mojo_node_idx=145, mojo_parent_idx=137) 
			mjENBL_ENERGY       = 1<<1 , 
			WhitespaceNode(c_node_idx=147, c_parent_idx=138, mojo_node_idx=146, mojo_parent_idx=137) 
			     
			SingleLineCommentNode(c_node_idx=148, c_parent_idx=138, mojo_node_idx=147, mojo_parent_idx=137) 
			# energy computation 
			WhitespaceNode(c_node_idx=149, c_parent_idx=138, mojo_node_idx=148, mojo_parent_idx=137) 
			  
			PlaceHolderNode(c_node_idx=150, c_parent_idx=138, mojo_node_idx=149, mojo_parent_idx=137) 
			mjENBL_FWDINV       = 1<<2 , 
			WhitespaceNode(c_node_idx=151, c_parent_idx=138, mojo_node_idx=150, mojo_parent_idx=137) 
			     
			SingleLineCommentNode(c_node_idx=152, c_parent_idx=138, mojo_node_idx=151, mojo_parent_idx=137) 
			# record solver statistics 
			WhitespaceNode(c_node_idx=153, c_parent_idx=138, mojo_node_idx=152, mojo_parent_idx=137) 
			  
			PlaceHolderNode(c_node_idx=154, c_parent_idx=138, mojo_node_idx=153, mojo_parent_idx=137) 
			mjENBL_INVDISCRETE  = 1<<3 , 
			WhitespaceNode(c_node_idx=155, c_parent_idx=138, mojo_node_idx=154, mojo_parent_idx=137) 
			     
			SingleLineCommentNode(c_node_idx=156, c_parent_idx=138, mojo_node_idx=155, mojo_parent_idx=137) 
			# discrete-time inverse dynamics 
			WhitespaceNode(c_node_idx=157, c_parent_idx=138, mojo_node_idx=156, mojo_parent_idx=137) 
			                                  
			SingleLineCommentNode(c_node_idx=158, c_parent_idx=138, mojo_node_idx=157, mojo_parent_idx=137) 
			# experimental features: 
			WhitespaceNode(c_node_idx=159, c_parent_idx=138, mojo_node_idx=158, mojo_parent_idx=137) 
			  
			PlaceHolderNode(c_node_idx=160, c_parent_idx=138, mojo_node_idx=159, mojo_parent_idx=137) 
			mjENBL_MULTICCD     = 1<<4 , 
			WhitespaceNode(c_node_idx=161, c_parent_idx=138, mojo_node_idx=160, mojo_parent_idx=137) 
			     
			SingleLineCommentNode(c_node_idx=162, c_parent_idx=138, mojo_node_idx=161, mojo_parent_idx=137) 
			# multi-point convex collision detection 
			WhitespaceNode(c_node_idx=163, c_parent_idx=138, mojo_node_idx=162, mojo_parent_idx=137) 
			  
			PlaceHolderNode(c_node_idx=164, c_parent_idx=138, mojo_node_idx=163, mojo_parent_idx=137) 
			mjENBL_ISLAND       = 1<<5 , 
			WhitespaceNode(c_node_idx=165, c_parent_idx=138, mojo_node_idx=164, mojo_parent_idx=137) 
			     
			SingleLineCommentNode(c_node_idx=166, c_parent_idx=138, mojo_node_idx=165, mojo_parent_idx=137) 
			# constraint island discovery 
			WhitespaceNode(c_node_idx=167, c_parent_idx=138, mojo_node_idx=166, mojo_parent_idx=137) 
			  
			PlaceHolderNode(c_node_idx=168, c_parent_idx=138, mojo_node_idx=167, mojo_parent_idx=137) 
			mjENBL_NATIVECCD    = 1<<6 , 
			WhitespaceNode(c_node_idx=169, c_parent_idx=138, mojo_node_idx=168, mojo_parent_idx=137) 
			     
			SingleLineCommentNode(c_node_idx=170, c_parent_idx=138, mojo_node_idx=169, mojo_parent_idx=137) 
			# native convex collision detection 
			WhitespaceNode(c_node_idx=171, c_parent_idx=138, mojo_node_idx=170, mojo_parent_idx=137) 
			 
			  
			PlaceHolderNode(c_node_idx=172, c_parent_idx=138, mojo_node_idx=171, mojo_parent_idx=137) 
			mjNENABLE           = 7 
			WhitespaceNode(c_node_idx=173, c_parent_idx=138, mojo_node_idx=172, mojo_parent_idx=137) 
			        
			SingleLineCommentNode(c_node_idx=174, c_parent_idx=138, mojo_node_idx=173, mojo_parent_idx=137) 
			# number of enable flags 
			} 
		alias mjtEnableBit = mjtEnableBit_ 
		WhitespaceNode(c_node_idx=176, c_parent_idx=15, mojo_node_idx=174, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtJoint, c_node_idx=177, c_parent_idx=15, mojo_node_idx=175, mojo_parent_idx=15, c_children_idxs=178, 197, mojo_children_idxs=176) 
		EnumNode(name=mjtJoint_, c_node_idx=178, c_parent_idx=177, mojo_node_idx=176, mojo_parent_idx=175, c_children_idxs=179, mojo_children_idxs=177) 
		#  enum mjtJoint_ 
			PlaceHolderNode(c_node_idx=179, c_parent_idx=178, mojo_node_idx=177, mojo_parent_idx=176, c_children_idxs=180, 181, 182, 183, 184, 185, ... len=17, mojo_children_idxs=178, 179, 180, 181, 182, 183, ... len=17) 
			{ 
			WhitespaceNode(c_node_idx=180, c_parent_idx=179, mojo_node_idx=178, mojo_parent_idx=177) 
			         
			SingleLineCommentNode(c_node_idx=181, c_parent_idx=179, mojo_node_idx=179, mojo_parent_idx=177) 
			# type of degree of freedom 
			WhitespaceNode(c_node_idx=182, c_parent_idx=179, mojo_node_idx=180, mojo_parent_idx=177) 
			  
			PlaceHolderNode(c_node_idx=183, c_parent_idx=179, mojo_node_idx=181, mojo_parent_idx=177) 
			mjJNT_FREE          = 0 , 
			WhitespaceNode(c_node_idx=184, c_parent_idx=179, mojo_node_idx=182, mojo_parent_idx=177) 
			        
			SingleLineCommentNode(c_node_idx=185, c_parent_idx=179, mojo_node_idx=183, mojo_parent_idx=177) 
			# global position and orientation (quat)       (7) 
			WhitespaceNode(c_node_idx=186, c_parent_idx=179, mojo_node_idx=184, mojo_parent_idx=177) 
			  
			PlaceHolderNode(c_node_idx=187, c_parent_idx=179, mojo_node_idx=185, mojo_parent_idx=177) 
			mjJNT_BALL , 
			WhitespaceNode(c_node_idx=188, c_parent_idx=179, mojo_node_idx=186, mojo_parent_idx=177) 
			                     
			SingleLineCommentNode(c_node_idx=189, c_parent_idx=179, mojo_node_idx=187, mojo_parent_idx=177) 
			# orientation (quat) relative to parent        (4) 
			WhitespaceNode(c_node_idx=190, c_parent_idx=179, mojo_node_idx=188, mojo_parent_idx=177) 
			  
			PlaceHolderNode(c_node_idx=191, c_parent_idx=179, mojo_node_idx=189, mojo_parent_idx=177) 
			mjJNT_SLIDE , 
			WhitespaceNode(c_node_idx=192, c_parent_idx=179, mojo_node_idx=190, mojo_parent_idx=177) 
			                    
			SingleLineCommentNode(c_node_idx=193, c_parent_idx=179, mojo_node_idx=191, mojo_parent_idx=177) 
			# sliding distance along body-fixed axis       (1) 
			WhitespaceNode(c_node_idx=194, c_parent_idx=179, mojo_node_idx=192, mojo_parent_idx=177) 
			  
			PlaceHolderNode(c_node_idx=195, c_parent_idx=179, mojo_node_idx=193, mojo_parent_idx=177) 
			mjJNT_HINGE                     
			SingleLineCommentNode(c_node_idx=196, c_parent_idx=179, mojo_node_idx=194, mojo_parent_idx=177) 
			# rotation angle (rad) around body-fixed axis  (1) 
			} 
		alias mjtJoint = mjtJoint_ 
		WhitespaceNode(c_node_idx=198, c_parent_idx=15, mojo_node_idx=195, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtGeom, c_node_idx=199, c_parent_idx=15, mojo_node_idx=196, mojo_parent_idx=15, c_children_idxs=200, 288, mojo_children_idxs=197) 
		EnumNode(name=mjtGeom_, c_node_idx=200, c_parent_idx=199, mojo_node_idx=197, mojo_parent_idx=196, c_children_idxs=201, mojo_children_idxs=198) 
		#  enum mjtGeom_ 
			PlaceHolderNode(c_node_idx=201, c_parent_idx=200, mojo_node_idx=198, mojo_parent_idx=197, c_children_idxs=202, 203, 204, 205, 206, 207, ... len=86, mojo_children_idxs=199, 200, 201, 202, 203, 204, ... len=86) 
			{ 
			WhitespaceNode(c_node_idx=202, c_parent_idx=201, mojo_node_idx=199, mojo_parent_idx=198) 
			          
			SingleLineCommentNode(c_node_idx=203, c_parent_idx=201, mojo_node_idx=200, mojo_parent_idx=198) 
			# type of geometric shape 
			WhitespaceNode(c_node_idx=204, c_parent_idx=201, mojo_node_idx=201, mojo_parent_idx=198) 
			  
			SingleLineCommentNode(c_node_idx=205, c_parent_idx=201, mojo_node_idx=202, mojo_parent_idx=198) 
			# regular geom types 
			WhitespaceNode(c_node_idx=206, c_parent_idx=201, mojo_node_idx=203, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=207, c_parent_idx=201, mojo_node_idx=204, mojo_parent_idx=198) 
			mjGEOM_PLANE        = 0 , 
			WhitespaceNode(c_node_idx=208, c_parent_idx=201, mojo_node_idx=205, mojo_parent_idx=198) 
			        
			SingleLineCommentNode(c_node_idx=209, c_parent_idx=201, mojo_node_idx=206, mojo_parent_idx=198) 
			# plane 
			WhitespaceNode(c_node_idx=210, c_parent_idx=201, mojo_node_idx=207, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=211, c_parent_idx=201, mojo_node_idx=208, mojo_parent_idx=198) 
			mjGEOM_HFIELD , 
			WhitespaceNode(c_node_idx=212, c_parent_idx=201, mojo_node_idx=209, mojo_parent_idx=198) 
			                  
			SingleLineCommentNode(c_node_idx=213, c_parent_idx=201, mojo_node_idx=210, mojo_parent_idx=198) 
			# height field 
			WhitespaceNode(c_node_idx=214, c_parent_idx=201, mojo_node_idx=211, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=215, c_parent_idx=201, mojo_node_idx=212, mojo_parent_idx=198) 
			mjGEOM_SPHERE , 
			WhitespaceNode(c_node_idx=216, c_parent_idx=201, mojo_node_idx=213, mojo_parent_idx=198) 
			                  
			SingleLineCommentNode(c_node_idx=217, c_parent_idx=201, mojo_node_idx=214, mojo_parent_idx=198) 
			# sphere 
			WhitespaceNode(c_node_idx=218, c_parent_idx=201, mojo_node_idx=215, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=219, c_parent_idx=201, mojo_node_idx=216, mojo_parent_idx=198) 
			mjGEOM_CAPSULE , 
			WhitespaceNode(c_node_idx=220, c_parent_idx=201, mojo_node_idx=217, mojo_parent_idx=198) 
			                 
			SingleLineCommentNode(c_node_idx=221, c_parent_idx=201, mojo_node_idx=218, mojo_parent_idx=198) 
			# capsule 
			WhitespaceNode(c_node_idx=222, c_parent_idx=201, mojo_node_idx=219, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=223, c_parent_idx=201, mojo_node_idx=220, mojo_parent_idx=198) 
			mjGEOM_ELLIPSOID , 
			WhitespaceNode(c_node_idx=224, c_parent_idx=201, mojo_node_idx=221, mojo_parent_idx=198) 
			               
			SingleLineCommentNode(c_node_idx=225, c_parent_idx=201, mojo_node_idx=222, mojo_parent_idx=198) 
			# ellipsoid 
			WhitespaceNode(c_node_idx=226, c_parent_idx=201, mojo_node_idx=223, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=227, c_parent_idx=201, mojo_node_idx=224, mojo_parent_idx=198) 
			mjGEOM_CYLINDER , 
			WhitespaceNode(c_node_idx=228, c_parent_idx=201, mojo_node_idx=225, mojo_parent_idx=198) 
			                
			SingleLineCommentNode(c_node_idx=229, c_parent_idx=201, mojo_node_idx=226, mojo_parent_idx=198) 
			# cylinder 
			WhitespaceNode(c_node_idx=230, c_parent_idx=201, mojo_node_idx=227, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=231, c_parent_idx=201, mojo_node_idx=228, mojo_parent_idx=198) 
			mjGEOM_BOX , 
			WhitespaceNode(c_node_idx=232, c_parent_idx=201, mojo_node_idx=229, mojo_parent_idx=198) 
			                     
			SingleLineCommentNode(c_node_idx=233, c_parent_idx=201, mojo_node_idx=230, mojo_parent_idx=198) 
			# box 
			WhitespaceNode(c_node_idx=234, c_parent_idx=201, mojo_node_idx=231, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=235, c_parent_idx=201, mojo_node_idx=232, mojo_parent_idx=198) 
			mjGEOM_MESH , 
			WhitespaceNode(c_node_idx=236, c_parent_idx=201, mojo_node_idx=233, mojo_parent_idx=198) 
			                    
			SingleLineCommentNode(c_node_idx=237, c_parent_idx=201, mojo_node_idx=234, mojo_parent_idx=198) 
			# mesh 
			WhitespaceNode(c_node_idx=238, c_parent_idx=201, mojo_node_idx=235, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=239, c_parent_idx=201, mojo_node_idx=236, mojo_parent_idx=198) 
			mjGEOM_SDF , 
			WhitespaceNode(c_node_idx=240, c_parent_idx=201, mojo_node_idx=237, mojo_parent_idx=198) 
			                     
			SingleLineCommentNode(c_node_idx=241, c_parent_idx=201, mojo_node_idx=238, mojo_parent_idx=198) 
			# signed distance field 
			WhitespaceNode(c_node_idx=242, c_parent_idx=201, mojo_node_idx=239, mojo_parent_idx=198) 
			 
			  
			PlaceHolderNode(c_node_idx=243, c_parent_idx=201, mojo_node_idx=240, mojo_parent_idx=198) 
			mjNGEOMTYPES , 
			WhitespaceNode(c_node_idx=244, c_parent_idx=201, mojo_node_idx=241, mojo_parent_idx=198) 
			                   
			SingleLineCommentNode(c_node_idx=245, c_parent_idx=201, mojo_node_idx=242, mojo_parent_idx=198) 
			# number of regular geom types 
			WhitespaceNode(c_node_idx=246, c_parent_idx=201, mojo_node_idx=243, mojo_parent_idx=198) 
			 
			  
			SingleLineCommentNode(c_node_idx=247, c_parent_idx=201, mojo_node_idx=244, mojo_parent_idx=198) 
			# rendering-only geom types: not used in mjModel ,  not counted in mjNGEOMTYPES 
			WhitespaceNode(c_node_idx=248, c_parent_idx=201, mojo_node_idx=245, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=249, c_parent_idx=201, mojo_node_idx=246, mojo_parent_idx=198) 
			mjGEOM_ARROW        = 100 , 
			WhitespaceNode(c_node_idx=250, c_parent_idx=201, mojo_node_idx=247, mojo_parent_idx=198) 
			      
			SingleLineCommentNode(c_node_idx=251, c_parent_idx=201, mojo_node_idx=248, mojo_parent_idx=198) 
			# arrow 
			WhitespaceNode(c_node_idx=252, c_parent_idx=201, mojo_node_idx=249, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=253, c_parent_idx=201, mojo_node_idx=250, mojo_parent_idx=198) 
			mjGEOM_ARROW1 , 
			WhitespaceNode(c_node_idx=254, c_parent_idx=201, mojo_node_idx=251, mojo_parent_idx=198) 
			                  
			SingleLineCommentNode(c_node_idx=255, c_parent_idx=201, mojo_node_idx=252, mojo_parent_idx=198) 
			# arrow without wedges 
			WhitespaceNode(c_node_idx=256, c_parent_idx=201, mojo_node_idx=253, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=257, c_parent_idx=201, mojo_node_idx=254, mojo_parent_idx=198) 
			mjGEOM_ARROW2 , 
			WhitespaceNode(c_node_idx=258, c_parent_idx=201, mojo_node_idx=255, mojo_parent_idx=198) 
			                  
			SingleLineCommentNode(c_node_idx=259, c_parent_idx=201, mojo_node_idx=256, mojo_parent_idx=198) 
			# arrow in both directions 
			WhitespaceNode(c_node_idx=260, c_parent_idx=201, mojo_node_idx=257, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=261, c_parent_idx=201, mojo_node_idx=258, mojo_parent_idx=198) 
			mjGEOM_LINE , 
			WhitespaceNode(c_node_idx=262, c_parent_idx=201, mojo_node_idx=259, mojo_parent_idx=198) 
			                    
			SingleLineCommentNode(c_node_idx=263, c_parent_idx=201, mojo_node_idx=260, mojo_parent_idx=198) 
			# line 
			WhitespaceNode(c_node_idx=264, c_parent_idx=201, mojo_node_idx=261, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=265, c_parent_idx=201, mojo_node_idx=262, mojo_parent_idx=198) 
			mjGEOM_LINEBOX , 
			WhitespaceNode(c_node_idx=266, c_parent_idx=201, mojo_node_idx=263, mojo_parent_idx=198) 
			                 
			SingleLineCommentNode(c_node_idx=267, c_parent_idx=201, mojo_node_idx=264, mojo_parent_idx=198) 
			# box with line edges 
			WhitespaceNode(c_node_idx=268, c_parent_idx=201, mojo_node_idx=265, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=269, c_parent_idx=201, mojo_node_idx=266, mojo_parent_idx=198) 
			mjGEOM_FLEX , 
			WhitespaceNode(c_node_idx=270, c_parent_idx=201, mojo_node_idx=267, mojo_parent_idx=198) 
			                    
			SingleLineCommentNode(c_node_idx=271, c_parent_idx=201, mojo_node_idx=268, mojo_parent_idx=198) 
			# flex 
			WhitespaceNode(c_node_idx=272, c_parent_idx=201, mojo_node_idx=269, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=273, c_parent_idx=201, mojo_node_idx=270, mojo_parent_idx=198) 
			mjGEOM_SKIN , 
			WhitespaceNode(c_node_idx=274, c_parent_idx=201, mojo_node_idx=271, mojo_parent_idx=198) 
			                    
			SingleLineCommentNode(c_node_idx=275, c_parent_idx=201, mojo_node_idx=272, mojo_parent_idx=198) 
			# skin 
			WhitespaceNode(c_node_idx=276, c_parent_idx=201, mojo_node_idx=273, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=277, c_parent_idx=201, mojo_node_idx=274, mojo_parent_idx=198) 
			mjGEOM_LABEL , 
			WhitespaceNode(c_node_idx=278, c_parent_idx=201, mojo_node_idx=275, mojo_parent_idx=198) 
			                   
			SingleLineCommentNode(c_node_idx=279, c_parent_idx=201, mojo_node_idx=276, mojo_parent_idx=198) 
			# text label 
			WhitespaceNode(c_node_idx=280, c_parent_idx=201, mojo_node_idx=277, mojo_parent_idx=198) 
			  
			PlaceHolderNode(c_node_idx=281, c_parent_idx=201, mojo_node_idx=278, mojo_parent_idx=198) 
			mjGEOM_TRIANGLE , 
			WhitespaceNode(c_node_idx=282, c_parent_idx=201, mojo_node_idx=279, mojo_parent_idx=198) 
			                
			SingleLineCommentNode(c_node_idx=283, c_parent_idx=201, mojo_node_idx=280, mojo_parent_idx=198) 
			# triangle 
			WhitespaceNode(c_node_idx=284, c_parent_idx=201, mojo_node_idx=281, mojo_parent_idx=198) 
			 
			  
			PlaceHolderNode(c_node_idx=285, c_parent_idx=201, mojo_node_idx=282, mojo_parent_idx=198) 
			mjGEOM_NONE         = 1001 
			WhitespaceNode(c_node_idx=286, c_parent_idx=201, mojo_node_idx=283, mojo_parent_idx=198) 
			     
			SingleLineCommentNode(c_node_idx=287, c_parent_idx=201, mojo_node_idx=284, mojo_parent_idx=198) 
			# missing geom type 
			} 
		alias mjtGeom = mjtGeom_ 
		WhitespaceNode(c_node_idx=289, c_parent_idx=15, mojo_node_idx=285, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtCamLight, c_node_idx=290, c_parent_idx=15, mojo_node_idx=286, mojo_parent_idx=15, c_children_idxs=291, 314, mojo_children_idxs=287) 
		EnumNode(name=mjtCamLight_, c_node_idx=291, c_parent_idx=290, mojo_node_idx=287, mojo_parent_idx=286, c_children_idxs=292, mojo_children_idxs=288) 
		#  enum mjtCamLight_ 
			PlaceHolderNode(c_node_idx=292, c_parent_idx=291, mojo_node_idx=288, mojo_parent_idx=287, c_children_idxs=293, 294, 295, 296, 297, 298, ... len=21, mojo_children_idxs=289, 290, 291, 292, 293, 294, ... len=21) 
			{ 
			WhitespaceNode(c_node_idx=293, c_parent_idx=292, mojo_node_idx=289, mojo_parent_idx=288) 
			      
			SingleLineCommentNode(c_node_idx=294, c_parent_idx=292, mojo_node_idx=290, mojo_parent_idx=288) 
			# tracking mode for camera and light 
			WhitespaceNode(c_node_idx=295, c_parent_idx=292, mojo_node_idx=291, mojo_parent_idx=288) 
			  
			PlaceHolderNode(c_node_idx=296, c_parent_idx=292, mojo_node_idx=292, mojo_parent_idx=288) 
			mjCAMLIGHT_FIXED    = 0 , 
			WhitespaceNode(c_node_idx=297, c_parent_idx=292, mojo_node_idx=293, mojo_parent_idx=288) 
			        
			SingleLineCommentNode(c_node_idx=298, c_parent_idx=292, mojo_node_idx=294, mojo_parent_idx=288) 
			# pos and rot fixed in body 
			WhitespaceNode(c_node_idx=299, c_parent_idx=292, mojo_node_idx=295, mojo_parent_idx=288) 
			  
			PlaceHolderNode(c_node_idx=300, c_parent_idx=292, mojo_node_idx=296, mojo_parent_idx=288) 
			mjCAMLIGHT_TRACK , 
			WhitespaceNode(c_node_idx=301, c_parent_idx=292, mojo_node_idx=297, mojo_parent_idx=288) 
			               
			SingleLineCommentNode(c_node_idx=302, c_parent_idx=292, mojo_node_idx=298, mojo_parent_idx=288) 
			# pos tracks body ,  rot fixed in global 
			WhitespaceNode(c_node_idx=303, c_parent_idx=292, mojo_node_idx=299, mojo_parent_idx=288) 
			  
			PlaceHolderNode(c_node_idx=304, c_parent_idx=292, mojo_node_idx=300, mojo_parent_idx=288) 
			mjCAMLIGHT_TRACKCOM , 
			WhitespaceNode(c_node_idx=305, c_parent_idx=292, mojo_node_idx=301, mojo_parent_idx=288) 
			            
			SingleLineCommentNode(c_node_idx=306, c_parent_idx=292, mojo_node_idx=302, mojo_parent_idx=288) 
			# pos tracks subtree com ,  rot fixed in body 
			WhitespaceNode(c_node_idx=307, c_parent_idx=292, mojo_node_idx=303, mojo_parent_idx=288) 
			  
			PlaceHolderNode(c_node_idx=308, c_parent_idx=292, mojo_node_idx=304, mojo_parent_idx=288) 
			mjCAMLIGHT_TARGETBODY , 
			WhitespaceNode(c_node_idx=309, c_parent_idx=292, mojo_node_idx=305, mojo_parent_idx=288) 
			          
			SingleLineCommentNode(c_node_idx=310, c_parent_idx=292, mojo_node_idx=306, mojo_parent_idx=288) 
			# pos fixed in body ,  rot tracks target body 
			WhitespaceNode(c_node_idx=311, c_parent_idx=292, mojo_node_idx=307, mojo_parent_idx=288) 
			  
			PlaceHolderNode(c_node_idx=312, c_parent_idx=292, mojo_node_idx=308, mojo_parent_idx=288) 
			mjCAMLIGHT_TARGETBODYCOM        
			SingleLineCommentNode(c_node_idx=313, c_parent_idx=292, mojo_node_idx=309, mojo_parent_idx=288) 
			# pos fixed in body ,  rot tracks target subtree com 
			} 
		alias mjtCamLight = mjtCamLight_ 
		WhitespaceNode(c_node_idx=315, c_parent_idx=15, mojo_node_idx=310, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtTexture, c_node_idx=316, c_parent_idx=15, mojo_node_idx=311, mojo_parent_idx=15, c_children_idxs=317, 332, mojo_children_idxs=312) 
		EnumNode(name=mjtTexture_, c_node_idx=317, c_parent_idx=316, mojo_node_idx=312, mojo_parent_idx=311, c_children_idxs=318, mojo_children_idxs=313) 
		#  enum mjtTexture_ 
			PlaceHolderNode(c_node_idx=318, c_parent_idx=317, mojo_node_idx=313, mojo_parent_idx=312, c_children_idxs=319, 320, 321, 322, 323, 324, ... len=13, mojo_children_idxs=314, 315, 316, 317, 318, 319, ... len=13) 
			{ 
			WhitespaceNode(c_node_idx=319, c_parent_idx=318, mojo_node_idx=314, mojo_parent_idx=313) 
			       
			SingleLineCommentNode(c_node_idx=320, c_parent_idx=318, mojo_node_idx=315, mojo_parent_idx=313) 
			# type of texture 
			WhitespaceNode(c_node_idx=321, c_parent_idx=318, mojo_node_idx=316, mojo_parent_idx=313) 
			  
			PlaceHolderNode(c_node_idx=322, c_parent_idx=318, mojo_node_idx=317, mojo_parent_idx=313) 
			mjTEXTURE_2D        = 0 , 
			WhitespaceNode(c_node_idx=323, c_parent_idx=318, mojo_node_idx=318, mojo_parent_idx=313) 
			        
			SingleLineCommentNode(c_node_idx=324, c_parent_idx=318, mojo_node_idx=319, mojo_parent_idx=313) 
			# 2d texture ,  suitable for planes and hfields 
			WhitespaceNode(c_node_idx=325, c_parent_idx=318, mojo_node_idx=320, mojo_parent_idx=313) 
			  
			PlaceHolderNode(c_node_idx=326, c_parent_idx=318, mojo_node_idx=321, mojo_parent_idx=313) 
			mjTEXTURE_CUBE , 
			WhitespaceNode(c_node_idx=327, c_parent_idx=318, mojo_node_idx=322, mojo_parent_idx=313) 
			                 
			SingleLineCommentNode(c_node_idx=328, c_parent_idx=318, mojo_node_idx=323, mojo_parent_idx=313) 
			# cube texture ,  suitable for all other geom types 
			WhitespaceNode(c_node_idx=329, c_parent_idx=318, mojo_node_idx=324, mojo_parent_idx=313) 
			  
			PlaceHolderNode(c_node_idx=330, c_parent_idx=318, mojo_node_idx=325, mojo_parent_idx=313) 
			mjTEXTURE_SKYBOX                
			SingleLineCommentNode(c_node_idx=331, c_parent_idx=318, mojo_node_idx=326, mojo_parent_idx=313) 
			# cube texture used as skybox 
			} 
		alias mjtTexture = mjtTexture_ 
		WhitespaceNode(c_node_idx=333, c_parent_idx=15, mojo_node_idx=327, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtIntegrator, c_node_idx=334, c_parent_idx=15, mojo_node_idx=328, mojo_parent_idx=15, c_children_idxs=335, 397, mojo_children_idxs=329) 
		EnumNode(name=mjtTextureRole_, c_node_idx=335, c_parent_idx=334, mojo_node_idx=329, mojo_parent_idx=328, c_children_idxs=336, mojo_children_idxs=330) 
		#  enum mjtTextureRole_ 
			PlaceHolderNode(c_node_idx=336, c_parent_idx=335, mojo_node_idx=330, mojo_parent_idx=329, c_children_idxs=337, 338, 339, 340, 341, 342, ... len=60, mojo_children_idxs=331, 332, 333, 334, 335, 336, ... len=60) 
			{ 
			WhitespaceNode(c_node_idx=337, c_parent_idx=336, mojo_node_idx=331, mojo_parent_idx=330) 
			   
			SingleLineCommentNode(c_node_idx=338, c_parent_idx=336, mojo_node_idx=332, mojo_parent_idx=330) 
			# role of texture map in rendering 
			WhitespaceNode(c_node_idx=339, c_parent_idx=336, mojo_node_idx=333, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=340, c_parent_idx=336, mojo_node_idx=334, mojo_parent_idx=330) 
			mjTEXROLE_USER      = 0 , 
			WhitespaceNode(c_node_idx=341, c_parent_idx=336, mojo_node_idx=335, mojo_parent_idx=330) 
			        
			SingleLineCommentNode(c_node_idx=342, c_parent_idx=336, mojo_node_idx=336, mojo_parent_idx=330) 
			# unspecified 
			WhitespaceNode(c_node_idx=343, c_parent_idx=336, mojo_node_idx=337, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=344, c_parent_idx=336, mojo_node_idx=338, mojo_parent_idx=330) 
			mjTEXROLE_RGB , 
			WhitespaceNode(c_node_idx=345, c_parent_idx=336, mojo_node_idx=339, mojo_parent_idx=330) 
			                  
			SingleLineCommentNode(c_node_idx=346, c_parent_idx=336, mojo_node_idx=340, mojo_parent_idx=330) 
			# base color (albedo) 
			WhitespaceNode(c_node_idx=347, c_parent_idx=336, mojo_node_idx=341, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=348, c_parent_idx=336, mojo_node_idx=342, mojo_parent_idx=330) 
			mjTEXROLE_OCCLUSION , 
			WhitespaceNode(c_node_idx=349, c_parent_idx=336, mojo_node_idx=343, mojo_parent_idx=330) 
			            
			SingleLineCommentNode(c_node_idx=350, c_parent_idx=336, mojo_node_idx=344, mojo_parent_idx=330) 
			# ambient occlusion 
			WhitespaceNode(c_node_idx=351, c_parent_idx=336, mojo_node_idx=345, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=352, c_parent_idx=336, mojo_node_idx=346, mojo_parent_idx=330) 
			mjTEXROLE_ROUGHNESS , 
			WhitespaceNode(c_node_idx=353, c_parent_idx=336, mojo_node_idx=347, mojo_parent_idx=330) 
			            
			SingleLineCommentNode(c_node_idx=354, c_parent_idx=336, mojo_node_idx=348, mojo_parent_idx=330) 
			# roughness 
			WhitespaceNode(c_node_idx=355, c_parent_idx=336, mojo_node_idx=349, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=356, c_parent_idx=336, mojo_node_idx=350, mojo_parent_idx=330) 
			mjTEXROLE_METALLIC , 
			WhitespaceNode(c_node_idx=357, c_parent_idx=336, mojo_node_idx=351, mojo_parent_idx=330) 
			             
			SingleLineCommentNode(c_node_idx=358, c_parent_idx=336, mojo_node_idx=352, mojo_parent_idx=330) 
			# metallic 
			WhitespaceNode(c_node_idx=359, c_parent_idx=336, mojo_node_idx=353, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=360, c_parent_idx=336, mojo_node_idx=354, mojo_parent_idx=330) 
			mjTEXROLE_NORMAL , 
			WhitespaceNode(c_node_idx=361, c_parent_idx=336, mojo_node_idx=355, mojo_parent_idx=330) 
			               
			SingleLineCommentNode(c_node_idx=362, c_parent_idx=336, mojo_node_idx=356, mojo_parent_idx=330) 
			# normal (bump) map 
			WhitespaceNode(c_node_idx=363, c_parent_idx=336, mojo_node_idx=357, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=364, c_parent_idx=336, mojo_node_idx=358, mojo_parent_idx=330) 
			mjTEXROLE_OPACITY , 
			WhitespaceNode(c_node_idx=365, c_parent_idx=336, mojo_node_idx=359, mojo_parent_idx=330) 
			              
			SingleLineCommentNode(c_node_idx=366, c_parent_idx=336, mojo_node_idx=360, mojo_parent_idx=330) 
			# transperancy 
			WhitespaceNode(c_node_idx=367, c_parent_idx=336, mojo_node_idx=361, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=368, c_parent_idx=336, mojo_node_idx=362, mojo_parent_idx=330) 
			mjTEXROLE_EMISSIVE , 
			WhitespaceNode(c_node_idx=369, c_parent_idx=336, mojo_node_idx=363, mojo_parent_idx=330) 
			             
			SingleLineCommentNode(c_node_idx=370, c_parent_idx=336, mojo_node_idx=364, mojo_parent_idx=330) 
			# light emission 
			WhitespaceNode(c_node_idx=371, c_parent_idx=336, mojo_node_idx=365, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=372, c_parent_idx=336, mojo_node_idx=366, mojo_parent_idx=330) 
			mjTEXROLE_RGBA , 
			WhitespaceNode(c_node_idx=373, c_parent_idx=336, mojo_node_idx=367, mojo_parent_idx=330) 
			                 
			SingleLineCommentNode(c_node_idx=374, c_parent_idx=336, mojo_node_idx=368, mojo_parent_idx=330) 
			# base color ,  opacity 
			WhitespaceNode(c_node_idx=375, c_parent_idx=336, mojo_node_idx=369, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=376, c_parent_idx=336, mojo_node_idx=370, mojo_parent_idx=330) 
			mjTEXROLE_ORM , 
			WhitespaceNode(c_node_idx=377, c_parent_idx=336, mojo_node_idx=371, mojo_parent_idx=330) 
			                  
			SingleLineCommentNode(c_node_idx=378, c_parent_idx=336, mojo_node_idx=372, mojo_parent_idx=330) 
			# occlusion ,  roughness ,  metallic 
			WhitespaceNode(c_node_idx=379, c_parent_idx=336, mojo_node_idx=373, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=380, c_parent_idx=336, mojo_node_idx=374, mojo_parent_idx=330) 
			mjNTEXROLE 
			} mjtTextureRole ;  
			 
			 
			typedef enum mjtIntegrator_ {     
			SingleLineCommentNode(c_node_idx=381, c_parent_idx=336, mojo_node_idx=375, mojo_parent_idx=330) 
			# integrator mode 
			WhitespaceNode(c_node_idx=382, c_parent_idx=336, mojo_node_idx=376, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=383, c_parent_idx=336, mojo_node_idx=377, mojo_parent_idx=330) 
			mjINT_EULER         = 0 , 
			WhitespaceNode(c_node_idx=384, c_parent_idx=336, mojo_node_idx=378, mojo_parent_idx=330) 
			        
			SingleLineCommentNode(c_node_idx=385, c_parent_idx=336, mojo_node_idx=379, mojo_parent_idx=330) 
			# semi-implicit Euler 
			WhitespaceNode(c_node_idx=386, c_parent_idx=336, mojo_node_idx=380, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=387, c_parent_idx=336, mojo_node_idx=381, mojo_parent_idx=330) 
			mjINT_RK4 , 
			WhitespaceNode(c_node_idx=388, c_parent_idx=336, mojo_node_idx=382, mojo_parent_idx=330) 
			                      
			SingleLineCommentNode(c_node_idx=389, c_parent_idx=336, mojo_node_idx=383, mojo_parent_idx=330) 
			# 4th-order Runge Kutta 
			WhitespaceNode(c_node_idx=390, c_parent_idx=336, mojo_node_idx=384, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=391, c_parent_idx=336, mojo_node_idx=385, mojo_parent_idx=330) 
			mjINT_IMPLICIT , 
			WhitespaceNode(c_node_idx=392, c_parent_idx=336, mojo_node_idx=386, mojo_parent_idx=330) 
			                 
			SingleLineCommentNode(c_node_idx=393, c_parent_idx=336, mojo_node_idx=387, mojo_parent_idx=330) 
			# implicit in velocity 
			WhitespaceNode(c_node_idx=394, c_parent_idx=336, mojo_node_idx=388, mojo_parent_idx=330) 
			  
			PlaceHolderNode(c_node_idx=395, c_parent_idx=336, mojo_node_idx=389, mojo_parent_idx=330) 
			mjINT_IMPLICITFAST              
			SingleLineCommentNode(c_node_idx=396, c_parent_idx=336, mojo_node_idx=390, mojo_parent_idx=330) 
			# implicit in velocity ,  no rne derivative 
			} 
		alias mjtIntegrator = mjtTextureRole_ 
		WhitespaceNode(c_node_idx=398, c_parent_idx=15, mojo_node_idx=391, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtCone, c_node_idx=399, c_parent_idx=15, mojo_node_idx=392, mojo_parent_idx=15, c_children_idxs=400, 411, mojo_children_idxs=393) 
		EnumNode(name=mjtCone_, c_node_idx=400, c_parent_idx=399, mojo_node_idx=393, mojo_parent_idx=392, c_children_idxs=401, mojo_children_idxs=394) 
		#  enum mjtCone_ 
			PlaceHolderNode(c_node_idx=401, c_parent_idx=400, mojo_node_idx=394, mojo_parent_idx=393, c_children_idxs=402, 403, 404, 405, 406, 407, ... len=9, mojo_children_idxs=395, 396, 397, 398, 399, 400, ... len=9) 
			{ 
			WhitespaceNode(c_node_idx=402, c_parent_idx=401, mojo_node_idx=395, mojo_parent_idx=394) 
			          
			SingleLineCommentNode(c_node_idx=403, c_parent_idx=401, mojo_node_idx=396, mojo_parent_idx=394) 
			# type of friction cone 
			WhitespaceNode(c_node_idx=404, c_parent_idx=401, mojo_node_idx=397, mojo_parent_idx=394) 
			  
			PlaceHolderNode(c_node_idx=405, c_parent_idx=401, mojo_node_idx=398, mojo_parent_idx=394) 
			mjCONE_PYRAMIDAL     = 0 , 
			WhitespaceNode(c_node_idx=406, c_parent_idx=401, mojo_node_idx=399, mojo_parent_idx=394) 
			       
			SingleLineCommentNode(c_node_idx=407, c_parent_idx=401, mojo_node_idx=400, mojo_parent_idx=394) 
			# pyramidal 
			WhitespaceNode(c_node_idx=408, c_parent_idx=401, mojo_node_idx=401, mojo_parent_idx=394) 
			  
			PlaceHolderNode(c_node_idx=409, c_parent_idx=401, mojo_node_idx=402, mojo_parent_idx=394) 
			mjCONE_ELLIPTIC                 
			SingleLineCommentNode(c_node_idx=410, c_parent_idx=401, mojo_node_idx=403, mojo_parent_idx=394) 
			# elliptic 
			} 
		alias mjtCone = mjtCone_ 
		WhitespaceNode(c_node_idx=412, c_parent_idx=15, mojo_node_idx=404, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtJacobian, c_node_idx=413, c_parent_idx=15, mojo_node_idx=405, mojo_parent_idx=15, c_children_idxs=414, 429, mojo_children_idxs=406) 
		EnumNode(name=mjtJacobian_, c_node_idx=414, c_parent_idx=413, mojo_node_idx=406, mojo_parent_idx=405, c_children_idxs=415, mojo_children_idxs=407) 
		#  enum mjtJacobian_ 
			PlaceHolderNode(c_node_idx=415, c_parent_idx=414, mojo_node_idx=407, mojo_parent_idx=406, c_children_idxs=416, 417, 418, 419, 420, 421, ... len=13, mojo_children_idxs=408, 409, 410, 411, 412, 413, ... len=13) 
			{ 
			WhitespaceNode(c_node_idx=416, c_parent_idx=415, mojo_node_idx=408, mojo_parent_idx=407) 
			      
			SingleLineCommentNode(c_node_idx=417, c_parent_idx=415, mojo_node_idx=409, mojo_parent_idx=407) 
			# type of constraint Jacobian 
			WhitespaceNode(c_node_idx=418, c_parent_idx=415, mojo_node_idx=410, mojo_parent_idx=407) 
			  
			PlaceHolderNode(c_node_idx=419, c_parent_idx=415, mojo_node_idx=411, mojo_parent_idx=407) 
			mjJAC_DENSE          = 0 , 
			WhitespaceNode(c_node_idx=420, c_parent_idx=415, mojo_node_idx=412, mojo_parent_idx=407) 
			       
			SingleLineCommentNode(c_node_idx=421, c_parent_idx=415, mojo_node_idx=413, mojo_parent_idx=407) 
			# dense 
			WhitespaceNode(c_node_idx=422, c_parent_idx=415, mojo_node_idx=414, mojo_parent_idx=407) 
			  
			PlaceHolderNode(c_node_idx=423, c_parent_idx=415, mojo_node_idx=415, mojo_parent_idx=407) 
			mjJAC_SPARSE , 
			WhitespaceNode(c_node_idx=424, c_parent_idx=415, mojo_node_idx=416, mojo_parent_idx=407) 
			                   
			SingleLineCommentNode(c_node_idx=425, c_parent_idx=415, mojo_node_idx=417, mojo_parent_idx=407) 
			# sparse 
			WhitespaceNode(c_node_idx=426, c_parent_idx=415, mojo_node_idx=418, mojo_parent_idx=407) 
			  
			PlaceHolderNode(c_node_idx=427, c_parent_idx=415, mojo_node_idx=419, mojo_parent_idx=407) 
			mjJAC_AUTO                      
			SingleLineCommentNode(c_node_idx=428, c_parent_idx=415, mojo_node_idx=420, mojo_parent_idx=407) 
			# dense if nv<60 ,  sparse otherwise 
			} 
		alias mjtJacobian = mjtJacobian_ 
		WhitespaceNode(c_node_idx=430, c_parent_idx=15, mojo_node_idx=421, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtSolver, c_node_idx=431, c_parent_idx=15, mojo_node_idx=422, mojo_parent_idx=15, c_children_idxs=432, 447, mojo_children_idxs=423) 
		EnumNode(name=mjtSolver_, c_node_idx=432, c_parent_idx=431, mojo_node_idx=423, mojo_parent_idx=422, c_children_idxs=433, mojo_children_idxs=424) 
		#  enum mjtSolver_ 
			PlaceHolderNode(c_node_idx=433, c_parent_idx=432, mojo_node_idx=424, mojo_parent_idx=423, c_children_idxs=434, 435, 436, 437, 438, 439, ... len=13, mojo_children_idxs=425, 426, 427, 428, 429, 430, ... len=13) 
			{ 
			WhitespaceNode(c_node_idx=434, c_parent_idx=433, mojo_node_idx=425, mojo_parent_idx=424) 
			        
			SingleLineCommentNode(c_node_idx=435, c_parent_idx=433, mojo_node_idx=426, mojo_parent_idx=424) 
			# constraint solver algorithm 
			WhitespaceNode(c_node_idx=436, c_parent_idx=433, mojo_node_idx=427, mojo_parent_idx=424) 
			  
			PlaceHolderNode(c_node_idx=437, c_parent_idx=433, mojo_node_idx=428, mojo_parent_idx=424) 
			mjSOL_PGS            = 0 , 
			WhitespaceNode(c_node_idx=438, c_parent_idx=433, mojo_node_idx=429, mojo_parent_idx=424) 
			       
			SingleLineCommentNode(c_node_idx=439, c_parent_idx=433, mojo_node_idx=430, mojo_parent_idx=424) 
			# PGS    (dual) 
			WhitespaceNode(c_node_idx=440, c_parent_idx=433, mojo_node_idx=431, mojo_parent_idx=424) 
			  
			PlaceHolderNode(c_node_idx=441, c_parent_idx=433, mojo_node_idx=432, mojo_parent_idx=424) 
			mjSOL_CG , 
			WhitespaceNode(c_node_idx=442, c_parent_idx=433, mojo_node_idx=433, mojo_parent_idx=424) 
			                       
			SingleLineCommentNode(c_node_idx=443, c_parent_idx=433, mojo_node_idx=434, mojo_parent_idx=424) 
			# CG     (primal) 
			WhitespaceNode(c_node_idx=444, c_parent_idx=433, mojo_node_idx=435, mojo_parent_idx=424) 
			  
			PlaceHolderNode(c_node_idx=445, c_parent_idx=433, mojo_node_idx=436, mojo_parent_idx=424) 
			mjSOL_NEWTON                    
			SingleLineCommentNode(c_node_idx=446, c_parent_idx=433, mojo_node_idx=437, mojo_parent_idx=424) 
			# Newton (primal) 
			} 
		alias mjtSolver = mjtSolver_ 
		WhitespaceNode(c_node_idx=448, c_parent_idx=15, mojo_node_idx=438, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtEq, c_node_idx=449, c_parent_idx=15, mojo_node_idx=439, mojo_parent_idx=15, c_children_idxs=450, 477, mojo_children_idxs=440) 
		EnumNode(name=mjtEq_, c_node_idx=450, c_parent_idx=449, mojo_node_idx=440, mojo_parent_idx=439, c_children_idxs=451, mojo_children_idxs=441) 
		#  enum mjtEq_ 
			PlaceHolderNode(c_node_idx=451, c_parent_idx=450, mojo_node_idx=441, mojo_parent_idx=440, c_children_idxs=452, 453, 454, 455, 456, 457, ... len=25, mojo_children_idxs=442, 443, 444, 445, 446, 447, ... len=25) 
			{ 
			WhitespaceNode(c_node_idx=452, c_parent_idx=451, mojo_node_idx=442, mojo_parent_idx=441) 
			            
			SingleLineCommentNode(c_node_idx=453, c_parent_idx=451, mojo_node_idx=443, mojo_parent_idx=441) 
			# type of equality constraint 
			WhitespaceNode(c_node_idx=454, c_parent_idx=451, mojo_node_idx=444, mojo_parent_idx=441) 
			  
			PlaceHolderNode(c_node_idx=455, c_parent_idx=451, mojo_node_idx=445, mojo_parent_idx=441) 
			mjEQ_CONNECT        = 0 , 
			WhitespaceNode(c_node_idx=456, c_parent_idx=451, mojo_node_idx=446, mojo_parent_idx=441) 
			        
			SingleLineCommentNode(c_node_idx=457, c_parent_idx=451, mojo_node_idx=447, mojo_parent_idx=441) 
			# connect two bodies at a point (ball joint) 
			WhitespaceNode(c_node_idx=458, c_parent_idx=451, mojo_node_idx=448, mojo_parent_idx=441) 
			  
			PlaceHolderNode(c_node_idx=459, c_parent_idx=451, mojo_node_idx=449, mojo_parent_idx=441) 
			mjEQ_WELD , 
			WhitespaceNode(c_node_idx=460, c_parent_idx=451, mojo_node_idx=450, mojo_parent_idx=441) 
			                      
			SingleLineCommentNode(c_node_idx=461, c_parent_idx=451, mojo_node_idx=451, mojo_parent_idx=441) 
			# fix relative position and orientation of two bodies 
			WhitespaceNode(c_node_idx=462, c_parent_idx=451, mojo_node_idx=452, mojo_parent_idx=441) 
			  
			PlaceHolderNode(c_node_idx=463, c_parent_idx=451, mojo_node_idx=453, mojo_parent_idx=441) 
			mjEQ_JOINT , 
			WhitespaceNode(c_node_idx=464, c_parent_idx=451, mojo_node_idx=454, mojo_parent_idx=441) 
			                     
			SingleLineCommentNode(c_node_idx=465, c_parent_idx=451, mojo_node_idx=455, mojo_parent_idx=441) 
			# couple the values of two scalar joints with cubic 
			WhitespaceNode(c_node_idx=466, c_parent_idx=451, mojo_node_idx=456, mojo_parent_idx=441) 
			  
			PlaceHolderNode(c_node_idx=467, c_parent_idx=451, mojo_node_idx=457, mojo_parent_idx=441) 
			mjEQ_TENDON , 
			WhitespaceNode(c_node_idx=468, c_parent_idx=451, mojo_node_idx=458, mojo_parent_idx=441) 
			                    
			SingleLineCommentNode(c_node_idx=469, c_parent_idx=451, mojo_node_idx=459, mojo_parent_idx=441) 
			# couple the lengths of two tendons with cubic 
			WhitespaceNode(c_node_idx=470, c_parent_idx=451, mojo_node_idx=460, mojo_parent_idx=441) 
			  
			PlaceHolderNode(c_node_idx=471, c_parent_idx=451, mojo_node_idx=461, mojo_parent_idx=441) 
			mjEQ_FLEX , 
			WhitespaceNode(c_node_idx=472, c_parent_idx=451, mojo_node_idx=462, mojo_parent_idx=441) 
			                      
			SingleLineCommentNode(c_node_idx=473, c_parent_idx=451, mojo_node_idx=463, mojo_parent_idx=441) 
			# fix all edge lengths of a flex 
			WhitespaceNode(c_node_idx=474, c_parent_idx=451, mojo_node_idx=464, mojo_parent_idx=441) 
			  
			PlaceHolderNode(c_node_idx=475, c_parent_idx=451, mojo_node_idx=465, mojo_parent_idx=441) 
			mjEQ_DISTANCE                   
			SingleLineCommentNode(c_node_idx=476, c_parent_idx=451, mojo_node_idx=466, mojo_parent_idx=441) 
			# unsupported ,  will cause an error if used 
			} 
		alias mjtEq = mjtEq_ 
		WhitespaceNode(c_node_idx=478, c_parent_idx=15, mojo_node_idx=467, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtWrap, c_node_idx=479, c_parent_idx=15, mojo_node_idx=468, mojo_parent_idx=15, c_children_idxs=480, 507, mojo_children_idxs=469) 
		EnumNode(name=mjtWrap_, c_node_idx=480, c_parent_idx=479, mojo_node_idx=469, mojo_parent_idx=468, c_children_idxs=481, mojo_children_idxs=470) 
		#  enum mjtWrap_ 
			PlaceHolderNode(c_node_idx=481, c_parent_idx=480, mojo_node_idx=470, mojo_parent_idx=469, c_children_idxs=482, 483, 484, 485, 486, 487, ... len=25, mojo_children_idxs=471, 472, 473, 474, 475, 476, ... len=25) 
			{ 
			WhitespaceNode(c_node_idx=482, c_parent_idx=481, mojo_node_idx=471, mojo_parent_idx=470) 
			          
			SingleLineCommentNode(c_node_idx=483, c_parent_idx=481, mojo_node_idx=472, mojo_parent_idx=470) 
			# type of tendon wrap object 
			WhitespaceNode(c_node_idx=484, c_parent_idx=481, mojo_node_idx=473, mojo_parent_idx=470) 
			  
			PlaceHolderNode(c_node_idx=485, c_parent_idx=481, mojo_node_idx=474, mojo_parent_idx=470) 
			mjWRAP_NONE         = 0 , 
			WhitespaceNode(c_node_idx=486, c_parent_idx=481, mojo_node_idx=475, mojo_parent_idx=470) 
			        
			SingleLineCommentNode(c_node_idx=487, c_parent_idx=481, mojo_node_idx=476, mojo_parent_idx=470) 
			# null object 
			WhitespaceNode(c_node_idx=488, c_parent_idx=481, mojo_node_idx=477, mojo_parent_idx=470) 
			  
			PlaceHolderNode(c_node_idx=489, c_parent_idx=481, mojo_node_idx=478, mojo_parent_idx=470) 
			mjWRAP_JOINT , 
			WhitespaceNode(c_node_idx=490, c_parent_idx=481, mojo_node_idx=479, mojo_parent_idx=470) 
			                   
			SingleLineCommentNode(c_node_idx=491, c_parent_idx=481, mojo_node_idx=480, mojo_parent_idx=470) 
			# constant moment arm 
			WhitespaceNode(c_node_idx=492, c_parent_idx=481, mojo_node_idx=481, mojo_parent_idx=470) 
			  
			PlaceHolderNode(c_node_idx=493, c_parent_idx=481, mojo_node_idx=482, mojo_parent_idx=470) 
			mjWRAP_PULLEY , 
			WhitespaceNode(c_node_idx=494, c_parent_idx=481, mojo_node_idx=483, mojo_parent_idx=470) 
			                  
			SingleLineCommentNode(c_node_idx=495, c_parent_idx=481, mojo_node_idx=484, mojo_parent_idx=470) 
			# pulley used to split tendon 
			WhitespaceNode(c_node_idx=496, c_parent_idx=481, mojo_node_idx=485, mojo_parent_idx=470) 
			  
			PlaceHolderNode(c_node_idx=497, c_parent_idx=481, mojo_node_idx=486, mojo_parent_idx=470) 
			mjWRAP_SITE , 
			WhitespaceNode(c_node_idx=498, c_parent_idx=481, mojo_node_idx=487, mojo_parent_idx=470) 
			                    
			SingleLineCommentNode(c_node_idx=499, c_parent_idx=481, mojo_node_idx=488, mojo_parent_idx=470) 
			# pass through site 
			WhitespaceNode(c_node_idx=500, c_parent_idx=481, mojo_node_idx=489, mojo_parent_idx=470) 
			  
			PlaceHolderNode(c_node_idx=501, c_parent_idx=481, mojo_node_idx=490, mojo_parent_idx=470) 
			mjWRAP_SPHERE , 
			WhitespaceNode(c_node_idx=502, c_parent_idx=481, mojo_node_idx=491, mojo_parent_idx=470) 
			                  
			SingleLineCommentNode(c_node_idx=503, c_parent_idx=481, mojo_node_idx=492, mojo_parent_idx=470) 
			# wrap around sphere 
			WhitespaceNode(c_node_idx=504, c_parent_idx=481, mojo_node_idx=493, mojo_parent_idx=470) 
			  
			PlaceHolderNode(c_node_idx=505, c_parent_idx=481, mojo_node_idx=494, mojo_parent_idx=470) 
			mjWRAP_CYLINDER                 
			SingleLineCommentNode(c_node_idx=506, c_parent_idx=481, mojo_node_idx=495, mojo_parent_idx=470) 
			# wrap around (infinite) cylinder 
			} 
		alias mjtWrap = mjtWrap_ 
		WhitespaceNode(c_node_idx=508, c_parent_idx=15, mojo_node_idx=496, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtTrn, c_node_idx=509, c_parent_idx=15, mojo_node_idx=497, mojo_parent_idx=15, c_children_idxs=510, 542, mojo_children_idxs=498) 
		EnumNode(name=mjtTrn_, c_node_idx=510, c_parent_idx=509, mojo_node_idx=498, mojo_parent_idx=497, c_children_idxs=511, mojo_children_idxs=499) 
		#  enum mjtTrn_ 
			PlaceHolderNode(c_node_idx=511, c_parent_idx=510, mojo_node_idx=499, mojo_parent_idx=498, c_children_idxs=512, 513, 514, 515, 516, 517, ... len=30, mojo_children_idxs=500, 501, 502, 503, 504, 505, ... len=30) 
			{ 
			WhitespaceNode(c_node_idx=512, c_parent_idx=511, mojo_node_idx=500, mojo_parent_idx=499) 
			           
			SingleLineCommentNode(c_node_idx=513, c_parent_idx=511, mojo_node_idx=501, mojo_parent_idx=499) 
			# type of actuator transmission 
			WhitespaceNode(c_node_idx=514, c_parent_idx=511, mojo_node_idx=502, mojo_parent_idx=499) 
			  
			PlaceHolderNode(c_node_idx=515, c_parent_idx=511, mojo_node_idx=503, mojo_parent_idx=499) 
			mjTRN_JOINT         = 0 , 
			WhitespaceNode(c_node_idx=516, c_parent_idx=511, mojo_node_idx=504, mojo_parent_idx=499) 
			        
			SingleLineCommentNode(c_node_idx=517, c_parent_idx=511, mojo_node_idx=505, mojo_parent_idx=499) 
			# force on joint 
			WhitespaceNode(c_node_idx=518, c_parent_idx=511, mojo_node_idx=506, mojo_parent_idx=499) 
			  
			PlaceHolderNode(c_node_idx=519, c_parent_idx=511, mojo_node_idx=507, mojo_parent_idx=499) 
			mjTRN_JOINTINPARENT , 
			WhitespaceNode(c_node_idx=520, c_parent_idx=511, mojo_node_idx=508, mojo_parent_idx=499) 
			            
			SingleLineCommentNode(c_node_idx=521, c_parent_idx=511, mojo_node_idx=509, mojo_parent_idx=499) 
			# force on joint ,  expressed in parent frame 
			WhitespaceNode(c_node_idx=522, c_parent_idx=511, mojo_node_idx=510, mojo_parent_idx=499) 
			  
			PlaceHolderNode(c_node_idx=523, c_parent_idx=511, mojo_node_idx=511, mojo_parent_idx=499) 
			mjTRN_SLIDERCRANK , 
			WhitespaceNode(c_node_idx=524, c_parent_idx=511, mojo_node_idx=512, mojo_parent_idx=499) 
			              
			SingleLineCommentNode(c_node_idx=525, c_parent_idx=511, mojo_node_idx=513, mojo_parent_idx=499) 
			# force via slider-crank linkage 
			WhitespaceNode(c_node_idx=526, c_parent_idx=511, mojo_node_idx=514, mojo_parent_idx=499) 
			  
			PlaceHolderNode(c_node_idx=527, c_parent_idx=511, mojo_node_idx=515, mojo_parent_idx=499) 
			mjTRN_TENDON , 
			WhitespaceNode(c_node_idx=528, c_parent_idx=511, mojo_node_idx=516, mojo_parent_idx=499) 
			                   
			SingleLineCommentNode(c_node_idx=529, c_parent_idx=511, mojo_node_idx=517, mojo_parent_idx=499) 
			# force on tendon 
			WhitespaceNode(c_node_idx=530, c_parent_idx=511, mojo_node_idx=518, mojo_parent_idx=499) 
			  
			PlaceHolderNode(c_node_idx=531, c_parent_idx=511, mojo_node_idx=519, mojo_parent_idx=499) 
			mjTRN_SITE , 
			WhitespaceNode(c_node_idx=532, c_parent_idx=511, mojo_node_idx=520, mojo_parent_idx=499) 
			                     
			SingleLineCommentNode(c_node_idx=533, c_parent_idx=511, mojo_node_idx=521, mojo_parent_idx=499) 
			# force on site 
			WhitespaceNode(c_node_idx=534, c_parent_idx=511, mojo_node_idx=522, mojo_parent_idx=499) 
			  
			PlaceHolderNode(c_node_idx=535, c_parent_idx=511, mojo_node_idx=523, mojo_parent_idx=499) 
			mjTRN_BODY , 
			WhitespaceNode(c_node_idx=536, c_parent_idx=511, mojo_node_idx=524, mojo_parent_idx=499) 
			                     
			SingleLineCommentNode(c_node_idx=537, c_parent_idx=511, mojo_node_idx=525, mojo_parent_idx=499) 
			# adhesion force on a body's geoms 
			WhitespaceNode(c_node_idx=538, c_parent_idx=511, mojo_node_idx=526, mojo_parent_idx=499) 
			 
			  
			PlaceHolderNode(c_node_idx=539, c_parent_idx=511, mojo_node_idx=527, mojo_parent_idx=499) 
			mjTRN_UNDEFINED     = 1000 
			WhitespaceNode(c_node_idx=540, c_parent_idx=511, mojo_node_idx=528, mojo_parent_idx=499) 
			     
			SingleLineCommentNode(c_node_idx=541, c_parent_idx=511, mojo_node_idx=529, mojo_parent_idx=499) 
			# undefined transmission type 
			} 
		alias mjtTrn = mjtTrn_ 
		WhitespaceNode(c_node_idx=543, c_parent_idx=15, mojo_node_idx=530, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtDyn, c_node_idx=544, c_parent_idx=15, mojo_node_idx=531, mojo_parent_idx=15, c_children_idxs=545, 572, mojo_children_idxs=532) 
		EnumNode(name=mjtDyn_, c_node_idx=545, c_parent_idx=544, mojo_node_idx=532, mojo_parent_idx=531, c_children_idxs=546, mojo_children_idxs=533) 
		#  enum mjtDyn_ 
			PlaceHolderNode(c_node_idx=546, c_parent_idx=545, mojo_node_idx=533, mojo_parent_idx=532, c_children_idxs=547, 548, 549, 550, 551, 552, ... len=25, mojo_children_idxs=534, 535, 536, 537, 538, 539, ... len=25) 
			{ 
			WhitespaceNode(c_node_idx=547, c_parent_idx=546, mojo_node_idx=534, mojo_parent_idx=533) 
			           
			SingleLineCommentNode(c_node_idx=548, c_parent_idx=546, mojo_node_idx=535, mojo_parent_idx=533) 
			# type of actuator dynamics 
			WhitespaceNode(c_node_idx=549, c_parent_idx=546, mojo_node_idx=536, mojo_parent_idx=533) 
			  
			PlaceHolderNode(c_node_idx=550, c_parent_idx=546, mojo_node_idx=537, mojo_parent_idx=533) 
			mjDYN_NONE          = 0 , 
			WhitespaceNode(c_node_idx=551, c_parent_idx=546, mojo_node_idx=538, mojo_parent_idx=533) 
			        
			SingleLineCommentNode(c_node_idx=552, c_parent_idx=546, mojo_node_idx=539, mojo_parent_idx=533) 
			# no internal dynamics ;  ctrl specifies force 
			WhitespaceNode(c_node_idx=553, c_parent_idx=546, mojo_node_idx=540, mojo_parent_idx=533) 
			  
			PlaceHolderNode(c_node_idx=554, c_parent_idx=546, mojo_node_idx=541, mojo_parent_idx=533) 
			mjDYN_INTEGRATOR , 
			WhitespaceNode(c_node_idx=555, c_parent_idx=546, mojo_node_idx=542, mojo_parent_idx=533) 
			               
			SingleLineCommentNode(c_node_idx=556, c_parent_idx=546, mojo_node_idx=543, mojo_parent_idx=533) 
			# integrator: da/dt = u 
			WhitespaceNode(c_node_idx=557, c_parent_idx=546, mojo_node_idx=544, mojo_parent_idx=533) 
			  
			PlaceHolderNode(c_node_idx=558, c_parent_idx=546, mojo_node_idx=545, mojo_parent_idx=533) 
			mjDYN_FILTER , 
			WhitespaceNode(c_node_idx=559, c_parent_idx=546, mojo_node_idx=546, mojo_parent_idx=533) 
			                   
			SingleLineCommentNode(c_node_idx=560, c_parent_idx=546, mojo_node_idx=547, mojo_parent_idx=533) 
			# linear filter: da/dt = (u-a) / tau 
			WhitespaceNode(c_node_idx=561, c_parent_idx=546, mojo_node_idx=548, mojo_parent_idx=533) 
			  
			PlaceHolderNode(c_node_idx=562, c_parent_idx=546, mojo_node_idx=549, mojo_parent_idx=533) 
			mjDYN_FILTEREXACT , 
			WhitespaceNode(c_node_idx=563, c_parent_idx=546, mojo_node_idx=550, mojo_parent_idx=533) 
			              
			SingleLineCommentNode(c_node_idx=564, c_parent_idx=546, mojo_node_idx=551, mojo_parent_idx=533) 
			# linear filter: da/dt = (u-a) / tau ,  with exact integration 
			WhitespaceNode(c_node_idx=565, c_parent_idx=546, mojo_node_idx=552, mojo_parent_idx=533) 
			  
			PlaceHolderNode(c_node_idx=566, c_parent_idx=546, mojo_node_idx=553, mojo_parent_idx=533) 
			mjDYN_MUSCLE , 
			WhitespaceNode(c_node_idx=567, c_parent_idx=546, mojo_node_idx=554, mojo_parent_idx=533) 
			                   
			SingleLineCommentNode(c_node_idx=568, c_parent_idx=546, mojo_node_idx=555, mojo_parent_idx=533) 
			# piece-wise linear filter with two time constants 
			WhitespaceNode(c_node_idx=569, c_parent_idx=546, mojo_node_idx=556, mojo_parent_idx=533) 
			  
			PlaceHolderNode(c_node_idx=570, c_parent_idx=546, mojo_node_idx=557, mojo_parent_idx=533) 
			mjDYN_USER                      
			SingleLineCommentNode(c_node_idx=571, c_parent_idx=546, mojo_node_idx=558, mojo_parent_idx=533) 
			# user-defined dynamics type 
			} 
		alias mjtDyn = mjtDyn_ 
		WhitespaceNode(c_node_idx=573, c_parent_idx=15, mojo_node_idx=559, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtGain, c_node_idx=574, c_parent_idx=15, mojo_node_idx=560, mojo_parent_idx=15, c_children_idxs=575, 594, mojo_children_idxs=561) 
		EnumNode(name=mjtGain_, c_node_idx=575, c_parent_idx=574, mojo_node_idx=561, mojo_parent_idx=560, c_children_idxs=576, mojo_children_idxs=562) 
		#  enum mjtGain_ 
			PlaceHolderNode(c_node_idx=576, c_parent_idx=575, mojo_node_idx=562, mojo_parent_idx=561, c_children_idxs=577, 578, 579, 580, 581, 582, ... len=17, mojo_children_idxs=563, 564, 565, 566, 567, 568, ... len=17) 
			{ 
			WhitespaceNode(c_node_idx=577, c_parent_idx=576, mojo_node_idx=563, mojo_parent_idx=562) 
			          
			SingleLineCommentNode(c_node_idx=578, c_parent_idx=576, mojo_node_idx=564, mojo_parent_idx=562) 
			# type of actuator gain 
			WhitespaceNode(c_node_idx=579, c_parent_idx=576, mojo_node_idx=565, mojo_parent_idx=562) 
			  
			PlaceHolderNode(c_node_idx=580, c_parent_idx=576, mojo_node_idx=566, mojo_parent_idx=562) 
			mjGAIN_FIXED        = 0 , 
			WhitespaceNode(c_node_idx=581, c_parent_idx=576, mojo_node_idx=567, mojo_parent_idx=562) 
			        
			SingleLineCommentNode(c_node_idx=582, c_parent_idx=576, mojo_node_idx=568, mojo_parent_idx=562) 
			# fixed gain 
			WhitespaceNode(c_node_idx=583, c_parent_idx=576, mojo_node_idx=569, mojo_parent_idx=562) 
			  
			PlaceHolderNode(c_node_idx=584, c_parent_idx=576, mojo_node_idx=570, mojo_parent_idx=562) 
			mjGAIN_AFFINE , 
			WhitespaceNode(c_node_idx=585, c_parent_idx=576, mojo_node_idx=571, mojo_parent_idx=562) 
			                  
			SingleLineCommentNode(c_node_idx=586, c_parent_idx=576, mojo_node_idx=572, mojo_parent_idx=562) 
			# const + kp*length + kv*velocity 
			WhitespaceNode(c_node_idx=587, c_parent_idx=576, mojo_node_idx=573, mojo_parent_idx=562) 
			  
			PlaceHolderNode(c_node_idx=588, c_parent_idx=576, mojo_node_idx=574, mojo_parent_idx=562) 
			mjGAIN_MUSCLE , 
			WhitespaceNode(c_node_idx=589, c_parent_idx=576, mojo_node_idx=575, mojo_parent_idx=562) 
			                  
			SingleLineCommentNode(c_node_idx=590, c_parent_idx=576, mojo_node_idx=576, mojo_parent_idx=562) 
			# muscle FLV curve computed by mju_muscleGain() 
			WhitespaceNode(c_node_idx=591, c_parent_idx=576, mojo_node_idx=577, mojo_parent_idx=562) 
			  
			PlaceHolderNode(c_node_idx=592, c_parent_idx=576, mojo_node_idx=578, mojo_parent_idx=562) 
			mjGAIN_USER                     
			SingleLineCommentNode(c_node_idx=593, c_parent_idx=576, mojo_node_idx=579, mojo_parent_idx=562) 
			# user-defined gain type 
			} 
		alias mjtGain = mjtGain_ 
		WhitespaceNode(c_node_idx=595, c_parent_idx=15, mojo_node_idx=580, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtBias, c_node_idx=596, c_parent_idx=15, mojo_node_idx=581, mojo_parent_idx=15, c_children_idxs=597, 616, mojo_children_idxs=582) 
		EnumNode(name=mjtBias_, c_node_idx=597, c_parent_idx=596, mojo_node_idx=582, mojo_parent_idx=581, c_children_idxs=598, mojo_children_idxs=583) 
		#  enum mjtBias_ 
			PlaceHolderNode(c_node_idx=598, c_parent_idx=597, mojo_node_idx=583, mojo_parent_idx=582, c_children_idxs=599, 600, 601, 602, 603, 604, ... len=17, mojo_children_idxs=584, 585, 586, 587, 588, 589, ... len=17) 
			{ 
			WhitespaceNode(c_node_idx=599, c_parent_idx=598, mojo_node_idx=584, mojo_parent_idx=583) 
			          
			SingleLineCommentNode(c_node_idx=600, c_parent_idx=598, mojo_node_idx=585, mojo_parent_idx=583) 
			# type of actuator bias 
			WhitespaceNode(c_node_idx=601, c_parent_idx=598, mojo_node_idx=586, mojo_parent_idx=583) 
			  
			PlaceHolderNode(c_node_idx=602, c_parent_idx=598, mojo_node_idx=587, mojo_parent_idx=583) 
			mjBIAS_NONE         = 0 , 
			WhitespaceNode(c_node_idx=603, c_parent_idx=598, mojo_node_idx=588, mojo_parent_idx=583) 
			        
			SingleLineCommentNode(c_node_idx=604, c_parent_idx=598, mojo_node_idx=589, mojo_parent_idx=583) 
			# no bias 
			WhitespaceNode(c_node_idx=605, c_parent_idx=598, mojo_node_idx=590, mojo_parent_idx=583) 
			  
			PlaceHolderNode(c_node_idx=606, c_parent_idx=598, mojo_node_idx=591, mojo_parent_idx=583) 
			mjBIAS_AFFINE , 
			WhitespaceNode(c_node_idx=607, c_parent_idx=598, mojo_node_idx=592, mojo_parent_idx=583) 
			                  
			SingleLineCommentNode(c_node_idx=608, c_parent_idx=598, mojo_node_idx=593, mojo_parent_idx=583) 
			# const + kp*length + kv*velocity 
			WhitespaceNode(c_node_idx=609, c_parent_idx=598, mojo_node_idx=594, mojo_parent_idx=583) 
			  
			PlaceHolderNode(c_node_idx=610, c_parent_idx=598, mojo_node_idx=595, mojo_parent_idx=583) 
			mjBIAS_MUSCLE , 
			WhitespaceNode(c_node_idx=611, c_parent_idx=598, mojo_node_idx=596, mojo_parent_idx=583) 
			                  
			SingleLineCommentNode(c_node_idx=612, c_parent_idx=598, mojo_node_idx=597, mojo_parent_idx=583) 
			# muscle passive force computed by mju_muscleBias() 
			WhitespaceNode(c_node_idx=613, c_parent_idx=598, mojo_node_idx=598, mojo_parent_idx=583) 
			  
			PlaceHolderNode(c_node_idx=614, c_parent_idx=598, mojo_node_idx=599, mojo_parent_idx=583) 
			mjBIAS_USER                     
			SingleLineCommentNode(c_node_idx=615, c_parent_idx=598, mojo_node_idx=600, mojo_parent_idx=583) 
			# user-defined bias type 
			} 
		alias mjtBias = mjtBias_ 
		WhitespaceNode(c_node_idx=617, c_parent_idx=15, mojo_node_idx=601, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtObj, c_node_idx=618, c_parent_idx=15, mojo_node_idx=602, mojo_parent_idx=15, c_children_idxs=619, 737, mojo_children_idxs=603) 
		EnumNode(name=mjtObj_, c_node_idx=619, c_parent_idx=618, mojo_node_idx=603, mojo_parent_idx=602, c_children_idxs=620, mojo_children_idxs=604) 
		#  enum mjtObj_ 
			PlaceHolderNode(c_node_idx=620, c_parent_idx=619, mojo_node_idx=604, mojo_parent_idx=603, c_children_idxs=621, 622, 623, 624, 625, 626, ... len=116, mojo_children_idxs=605, 606, 607, 608, 609, 610, ... len=116) 
			{ 
			WhitespaceNode(c_node_idx=621, c_parent_idx=620, mojo_node_idx=605, mojo_parent_idx=604) 
			           
			SingleLineCommentNode(c_node_idx=622, c_parent_idx=620, mojo_node_idx=606, mojo_parent_idx=604) 
			# type of MujoCo object 
			WhitespaceNode(c_node_idx=623, c_parent_idx=620, mojo_node_idx=607, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=624, c_parent_idx=620, mojo_node_idx=608, mojo_parent_idx=604) 
			mjOBJ_UNKNOWN       = 0 , 
			WhitespaceNode(c_node_idx=625, c_parent_idx=620, mojo_node_idx=609, mojo_parent_idx=604) 
			        
			SingleLineCommentNode(c_node_idx=626, c_parent_idx=620, mojo_node_idx=610, mojo_parent_idx=604) 
			# unknown object type 
			WhitespaceNode(c_node_idx=627, c_parent_idx=620, mojo_node_idx=611, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=628, c_parent_idx=620, mojo_node_idx=612, mojo_parent_idx=604) 
			mjOBJ_BODY , 
			WhitespaceNode(c_node_idx=629, c_parent_idx=620, mojo_node_idx=613, mojo_parent_idx=604) 
			                     
			SingleLineCommentNode(c_node_idx=630, c_parent_idx=620, mojo_node_idx=614, mojo_parent_idx=604) 
			# body 
			WhitespaceNode(c_node_idx=631, c_parent_idx=620, mojo_node_idx=615, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=632, c_parent_idx=620, mojo_node_idx=616, mojo_parent_idx=604) 
			mjOBJ_XBODY , 
			WhitespaceNode(c_node_idx=633, c_parent_idx=620, mojo_node_idx=617, mojo_parent_idx=604) 
			                    
			SingleLineCommentNode(c_node_idx=634, c_parent_idx=620, mojo_node_idx=618, mojo_parent_idx=604) 
			# body ,  used to access regular frame instead of i-frame 
			WhitespaceNode(c_node_idx=635, c_parent_idx=620, mojo_node_idx=619, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=636, c_parent_idx=620, mojo_node_idx=620, mojo_parent_idx=604) 
			mjOBJ_JOINT , 
			WhitespaceNode(c_node_idx=637, c_parent_idx=620, mojo_node_idx=621, mojo_parent_idx=604) 
			                    
			SingleLineCommentNode(c_node_idx=638, c_parent_idx=620, mojo_node_idx=622, mojo_parent_idx=604) 
			# joint 
			WhitespaceNode(c_node_idx=639, c_parent_idx=620, mojo_node_idx=623, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=640, c_parent_idx=620, mojo_node_idx=624, mojo_parent_idx=604) 
			mjOBJ_DOF , 
			WhitespaceNode(c_node_idx=641, c_parent_idx=620, mojo_node_idx=625, mojo_parent_idx=604) 
			                      
			SingleLineCommentNode(c_node_idx=642, c_parent_idx=620, mojo_node_idx=626, mojo_parent_idx=604) 
			# dof 
			WhitespaceNode(c_node_idx=643, c_parent_idx=620, mojo_node_idx=627, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=644, c_parent_idx=620, mojo_node_idx=628, mojo_parent_idx=604) 
			mjOBJ_GEOM , 
			WhitespaceNode(c_node_idx=645, c_parent_idx=620, mojo_node_idx=629, mojo_parent_idx=604) 
			                     
			SingleLineCommentNode(c_node_idx=646, c_parent_idx=620, mojo_node_idx=630, mojo_parent_idx=604) 
			# geom 
			WhitespaceNode(c_node_idx=647, c_parent_idx=620, mojo_node_idx=631, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=648, c_parent_idx=620, mojo_node_idx=632, mojo_parent_idx=604) 
			mjOBJ_SITE , 
			WhitespaceNode(c_node_idx=649, c_parent_idx=620, mojo_node_idx=633, mojo_parent_idx=604) 
			                     
			SingleLineCommentNode(c_node_idx=650, c_parent_idx=620, mojo_node_idx=634, mojo_parent_idx=604) 
			# site 
			WhitespaceNode(c_node_idx=651, c_parent_idx=620, mojo_node_idx=635, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=652, c_parent_idx=620, mojo_node_idx=636, mojo_parent_idx=604) 
			mjOBJ_CAMERA , 
			WhitespaceNode(c_node_idx=653, c_parent_idx=620, mojo_node_idx=637, mojo_parent_idx=604) 
			                   
			SingleLineCommentNode(c_node_idx=654, c_parent_idx=620, mojo_node_idx=638, mojo_parent_idx=604) 
			# camera 
			WhitespaceNode(c_node_idx=655, c_parent_idx=620, mojo_node_idx=639, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=656, c_parent_idx=620, mojo_node_idx=640, mojo_parent_idx=604) 
			mjOBJ_LIGHT , 
			WhitespaceNode(c_node_idx=657, c_parent_idx=620, mojo_node_idx=641, mojo_parent_idx=604) 
			                    
			SingleLineCommentNode(c_node_idx=658, c_parent_idx=620, mojo_node_idx=642, mojo_parent_idx=604) 
			# light 
			WhitespaceNode(c_node_idx=659, c_parent_idx=620, mojo_node_idx=643, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=660, c_parent_idx=620, mojo_node_idx=644, mojo_parent_idx=604) 
			mjOBJ_FLEX , 
			WhitespaceNode(c_node_idx=661, c_parent_idx=620, mojo_node_idx=645, mojo_parent_idx=604) 
			                     
			SingleLineCommentNode(c_node_idx=662, c_parent_idx=620, mojo_node_idx=646, mojo_parent_idx=604) 
			# flex 
			WhitespaceNode(c_node_idx=663, c_parent_idx=620, mojo_node_idx=647, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=664, c_parent_idx=620, mojo_node_idx=648, mojo_parent_idx=604) 
			mjOBJ_MESH , 
			WhitespaceNode(c_node_idx=665, c_parent_idx=620, mojo_node_idx=649, mojo_parent_idx=604) 
			                     
			SingleLineCommentNode(c_node_idx=666, c_parent_idx=620, mojo_node_idx=650, mojo_parent_idx=604) 
			# mesh 
			WhitespaceNode(c_node_idx=667, c_parent_idx=620, mojo_node_idx=651, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=668, c_parent_idx=620, mojo_node_idx=652, mojo_parent_idx=604) 
			mjOBJ_SKIN , 
			WhitespaceNode(c_node_idx=669, c_parent_idx=620, mojo_node_idx=653, mojo_parent_idx=604) 
			                     
			SingleLineCommentNode(c_node_idx=670, c_parent_idx=620, mojo_node_idx=654, mojo_parent_idx=604) 
			# skin 
			WhitespaceNode(c_node_idx=671, c_parent_idx=620, mojo_node_idx=655, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=672, c_parent_idx=620, mojo_node_idx=656, mojo_parent_idx=604) 
			mjOBJ_HFIELD , 
			WhitespaceNode(c_node_idx=673, c_parent_idx=620, mojo_node_idx=657, mojo_parent_idx=604) 
			                   
			SingleLineCommentNode(c_node_idx=674, c_parent_idx=620, mojo_node_idx=658, mojo_parent_idx=604) 
			# heightfield 
			WhitespaceNode(c_node_idx=675, c_parent_idx=620, mojo_node_idx=659, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=676, c_parent_idx=620, mojo_node_idx=660, mojo_parent_idx=604) 
			mjOBJ_TEXTURE , 
			WhitespaceNode(c_node_idx=677, c_parent_idx=620, mojo_node_idx=661, mojo_parent_idx=604) 
			                  
			SingleLineCommentNode(c_node_idx=678, c_parent_idx=620, mojo_node_idx=662, mojo_parent_idx=604) 
			# texture 
			WhitespaceNode(c_node_idx=679, c_parent_idx=620, mojo_node_idx=663, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=680, c_parent_idx=620, mojo_node_idx=664, mojo_parent_idx=604) 
			mjOBJ_MATERIAL , 
			WhitespaceNode(c_node_idx=681, c_parent_idx=620, mojo_node_idx=665, mojo_parent_idx=604) 
			                 
			SingleLineCommentNode(c_node_idx=682, c_parent_idx=620, mojo_node_idx=666, mojo_parent_idx=604) 
			# material for rendering 
			WhitespaceNode(c_node_idx=683, c_parent_idx=620, mojo_node_idx=667, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=684, c_parent_idx=620, mojo_node_idx=668, mojo_parent_idx=604) 
			mjOBJ_PAIR , 
			WhitespaceNode(c_node_idx=685, c_parent_idx=620, mojo_node_idx=669, mojo_parent_idx=604) 
			                     
			SingleLineCommentNode(c_node_idx=686, c_parent_idx=620, mojo_node_idx=670, mojo_parent_idx=604) 
			# geom pair to include 
			WhitespaceNode(c_node_idx=687, c_parent_idx=620, mojo_node_idx=671, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=688, c_parent_idx=620, mojo_node_idx=672, mojo_parent_idx=604) 
			mjOBJ_EXCLUDE , 
			WhitespaceNode(c_node_idx=689, c_parent_idx=620, mojo_node_idx=673, mojo_parent_idx=604) 
			                  
			SingleLineCommentNode(c_node_idx=690, c_parent_idx=620, mojo_node_idx=674, mojo_parent_idx=604) 
			# body pair to exclude 
			WhitespaceNode(c_node_idx=691, c_parent_idx=620, mojo_node_idx=675, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=692, c_parent_idx=620, mojo_node_idx=676, mojo_parent_idx=604) 
			mjOBJ_EQUALITY , 
			WhitespaceNode(c_node_idx=693, c_parent_idx=620, mojo_node_idx=677, mojo_parent_idx=604) 
			                 
			SingleLineCommentNode(c_node_idx=694, c_parent_idx=620, mojo_node_idx=678, mojo_parent_idx=604) 
			# equality constraint 
			WhitespaceNode(c_node_idx=695, c_parent_idx=620, mojo_node_idx=679, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=696, c_parent_idx=620, mojo_node_idx=680, mojo_parent_idx=604) 
			mjOBJ_TENDON , 
			WhitespaceNode(c_node_idx=697, c_parent_idx=620, mojo_node_idx=681, mojo_parent_idx=604) 
			                   
			SingleLineCommentNode(c_node_idx=698, c_parent_idx=620, mojo_node_idx=682, mojo_parent_idx=604) 
			# tendon 
			WhitespaceNode(c_node_idx=699, c_parent_idx=620, mojo_node_idx=683, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=700, c_parent_idx=620, mojo_node_idx=684, mojo_parent_idx=604) 
			mjOBJ_ACTUATOR , 
			WhitespaceNode(c_node_idx=701, c_parent_idx=620, mojo_node_idx=685, mojo_parent_idx=604) 
			                 
			SingleLineCommentNode(c_node_idx=702, c_parent_idx=620, mojo_node_idx=686, mojo_parent_idx=604) 
			# actuator 
			WhitespaceNode(c_node_idx=703, c_parent_idx=620, mojo_node_idx=687, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=704, c_parent_idx=620, mojo_node_idx=688, mojo_parent_idx=604) 
			mjOBJ_SENSOR , 
			WhitespaceNode(c_node_idx=705, c_parent_idx=620, mojo_node_idx=689, mojo_parent_idx=604) 
			                   
			SingleLineCommentNode(c_node_idx=706, c_parent_idx=620, mojo_node_idx=690, mojo_parent_idx=604) 
			# sensor 
			WhitespaceNode(c_node_idx=707, c_parent_idx=620, mojo_node_idx=691, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=708, c_parent_idx=620, mojo_node_idx=692, mojo_parent_idx=604) 
			mjOBJ_NUMERIC , 
			WhitespaceNode(c_node_idx=709, c_parent_idx=620, mojo_node_idx=693, mojo_parent_idx=604) 
			                  
			SingleLineCommentNode(c_node_idx=710, c_parent_idx=620, mojo_node_idx=694, mojo_parent_idx=604) 
			# numeric 
			WhitespaceNode(c_node_idx=711, c_parent_idx=620, mojo_node_idx=695, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=712, c_parent_idx=620, mojo_node_idx=696, mojo_parent_idx=604) 
			mjOBJ_TEXT , 
			WhitespaceNode(c_node_idx=713, c_parent_idx=620, mojo_node_idx=697, mojo_parent_idx=604) 
			                     
			SingleLineCommentNode(c_node_idx=714, c_parent_idx=620, mojo_node_idx=698, mojo_parent_idx=604) 
			# text 
			WhitespaceNode(c_node_idx=715, c_parent_idx=620, mojo_node_idx=699, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=716, c_parent_idx=620, mojo_node_idx=700, mojo_parent_idx=604) 
			mjOBJ_TUPLE , 
			WhitespaceNode(c_node_idx=717, c_parent_idx=620, mojo_node_idx=701, mojo_parent_idx=604) 
			                    
			SingleLineCommentNode(c_node_idx=718, c_parent_idx=620, mojo_node_idx=702, mojo_parent_idx=604) 
			# tuple 
			WhitespaceNode(c_node_idx=719, c_parent_idx=620, mojo_node_idx=703, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=720, c_parent_idx=620, mojo_node_idx=704, mojo_parent_idx=604) 
			mjOBJ_KEY , 
			WhitespaceNode(c_node_idx=721, c_parent_idx=620, mojo_node_idx=705, mojo_parent_idx=604) 
			                      
			SingleLineCommentNode(c_node_idx=722, c_parent_idx=620, mojo_node_idx=706, mojo_parent_idx=604) 
			# keyframe 
			WhitespaceNode(c_node_idx=723, c_parent_idx=620, mojo_node_idx=707, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=724, c_parent_idx=620, mojo_node_idx=708, mojo_parent_idx=604) 
			mjOBJ_PLUGIN , 
			WhitespaceNode(c_node_idx=725, c_parent_idx=620, mojo_node_idx=709, mojo_parent_idx=604) 
			                   
			SingleLineCommentNode(c_node_idx=726, c_parent_idx=620, mojo_node_idx=710, mojo_parent_idx=604) 
			# plugin instance 
			WhitespaceNode(c_node_idx=727, c_parent_idx=620, mojo_node_idx=711, mojo_parent_idx=604) 
			 
			  
			PlaceHolderNode(c_node_idx=728, c_parent_idx=620, mojo_node_idx=712, mojo_parent_idx=604) 
			mjNOBJECT , 
			WhitespaceNode(c_node_idx=729, c_parent_idx=620, mojo_node_idx=713, mojo_parent_idx=604) 
			                      
			SingleLineCommentNode(c_node_idx=730, c_parent_idx=620, mojo_node_idx=714, mojo_parent_idx=604) 
			# number of object types 
			WhitespaceNode(c_node_idx=731, c_parent_idx=620, mojo_node_idx=715, mojo_parent_idx=604) 
			 
			  
			SingleLineCommentNode(c_node_idx=732, c_parent_idx=620, mojo_node_idx=716, mojo_parent_idx=604) 
			# meta elements ,  do not appear in mjModel 
			WhitespaceNode(c_node_idx=733, c_parent_idx=620, mojo_node_idx=717, mojo_parent_idx=604) 
			  
			PlaceHolderNode(c_node_idx=734, c_parent_idx=620, mojo_node_idx=718, mojo_parent_idx=604) 
			mjOBJ_FRAME         = 100 
			WhitespaceNode(c_node_idx=735, c_parent_idx=620, mojo_node_idx=719, mojo_parent_idx=604) 
			      
			SingleLineCommentNode(c_node_idx=736, c_parent_idx=620, mojo_node_idx=720, mojo_parent_idx=604) 
			# frame 
			} 
		alias mjtObj = mjtObj_ 
		WhitespaceNode(c_node_idx=738, c_parent_idx=15, mojo_node_idx=721, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtConstraint, c_node_idx=739, c_parent_idx=15, mojo_node_idx=722, mojo_parent_idx=15, c_children_idxs=740, 775, mojo_children_idxs=723) 
		EnumNode(name=mjtConstraint_, c_node_idx=740, c_parent_idx=739, mojo_node_idx=723, mojo_parent_idx=722, c_children_idxs=741, mojo_children_idxs=724) 
		#  enum mjtConstraint_ 
			PlaceHolderNode(c_node_idx=741, c_parent_idx=740, mojo_node_idx=724, mojo_parent_idx=723, c_children_idxs=742, 743, 744, 745, 746, 747, ... len=33, mojo_children_idxs=725, 726, 727, 728, 729, 730, ... len=33) 
			{ 
			WhitespaceNode(c_node_idx=742, c_parent_idx=741, mojo_node_idx=725, mojo_parent_idx=724) 
			    
			SingleLineCommentNode(c_node_idx=743, c_parent_idx=741, mojo_node_idx=726, mojo_parent_idx=724) 
			# type of constraint 
			WhitespaceNode(c_node_idx=744, c_parent_idx=741, mojo_node_idx=727, mojo_parent_idx=724) 
			  
			PlaceHolderNode(c_node_idx=745, c_parent_idx=741, mojo_node_idx=728, mojo_parent_idx=724) 
			mjCNSTR_EQUALITY    = 0 , 
			WhitespaceNode(c_node_idx=746, c_parent_idx=741, mojo_node_idx=729, mojo_parent_idx=724) 
			        
			SingleLineCommentNode(c_node_idx=747, c_parent_idx=741, mojo_node_idx=730, mojo_parent_idx=724) 
			# equality constraint 
			WhitespaceNode(c_node_idx=748, c_parent_idx=741, mojo_node_idx=731, mojo_parent_idx=724) 
			  
			PlaceHolderNode(c_node_idx=749, c_parent_idx=741, mojo_node_idx=732, mojo_parent_idx=724) 
			mjCNSTR_FRICTION_DOF , 
			WhitespaceNode(c_node_idx=750, c_parent_idx=741, mojo_node_idx=733, mojo_parent_idx=724) 
			           
			SingleLineCommentNode(c_node_idx=751, c_parent_idx=741, mojo_node_idx=734, mojo_parent_idx=724) 
			# dof friction 
			WhitespaceNode(c_node_idx=752, c_parent_idx=741, mojo_node_idx=735, mojo_parent_idx=724) 
			  
			PlaceHolderNode(c_node_idx=753, c_parent_idx=741, mojo_node_idx=736, mojo_parent_idx=724) 
			mjCNSTR_FRICTION_TENDON , 
			WhitespaceNode(c_node_idx=754, c_parent_idx=741, mojo_node_idx=737, mojo_parent_idx=724) 
			        
			SingleLineCommentNode(c_node_idx=755, c_parent_idx=741, mojo_node_idx=738, mojo_parent_idx=724) 
			# tendon friction 
			WhitespaceNode(c_node_idx=756, c_parent_idx=741, mojo_node_idx=739, mojo_parent_idx=724) 
			  
			PlaceHolderNode(c_node_idx=757, c_parent_idx=741, mojo_node_idx=740, mojo_parent_idx=724) 
			mjCNSTR_LIMIT_JOINT , 
			WhitespaceNode(c_node_idx=758, c_parent_idx=741, mojo_node_idx=741, mojo_parent_idx=724) 
			            
			SingleLineCommentNode(c_node_idx=759, c_parent_idx=741, mojo_node_idx=742, mojo_parent_idx=724) 
			# joint limit 
			WhitespaceNode(c_node_idx=760, c_parent_idx=741, mojo_node_idx=743, mojo_parent_idx=724) 
			  
			PlaceHolderNode(c_node_idx=761, c_parent_idx=741, mojo_node_idx=744, mojo_parent_idx=724) 
			mjCNSTR_LIMIT_TENDON , 
			WhitespaceNode(c_node_idx=762, c_parent_idx=741, mojo_node_idx=745, mojo_parent_idx=724) 
			           
			SingleLineCommentNode(c_node_idx=763, c_parent_idx=741, mojo_node_idx=746, mojo_parent_idx=724) 
			# tendon limit 
			WhitespaceNode(c_node_idx=764, c_parent_idx=741, mojo_node_idx=747, mojo_parent_idx=724) 
			  
			PlaceHolderNode(c_node_idx=765, c_parent_idx=741, mojo_node_idx=748, mojo_parent_idx=724) 
			mjCNSTR_CONTACT_FRICTIONLESS , 
			WhitespaceNode(c_node_idx=766, c_parent_idx=741, mojo_node_idx=749, mojo_parent_idx=724) 
			   
			SingleLineCommentNode(c_node_idx=767, c_parent_idx=741, mojo_node_idx=750, mojo_parent_idx=724) 
			# frictionless contact 
			WhitespaceNode(c_node_idx=768, c_parent_idx=741, mojo_node_idx=751, mojo_parent_idx=724) 
			  
			PlaceHolderNode(c_node_idx=769, c_parent_idx=741, mojo_node_idx=752, mojo_parent_idx=724) 
			mjCNSTR_CONTACT_PYRAMIDAL , 
			WhitespaceNode(c_node_idx=770, c_parent_idx=741, mojo_node_idx=753, mojo_parent_idx=724) 
			      
			SingleLineCommentNode(c_node_idx=771, c_parent_idx=741, mojo_node_idx=754, mojo_parent_idx=724) 
			# frictional contact ,  pyramidal friction cone 
			WhitespaceNode(c_node_idx=772, c_parent_idx=741, mojo_node_idx=755, mojo_parent_idx=724) 
			  
			PlaceHolderNode(c_node_idx=773, c_parent_idx=741, mojo_node_idx=756, mojo_parent_idx=724) 
			mjCNSTR_CONTACT_ELLIPTIC        
			SingleLineCommentNode(c_node_idx=774, c_parent_idx=741, mojo_node_idx=757, mojo_parent_idx=724) 
			# frictional contact ,  elliptic friction cone 
			} 
		alias mjtConstraint = mjtConstraint_ 
		WhitespaceNode(c_node_idx=776, c_parent_idx=15, mojo_node_idx=758, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtConstraintState, c_node_idx=777, c_parent_idx=15, mojo_node_idx=759, mojo_parent_idx=15, c_children_idxs=778, 801, mojo_children_idxs=760) 
		EnumNode(name=mjtConstraintState_, c_node_idx=778, c_parent_idx=777, mojo_node_idx=760, mojo_parent_idx=759, c_children_idxs=779, mojo_children_idxs=761) 
		#  enum mjtConstraintState_ 
			PlaceHolderNode(c_node_idx=779, c_parent_idx=778, mojo_node_idx=761, mojo_parent_idx=760, c_children_idxs=780, 781, 782, 783, 784, 785, ... len=21, mojo_children_idxs=762, 763, 764, 765, 766, 767, ... len=21) 
			{ 
			WhitespaceNode(c_node_idx=780, c_parent_idx=779, mojo_node_idx=762, mojo_parent_idx=761) 
			 
			SingleLineCommentNode(c_node_idx=781, c_parent_idx=779, mojo_node_idx=763, mojo_parent_idx=761) 
			# constraint state 
			WhitespaceNode(c_node_idx=782, c_parent_idx=779, mojo_node_idx=764, mojo_parent_idx=761) 
			  
			PlaceHolderNode(c_node_idx=783, c_parent_idx=779, mojo_node_idx=765, mojo_parent_idx=761) 
			mjCNSTRSTATE_SATISFIED = 0 , 
			WhitespaceNode(c_node_idx=784, c_parent_idx=779, mojo_node_idx=766, mojo_parent_idx=761) 
			       
			SingleLineCommentNode(c_node_idx=785, c_parent_idx=779, mojo_node_idx=767, mojo_parent_idx=761) 
			# constraint satisfied ,  zero cost (limit ,  contact) 
			WhitespaceNode(c_node_idx=786, c_parent_idx=779, mojo_node_idx=768, mojo_parent_idx=761) 
			  
			PlaceHolderNode(c_node_idx=787, c_parent_idx=779, mojo_node_idx=769, mojo_parent_idx=761) 
			mjCNSTRSTATE_QUADRATIC , 
			WhitespaceNode(c_node_idx=788, c_parent_idx=779, mojo_node_idx=770, mojo_parent_idx=761) 
			           
			SingleLineCommentNode(c_node_idx=789, c_parent_idx=779, mojo_node_idx=771, mojo_parent_idx=761) 
			# quadratic cost (equality ,  friction ,  limit ,  contact) 
			WhitespaceNode(c_node_idx=790, c_parent_idx=779, mojo_node_idx=772, mojo_parent_idx=761) 
			  
			PlaceHolderNode(c_node_idx=791, c_parent_idx=779, mojo_node_idx=773, mojo_parent_idx=761) 
			mjCNSTRSTATE_LINEARNEG , 
			WhitespaceNode(c_node_idx=792, c_parent_idx=779, mojo_node_idx=774, mojo_parent_idx=761) 
			           
			SingleLineCommentNode(c_node_idx=793, c_parent_idx=779, mojo_node_idx=775, mojo_parent_idx=761) 
			# linear cost ,  negative side (friction) 
			WhitespaceNode(c_node_idx=794, c_parent_idx=779, mojo_node_idx=776, mojo_parent_idx=761) 
			  
			PlaceHolderNode(c_node_idx=795, c_parent_idx=779, mojo_node_idx=777, mojo_parent_idx=761) 
			mjCNSTRSTATE_LINEARPOS , 
			WhitespaceNode(c_node_idx=796, c_parent_idx=779, mojo_node_idx=778, mojo_parent_idx=761) 
			           
			SingleLineCommentNode(c_node_idx=797, c_parent_idx=779, mojo_node_idx=779, mojo_parent_idx=761) 
			# linear cost ,  positive side (friction) 
			WhitespaceNode(c_node_idx=798, c_parent_idx=779, mojo_node_idx=780, mojo_parent_idx=761) 
			  
			PlaceHolderNode(c_node_idx=799, c_parent_idx=779, mojo_node_idx=781, mojo_parent_idx=761) 
			mjCNSTRSTATE_CONE                 
			SingleLineCommentNode(c_node_idx=800, c_parent_idx=779, mojo_node_idx=782, mojo_parent_idx=761) 
			# squared distance to cone cost (elliptic contact) 
			} 
		alias mjtConstraintState = mjtConstraintState_ 
		WhitespaceNode(c_node_idx=802, c_parent_idx=15, mojo_node_idx=783, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtSensor, c_node_idx=803, c_parent_idx=15, mojo_node_idx=784, mojo_parent_idx=15, c_children_idxs=804, 999, mojo_children_idxs=785) 
		EnumNode(name=mjtSensor_, c_node_idx=804, c_parent_idx=803, mojo_node_idx=785, mojo_parent_idx=784, c_children_idxs=805, mojo_children_idxs=786) 
		#  enum mjtSensor_ 
			PlaceHolderNode(c_node_idx=805, c_parent_idx=804, mojo_node_idx=786, mojo_parent_idx=785, c_children_idxs=806, 807, 808, 809, 810, 811, ... len=193, mojo_children_idxs=787, 788, 789, 790, 791, 792, ... len=193) 
			{ 
			WhitespaceNode(c_node_idx=806, c_parent_idx=805, mojo_node_idx=787, mojo_parent_idx=786) 
			        
			SingleLineCommentNode(c_node_idx=807, c_parent_idx=805, mojo_node_idx=788, mojo_parent_idx=786) 
			# type of sensor 
			WhitespaceNode(c_node_idx=808, c_parent_idx=805, mojo_node_idx=789, mojo_parent_idx=786) 
			  
			SingleLineCommentNode(c_node_idx=809, c_parent_idx=805, mojo_node_idx=790, mojo_parent_idx=786) 
			# common robotic sensors ,  attached to a site 
			WhitespaceNode(c_node_idx=810, c_parent_idx=805, mojo_node_idx=791, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=811, c_parent_idx=805, mojo_node_idx=792, mojo_parent_idx=786) 
			mjSENS_TOUCH        = 0 , 
			WhitespaceNode(c_node_idx=812, c_parent_idx=805, mojo_node_idx=793, mojo_parent_idx=786) 
			        
			SingleLineCommentNode(c_node_idx=813, c_parent_idx=805, mojo_node_idx=794, mojo_parent_idx=786) 
			# scalar contact normal forces summed over sensor zone 
			WhitespaceNode(c_node_idx=814, c_parent_idx=805, mojo_node_idx=795, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=815, c_parent_idx=805, mojo_node_idx=796, mojo_parent_idx=786) 
			mjSENS_ACCELEROMETER , 
			WhitespaceNode(c_node_idx=816, c_parent_idx=805, mojo_node_idx=797, mojo_parent_idx=786) 
			           
			SingleLineCommentNode(c_node_idx=817, c_parent_idx=805, mojo_node_idx=798, mojo_parent_idx=786) 
			# 3D linear acceleration ,  in local frame 
			WhitespaceNode(c_node_idx=818, c_parent_idx=805, mojo_node_idx=799, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=819, c_parent_idx=805, mojo_node_idx=800, mojo_parent_idx=786) 
			mjSENS_VELOCIMETER , 
			WhitespaceNode(c_node_idx=820, c_parent_idx=805, mojo_node_idx=801, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=821, c_parent_idx=805, mojo_node_idx=802, mojo_parent_idx=786) 
			# 3D linear velocity ,  in local frame 
			WhitespaceNode(c_node_idx=822, c_parent_idx=805, mojo_node_idx=803, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=823, c_parent_idx=805, mojo_node_idx=804, mojo_parent_idx=786) 
			mjSENS_GYRO , 
			WhitespaceNode(c_node_idx=824, c_parent_idx=805, mojo_node_idx=805, mojo_parent_idx=786) 
			                    
			SingleLineCommentNode(c_node_idx=825, c_parent_idx=805, mojo_node_idx=806, mojo_parent_idx=786) 
			# 3D angular velocity ,  in local frame 
			WhitespaceNode(c_node_idx=826, c_parent_idx=805, mojo_node_idx=807, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=827, c_parent_idx=805, mojo_node_idx=808, mojo_parent_idx=786) 
			mjSENS_FORCE , 
			WhitespaceNode(c_node_idx=828, c_parent_idx=805, mojo_node_idx=809, mojo_parent_idx=786) 
			                   
			SingleLineCommentNode(c_node_idx=829, c_parent_idx=805, mojo_node_idx=810, mojo_parent_idx=786) 
			# 3D force between site's body and its parent body 
			WhitespaceNode(c_node_idx=830, c_parent_idx=805, mojo_node_idx=811, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=831, c_parent_idx=805, mojo_node_idx=812, mojo_parent_idx=786) 
			mjSENS_TORQUE , 
			WhitespaceNode(c_node_idx=832, c_parent_idx=805, mojo_node_idx=813, mojo_parent_idx=786) 
			                  
			SingleLineCommentNode(c_node_idx=833, c_parent_idx=805, mojo_node_idx=814, mojo_parent_idx=786) 
			# 3D torque between site's body and its parent body 
			WhitespaceNode(c_node_idx=834, c_parent_idx=805, mojo_node_idx=815, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=835, c_parent_idx=805, mojo_node_idx=816, mojo_parent_idx=786) 
			mjSENS_MAGNETOMETER , 
			WhitespaceNode(c_node_idx=836, c_parent_idx=805, mojo_node_idx=817, mojo_parent_idx=786) 
			            
			SingleLineCommentNode(c_node_idx=837, c_parent_idx=805, mojo_node_idx=818, mojo_parent_idx=786) 
			# 3D magnetometer 
			WhitespaceNode(c_node_idx=838, c_parent_idx=805, mojo_node_idx=819, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=839, c_parent_idx=805, mojo_node_idx=820, mojo_parent_idx=786) 
			mjSENS_RANGEFINDER , 
			WhitespaceNode(c_node_idx=840, c_parent_idx=805, mojo_node_idx=821, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=841, c_parent_idx=805, mojo_node_idx=822, mojo_parent_idx=786) 
			# scalar distance to nearest geom or site along z-axis 
			WhitespaceNode(c_node_idx=842, c_parent_idx=805, mojo_node_idx=823, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=843, c_parent_idx=805, mojo_node_idx=824, mojo_parent_idx=786) 
			mjSENS_CAMPROJECTION , 
			WhitespaceNode(c_node_idx=844, c_parent_idx=805, mojo_node_idx=825, mojo_parent_idx=786) 
			           
			SingleLineCommentNode(c_node_idx=845, c_parent_idx=805, mojo_node_idx=826, mojo_parent_idx=786) 
			# pixel coordinates of a site in the camera image 
			WhitespaceNode(c_node_idx=846, c_parent_idx=805, mojo_node_idx=827, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=847, c_parent_idx=805, mojo_node_idx=828, mojo_parent_idx=786) 
			# sensors related to scalar joints ,  tendons ,  actuators 
			WhitespaceNode(c_node_idx=848, c_parent_idx=805, mojo_node_idx=829, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=849, c_parent_idx=805, mojo_node_idx=830, mojo_parent_idx=786) 
			mjSENS_JOINTPOS , 
			WhitespaceNode(c_node_idx=850, c_parent_idx=805, mojo_node_idx=831, mojo_parent_idx=786) 
			                
			SingleLineCommentNode(c_node_idx=851, c_parent_idx=805, mojo_node_idx=832, mojo_parent_idx=786) 
			# scalar joint position (hinge and slide only) 
			WhitespaceNode(c_node_idx=852, c_parent_idx=805, mojo_node_idx=833, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=853, c_parent_idx=805, mojo_node_idx=834, mojo_parent_idx=786) 
			mjSENS_JOINTVEL , 
			WhitespaceNode(c_node_idx=854, c_parent_idx=805, mojo_node_idx=835, mojo_parent_idx=786) 
			                
			SingleLineCommentNode(c_node_idx=855, c_parent_idx=805, mojo_node_idx=836, mojo_parent_idx=786) 
			# scalar joint velocity (hinge and slide only) 
			WhitespaceNode(c_node_idx=856, c_parent_idx=805, mojo_node_idx=837, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=857, c_parent_idx=805, mojo_node_idx=838, mojo_parent_idx=786) 
			mjSENS_TENDONPOS , 
			WhitespaceNode(c_node_idx=858, c_parent_idx=805, mojo_node_idx=839, mojo_parent_idx=786) 
			               
			SingleLineCommentNode(c_node_idx=859, c_parent_idx=805, mojo_node_idx=840, mojo_parent_idx=786) 
			# scalar tendon position 
			WhitespaceNode(c_node_idx=860, c_parent_idx=805, mojo_node_idx=841, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=861, c_parent_idx=805, mojo_node_idx=842, mojo_parent_idx=786) 
			mjSENS_TENDONVEL , 
			WhitespaceNode(c_node_idx=862, c_parent_idx=805, mojo_node_idx=843, mojo_parent_idx=786) 
			               
			SingleLineCommentNode(c_node_idx=863, c_parent_idx=805, mojo_node_idx=844, mojo_parent_idx=786) 
			# scalar tendon velocity 
			WhitespaceNode(c_node_idx=864, c_parent_idx=805, mojo_node_idx=845, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=865, c_parent_idx=805, mojo_node_idx=846, mojo_parent_idx=786) 
			mjSENS_ACTUATORPOS , 
			WhitespaceNode(c_node_idx=866, c_parent_idx=805, mojo_node_idx=847, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=867, c_parent_idx=805, mojo_node_idx=848, mojo_parent_idx=786) 
			# scalar actuator position 
			WhitespaceNode(c_node_idx=868, c_parent_idx=805, mojo_node_idx=849, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=869, c_parent_idx=805, mojo_node_idx=850, mojo_parent_idx=786) 
			mjSENS_ACTUATORVEL , 
			WhitespaceNode(c_node_idx=870, c_parent_idx=805, mojo_node_idx=851, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=871, c_parent_idx=805, mojo_node_idx=852, mojo_parent_idx=786) 
			# scalar actuator velocity 
			WhitespaceNode(c_node_idx=872, c_parent_idx=805, mojo_node_idx=853, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=873, c_parent_idx=805, mojo_node_idx=854, mojo_parent_idx=786) 
			mjSENS_ACTUATORFRC , 
			WhitespaceNode(c_node_idx=874, c_parent_idx=805, mojo_node_idx=855, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=875, c_parent_idx=805, mojo_node_idx=856, mojo_parent_idx=786) 
			# scalar actuator force 
			WhitespaceNode(c_node_idx=876, c_parent_idx=805, mojo_node_idx=857, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=877, c_parent_idx=805, mojo_node_idx=858, mojo_parent_idx=786) 
			mjSENS_JOINTACTFRC , 
			WhitespaceNode(c_node_idx=878, c_parent_idx=805, mojo_node_idx=859, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=879, c_parent_idx=805, mojo_node_idx=860, mojo_parent_idx=786) 
			# scalar actuator force ,  measured at the joint 
			WhitespaceNode(c_node_idx=880, c_parent_idx=805, mojo_node_idx=861, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=881, c_parent_idx=805, mojo_node_idx=862, mojo_parent_idx=786) 
			# sensors related to ball joints 
			WhitespaceNode(c_node_idx=882, c_parent_idx=805, mojo_node_idx=863, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=883, c_parent_idx=805, mojo_node_idx=864, mojo_parent_idx=786) 
			mjSENS_BALLQUAT , 
			WhitespaceNode(c_node_idx=884, c_parent_idx=805, mojo_node_idx=865, mojo_parent_idx=786) 
			                
			SingleLineCommentNode(c_node_idx=885, c_parent_idx=805, mojo_node_idx=866, mojo_parent_idx=786) 
			# 4D ball joint quaternion 
			WhitespaceNode(c_node_idx=886, c_parent_idx=805, mojo_node_idx=867, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=887, c_parent_idx=805, mojo_node_idx=868, mojo_parent_idx=786) 
			mjSENS_BALLANGVEL , 
			WhitespaceNode(c_node_idx=888, c_parent_idx=805, mojo_node_idx=869, mojo_parent_idx=786) 
			              
			SingleLineCommentNode(c_node_idx=889, c_parent_idx=805, mojo_node_idx=870, mojo_parent_idx=786) 
			# 3D ball joint angular velocity 
			WhitespaceNode(c_node_idx=890, c_parent_idx=805, mojo_node_idx=871, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=891, c_parent_idx=805, mojo_node_idx=872, mojo_parent_idx=786) 
			# joint and tendon limit sensors ,  in constraint space 
			WhitespaceNode(c_node_idx=892, c_parent_idx=805, mojo_node_idx=873, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=893, c_parent_idx=805, mojo_node_idx=874, mojo_parent_idx=786) 
			mjSENS_JOINTLIMITPOS , 
			WhitespaceNode(c_node_idx=894, c_parent_idx=805, mojo_node_idx=875, mojo_parent_idx=786) 
			           
			SingleLineCommentNode(c_node_idx=895, c_parent_idx=805, mojo_node_idx=876, mojo_parent_idx=786) 
			# joint limit distance-margin 
			WhitespaceNode(c_node_idx=896, c_parent_idx=805, mojo_node_idx=877, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=897, c_parent_idx=805, mojo_node_idx=878, mojo_parent_idx=786) 
			mjSENS_JOINTLIMITVEL , 
			WhitespaceNode(c_node_idx=898, c_parent_idx=805, mojo_node_idx=879, mojo_parent_idx=786) 
			           
			SingleLineCommentNode(c_node_idx=899, c_parent_idx=805, mojo_node_idx=880, mojo_parent_idx=786) 
			# joint limit velocity 
			WhitespaceNode(c_node_idx=900, c_parent_idx=805, mojo_node_idx=881, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=901, c_parent_idx=805, mojo_node_idx=882, mojo_parent_idx=786) 
			mjSENS_JOINTLIMITFRC , 
			WhitespaceNode(c_node_idx=902, c_parent_idx=805, mojo_node_idx=883, mojo_parent_idx=786) 
			           
			SingleLineCommentNode(c_node_idx=903, c_parent_idx=805, mojo_node_idx=884, mojo_parent_idx=786) 
			# joint limit force 
			WhitespaceNode(c_node_idx=904, c_parent_idx=805, mojo_node_idx=885, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=905, c_parent_idx=805, mojo_node_idx=886, mojo_parent_idx=786) 
			mjSENS_TENDONLIMITPOS , 
			WhitespaceNode(c_node_idx=906, c_parent_idx=805, mojo_node_idx=887, mojo_parent_idx=786) 
			          
			SingleLineCommentNode(c_node_idx=907, c_parent_idx=805, mojo_node_idx=888, mojo_parent_idx=786) 
			# tendon limit distance-margin 
			WhitespaceNode(c_node_idx=908, c_parent_idx=805, mojo_node_idx=889, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=909, c_parent_idx=805, mojo_node_idx=890, mojo_parent_idx=786) 
			mjSENS_TENDONLIMITVEL , 
			WhitespaceNode(c_node_idx=910, c_parent_idx=805, mojo_node_idx=891, mojo_parent_idx=786) 
			          
			SingleLineCommentNode(c_node_idx=911, c_parent_idx=805, mojo_node_idx=892, mojo_parent_idx=786) 
			# tendon limit velocity 
			WhitespaceNode(c_node_idx=912, c_parent_idx=805, mojo_node_idx=893, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=913, c_parent_idx=805, mojo_node_idx=894, mojo_parent_idx=786) 
			mjSENS_TENDONLIMITFRC , 
			WhitespaceNode(c_node_idx=914, c_parent_idx=805, mojo_node_idx=895, mojo_parent_idx=786) 
			          
			SingleLineCommentNode(c_node_idx=915, c_parent_idx=805, mojo_node_idx=896, mojo_parent_idx=786) 
			# tendon limit force 
			WhitespaceNode(c_node_idx=916, c_parent_idx=805, mojo_node_idx=897, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=917, c_parent_idx=805, mojo_node_idx=898, mojo_parent_idx=786) 
			# sensors attached to an object with spatial frame: (x)body ,  geom ,  site ,  camera 
			WhitespaceNode(c_node_idx=918, c_parent_idx=805, mojo_node_idx=899, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=919, c_parent_idx=805, mojo_node_idx=900, mojo_parent_idx=786) 
			mjSENS_FRAMEPOS , 
			WhitespaceNode(c_node_idx=920, c_parent_idx=805, mojo_node_idx=901, mojo_parent_idx=786) 
			                
			SingleLineCommentNode(c_node_idx=921, c_parent_idx=805, mojo_node_idx=902, mojo_parent_idx=786) 
			# 3D position 
			WhitespaceNode(c_node_idx=922, c_parent_idx=805, mojo_node_idx=903, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=923, c_parent_idx=805, mojo_node_idx=904, mojo_parent_idx=786) 
			mjSENS_FRAMEQUAT , 
			WhitespaceNode(c_node_idx=924, c_parent_idx=805, mojo_node_idx=905, mojo_parent_idx=786) 
			               
			SingleLineCommentNode(c_node_idx=925, c_parent_idx=805, mojo_node_idx=906, mojo_parent_idx=786) 
			# 4D unit quaternion orientation 
			WhitespaceNode(c_node_idx=926, c_parent_idx=805, mojo_node_idx=907, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=927, c_parent_idx=805, mojo_node_idx=908, mojo_parent_idx=786) 
			mjSENS_FRAMEXAXIS , 
			WhitespaceNode(c_node_idx=928, c_parent_idx=805, mojo_node_idx=909, mojo_parent_idx=786) 
			              
			SingleLineCommentNode(c_node_idx=929, c_parent_idx=805, mojo_node_idx=910, mojo_parent_idx=786) 
			# 3D unit vector: x-axis of object's frame 
			WhitespaceNode(c_node_idx=930, c_parent_idx=805, mojo_node_idx=911, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=931, c_parent_idx=805, mojo_node_idx=912, mojo_parent_idx=786) 
			mjSENS_FRAMEYAXIS , 
			WhitespaceNode(c_node_idx=932, c_parent_idx=805, mojo_node_idx=913, mojo_parent_idx=786) 
			              
			SingleLineCommentNode(c_node_idx=933, c_parent_idx=805, mojo_node_idx=914, mojo_parent_idx=786) 
			# 3D unit vector: y-axis of object's frame 
			WhitespaceNode(c_node_idx=934, c_parent_idx=805, mojo_node_idx=915, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=935, c_parent_idx=805, mojo_node_idx=916, mojo_parent_idx=786) 
			mjSENS_FRAMEZAXIS , 
			WhitespaceNode(c_node_idx=936, c_parent_idx=805, mojo_node_idx=917, mojo_parent_idx=786) 
			              
			SingleLineCommentNode(c_node_idx=937, c_parent_idx=805, mojo_node_idx=918, mojo_parent_idx=786) 
			# 3D unit vector: z-axis of object's frame 
			WhitespaceNode(c_node_idx=938, c_parent_idx=805, mojo_node_idx=919, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=939, c_parent_idx=805, mojo_node_idx=920, mojo_parent_idx=786) 
			mjSENS_FRAMELINVEL , 
			WhitespaceNode(c_node_idx=940, c_parent_idx=805, mojo_node_idx=921, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=941, c_parent_idx=805, mojo_node_idx=922, mojo_parent_idx=786) 
			# 3D linear velocity 
			WhitespaceNode(c_node_idx=942, c_parent_idx=805, mojo_node_idx=923, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=943, c_parent_idx=805, mojo_node_idx=924, mojo_parent_idx=786) 
			mjSENS_FRAMEANGVEL , 
			WhitespaceNode(c_node_idx=944, c_parent_idx=805, mojo_node_idx=925, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=945, c_parent_idx=805, mojo_node_idx=926, mojo_parent_idx=786) 
			# 3D angular velocity 
			WhitespaceNode(c_node_idx=946, c_parent_idx=805, mojo_node_idx=927, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=947, c_parent_idx=805, mojo_node_idx=928, mojo_parent_idx=786) 
			mjSENS_FRAMELINACC , 
			WhitespaceNode(c_node_idx=948, c_parent_idx=805, mojo_node_idx=929, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=949, c_parent_idx=805, mojo_node_idx=930, mojo_parent_idx=786) 
			# 3D linear acceleration 
			WhitespaceNode(c_node_idx=950, c_parent_idx=805, mojo_node_idx=931, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=951, c_parent_idx=805, mojo_node_idx=932, mojo_parent_idx=786) 
			mjSENS_FRAMEANGACC , 
			WhitespaceNode(c_node_idx=952, c_parent_idx=805, mojo_node_idx=933, mojo_parent_idx=786) 
			             
			SingleLineCommentNode(c_node_idx=953, c_parent_idx=805, mojo_node_idx=934, mojo_parent_idx=786) 
			# 3D angular acceleration 
			WhitespaceNode(c_node_idx=954, c_parent_idx=805, mojo_node_idx=935, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=955, c_parent_idx=805, mojo_node_idx=936, mojo_parent_idx=786) 
			# sensors related to kinematic subtrees ;  attached to a body (which is the subtree root) 
			WhitespaceNode(c_node_idx=956, c_parent_idx=805, mojo_node_idx=937, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=957, c_parent_idx=805, mojo_node_idx=938, mojo_parent_idx=786) 
			mjSENS_SUBTREECOM , 
			WhitespaceNode(c_node_idx=958, c_parent_idx=805, mojo_node_idx=939, mojo_parent_idx=786) 
			              
			SingleLineCommentNode(c_node_idx=959, c_parent_idx=805, mojo_node_idx=940, mojo_parent_idx=786) 
			# 3D center of mass of subtree 
			WhitespaceNode(c_node_idx=960, c_parent_idx=805, mojo_node_idx=941, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=961, c_parent_idx=805, mojo_node_idx=942, mojo_parent_idx=786) 
			mjSENS_SUBTREELINVEL , 
			WhitespaceNode(c_node_idx=962, c_parent_idx=805, mojo_node_idx=943, mojo_parent_idx=786) 
			           
			SingleLineCommentNode(c_node_idx=963, c_parent_idx=805, mojo_node_idx=944, mojo_parent_idx=786) 
			# 3D linear velocity of subtree 
			WhitespaceNode(c_node_idx=964, c_parent_idx=805, mojo_node_idx=945, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=965, c_parent_idx=805, mojo_node_idx=946, mojo_parent_idx=786) 
			mjSENS_SUBTREEANGMOM , 
			WhitespaceNode(c_node_idx=966, c_parent_idx=805, mojo_node_idx=947, mojo_parent_idx=786) 
			           
			SingleLineCommentNode(c_node_idx=967, c_parent_idx=805, mojo_node_idx=948, mojo_parent_idx=786) 
			# 3D angular momentum of subtree 
			WhitespaceNode(c_node_idx=968, c_parent_idx=805, mojo_node_idx=949, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=969, c_parent_idx=805, mojo_node_idx=950, mojo_parent_idx=786) 
			# sensors for geometric distance ;  attached to geoms or bodies 
			WhitespaceNode(c_node_idx=970, c_parent_idx=805, mojo_node_idx=951, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=971, c_parent_idx=805, mojo_node_idx=952, mojo_parent_idx=786) 
			mjSENS_GEOMDIST , 
			WhitespaceNode(c_node_idx=972, c_parent_idx=805, mojo_node_idx=953, mojo_parent_idx=786) 
			                
			SingleLineCommentNode(c_node_idx=973, c_parent_idx=805, mojo_node_idx=954, mojo_parent_idx=786) 
			# signed distance between two geoms 
			WhitespaceNode(c_node_idx=974, c_parent_idx=805, mojo_node_idx=955, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=975, c_parent_idx=805, mojo_node_idx=956, mojo_parent_idx=786) 
			mjSENS_GEOMNORMAL , 
			WhitespaceNode(c_node_idx=976, c_parent_idx=805, mojo_node_idx=957, mojo_parent_idx=786) 
			              
			SingleLineCommentNode(c_node_idx=977, c_parent_idx=805, mojo_node_idx=958, mojo_parent_idx=786) 
			# normal direction between two geoms 
			WhitespaceNode(c_node_idx=978, c_parent_idx=805, mojo_node_idx=959, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=979, c_parent_idx=805, mojo_node_idx=960, mojo_parent_idx=786) 
			mjSENS_GEOMFROMTO , 
			WhitespaceNode(c_node_idx=980, c_parent_idx=805, mojo_node_idx=961, mojo_parent_idx=786) 
			              
			SingleLineCommentNode(c_node_idx=981, c_parent_idx=805, mojo_node_idx=962, mojo_parent_idx=786) 
			# segment between two geoms 
			WhitespaceNode(c_node_idx=982, c_parent_idx=805, mojo_node_idx=963, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=983, c_parent_idx=805, mojo_node_idx=964, mojo_parent_idx=786) 
			# global sensors 
			WhitespaceNode(c_node_idx=984, c_parent_idx=805, mojo_node_idx=965, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=985, c_parent_idx=805, mojo_node_idx=966, mojo_parent_idx=786) 
			mjSENS_CLOCK , 
			WhitespaceNode(c_node_idx=986, c_parent_idx=805, mojo_node_idx=967, mojo_parent_idx=786) 
			                   
			SingleLineCommentNode(c_node_idx=987, c_parent_idx=805, mojo_node_idx=968, mojo_parent_idx=786) 
			# simulation time 
			WhitespaceNode(c_node_idx=988, c_parent_idx=805, mojo_node_idx=969, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=989, c_parent_idx=805, mojo_node_idx=970, mojo_parent_idx=786) 
			# plugin-controlled sensors 
			WhitespaceNode(c_node_idx=990, c_parent_idx=805, mojo_node_idx=971, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=991, c_parent_idx=805, mojo_node_idx=972, mojo_parent_idx=786) 
			mjSENS_PLUGIN , 
			WhitespaceNode(c_node_idx=992, c_parent_idx=805, mojo_node_idx=973, mojo_parent_idx=786) 
			                  
			SingleLineCommentNode(c_node_idx=993, c_parent_idx=805, mojo_node_idx=974, mojo_parent_idx=786) 
			# plugin-controlled 
			WhitespaceNode(c_node_idx=994, c_parent_idx=805, mojo_node_idx=975, mojo_parent_idx=786) 
			 
			  
			SingleLineCommentNode(c_node_idx=995, c_parent_idx=805, mojo_node_idx=976, mojo_parent_idx=786) 
			# user-defined sensor 
			WhitespaceNode(c_node_idx=996, c_parent_idx=805, mojo_node_idx=977, mojo_parent_idx=786) 
			  
			PlaceHolderNode(c_node_idx=997, c_parent_idx=805, mojo_node_idx=978, mojo_parent_idx=786) 
			mjSENS_USER                     
			SingleLineCommentNode(c_node_idx=998, c_parent_idx=805, mojo_node_idx=979, mojo_parent_idx=786) 
			# sensor data provided by mjcb_sensor callback 
			} 
		alias mjtSensor = mjtSensor_ 
		WhitespaceNode(c_node_idx=1000, c_parent_idx=15, mojo_node_idx=980, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtStage, c_node_idx=1001, c_parent_idx=15, mojo_node_idx=981, mojo_parent_idx=15, c_children_idxs=1002, 1021, mojo_children_idxs=982) 
		EnumNode(name=mjtStage_, c_node_idx=1002, c_parent_idx=1001, mojo_node_idx=982, mojo_parent_idx=981, c_children_idxs=1003, mojo_children_idxs=983) 
		#  enum mjtStage_ 
			PlaceHolderNode(c_node_idx=1003, c_parent_idx=1002, mojo_node_idx=983, mojo_parent_idx=982, c_children_idxs=1004, 1005, 1006, 1007, 1008, 1009, ... len=17, mojo_children_idxs=984, 985, 986, 987, 988, 989, ... len=17) 
			{ 
			WhitespaceNode(c_node_idx=1004, c_parent_idx=1003, mojo_node_idx=984, mojo_parent_idx=983) 
			         
			SingleLineCommentNode(c_node_idx=1005, c_parent_idx=1003, mojo_node_idx=985, mojo_parent_idx=983) 
			# computation stage 
			WhitespaceNode(c_node_idx=1006, c_parent_idx=1003, mojo_node_idx=986, mojo_parent_idx=983) 
			  
			PlaceHolderNode(c_node_idx=1007, c_parent_idx=1003, mojo_node_idx=987, mojo_parent_idx=983) 
			mjSTAGE_NONE        = 0 , 
			WhitespaceNode(c_node_idx=1008, c_parent_idx=1003, mojo_node_idx=988, mojo_parent_idx=983) 
			        
			SingleLineCommentNode(c_node_idx=1009, c_parent_idx=1003, mojo_node_idx=989, mojo_parent_idx=983) 
			# no computations 
			WhitespaceNode(c_node_idx=1010, c_parent_idx=1003, mojo_node_idx=990, mojo_parent_idx=983) 
			  
			PlaceHolderNode(c_node_idx=1011, c_parent_idx=1003, mojo_node_idx=991, mojo_parent_idx=983) 
			mjSTAGE_POS , 
			WhitespaceNode(c_node_idx=1012, c_parent_idx=1003, mojo_node_idx=992, mojo_parent_idx=983) 
			                    
			SingleLineCommentNode(c_node_idx=1013, c_parent_idx=1003, mojo_node_idx=993, mojo_parent_idx=983) 
			# position-dependent computations 
			WhitespaceNode(c_node_idx=1014, c_parent_idx=1003, mojo_node_idx=994, mojo_parent_idx=983) 
			  
			PlaceHolderNode(c_node_idx=1015, c_parent_idx=1003, mojo_node_idx=995, mojo_parent_idx=983) 
			mjSTAGE_VEL , 
			WhitespaceNode(c_node_idx=1016, c_parent_idx=1003, mojo_node_idx=996, mojo_parent_idx=983) 
			                    
			SingleLineCommentNode(c_node_idx=1017, c_parent_idx=1003, mojo_node_idx=997, mojo_parent_idx=983) 
			# velocity-dependent computations 
			WhitespaceNode(c_node_idx=1018, c_parent_idx=1003, mojo_node_idx=998, mojo_parent_idx=983) 
			  
			PlaceHolderNode(c_node_idx=1019, c_parent_idx=1003, mojo_node_idx=999, mojo_parent_idx=983) 
			mjSTAGE_ACC                     
			SingleLineCommentNode(c_node_idx=1020, c_parent_idx=1003, mojo_node_idx=1000, mojo_parent_idx=983) 
			# acceleration/force-dependent computations 
			} 
		alias mjtStage = mjtStage_ 
		WhitespaceNode(c_node_idx=1022, c_parent_idx=15, mojo_node_idx=1001, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtDataType, c_node_idx=1023, c_parent_idx=15, mojo_node_idx=1002, mojo_parent_idx=15, c_children_idxs=1024, 1043, mojo_children_idxs=1003) 
		EnumNode(name=mjtDataType_, c_node_idx=1024, c_parent_idx=1023, mojo_node_idx=1003, mojo_parent_idx=1002, c_children_idxs=1025, mojo_children_idxs=1004) 
		#  enum mjtDataType_ 
			PlaceHolderNode(c_node_idx=1025, c_parent_idx=1024, mojo_node_idx=1004, mojo_parent_idx=1003, c_children_idxs=1026, 1027, 1028, 1029, 1030, 1031, ... len=17, mojo_children_idxs=1005, 1006, 1007, 1008, 1009, 1010, ... len=17) 
			{ 
			WhitespaceNode(c_node_idx=1026, c_parent_idx=1025, mojo_node_idx=1005, mojo_parent_idx=1004) 
			      
			SingleLineCommentNode(c_node_idx=1027, c_parent_idx=1025, mojo_node_idx=1006, mojo_parent_idx=1004) 
			# data type for sensors 
			WhitespaceNode(c_node_idx=1028, c_parent_idx=1025, mojo_node_idx=1007, mojo_parent_idx=1004) 
			  
			PlaceHolderNode(c_node_idx=1029, c_parent_idx=1025, mojo_node_idx=1008, mojo_parent_idx=1004) 
			mjDATATYPE_REAL     = 0 , 
			WhitespaceNode(c_node_idx=1030, c_parent_idx=1025, mojo_node_idx=1009, mojo_parent_idx=1004) 
			        
			SingleLineCommentNode(c_node_idx=1031, c_parent_idx=1025, mojo_node_idx=1010, mojo_parent_idx=1004) 
			# real values ,  no constraints 
			WhitespaceNode(c_node_idx=1032, c_parent_idx=1025, mojo_node_idx=1011, mojo_parent_idx=1004) 
			  
			PlaceHolderNode(c_node_idx=1033, c_parent_idx=1025, mojo_node_idx=1012, mojo_parent_idx=1004) 
			mjDATATYPE_POSITIVE , 
			WhitespaceNode(c_node_idx=1034, c_parent_idx=1025, mojo_node_idx=1013, mojo_parent_idx=1004) 
			            
			SingleLineCommentNode(c_node_idx=1035, c_parent_idx=1025, mojo_node_idx=1014, mojo_parent_idx=1004) 
			# positive values ;  0 or negative: inactive 
			WhitespaceNode(c_node_idx=1036, c_parent_idx=1025, mojo_node_idx=1015, mojo_parent_idx=1004) 
			  
			PlaceHolderNode(c_node_idx=1037, c_parent_idx=1025, mojo_node_idx=1016, mojo_parent_idx=1004) 
			mjDATATYPE_AXIS , 
			WhitespaceNode(c_node_idx=1038, c_parent_idx=1025, mojo_node_idx=1017, mojo_parent_idx=1004) 
			                
			SingleLineCommentNode(c_node_idx=1039, c_parent_idx=1025, mojo_node_idx=1018, mojo_parent_idx=1004) 
			# 3D unit vector 
			WhitespaceNode(c_node_idx=1040, c_parent_idx=1025, mojo_node_idx=1019, mojo_parent_idx=1004) 
			  
			PlaceHolderNode(c_node_idx=1041, c_parent_idx=1025, mojo_node_idx=1020, mojo_parent_idx=1004) 
			mjDATATYPE_QUATERNION           
			SingleLineCommentNode(c_node_idx=1042, c_parent_idx=1025, mojo_node_idx=1021, mojo_parent_idx=1004) 
			# unit quaternion 
			} 
		alias mjtDataType = mjtDataType_ 
		WhitespaceNode(c_node_idx=1044, c_parent_idx=15, mojo_node_idx=1022, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtSameFrame, c_node_idx=1045, c_parent_idx=15, mojo_node_idx=1023, mojo_parent_idx=15, c_children_idxs=1046, 1069, mojo_children_idxs=1024) 
		EnumNode(name=mjtSameFrame_, c_node_idx=1046, c_parent_idx=1045, mojo_node_idx=1024, mojo_parent_idx=1023, c_children_idxs=1047, mojo_children_idxs=1025) 
		#  enum mjtSameFrame_ 
			PlaceHolderNode(c_node_idx=1047, c_parent_idx=1046, mojo_node_idx=1025, mojo_parent_idx=1024, c_children_idxs=1048, 1049, 1050, 1051, 1052, 1053, ... len=21, mojo_children_idxs=1026, 1027, 1028, 1029, 1030, 1031, ... len=21) 
			{ 
			WhitespaceNode(c_node_idx=1048, c_parent_idx=1047, mojo_node_idx=1026, mojo_parent_idx=1025) 
			     
			SingleLineCommentNode(c_node_idx=1049, c_parent_idx=1047, mojo_node_idx=1027, mojo_parent_idx=1025) 
			# frame alignment of bodies with their children 
			WhitespaceNode(c_node_idx=1050, c_parent_idx=1047, mojo_node_idx=1028, mojo_parent_idx=1025) 
			  
			PlaceHolderNode(c_node_idx=1051, c_parent_idx=1047, mojo_node_idx=1029, mojo_parent_idx=1025) 
			mjSAMEFRAME_NONE    = 0 , 
			WhitespaceNode(c_node_idx=1052, c_parent_idx=1047, mojo_node_idx=1030, mojo_parent_idx=1025) 
			        
			SingleLineCommentNode(c_node_idx=1053, c_parent_idx=1047, mojo_node_idx=1031, mojo_parent_idx=1025) 
			# no alignment 
			WhitespaceNode(c_node_idx=1054, c_parent_idx=1047, mojo_node_idx=1032, mojo_parent_idx=1025) 
			  
			PlaceHolderNode(c_node_idx=1055, c_parent_idx=1047, mojo_node_idx=1033, mojo_parent_idx=1025) 
			mjSAMEFRAME_BODY , 
			WhitespaceNode(c_node_idx=1056, c_parent_idx=1047, mojo_node_idx=1034, mojo_parent_idx=1025) 
			               
			SingleLineCommentNode(c_node_idx=1057, c_parent_idx=1047, mojo_node_idx=1035, mojo_parent_idx=1025) 
			# frame is same as body frame 
			WhitespaceNode(c_node_idx=1058, c_parent_idx=1047, mojo_node_idx=1036, mojo_parent_idx=1025) 
			  
			PlaceHolderNode(c_node_idx=1059, c_parent_idx=1047, mojo_node_idx=1037, mojo_parent_idx=1025) 
			mjSAMEFRAME_INERTIA , 
			WhitespaceNode(c_node_idx=1060, c_parent_idx=1047, mojo_node_idx=1038, mojo_parent_idx=1025) 
			            
			SingleLineCommentNode(c_node_idx=1061, c_parent_idx=1047, mojo_node_idx=1039, mojo_parent_idx=1025) 
			# frame is same as inertial frame 
			WhitespaceNode(c_node_idx=1062, c_parent_idx=1047, mojo_node_idx=1040, mojo_parent_idx=1025) 
			  
			PlaceHolderNode(c_node_idx=1063, c_parent_idx=1047, mojo_node_idx=1041, mojo_parent_idx=1025) 
			mjSAMEFRAME_BODYROT , 
			WhitespaceNode(c_node_idx=1064, c_parent_idx=1047, mojo_node_idx=1042, mojo_parent_idx=1025) 
			            
			SingleLineCommentNode(c_node_idx=1065, c_parent_idx=1047, mojo_node_idx=1043, mojo_parent_idx=1025) 
			# frame orientation is same as body orientation 
			WhitespaceNode(c_node_idx=1066, c_parent_idx=1047, mojo_node_idx=1044, mojo_parent_idx=1025) 
			  
			PlaceHolderNode(c_node_idx=1067, c_parent_idx=1047, mojo_node_idx=1045, mojo_parent_idx=1025) 
			mjSAMEFRAME_INERTIAROT          
			SingleLineCommentNode(c_node_idx=1068, c_parent_idx=1047, mojo_node_idx=1046, mojo_parent_idx=1025) 
			# frame orientation is same as inertia orientation 
			} 
		alias mjtSameFrame = mjtSameFrame_ 
		WhitespaceNode(c_node_idx=1070, c_parent_idx=15, mojo_node_idx=1047, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtLRMode, c_node_idx=1071, c_parent_idx=15, mojo_node_idx=1048, mojo_parent_idx=15, c_children_idxs=1072, 1091, mojo_children_idxs=1049) 
		EnumNode(name=mjtLRMode_, c_node_idx=1072, c_parent_idx=1071, mojo_node_idx=1049, mojo_parent_idx=1048, c_children_idxs=1073, mojo_children_idxs=1050) 
		#  enum mjtLRMode_ 
			PlaceHolderNode(c_node_idx=1073, c_parent_idx=1072, mojo_node_idx=1050, mojo_parent_idx=1049, c_children_idxs=1074, 1075, 1076, 1077, 1078, 1079, ... len=17, mojo_children_idxs=1051, 1052, 1053, 1054, 1055, 1056, ... len=17) 
			{ 
			WhitespaceNode(c_node_idx=1074, c_parent_idx=1073, mojo_node_idx=1051, mojo_parent_idx=1050) 
			        
			SingleLineCommentNode(c_node_idx=1075, c_parent_idx=1073, mojo_node_idx=1052, mojo_parent_idx=1050) 
			# mode for actuator length range computation 
			WhitespaceNode(c_node_idx=1076, c_parent_idx=1073, mojo_node_idx=1053, mojo_parent_idx=1050) 
			  
			PlaceHolderNode(c_node_idx=1077, c_parent_idx=1073, mojo_node_idx=1054, mojo_parent_idx=1050) 
			mjLRMODE_NONE   = 0 , 
			WhitespaceNode(c_node_idx=1078, c_parent_idx=1073, mojo_node_idx=1055, mojo_parent_idx=1050) 
			            
			SingleLineCommentNode(c_node_idx=1079, c_parent_idx=1073, mojo_node_idx=1056, mojo_parent_idx=1050) 
			# do not process any actuators 
			WhitespaceNode(c_node_idx=1080, c_parent_idx=1073, mojo_node_idx=1057, mojo_parent_idx=1050) 
			  
			PlaceHolderNode(c_node_idx=1081, c_parent_idx=1073, mojo_node_idx=1058, mojo_parent_idx=1050) 
			mjLRMODE_MUSCLE , 
			WhitespaceNode(c_node_idx=1082, c_parent_idx=1073, mojo_node_idx=1059, mojo_parent_idx=1050) 
			                
			SingleLineCommentNode(c_node_idx=1083, c_parent_idx=1073, mojo_node_idx=1060, mojo_parent_idx=1050) 
			# process muscle actuators 
			WhitespaceNode(c_node_idx=1084, c_parent_idx=1073, mojo_node_idx=1061, mojo_parent_idx=1050) 
			  
			PlaceHolderNode(c_node_idx=1085, c_parent_idx=1073, mojo_node_idx=1062, mojo_parent_idx=1050) 
			mjLRMODE_MUSCLEUSER , 
			WhitespaceNode(c_node_idx=1086, c_parent_idx=1073, mojo_node_idx=1063, mojo_parent_idx=1050) 
			            
			SingleLineCommentNode(c_node_idx=1087, c_parent_idx=1073, mojo_node_idx=1064, mojo_parent_idx=1050) 
			# process muscle and user actuators 
			WhitespaceNode(c_node_idx=1088, c_parent_idx=1073, mojo_node_idx=1065, mojo_parent_idx=1050) 
			  
			PlaceHolderNode(c_node_idx=1089, c_parent_idx=1073, mojo_node_idx=1066, mojo_parent_idx=1050) 
			mjLRMODE_ALL                    
			SingleLineCommentNode(c_node_idx=1090, c_parent_idx=1073, mojo_node_idx=1067, mojo_parent_idx=1050) 
			# process all actuators 
			} 
		alias mjtLRMode = mjtLRMode_ 
		WhitespaceNode(c_node_idx=1092, c_parent_idx=15, mojo_node_idx=1068, mojo_parent_idx=15) 
		 
		 
		 
		TypedefNode(alias=mjtFlexSelf, c_node_idx=1093, c_parent_idx=15, mojo_node_idx=1069, mojo_parent_idx=15, c_children_idxs=1094, 1117, mojo_children_idxs=1070) 
		EnumNode(name=mjtFlexSelf_, c_node_idx=1094, c_parent_idx=1093, mojo_node_idx=1070, mojo_parent_idx=1069, c_children_idxs=1095, mojo_children_idxs=1071) 
		#  enum mjtFlexSelf_ 
			PlaceHolderNode(c_node_idx=1095, c_parent_idx=1094, mojo_node_idx=1071, mojo_parent_idx=1070, c_children_idxs=1096, 1097, 1098, 1099, 1100, 1101, ... len=21, mojo_children_idxs=1072, 1073, 1074, 1075, 1076, 1077, ... len=21) 
			{ 
			WhitespaceNode(c_node_idx=1096, c_parent_idx=1095, mojo_node_idx=1072, mojo_parent_idx=1071) 
			      
			SingleLineCommentNode(c_node_idx=1097, c_parent_idx=1095, mojo_node_idx=1073, mojo_parent_idx=1071) 
			# mode for flex selfcollide 
			WhitespaceNode(c_node_idx=1098, c_parent_idx=1095, mojo_node_idx=1074, mojo_parent_idx=1071) 
			  
			PlaceHolderNode(c_node_idx=1099, c_parent_idx=1095, mojo_node_idx=1075, mojo_parent_idx=1071) 
			mjFLEXSELF_NONE   = 0 , 
			WhitespaceNode(c_node_idx=1100, c_parent_idx=1095, mojo_node_idx=1076, mojo_parent_idx=1071) 
			          
			SingleLineCommentNode(c_node_idx=1101, c_parent_idx=1095, mojo_node_idx=1077, mojo_parent_idx=1071) 
			# no self-collisions 
			WhitespaceNode(c_node_idx=1102, c_parent_idx=1095, mojo_node_idx=1078, mojo_parent_idx=1071) 
			  
			PlaceHolderNode(c_node_idx=1103, c_parent_idx=1095, mojo_node_idx=1079, mojo_parent_idx=1071) 
			mjFLEXSELF_NARROW , 
			WhitespaceNode(c_node_idx=1104, c_parent_idx=1095, mojo_node_idx=1080, mojo_parent_idx=1071) 
			              
			SingleLineCommentNode(c_node_idx=1105, c_parent_idx=1095, mojo_node_idx=1081, mojo_parent_idx=1071) 
			# skip midphase ,  go directly to narrowphase 
			WhitespaceNode(c_node_idx=1106, c_parent_idx=1095, mojo_node_idx=1082, mojo_parent_idx=1071) 
			  
			PlaceHolderNode(c_node_idx=1107, c_parent_idx=1095, mojo_node_idx=1083, mojo_parent_idx=1071) 
			mjFLEXSELF_BVH , 
			WhitespaceNode(c_node_idx=1108, c_parent_idx=1095, mojo_node_idx=1084, mojo_parent_idx=1071) 
			                 
			SingleLineCommentNode(c_node_idx=1109, c_parent_idx=1095, mojo_node_idx=1085, mojo_parent_idx=1071) 
			# use BVH in midphase (if midphase enabled) 
			WhitespaceNode(c_node_idx=1110, c_parent_idx=1095, mojo_node_idx=1086, mojo_parent_idx=1071) 
			  
			PlaceHolderNode(c_node_idx=1111, c_parent_idx=1095, mojo_node_idx=1087, mojo_parent_idx=1071) 
			mjFLEXSELF_SAP , 
			WhitespaceNode(c_node_idx=1112, c_parent_idx=1095, mojo_node_idx=1088, mojo_parent_idx=1071) 
			                 
			SingleLineCommentNode(c_node_idx=1113, c_parent_idx=1095, mojo_node_idx=1089, mojo_parent_idx=1071) 
			# use SAP in midphase 
			WhitespaceNode(c_node_idx=1114, c_parent_idx=1095, mojo_node_idx=1090, mojo_parent_idx=1071) 
			  
			PlaceHolderNode(c_node_idx=1115, c_parent_idx=1095, mojo_node_idx=1091, mojo_parent_idx=1071) 
			mjFLEXSELF_AUTO                 
			SingleLineCommentNode(c_node_idx=1116, c_parent_idx=1095, mojo_node_idx=1092, mojo_parent_idx=1071) 
			# choose between BVH and SAP automatically 
			} 
		alias mjtFlexSelf = mjtFlexSelf_ 
		WhitespaceNode(c_node_idx=1118, c_parent_idx=15, mojo_node_idx=1093, mojo_parent_idx=15) 
		 
		 
		 
		SingleLineCommentNode(c_node_idx=1119, c_parent_idx=15, mojo_node_idx=1094, mojo_parent_idx=15) 
		# ---------------------------------- mjLROpt ------------------------------------------------------- 
		WhitespaceNode(c_node_idx=1120, c_parent_idx=15, mojo_node_idx=1095, mojo_parent_idx=15) 
		 
		PlaceHolderNode(c_node_idx=1121, c_parent_idx=15, mojo_node_idx=1096, mojo_parent_idx=15, c_children_idxs=1122, mojo_children_idxs=1097) 
		struct mjLROpt_ 
		PlaceHolderNode(c_node_idx=1122, c_parent_idx=1121, mojo_node_idx=1097, mojo_parent_idx=1096, c_children_idxs=1123, 1124, 1125, 1126, 1127, 1128, ... len=46, mojo_children_idxs=1098, 1099, 1100, 1101, 1102, 1103, ... len=46) 
		{ 
		WhitespaceNode(c_node_idx=1123, c_parent_idx=1122, mojo_node_idx=1098, mojo_parent_idx=1097) 
		                
		SingleLineCommentNode(c_node_idx=1124, c_parent_idx=1122, mojo_node_idx=1099, mojo_parent_idx=1097) 
		# options for mj_setLengthRange() 
		WhitespaceNode(c_node_idx=1125, c_parent_idx=1122, mojo_node_idx=1100, mojo_parent_idx=1097) 
		  
		SingleLineCommentNode(c_node_idx=1126, c_parent_idx=1122, mojo_node_idx=1101, mojo_parent_idx=1097) 
		# flags 
		WhitespaceNode(c_node_idx=1127, c_parent_idx=1122, mojo_node_idx=1102, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1128, c_parent_idx=1122, mojo_node_idx=1103, mojo_parent_idx=1097) 
		int mode ; 
		WhitespaceNode(c_node_idx=1129, c_parent_idx=1122, mojo_node_idx=1104, mojo_parent_idx=1097) 
		                       
		SingleLineCommentNode(c_node_idx=1130, c_parent_idx=1122, mojo_node_idx=1105, mojo_parent_idx=1097) 
		# which actuators to process (mjtLRMode) 
		WhitespaceNode(c_node_idx=1131, c_parent_idx=1122, mojo_node_idx=1106, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1132, c_parent_idx=1122, mojo_node_idx=1107, mojo_parent_idx=1097) 
		int useexisting ; 
		WhitespaceNode(c_node_idx=1133, c_parent_idx=1122, mojo_node_idx=1108, mojo_parent_idx=1097) 
		                
		SingleLineCommentNode(c_node_idx=1134, c_parent_idx=1122, mojo_node_idx=1109, mojo_parent_idx=1097) 
		# use existing length range if available 
		WhitespaceNode(c_node_idx=1135, c_parent_idx=1122, mojo_node_idx=1110, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1136, c_parent_idx=1122, mojo_node_idx=1111, mojo_parent_idx=1097) 
		int uselimit ; 
		WhitespaceNode(c_node_idx=1137, c_parent_idx=1122, mojo_node_idx=1112, mojo_parent_idx=1097) 
		                   
		SingleLineCommentNode(c_node_idx=1138, c_parent_idx=1122, mojo_node_idx=1113, mojo_parent_idx=1097) 
		# use joint and tendon limits if available 
		WhitespaceNode(c_node_idx=1139, c_parent_idx=1122, mojo_node_idx=1114, mojo_parent_idx=1097) 
		 
		  
		SingleLineCommentNode(c_node_idx=1140, c_parent_idx=1122, mojo_node_idx=1115, mojo_parent_idx=1097) 
		# algorithm parameters 
		WhitespaceNode(c_node_idx=1141, c_parent_idx=1122, mojo_node_idx=1116, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1142, c_parent_idx=1122, mojo_node_idx=1117, mojo_parent_idx=1097) 
		mjtNum accel ; 
		WhitespaceNode(c_node_idx=1143, c_parent_idx=1122, mojo_node_idx=1118, mojo_parent_idx=1097) 
		                   
		SingleLineCommentNode(c_node_idx=1144, c_parent_idx=1122, mojo_node_idx=1119, mojo_parent_idx=1097) 
		# target acceleration used to compute force 
		WhitespaceNode(c_node_idx=1145, c_parent_idx=1122, mojo_node_idx=1120, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1146, c_parent_idx=1122, mojo_node_idx=1121, mojo_parent_idx=1097) 
		mjtNum maxforce ; 
		WhitespaceNode(c_node_idx=1147, c_parent_idx=1122, mojo_node_idx=1122, mojo_parent_idx=1097) 
		                
		SingleLineCommentNode(c_node_idx=1148, c_parent_idx=1122, mojo_node_idx=1123, mojo_parent_idx=1097) 
		# maximum force ;  0: no limit 
		WhitespaceNode(c_node_idx=1149, c_parent_idx=1122, mojo_node_idx=1124, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1150, c_parent_idx=1122, mojo_node_idx=1125, mojo_parent_idx=1097) 
		mjtNum timeconst ; 
		WhitespaceNode(c_node_idx=1151, c_parent_idx=1122, mojo_node_idx=1126, mojo_parent_idx=1097) 
		               
		SingleLineCommentNode(c_node_idx=1152, c_parent_idx=1122, mojo_node_idx=1127, mojo_parent_idx=1097) 
		# time constant for velocity reduction ;  min 0.01 
		WhitespaceNode(c_node_idx=1153, c_parent_idx=1122, mojo_node_idx=1128, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1154, c_parent_idx=1122, mojo_node_idx=1129, mojo_parent_idx=1097) 
		mjtNum timestep ; 
		WhitespaceNode(c_node_idx=1155, c_parent_idx=1122, mojo_node_idx=1130, mojo_parent_idx=1097) 
		                
		SingleLineCommentNode(c_node_idx=1156, c_parent_idx=1122, mojo_node_idx=1131, mojo_parent_idx=1097) 
		# simulation timestep ;  0: use mjOption.timestep 
		WhitespaceNode(c_node_idx=1157, c_parent_idx=1122, mojo_node_idx=1132, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1158, c_parent_idx=1122, mojo_node_idx=1133, mojo_parent_idx=1097) 
		mjtNum inttotal ; 
		WhitespaceNode(c_node_idx=1159, c_parent_idx=1122, mojo_node_idx=1134, mojo_parent_idx=1097) 
		                
		SingleLineCommentNode(c_node_idx=1160, c_parent_idx=1122, mojo_node_idx=1135, mojo_parent_idx=1097) 
		# total simulation time interval 
		WhitespaceNode(c_node_idx=1161, c_parent_idx=1122, mojo_node_idx=1136, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1162, c_parent_idx=1122, mojo_node_idx=1137, mojo_parent_idx=1097) 
		mjtNum interval ; 
		WhitespaceNode(c_node_idx=1163, c_parent_idx=1122, mojo_node_idx=1138, mojo_parent_idx=1097) 
		                
		SingleLineCommentNode(c_node_idx=1164, c_parent_idx=1122, mojo_node_idx=1139, mojo_parent_idx=1097) 
		# evaluation time interval (at the end) 
		WhitespaceNode(c_node_idx=1165, c_parent_idx=1122, mojo_node_idx=1140, mojo_parent_idx=1097) 
		  
		PlaceHolderNode(c_node_idx=1166, c_parent_idx=1122, mojo_node_idx=1141, mojo_parent_idx=1097) 
		mjtNum tolrange ; 
		WhitespaceNode(c_node_idx=1167, c_parent_idx=1122, mojo_node_idx=1142, mojo_parent_idx=1097) 
		                
		SingleLineCommentNode(c_node_idx=1168, c_parent_idx=1122, mojo_node_idx=1143, mojo_parent_idx=1097) 
		# convergence tolerance (relative to range) 
		} 
		; 
		WhitespaceNode(c_node_idx=1169, c_parent_idx=15, mojo_node_idx=1144, mojo_parent_idx=15) 
		 
		TypedefNode(alias=mjLROpt, c_node_idx=1170, c_parent_idx=15, mojo_node_idx=1145, mojo_parent_idx=15, c_children_idxs=1171, 1172, mojo_children_idxs=1146) 
		# Complex typedef not supported yet: typedef <children> mjLROpt ;  
		PlaceHolderNode(c_node_idx=1171, c_parent_idx=1170, mojo_node_idx=1146, mojo_parent_idx=1145) 
		struct mjLROpt_ 
		WhitespaceNode(c_node_idx=1173, c_parent_idx=15, mojo_node_idx=1147, mojo_parent_idx=15) 
		 
		 
		 
		SingleLineCommentNode(c_node_idx=1174, c_parent_idx=15, mojo_node_idx=1148, mojo_parent_idx=15) 
		# ---------------------------------- mjVFS --------------------------------------------------------- 
		WhitespaceNode(c_node_idx=1175, c_parent_idx=15, mojo_node_idx=1149, mojo_parent_idx=15) 
		 
		PlaceHolderNode(c_node_idx=1176, c_parent_idx=15, mojo_node_idx=1150, mojo_parent_idx=15, c_children_idxs=1177, mojo_children_idxs=1151) 
		struct mjVFS_ 
		PlaceHolderNode(c_node_idx=1177, c_parent_idx=1176, mojo_node_idx=1151, mojo_parent_idx=1150, c_children_idxs=1178, 1179, 1180, 1181, 1182, 1183... len=6, mojo_children_idxs=1152, 1153, 1154, 1155, 1156, 1157... len=6) 
		{ 
		WhitespaceNode(c_node_idx=1178, c_parent_idx=1177, mojo_node_idx=1152, mojo_parent_idx=1151) 
		                              
		SingleLineCommentNode(c_node_idx=1179, c_parent_idx=1177, mojo_node_idx=1153, mojo_parent_idx=1151) 
		# virtual file system for loading from memory 
		WhitespaceNode(c_node_idx=1180, c_parent_idx=1177, mojo_node_idx=1154, mojo_parent_idx=1151) 
		  
		PlaceHolderNode(c_node_idx=1181, c_parent_idx=1177, mojo_node_idx=1155, mojo_parent_idx=1151) 
		void* impl_ ; 
		WhitespaceNode(c_node_idx=1182, c_parent_idx=1177, mojo_node_idx=1156, mojo_parent_idx=1151) 
		                                
		SingleLineCommentNode(c_node_idx=1183, c_parent_idx=1177, mojo_node_idx=1157, mojo_parent_idx=1151) 
		# internal pointer to VFS memory 
		} 
		; 
		WhitespaceNode(c_node_idx=1184, c_parent_idx=15, mojo_node_idx=1158, mojo_parent_idx=15) 
		 
		TypedefNode(alias=mjVFS, c_node_idx=1185, c_parent_idx=15, mojo_node_idx=1159, mojo_parent_idx=15, c_children_idxs=1186, 1187, mojo_children_idxs=1160) 
		# Complex typedef not supported yet: typedef <children> mjVFS ;  
		PlaceHolderNode(c_node_idx=1186, c_parent_idx=1185, mojo_node_idx=1160, mojo_parent_idx=1159) 
		struct mjVFS_ 
		WhitespaceNode(c_node_idx=1188, c_parent_idx=15, mojo_node_idx=1161, mojo_parent_idx=15) 
		 
		 
		SingleLineCommentNode(c_node_idx=1189, c_parent_idx=15, mojo_node_idx=1162, mojo_parent_idx=15) 
		# ---------------------------------- mjOption ------------------------------------------------------ 
		WhitespaceNode(c_node_idx=1190, c_parent_idx=15, mojo_node_idx=1163, mojo_parent_idx=15) 
		 
		PlaceHolderNode(c_node_idx=1191, c_parent_idx=15, mojo_node_idx=1164, mojo_parent_idx=15, c_children_idxs=1192, mojo_children_idxs=1165) 
		struct mjOption_ 
		PlaceHolderNode(c_node_idx=1192, c_parent_idx=1191, mojo_node_idx=1165, mojo_parent_idx=1164, c_children_idxs=1193, 1194, 1195, 1196, 1197, 1198, ... len=130, mojo_children_idxs=1166, 1167, 1168, 1169, 1170, 1171, ... len=130) 
		{ 
		WhitespaceNode(c_node_idx=1193, c_parent_idx=1192, mojo_node_idx=1166, mojo_parent_idx=1165) 
		               
		SingleLineCommentNode(c_node_idx=1194, c_parent_idx=1192, mojo_node_idx=1167, mojo_parent_idx=1165) 
		# physics options 
		WhitespaceNode(c_node_idx=1195, c_parent_idx=1192, mojo_node_idx=1168, mojo_parent_idx=1165) 
		  
		SingleLineCommentNode(c_node_idx=1196, c_parent_idx=1192, mojo_node_idx=1169, mojo_parent_idx=1165) 
		# timing parameters 
		WhitespaceNode(c_node_idx=1197, c_parent_idx=1192, mojo_node_idx=1170, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1198, c_parent_idx=1192, mojo_node_idx=1171, mojo_parent_idx=1165) 
		mjtNum timestep ; 
		WhitespaceNode(c_node_idx=1199, c_parent_idx=1192, mojo_node_idx=1172, mojo_parent_idx=1165) 
		                
		SingleLineCommentNode(c_node_idx=1200, c_parent_idx=1192, mojo_node_idx=1173, mojo_parent_idx=1165) 
		# timestep 
		WhitespaceNode(c_node_idx=1201, c_parent_idx=1192, mojo_node_idx=1174, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1202, c_parent_idx=1192, mojo_node_idx=1175, mojo_parent_idx=1165) 
		mjtNum apirate ; 
		WhitespaceNode(c_node_idx=1203, c_parent_idx=1192, mojo_node_idx=1176, mojo_parent_idx=1165) 
		                 
		SingleLineCommentNode(c_node_idx=1204, c_parent_idx=1192, mojo_node_idx=1177, mojo_parent_idx=1165) 
		# update rate for remote API (Hz) 
		WhitespaceNode(c_node_idx=1205, c_parent_idx=1192, mojo_node_idx=1178, mojo_parent_idx=1165) 
		 
		  
		SingleLineCommentNode(c_node_idx=1206, c_parent_idx=1192, mojo_node_idx=1179, mojo_parent_idx=1165) 
		# solver parameters 
		WhitespaceNode(c_node_idx=1207, c_parent_idx=1192, mojo_node_idx=1180, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1208, c_parent_idx=1192, mojo_node_idx=1181, mojo_parent_idx=1165) 
		mjtNum impratio ; 
		WhitespaceNode(c_node_idx=1209, c_parent_idx=1192, mojo_node_idx=1182, mojo_parent_idx=1165) 
		                
		SingleLineCommentNode(c_node_idx=1210, c_parent_idx=1192, mojo_node_idx=1183, mojo_parent_idx=1165) 
		# ratio of friction-to-normal contact impedance 
		WhitespaceNode(c_node_idx=1211, c_parent_idx=1192, mojo_node_idx=1184, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1212, c_parent_idx=1192, mojo_node_idx=1185, mojo_parent_idx=1165) 
		mjtNum tolerance ; 
		WhitespaceNode(c_node_idx=1213, c_parent_idx=1192, mojo_node_idx=1186, mojo_parent_idx=1165) 
		               
		SingleLineCommentNode(c_node_idx=1214, c_parent_idx=1192, mojo_node_idx=1187, mojo_parent_idx=1165) 
		# main solver tolerance 
		WhitespaceNode(c_node_idx=1215, c_parent_idx=1192, mojo_node_idx=1188, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1216, c_parent_idx=1192, mojo_node_idx=1189, mojo_parent_idx=1165) 
		mjtNum ls_tolerance ; 
		WhitespaceNode(c_node_idx=1217, c_parent_idx=1192, mojo_node_idx=1190, mojo_parent_idx=1165) 
		            
		SingleLineCommentNode(c_node_idx=1218, c_parent_idx=1192, mojo_node_idx=1191, mojo_parent_idx=1165) 
		# CG/Newton linesearch tolerance 
		WhitespaceNode(c_node_idx=1219, c_parent_idx=1192, mojo_node_idx=1192, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1220, c_parent_idx=1192, mojo_node_idx=1193, mojo_parent_idx=1165) 
		mjtNum noslip_tolerance ; 
		WhitespaceNode(c_node_idx=1221, c_parent_idx=1192, mojo_node_idx=1194, mojo_parent_idx=1165) 
		        
		SingleLineCommentNode(c_node_idx=1222, c_parent_idx=1192, mojo_node_idx=1195, mojo_parent_idx=1165) 
		# noslip solver tolerance 
		WhitespaceNode(c_node_idx=1223, c_parent_idx=1192, mojo_node_idx=1196, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1224, c_parent_idx=1192, mojo_node_idx=1197, mojo_parent_idx=1165) 
		mjtNum ccd_tolerance ; 
		WhitespaceNode(c_node_idx=1225, c_parent_idx=1192, mojo_node_idx=1198, mojo_parent_idx=1165) 
		           
		SingleLineCommentNode(c_node_idx=1226, c_parent_idx=1192, mojo_node_idx=1199, mojo_parent_idx=1165) 
		# convex collision solver tolerance 
		WhitespaceNode(c_node_idx=1227, c_parent_idx=1192, mojo_node_idx=1200, mojo_parent_idx=1165) 
		 
		  
		SingleLineCommentNode(c_node_idx=1228, c_parent_idx=1192, mojo_node_idx=1201, mojo_parent_idx=1165) 
		# physical constants 
		WhitespaceNode(c_node_idx=1229, c_parent_idx=1192, mojo_node_idx=1202, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1230, c_parent_idx=1192, mojo_node_idx=1203, mojo_parent_idx=1165) 
		mjtNum gravity[3] ; 
		WhitespaceNode(c_node_idx=1231, c_parent_idx=1192, mojo_node_idx=1204, mojo_parent_idx=1165) 
		              
		SingleLineCommentNode(c_node_idx=1232, c_parent_idx=1192, mojo_node_idx=1205, mojo_parent_idx=1165) 
		# gravitational acceleration 
		WhitespaceNode(c_node_idx=1233, c_parent_idx=1192, mojo_node_idx=1206, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1234, c_parent_idx=1192, mojo_node_idx=1207, mojo_parent_idx=1165) 
		mjtNum wind[3] ; 
		WhitespaceNode(c_node_idx=1235, c_parent_idx=1192, mojo_node_idx=1208, mojo_parent_idx=1165) 
		                 
		SingleLineCommentNode(c_node_idx=1236, c_parent_idx=1192, mojo_node_idx=1209, mojo_parent_idx=1165) 
		# wind (for lift ,  drag and viscosity) 
		WhitespaceNode(c_node_idx=1237, c_parent_idx=1192, mojo_node_idx=1210, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1238, c_parent_idx=1192, mojo_node_idx=1211, mojo_parent_idx=1165) 
		mjtNum magnetic[3] ; 
		WhitespaceNode(c_node_idx=1239, c_parent_idx=1192, mojo_node_idx=1212, mojo_parent_idx=1165) 
		             
		SingleLineCommentNode(c_node_idx=1240, c_parent_idx=1192, mojo_node_idx=1213, mojo_parent_idx=1165) 
		# global magnetic flux 
		WhitespaceNode(c_node_idx=1241, c_parent_idx=1192, mojo_node_idx=1214, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1242, c_parent_idx=1192, mojo_node_idx=1215, mojo_parent_idx=1165) 
		mjtNum density ; 
		WhitespaceNode(c_node_idx=1243, c_parent_idx=1192, mojo_node_idx=1216, mojo_parent_idx=1165) 
		                 
		SingleLineCommentNode(c_node_idx=1244, c_parent_idx=1192, mojo_node_idx=1217, mojo_parent_idx=1165) 
		# density of medium 
		WhitespaceNode(c_node_idx=1245, c_parent_idx=1192, mojo_node_idx=1218, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1246, c_parent_idx=1192, mojo_node_idx=1219, mojo_parent_idx=1165) 
		mjtNum viscosity ; 
		WhitespaceNode(c_node_idx=1247, c_parent_idx=1192, mojo_node_idx=1220, mojo_parent_idx=1165) 
		               
		SingleLineCommentNode(c_node_idx=1248, c_parent_idx=1192, mojo_node_idx=1221, mojo_parent_idx=1165) 
		# viscosity of medium 
		WhitespaceNode(c_node_idx=1249, c_parent_idx=1192, mojo_node_idx=1222, mojo_parent_idx=1165) 
		 
		  
		SingleLineCommentNode(c_node_idx=1250, c_parent_idx=1192, mojo_node_idx=1223, mojo_parent_idx=1165) 
		# override contact solver parameters (if enabled) 
		WhitespaceNode(c_node_idx=1251, c_parent_idx=1192, mojo_node_idx=1224, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1252, c_parent_idx=1192, mojo_node_idx=1225, mojo_parent_idx=1165) 
		mjtNum o_margin ; 
		WhitespaceNode(c_node_idx=1253, c_parent_idx=1192, mojo_node_idx=1226, mojo_parent_idx=1165) 
		                
		SingleLineCommentNode(c_node_idx=1254, c_parent_idx=1192, mojo_node_idx=1227, mojo_parent_idx=1165) 
		# margin 
		WhitespaceNode(c_node_idx=1255, c_parent_idx=1192, mojo_node_idx=1228, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1256, c_parent_idx=1192, mojo_node_idx=1229, mojo_parent_idx=1165) 
		mjtNum o_solref[mjNREF] ; 
		WhitespaceNode(c_node_idx=1257, c_parent_idx=1192, mojo_node_idx=1230, mojo_parent_idx=1165) 
		        
		SingleLineCommentNode(c_node_idx=1258, c_parent_idx=1192, mojo_node_idx=1231, mojo_parent_idx=1165) 
		# solref 
		WhitespaceNode(c_node_idx=1259, c_parent_idx=1192, mojo_node_idx=1232, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1260, c_parent_idx=1192, mojo_node_idx=1233, mojo_parent_idx=1165) 
		mjtNum o_solimp[mjNIMP] ; 
		WhitespaceNode(c_node_idx=1261, c_parent_idx=1192, mojo_node_idx=1234, mojo_parent_idx=1165) 
		        
		SingleLineCommentNode(c_node_idx=1262, c_parent_idx=1192, mojo_node_idx=1235, mojo_parent_idx=1165) 
		# solimp 
		WhitespaceNode(c_node_idx=1263, c_parent_idx=1192, mojo_node_idx=1236, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1264, c_parent_idx=1192, mojo_node_idx=1237, mojo_parent_idx=1165) 
		mjtNum o_friction[5] ; 
		WhitespaceNode(c_node_idx=1265, c_parent_idx=1192, mojo_node_idx=1238, mojo_parent_idx=1165) 
		           
		SingleLineCommentNode(c_node_idx=1266, c_parent_idx=1192, mojo_node_idx=1239, mojo_parent_idx=1165) 
		# friction 
		WhitespaceNode(c_node_idx=1267, c_parent_idx=1192, mojo_node_idx=1240, mojo_parent_idx=1165) 
		 
		  
		SingleLineCommentNode(c_node_idx=1268, c_parent_idx=1192, mojo_node_idx=1241, mojo_parent_idx=1165) 
		# discrete settings 
		WhitespaceNode(c_node_idx=1269, c_parent_idx=1192, mojo_node_idx=1242, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1270, c_parent_idx=1192, mojo_node_idx=1243, mojo_parent_idx=1165) 
		int integrator ; 
		WhitespaceNode(c_node_idx=1271, c_parent_idx=1192, mojo_node_idx=1244, mojo_parent_idx=1165) 
		                 
		SingleLineCommentNode(c_node_idx=1272, c_parent_idx=1192, mojo_node_idx=1245, mojo_parent_idx=1165) 
		# integration mode (mjtIntegrator) 
		WhitespaceNode(c_node_idx=1273, c_parent_idx=1192, mojo_node_idx=1246, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1274, c_parent_idx=1192, mojo_node_idx=1247, mojo_parent_idx=1165) 
		int cone ; 
		WhitespaceNode(c_node_idx=1275, c_parent_idx=1192, mojo_node_idx=1248, mojo_parent_idx=1165) 
		                       
		SingleLineCommentNode(c_node_idx=1276, c_parent_idx=1192, mojo_node_idx=1249, mojo_parent_idx=1165) 
		# type of friction cone (mjtCone) 
		WhitespaceNode(c_node_idx=1277, c_parent_idx=1192, mojo_node_idx=1250, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1278, c_parent_idx=1192, mojo_node_idx=1251, mojo_parent_idx=1165) 
		int jacobian ; 
		WhitespaceNode(c_node_idx=1279, c_parent_idx=1192, mojo_node_idx=1252, mojo_parent_idx=1165) 
		                   
		SingleLineCommentNode(c_node_idx=1280, c_parent_idx=1192, mojo_node_idx=1253, mojo_parent_idx=1165) 
		# type of Jacobian (mjtJacobian) 
		WhitespaceNode(c_node_idx=1281, c_parent_idx=1192, mojo_node_idx=1254, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1282, c_parent_idx=1192, mojo_node_idx=1255, mojo_parent_idx=1165) 
		int solver ; 
		WhitespaceNode(c_node_idx=1283, c_parent_idx=1192, mojo_node_idx=1256, mojo_parent_idx=1165) 
		                     
		SingleLineCommentNode(c_node_idx=1284, c_parent_idx=1192, mojo_node_idx=1257, mojo_parent_idx=1165) 
		# solver algorithm (mjtSolver) 
		WhitespaceNode(c_node_idx=1285, c_parent_idx=1192, mojo_node_idx=1258, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1286, c_parent_idx=1192, mojo_node_idx=1259, mojo_parent_idx=1165) 
		int iterations ; 
		WhitespaceNode(c_node_idx=1287, c_parent_idx=1192, mojo_node_idx=1260, mojo_parent_idx=1165) 
		                 
		SingleLineCommentNode(c_node_idx=1288, c_parent_idx=1192, mojo_node_idx=1261, mojo_parent_idx=1165) 
		# maximum number of main solver iterations 
		WhitespaceNode(c_node_idx=1289, c_parent_idx=1192, mojo_node_idx=1262, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1290, c_parent_idx=1192, mojo_node_idx=1263, mojo_parent_idx=1165) 
		int ls_iterations ; 
		WhitespaceNode(c_node_idx=1291, c_parent_idx=1192, mojo_node_idx=1264, mojo_parent_idx=1165) 
		              
		SingleLineCommentNode(c_node_idx=1292, c_parent_idx=1192, mojo_node_idx=1265, mojo_parent_idx=1165) 
		# maximum number of CG/Newton linesearch iterations 
		WhitespaceNode(c_node_idx=1293, c_parent_idx=1192, mojo_node_idx=1266, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1294, c_parent_idx=1192, mojo_node_idx=1267, mojo_parent_idx=1165) 
		int noslip_iterations ; 
		WhitespaceNode(c_node_idx=1295, c_parent_idx=1192, mojo_node_idx=1268, mojo_parent_idx=1165) 
		          
		SingleLineCommentNode(c_node_idx=1296, c_parent_idx=1192, mojo_node_idx=1269, mojo_parent_idx=1165) 
		# maximum number of noslip solver iterations 
		WhitespaceNode(c_node_idx=1297, c_parent_idx=1192, mojo_node_idx=1270, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1298, c_parent_idx=1192, mojo_node_idx=1271, mojo_parent_idx=1165) 
		int ccd_iterations ; 
		WhitespaceNode(c_node_idx=1299, c_parent_idx=1192, mojo_node_idx=1272, mojo_parent_idx=1165) 
		             
		SingleLineCommentNode(c_node_idx=1300, c_parent_idx=1192, mojo_node_idx=1273, mojo_parent_idx=1165) 
		# maximum number of convex collision solver iterations 
		WhitespaceNode(c_node_idx=1301, c_parent_idx=1192, mojo_node_idx=1274, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1302, c_parent_idx=1192, mojo_node_idx=1275, mojo_parent_idx=1165) 
		int disableflags ; 
		WhitespaceNode(c_node_idx=1303, c_parent_idx=1192, mojo_node_idx=1276, mojo_parent_idx=1165) 
		               
		SingleLineCommentNode(c_node_idx=1304, c_parent_idx=1192, mojo_node_idx=1277, mojo_parent_idx=1165) 
		# bit flags for disabling standard features 
		WhitespaceNode(c_node_idx=1305, c_parent_idx=1192, mojo_node_idx=1278, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1306, c_parent_idx=1192, mojo_node_idx=1279, mojo_parent_idx=1165) 
		int enableflags ; 
		WhitespaceNode(c_node_idx=1307, c_parent_idx=1192, mojo_node_idx=1280, mojo_parent_idx=1165) 
		                
		SingleLineCommentNode(c_node_idx=1308, c_parent_idx=1192, mojo_node_idx=1281, mojo_parent_idx=1165) 
		# bit flags for enabling optional features 
		WhitespaceNode(c_node_idx=1309, c_parent_idx=1192, mojo_node_idx=1282, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1310, c_parent_idx=1192, mojo_node_idx=1283, mojo_parent_idx=1165) 
		int disableactuator ; 
		WhitespaceNode(c_node_idx=1311, c_parent_idx=1192, mojo_node_idx=1284, mojo_parent_idx=1165) 
		            
		SingleLineCommentNode(c_node_idx=1312, c_parent_idx=1192, mojo_node_idx=1285, mojo_parent_idx=1165) 
		# bit flags for disabling actuators by group id 
		WhitespaceNode(c_node_idx=1313, c_parent_idx=1192, mojo_node_idx=1286, mojo_parent_idx=1165) 
		 
		  
		SingleLineCommentNode(c_node_idx=1314, c_parent_idx=1192, mojo_node_idx=1287, mojo_parent_idx=1165) 
		# sdf collision settings 
		WhitespaceNode(c_node_idx=1315, c_parent_idx=1192, mojo_node_idx=1288, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1316, c_parent_idx=1192, mojo_node_idx=1289, mojo_parent_idx=1165) 
		int sdf_initpoints ; 
		WhitespaceNode(c_node_idx=1317, c_parent_idx=1192, mojo_node_idx=1290, mojo_parent_idx=1165) 
		             
		SingleLineCommentNode(c_node_idx=1318, c_parent_idx=1192, mojo_node_idx=1291, mojo_parent_idx=1165) 
		# number of starting points for gradient descent 
		WhitespaceNode(c_node_idx=1319, c_parent_idx=1192, mojo_node_idx=1292, mojo_parent_idx=1165) 
		  
		PlaceHolderNode(c_node_idx=1320, c_parent_idx=1192, mojo_node_idx=1293, mojo_parent_idx=1165) 
		int sdf_iterations ; 
		WhitespaceNode(c_node_idx=1321, c_parent_idx=1192, mojo_node_idx=1294, mojo_parent_idx=1165) 
		             
		SingleLineCommentNode(c_node_idx=1322, c_parent_idx=1192, mojo_node_idx=1295, mojo_parent_idx=1165) 
		# max number of iterations for gradient descent 
		} 
		; 
		WhitespaceNode(c_node_idx=1323, c_parent_idx=15, mojo_node_idx=1296, mojo_parent_idx=15) 
		 
		TypedefNode(alias=mjOption, c_node_idx=1324, c_parent_idx=15, mojo_node_idx=1297, mojo_parent_idx=15, c_children_idxs=1325, 1326, mojo_children_idxs=1298) 
		# Complex typedef not supported yet: typedef <children> mjOption ;  
		PlaceHolderNode(c_node_idx=1325, c_parent_idx=1324, mojo_node_idx=1298, mojo_parent_idx=1297) 
		struct mjOption_ 
		WhitespaceNode(c_node_idx=1327, c_parent_idx=15, mojo_node_idx=1299, mojo_parent_idx=15) 
		 
		 
		 
		SingleLineCommentNode(c_node_idx=1328, c_parent_idx=15, mojo_node_idx=1300, mojo_parent_idx=15) 
		# ---------------------------------- mjVisual ------------------------------------------------------ 
		WhitespaceNode(c_node_idx=1329, c_parent_idx=15, mojo_node_idx=1301, mojo_parent_idx=15) 
		 
		PlaceHolderNode(c_node_idx=1330, c_parent_idx=15, mojo_node_idx=1302, mojo_parent_idx=15, c_children_idxs=1331, mojo_children_idxs=1303) 
		struct mjVisual_ 
		PlaceHolderNode(c_node_idx=1331, c_parent_idx=1330, mojo_node_idx=1303, mojo_parent_idx=1302, c_children_idxs=1332, 1333, 1334, 1335, 1389, 1390, ... len=15, mojo_children_idxs=1304, 1305, 1306, 1307, 1361, 1362, ... len=15) 
		{ 
		WhitespaceNode(c_node_idx=1332, c_parent_idx=1331, mojo_node_idx=1304, mojo_parent_idx=1303) 
		               
		SingleLineCommentNode(c_node_idx=1333, c_parent_idx=1331, mojo_node_idx=1305, mojo_parent_idx=1303) 
		# visualization options 
		WhitespaceNode(c_node_idx=1334, c_parent_idx=1331, mojo_node_idx=1306, mojo_parent_idx=1303) 
		  
		PlaceHolderNode(c_node_idx=1335, c_parent_idx=1331, mojo_node_idx=1307, mojo_parent_idx=1303, c_children_idxs=1336, mojo_children_idxs=1308) 
		PlaceHolderNode(c_node_idx=1336, c_parent_idx=1335, mojo_node_idx=1308, mojo_parent_idx=1307, c_children_idxs=1337, mojo_children_idxs=1309) 
		struct 
		PlaceHolderNode(c_node_idx=1337, c_parent_idx=1336, mojo_node_idx=1309, mojo_parent_idx=1308, c_children_idxs=1338, 1339, 1340, 1341, 1342, 1343, ... len=51, mojo_children_idxs=1310, 1311, 1312, 1313, 1314, 1315, ... len=51) 
		{ 
		WhitespaceNode(c_node_idx=1338, c_parent_idx=1337, mojo_node_idx=1310, mojo_parent_idx=1309) 
		                       
		SingleLineCommentNode(c_node_idx=1339, c_parent_idx=1337, mojo_node_idx=1311, mojo_parent_idx=1309) 
		# global parameters 
		WhitespaceNode(c_node_idx=1340, c_parent_idx=1337, mojo_node_idx=1312, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1341, c_parent_idx=1337, mojo_node_idx=1313, mojo_parent_idx=1309) 
		int orthographic ; 
		WhitespaceNode(c_node_idx=1342, c_parent_idx=1337, mojo_node_idx=1314, mojo_parent_idx=1309) 
		             
		SingleLineCommentNode(c_node_idx=1343, c_parent_idx=1337, mojo_node_idx=1315, mojo_parent_idx=1309) 
		# is the free camera orthographic (0: no ,  1: yes) 
		WhitespaceNode(c_node_idx=1344, c_parent_idx=1337, mojo_node_idx=1316, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1345, c_parent_idx=1337, mojo_node_idx=1317, mojo_parent_idx=1309) 
		float fovy ; 
		WhitespaceNode(c_node_idx=1346, c_parent_idx=1337, mojo_node_idx=1318, mojo_parent_idx=1309) 
		                   
		SingleLineCommentNode(c_node_idx=1347, c_parent_idx=1337, mojo_node_idx=1319, mojo_parent_idx=1309) 
		# y field-of-view of free camera (orthographic ? length : degree) 
		WhitespaceNode(c_node_idx=1348, c_parent_idx=1337, mojo_node_idx=1320, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1349, c_parent_idx=1337, mojo_node_idx=1321, mojo_parent_idx=1309) 
		float ipd ; 
		WhitespaceNode(c_node_idx=1350, c_parent_idx=1337, mojo_node_idx=1322, mojo_parent_idx=1309) 
		                    
		SingleLineCommentNode(c_node_idx=1351, c_parent_idx=1337, mojo_node_idx=1323, mojo_parent_idx=1309) 
		# inter-pupilary distance for free camera 
		WhitespaceNode(c_node_idx=1352, c_parent_idx=1337, mojo_node_idx=1324, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1353, c_parent_idx=1337, mojo_node_idx=1325, mojo_parent_idx=1309) 
		float azimuth ; 
		WhitespaceNode(c_node_idx=1354, c_parent_idx=1337, mojo_node_idx=1326, mojo_parent_idx=1309) 
		                
		SingleLineCommentNode(c_node_idx=1355, c_parent_idx=1337, mojo_node_idx=1327, mojo_parent_idx=1309) 
		# initial azimuth of free camera (degrees) 
		WhitespaceNode(c_node_idx=1356, c_parent_idx=1337, mojo_node_idx=1328, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1357, c_parent_idx=1337, mojo_node_idx=1329, mojo_parent_idx=1309) 
		float elevation ; 
		WhitespaceNode(c_node_idx=1358, c_parent_idx=1337, mojo_node_idx=1330, mojo_parent_idx=1309) 
		              
		SingleLineCommentNode(c_node_idx=1359, c_parent_idx=1337, mojo_node_idx=1331, mojo_parent_idx=1309) 
		# initial elevation of free camera (degrees) 
		WhitespaceNode(c_node_idx=1360, c_parent_idx=1337, mojo_node_idx=1332, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1361, c_parent_idx=1337, mojo_node_idx=1333, mojo_parent_idx=1309) 
		float linewidth ; 
		WhitespaceNode(c_node_idx=1362, c_parent_idx=1337, mojo_node_idx=1334, mojo_parent_idx=1309) 
		              
		SingleLineCommentNode(c_node_idx=1363, c_parent_idx=1337, mojo_node_idx=1335, mojo_parent_idx=1309) 
		# line width for wireframe and ray rendering 
		WhitespaceNode(c_node_idx=1364, c_parent_idx=1337, mojo_node_idx=1336, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1365, c_parent_idx=1337, mojo_node_idx=1337, mojo_parent_idx=1309) 
		float glow ; 
		WhitespaceNode(c_node_idx=1366, c_parent_idx=1337, mojo_node_idx=1338, mojo_parent_idx=1309) 
		                   
		SingleLineCommentNode(c_node_idx=1367, c_parent_idx=1337, mojo_node_idx=1339, mojo_parent_idx=1309) 
		# glow coefficient for selected body 
		WhitespaceNode(c_node_idx=1368, c_parent_idx=1337, mojo_node_idx=1340, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1369, c_parent_idx=1337, mojo_node_idx=1341, mojo_parent_idx=1309) 
		float realtime ; 
		WhitespaceNode(c_node_idx=1370, c_parent_idx=1337, mojo_node_idx=1342, mojo_parent_idx=1309) 
		               
		SingleLineCommentNode(c_node_idx=1371, c_parent_idx=1337, mojo_node_idx=1343, mojo_parent_idx=1309) 
		# initial real-time factor (1: real time) 
		WhitespaceNode(c_node_idx=1372, c_parent_idx=1337, mojo_node_idx=1344, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1373, c_parent_idx=1337, mojo_node_idx=1345, mojo_parent_idx=1309) 
		int   offwidth ; 
		WhitespaceNode(c_node_idx=1374, c_parent_idx=1337, mojo_node_idx=1346, mojo_parent_idx=1309) 
		               
		SingleLineCommentNode(c_node_idx=1375, c_parent_idx=1337, mojo_node_idx=1347, mojo_parent_idx=1309) 
		# width of offscreen buffer 
		WhitespaceNode(c_node_idx=1376, c_parent_idx=1337, mojo_node_idx=1348, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1377, c_parent_idx=1337, mojo_node_idx=1349, mojo_parent_idx=1309) 
		int   offheight ; 
		WhitespaceNode(c_node_idx=1378, c_parent_idx=1337, mojo_node_idx=1350, mojo_parent_idx=1309) 
		              
		SingleLineCommentNode(c_node_idx=1379, c_parent_idx=1337, mojo_node_idx=1351, mojo_parent_idx=1309) 
		# height of offscreen buffer 
		WhitespaceNode(c_node_idx=1380, c_parent_idx=1337, mojo_node_idx=1352, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1381, c_parent_idx=1337, mojo_node_idx=1353, mojo_parent_idx=1309) 
		int   ellipsoidinertia ; 
		WhitespaceNode(c_node_idx=1382, c_parent_idx=1337, mojo_node_idx=1354, mojo_parent_idx=1309) 
		       
		SingleLineCommentNode(c_node_idx=1383, c_parent_idx=1337, mojo_node_idx=1355, mojo_parent_idx=1309) 
		# geom for inertia visualization (0: box ,  1: ellipsoid) 
		WhitespaceNode(c_node_idx=1384, c_parent_idx=1337, mojo_node_idx=1356, mojo_parent_idx=1309) 
		    
		PlaceHolderNode(c_node_idx=1385, c_parent_idx=1337, mojo_node_idx=1357, mojo_parent_idx=1309) 
		int   bvactive ; 
		WhitespaceNode(c_node_idx=1386, c_parent_idx=1337, mojo_node_idx=1358, mojo_parent_idx=1309) 
		               
		SingleLineCommentNode(c_node_idx=1387, c_parent_idx=1337, mojo_node_idx=1359, mojo_parent_idx=1309) 
		# visualize active bounding volumes (0: no ,  1: yes) 
		WhitespaceNode(c_node_idx=1388, c_parent_idx=1337, mojo_node_idx=1360, mojo_parent_idx=1309) 
		  
		} 
		global ; 
		WhitespaceNode(c_node_idx=1389, c_parent_idx=1331, mojo_node_idx=1361, mojo_parent_idx=1303) 
		 
		 
		  
		PlaceHolderNode(c_node_idx=1390, c_parent_idx=1331, mojo_node_idx=1362, mojo_parent_idx=1303, c_children_idxs=1391, mojo_children_idxs=1363) 
		PlaceHolderNode(c_node_idx=1391, c_parent_idx=1390, mojo_node_idx=1363, mojo_parent_idx=1362, c_children_idxs=1392, mojo_children_idxs=1364) 
		struct 
		PlaceHolderNode(c_node_idx=1392, c_parent_idx=1391, mojo_node_idx=1364, mojo_parent_idx=1363, c_children_idxs=1393, 1394, 1395, 1396, 1397, 1398, ... len=23, mojo_children_idxs=1365, 1366, 1367, 1368, 1369, 1370, ... len=23) 
		{ 
		WhitespaceNode(c_node_idx=1393, c_parent_idx=1392, mojo_node_idx=1365, mojo_parent_idx=1364) 
		                       
		SingleLineCommentNode(c_node_idx=1394, c_parent_idx=1392, mojo_node_idx=1366, mojo_parent_idx=1364) 
		# rendering quality 
		WhitespaceNode(c_node_idx=1395, c_parent_idx=1392, mojo_node_idx=1367, mojo_parent_idx=1364) 
		    
		PlaceHolderNode(c_node_idx=1396, c_parent_idx=1392, mojo_node_idx=1368, mojo_parent_idx=1364) 
		int   shadowsize ; 
		WhitespaceNode(c_node_idx=1397, c_parent_idx=1392, mojo_node_idx=1369, mojo_parent_idx=1364) 
		             
		SingleLineCommentNode(c_node_idx=1398, c_parent_idx=1392, mojo_node_idx=1370, mojo_parent_idx=1364) 
		# size of shadowmap texture 
		WhitespaceNode(c_node_idx=1399, c_parent_idx=1392, mojo_node_idx=1371, mojo_parent_idx=1364) 
		    
		PlaceHolderNode(c_node_idx=1400, c_parent_idx=1392, mojo_node_idx=1372, mojo_parent_idx=1364) 
		int   offsamples ; 
		WhitespaceNode(c_node_idx=1401, c_parent_idx=1392, mojo_node_idx=1373, mojo_parent_idx=1364) 
		             
		SingleLineCommentNode(c_node_idx=1402, c_parent_idx=1392, mojo_node_idx=1374, mojo_parent_idx=1364) 
		# number of multisamples for offscreen rendering 
		WhitespaceNode(c_node_idx=1403, c_parent_idx=1392, mojo_node_idx=1375, mojo_parent_idx=1364) 
		    
		PlaceHolderNode(c_node_idx=1404, c_parent_idx=1392, mojo_node_idx=1376, mojo_parent_idx=1364) 
		int   numslices ; 
		WhitespaceNode(c_node_idx=1405, c_parent_idx=1392, mojo_node_idx=1377, mojo_parent_idx=1364) 
		              
		SingleLineCommentNode(c_node_idx=1406, c_parent_idx=1392, mojo_node_idx=1378, mojo_parent_idx=1364) 
		# number of slices for builtin geom drawing 
		WhitespaceNode(c_node_idx=1407, c_parent_idx=1392, mojo_node_idx=1379, mojo_parent_idx=1364) 
		    
		PlaceHolderNode(c_node_idx=1408, c_parent_idx=1392, mojo_node_idx=1380, mojo_parent_idx=1364) 
		int   numstacks ; 
		WhitespaceNode(c_node_idx=1409, c_parent_idx=1392, mojo_node_idx=1381, mojo_parent_idx=1364) 
		              
		SingleLineCommentNode(c_node_idx=1410, c_parent_idx=1392, mojo_node_idx=1382, mojo_parent_idx=1364) 
		# number of stacks for builtin geom drawing 
		WhitespaceNode(c_node_idx=1411, c_parent_idx=1392, mojo_node_idx=1383, mojo_parent_idx=1364) 
		    
		PlaceHolderNode(c_node_idx=1412, c_parent_idx=1392, mojo_node_idx=1384, mojo_parent_idx=1364) 
		int   numquads ; 
		WhitespaceNode(c_node_idx=1413, c_parent_idx=1392, mojo_node_idx=1385, mojo_parent_idx=1364) 
		               
		SingleLineCommentNode(c_node_idx=1414, c_parent_idx=1392, mojo_node_idx=1386, mojo_parent_idx=1364) 
		# number of quads for box rendering 
		WhitespaceNode(c_node_idx=1415, c_parent_idx=1392, mojo_node_idx=1387, mojo_parent_idx=1364) 
		  
		} 
		quality ; 
		WhitespaceNode(c_node_idx=1416, c_parent_idx=1331, mojo_node_idx=1388, mojo_parent_idx=1303) 
		 
		 
		  
		PlaceHolderNode(c_node_idx=1417, c_parent_idx=1331, mojo_node_idx=1389, mojo_parent_idx=1303, c_children_idxs=1418, mojo_children_idxs=1390) 
		PlaceHolderNode(c_node_idx=1418, c_parent_idx=1417, mojo_node_idx=1390, mojo_parent_idx=1389, c_children_idxs=1419, mojo_children_idxs=1391) 
		struct 
		PlaceHolderNode(c_node_idx=1419, c_parent_idx=1418, mojo_node_idx=1391, mojo_parent_idx=1390, c_children_idxs=1420, 1421, 1422, 1423, 1424, 1425, ... len=19, mojo_children_idxs=1392, 1393, 1394, 1395, 1396, 1397, ... len=19) 
		{ 
		WhitespaceNode(c_node_idx=1420, c_parent_idx=1419, mojo_node_idx=1392, mojo_parent_idx=1391) 
		                       
		SingleLineCommentNode(c_node_idx=1421, c_parent_idx=1419, mojo_node_idx=1393, mojo_parent_idx=1391) 
		# head light 
		WhitespaceNode(c_node_idx=1422, c_parent_idx=1419, mojo_node_idx=1394, mojo_parent_idx=1391) 
		    
		PlaceHolderNode(c_node_idx=1423, c_parent_idx=1419, mojo_node_idx=1395, mojo_parent_idx=1391) 
		float ambient[3] ; 
		WhitespaceNode(c_node_idx=1424, c_parent_idx=1419, mojo_node_idx=1396, mojo_parent_idx=1391) 
		             
		SingleLineCommentNode(c_node_idx=1425, c_parent_idx=1419, mojo_node_idx=1397, mojo_parent_idx=1391) 
		# ambient rgb (alpha=1) 
		WhitespaceNode(c_node_idx=1426, c_parent_idx=1419, mojo_node_idx=1398, mojo_parent_idx=1391) 
		    
		PlaceHolderNode(c_node_idx=1427, c_parent_idx=1419, mojo_node_idx=1399, mojo_parent_idx=1391) 
		float diffuse[3] ; 
		WhitespaceNode(c_node_idx=1428, c_parent_idx=1419, mojo_node_idx=1400, mojo_parent_idx=1391) 
		             
		SingleLineCommentNode(c_node_idx=1429, c_parent_idx=1419, mojo_node_idx=1401, mojo_parent_idx=1391) 
		# diffuse rgb (alpha=1) 
		WhitespaceNode(c_node_idx=1430, c_parent_idx=1419, mojo_node_idx=1402, mojo_parent_idx=1391) 
		    
		PlaceHolderNode(c_node_idx=1431, c_parent_idx=1419, mojo_node_idx=1403, mojo_parent_idx=1391) 
		float specular[3] ; 
		WhitespaceNode(c_node_idx=1432, c_parent_idx=1419, mojo_node_idx=1404, mojo_parent_idx=1391) 
		            
		SingleLineCommentNode(c_node_idx=1433, c_parent_idx=1419, mojo_node_idx=1405, mojo_parent_idx=1391) 
		# specular rgb (alpha=1) 
		WhitespaceNode(c_node_idx=1434, c_parent_idx=1419, mojo_node_idx=1406, mojo_parent_idx=1391) 
		    
		PlaceHolderNode(c_node_idx=1435, c_parent_idx=1419, mojo_node_idx=1407, mojo_parent_idx=1391) 
		int   active ; 
		WhitespaceNode(c_node_idx=1436, c_parent_idx=1419, mojo_node_idx=1408, mojo_parent_idx=1391) 
		                 
		SingleLineCommentNode(c_node_idx=1437, c_parent_idx=1419, mojo_node_idx=1409, mojo_parent_idx=1391) 
		# is headlight active 
		WhitespaceNode(c_node_idx=1438, c_parent_idx=1419, mojo_node_idx=1410, mojo_parent_idx=1391) 
		  
		} 
		headlight ; 
		WhitespaceNode(c_node_idx=1439, c_parent_idx=1331, mojo_node_idx=1411, mojo_parent_idx=1303) 
		 
		 
		  
		PlaceHolderNode(c_node_idx=1440, c_parent_idx=1331, mojo_node_idx=1412, mojo_parent_idx=1303, c_children_idxs=1441, mojo_children_idxs=1413) 
		PlaceHolderNode(c_node_idx=1441, c_parent_idx=1440, mojo_node_idx=1413, mojo_parent_idx=1412, c_children_idxs=1442, mojo_children_idxs=1414) 
		struct 
		PlaceHolderNode(c_node_idx=1442, c_parent_idx=1441, mojo_node_idx=1414, mojo_parent_idx=1413, c_children_idxs=1443, 1444, 1445, 1446, 1447, 1448, ... len=55, mojo_children_idxs=1415, 1416, 1417, 1418, 1419, 1420, ... len=55) 
		{ 
		WhitespaceNode(c_node_idx=1443, c_parent_idx=1442, mojo_node_idx=1415, mojo_parent_idx=1414) 
		                       
		SingleLineCommentNode(c_node_idx=1444, c_parent_idx=1442, mojo_node_idx=1416, mojo_parent_idx=1414) 
		# mapping 
		WhitespaceNode(c_node_idx=1445, c_parent_idx=1442, mojo_node_idx=1417, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1446, c_parent_idx=1442, mojo_node_idx=1418, mojo_parent_idx=1414) 
		float stiffness ; 
		WhitespaceNode(c_node_idx=1447, c_parent_idx=1442, mojo_node_idx=1419, mojo_parent_idx=1414) 
		              
		SingleLineCommentNode(c_node_idx=1448, c_parent_idx=1442, mojo_node_idx=1420, mojo_parent_idx=1414) 
		# mouse perturbation stiffness (space->force) 
		WhitespaceNode(c_node_idx=1449, c_parent_idx=1442, mojo_node_idx=1421, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1450, c_parent_idx=1442, mojo_node_idx=1422, mojo_parent_idx=1414) 
		float stiffnessrot ; 
		WhitespaceNode(c_node_idx=1451, c_parent_idx=1442, mojo_node_idx=1423, mojo_parent_idx=1414) 
		           
		SingleLineCommentNode(c_node_idx=1452, c_parent_idx=1442, mojo_node_idx=1424, mojo_parent_idx=1414) 
		# mouse perturbation stiffness (space->torque) 
		WhitespaceNode(c_node_idx=1453, c_parent_idx=1442, mojo_node_idx=1425, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1454, c_parent_idx=1442, mojo_node_idx=1426, mojo_parent_idx=1414) 
		float force ; 
		WhitespaceNode(c_node_idx=1455, c_parent_idx=1442, mojo_node_idx=1427, mojo_parent_idx=1414) 
		                  
		SingleLineCommentNode(c_node_idx=1456, c_parent_idx=1442, mojo_node_idx=1428, mojo_parent_idx=1414) 
		# from force units to space units 
		WhitespaceNode(c_node_idx=1457, c_parent_idx=1442, mojo_node_idx=1429, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1458, c_parent_idx=1442, mojo_node_idx=1430, mojo_parent_idx=1414) 
		float torque ; 
		WhitespaceNode(c_node_idx=1459, c_parent_idx=1442, mojo_node_idx=1431, mojo_parent_idx=1414) 
		                 
		SingleLineCommentNode(c_node_idx=1460, c_parent_idx=1442, mojo_node_idx=1432, mojo_parent_idx=1414) 
		# from torque units to space units 
		WhitespaceNode(c_node_idx=1461, c_parent_idx=1442, mojo_node_idx=1433, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1462, c_parent_idx=1442, mojo_node_idx=1434, mojo_parent_idx=1414) 
		float alpha ; 
		WhitespaceNode(c_node_idx=1463, c_parent_idx=1442, mojo_node_idx=1435, mojo_parent_idx=1414) 
		                  
		SingleLineCommentNode(c_node_idx=1464, c_parent_idx=1442, mojo_node_idx=1436, mojo_parent_idx=1414) 
		# scale geom alphas when transparency is enabled 
		WhitespaceNode(c_node_idx=1465, c_parent_idx=1442, mojo_node_idx=1437, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1466, c_parent_idx=1442, mojo_node_idx=1438, mojo_parent_idx=1414) 
		float fogstart ; 
		WhitespaceNode(c_node_idx=1467, c_parent_idx=1442, mojo_node_idx=1439, mojo_parent_idx=1414) 
		               
		SingleLineCommentNode(c_node_idx=1468, c_parent_idx=1442, mojo_node_idx=1440, mojo_parent_idx=1414) 
		# OpenGL fog starts at fogstart * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=1469, c_parent_idx=1442, mojo_node_idx=1441, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1470, c_parent_idx=1442, mojo_node_idx=1442, mojo_parent_idx=1414) 
		float fogend ; 
		WhitespaceNode(c_node_idx=1471, c_parent_idx=1442, mojo_node_idx=1443, mojo_parent_idx=1414) 
		                 
		SingleLineCommentNode(c_node_idx=1472, c_parent_idx=1442, mojo_node_idx=1444, mojo_parent_idx=1414) 
		# OpenGL fog ends at fogend * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=1473, c_parent_idx=1442, mojo_node_idx=1445, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1474, c_parent_idx=1442, mojo_node_idx=1446, mojo_parent_idx=1414) 
		float znear ; 
		WhitespaceNode(c_node_idx=1475, c_parent_idx=1442, mojo_node_idx=1447, mojo_parent_idx=1414) 
		                  
		SingleLineCommentNode(c_node_idx=1476, c_parent_idx=1442, mojo_node_idx=1448, mojo_parent_idx=1414) 
		# near clipping plane = znear * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=1477, c_parent_idx=1442, mojo_node_idx=1449, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1478, c_parent_idx=1442, mojo_node_idx=1450, mojo_parent_idx=1414) 
		float zfar ; 
		WhitespaceNode(c_node_idx=1479, c_parent_idx=1442, mojo_node_idx=1451, mojo_parent_idx=1414) 
		                   
		SingleLineCommentNode(c_node_idx=1480, c_parent_idx=1442, mojo_node_idx=1452, mojo_parent_idx=1414) 
		# far clipping plane = zfar * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=1481, c_parent_idx=1442, mojo_node_idx=1453, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1482, c_parent_idx=1442, mojo_node_idx=1454, mojo_parent_idx=1414) 
		float haze ; 
		WhitespaceNode(c_node_idx=1483, c_parent_idx=1442, mojo_node_idx=1455, mojo_parent_idx=1414) 
		                   
		SingleLineCommentNode(c_node_idx=1484, c_parent_idx=1442, mojo_node_idx=1456, mojo_parent_idx=1414) 
		# haze ratio 
		WhitespaceNode(c_node_idx=1485, c_parent_idx=1442, mojo_node_idx=1457, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1486, c_parent_idx=1442, mojo_node_idx=1458, mojo_parent_idx=1414) 
		float shadowclip ; 
		WhitespaceNode(c_node_idx=1487, c_parent_idx=1442, mojo_node_idx=1459, mojo_parent_idx=1414) 
		             
		SingleLineCommentNode(c_node_idx=1488, c_parent_idx=1442, mojo_node_idx=1460, mojo_parent_idx=1414) 
		# directional light: shadowclip * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=1489, c_parent_idx=1442, mojo_node_idx=1461, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1490, c_parent_idx=1442, mojo_node_idx=1462, mojo_parent_idx=1414) 
		float shadowscale ; 
		WhitespaceNode(c_node_idx=1491, c_parent_idx=1442, mojo_node_idx=1463, mojo_parent_idx=1414) 
		            
		SingleLineCommentNode(c_node_idx=1492, c_parent_idx=1442, mojo_node_idx=1464, mojo_parent_idx=1414) 
		# spot light: shadowscale * light.cutoff 
		WhitespaceNode(c_node_idx=1493, c_parent_idx=1442, mojo_node_idx=1465, mojo_parent_idx=1414) 
		    
		PlaceHolderNode(c_node_idx=1494, c_parent_idx=1442, mojo_node_idx=1466, mojo_parent_idx=1414) 
		float actuatortendon ; 
		WhitespaceNode(c_node_idx=1495, c_parent_idx=1442, mojo_node_idx=1467, mojo_parent_idx=1414) 
		         
		SingleLineCommentNode(c_node_idx=1496, c_parent_idx=1442, mojo_node_idx=1468, mojo_parent_idx=1414) 
		# scale tendon width 
		WhitespaceNode(c_node_idx=1497, c_parent_idx=1442, mojo_node_idx=1469, mojo_parent_idx=1414) 
		  
		} 
		map ; 
		WhitespaceNode(c_node_idx=1498, c_parent_idx=1331, mojo_node_idx=1470, mojo_parent_idx=1303) 
		 
		 
		  
		PlaceHolderNode(c_node_idx=1499, c_parent_idx=1331, mojo_node_idx=1471, mojo_parent_idx=1303, c_children_idxs=1500, mojo_children_idxs=1472) 
		PlaceHolderNode(c_node_idx=1500, c_parent_idx=1499, mojo_node_idx=1472, mojo_parent_idx=1471, c_children_idxs=1501, mojo_children_idxs=1473) 
		struct 
		PlaceHolderNode(c_node_idx=1501, c_parent_idx=1500, mojo_node_idx=1473, mojo_parent_idx=1472, c_children_idxs=1502, 1503, 1504, 1505, 1506, 1507, ... len=71, mojo_children_idxs=1474, 1475, 1476, 1477, 1478, 1479, ... len=71) 
		{ 
		WhitespaceNode(c_node_idx=1502, c_parent_idx=1501, mojo_node_idx=1474, mojo_parent_idx=1473) 
		                       
		SingleLineCommentNode(c_node_idx=1503, c_parent_idx=1501, mojo_node_idx=1475, mojo_parent_idx=1473) 
		# scale of decor elements relative to mean body size 
		WhitespaceNode(c_node_idx=1504, c_parent_idx=1501, mojo_node_idx=1476, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1505, c_parent_idx=1501, mojo_node_idx=1477, mojo_parent_idx=1473) 
		float forcewidth ; 
		WhitespaceNode(c_node_idx=1506, c_parent_idx=1501, mojo_node_idx=1478, mojo_parent_idx=1473) 
		             
		SingleLineCommentNode(c_node_idx=1507, c_parent_idx=1501, mojo_node_idx=1479, mojo_parent_idx=1473) 
		# width of force arrow 
		WhitespaceNode(c_node_idx=1508, c_parent_idx=1501, mojo_node_idx=1480, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1509, c_parent_idx=1501, mojo_node_idx=1481, mojo_parent_idx=1473) 
		float contactwidth ; 
		WhitespaceNode(c_node_idx=1510, c_parent_idx=1501, mojo_node_idx=1482, mojo_parent_idx=1473) 
		           
		SingleLineCommentNode(c_node_idx=1511, c_parent_idx=1501, mojo_node_idx=1483, mojo_parent_idx=1473) 
		# contact width 
		WhitespaceNode(c_node_idx=1512, c_parent_idx=1501, mojo_node_idx=1484, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1513, c_parent_idx=1501, mojo_node_idx=1485, mojo_parent_idx=1473) 
		float contactheight ; 
		WhitespaceNode(c_node_idx=1514, c_parent_idx=1501, mojo_node_idx=1486, mojo_parent_idx=1473) 
		          
		SingleLineCommentNode(c_node_idx=1515, c_parent_idx=1501, mojo_node_idx=1487, mojo_parent_idx=1473) 
		# contact height 
		WhitespaceNode(c_node_idx=1516, c_parent_idx=1501, mojo_node_idx=1488, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1517, c_parent_idx=1501, mojo_node_idx=1489, mojo_parent_idx=1473) 
		float connect ; 
		WhitespaceNode(c_node_idx=1518, c_parent_idx=1501, mojo_node_idx=1490, mojo_parent_idx=1473) 
		                
		SingleLineCommentNode(c_node_idx=1519, c_parent_idx=1501, mojo_node_idx=1491, mojo_parent_idx=1473) 
		# autoconnect capsule width 
		WhitespaceNode(c_node_idx=1520, c_parent_idx=1501, mojo_node_idx=1492, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1521, c_parent_idx=1501, mojo_node_idx=1493, mojo_parent_idx=1473) 
		float com ; 
		WhitespaceNode(c_node_idx=1522, c_parent_idx=1501, mojo_node_idx=1494, mojo_parent_idx=1473) 
		                    
		SingleLineCommentNode(c_node_idx=1523, c_parent_idx=1501, mojo_node_idx=1495, mojo_parent_idx=1473) 
		# com radius 
		WhitespaceNode(c_node_idx=1524, c_parent_idx=1501, mojo_node_idx=1496, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1525, c_parent_idx=1501, mojo_node_idx=1497, mojo_parent_idx=1473) 
		float camera ; 
		WhitespaceNode(c_node_idx=1526, c_parent_idx=1501, mojo_node_idx=1498, mojo_parent_idx=1473) 
		                 
		SingleLineCommentNode(c_node_idx=1527, c_parent_idx=1501, mojo_node_idx=1499, mojo_parent_idx=1473) 
		# camera object 
		WhitespaceNode(c_node_idx=1528, c_parent_idx=1501, mojo_node_idx=1500, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1529, c_parent_idx=1501, mojo_node_idx=1501, mojo_parent_idx=1473) 
		float light ; 
		WhitespaceNode(c_node_idx=1530, c_parent_idx=1501, mojo_node_idx=1502, mojo_parent_idx=1473) 
		                  
		SingleLineCommentNode(c_node_idx=1531, c_parent_idx=1501, mojo_node_idx=1503, mojo_parent_idx=1473) 
		# light object 
		WhitespaceNode(c_node_idx=1532, c_parent_idx=1501, mojo_node_idx=1504, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1533, c_parent_idx=1501, mojo_node_idx=1505, mojo_parent_idx=1473) 
		float selectpoint ; 
		WhitespaceNode(c_node_idx=1534, c_parent_idx=1501, mojo_node_idx=1506, mojo_parent_idx=1473) 
		            
		SingleLineCommentNode(c_node_idx=1535, c_parent_idx=1501, mojo_node_idx=1507, mojo_parent_idx=1473) 
		# selection point 
		WhitespaceNode(c_node_idx=1536, c_parent_idx=1501, mojo_node_idx=1508, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1537, c_parent_idx=1501, mojo_node_idx=1509, mojo_parent_idx=1473) 
		float jointlength ; 
		WhitespaceNode(c_node_idx=1538, c_parent_idx=1501, mojo_node_idx=1510, mojo_parent_idx=1473) 
		            
		SingleLineCommentNode(c_node_idx=1539, c_parent_idx=1501, mojo_node_idx=1511, mojo_parent_idx=1473) 
		# joint length 
		WhitespaceNode(c_node_idx=1540, c_parent_idx=1501, mojo_node_idx=1512, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1541, c_parent_idx=1501, mojo_node_idx=1513, mojo_parent_idx=1473) 
		float jointwidth ; 
		WhitespaceNode(c_node_idx=1542, c_parent_idx=1501, mojo_node_idx=1514, mojo_parent_idx=1473) 
		             
		SingleLineCommentNode(c_node_idx=1543, c_parent_idx=1501, mojo_node_idx=1515, mojo_parent_idx=1473) 
		# joint width 
		WhitespaceNode(c_node_idx=1544, c_parent_idx=1501, mojo_node_idx=1516, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1545, c_parent_idx=1501, mojo_node_idx=1517, mojo_parent_idx=1473) 
		float actuatorlength ; 
		WhitespaceNode(c_node_idx=1546, c_parent_idx=1501, mojo_node_idx=1518, mojo_parent_idx=1473) 
		         
		SingleLineCommentNode(c_node_idx=1547, c_parent_idx=1501, mojo_node_idx=1519, mojo_parent_idx=1473) 
		# actuator length 
		WhitespaceNode(c_node_idx=1548, c_parent_idx=1501, mojo_node_idx=1520, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1549, c_parent_idx=1501, mojo_node_idx=1521, mojo_parent_idx=1473) 
		float actuatorwidth ; 
		WhitespaceNode(c_node_idx=1550, c_parent_idx=1501, mojo_node_idx=1522, mojo_parent_idx=1473) 
		          
		SingleLineCommentNode(c_node_idx=1551, c_parent_idx=1501, mojo_node_idx=1523, mojo_parent_idx=1473) 
		# actuator width 
		WhitespaceNode(c_node_idx=1552, c_parent_idx=1501, mojo_node_idx=1524, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1553, c_parent_idx=1501, mojo_node_idx=1525, mojo_parent_idx=1473) 
		float framelength ; 
		WhitespaceNode(c_node_idx=1554, c_parent_idx=1501, mojo_node_idx=1526, mojo_parent_idx=1473) 
		            
		SingleLineCommentNode(c_node_idx=1555, c_parent_idx=1501, mojo_node_idx=1527, mojo_parent_idx=1473) 
		# bodyframe axis length 
		WhitespaceNode(c_node_idx=1556, c_parent_idx=1501, mojo_node_idx=1528, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1557, c_parent_idx=1501, mojo_node_idx=1529, mojo_parent_idx=1473) 
		float framewidth ; 
		WhitespaceNode(c_node_idx=1558, c_parent_idx=1501, mojo_node_idx=1530, mojo_parent_idx=1473) 
		             
		SingleLineCommentNode(c_node_idx=1559, c_parent_idx=1501, mojo_node_idx=1531, mojo_parent_idx=1473) 
		# bodyframe axis width 
		WhitespaceNode(c_node_idx=1560, c_parent_idx=1501, mojo_node_idx=1532, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1561, c_parent_idx=1501, mojo_node_idx=1533, mojo_parent_idx=1473) 
		float constraint ; 
		WhitespaceNode(c_node_idx=1562, c_parent_idx=1501, mojo_node_idx=1534, mojo_parent_idx=1473) 
		             
		SingleLineCommentNode(c_node_idx=1563, c_parent_idx=1501, mojo_node_idx=1535, mojo_parent_idx=1473) 
		# constraint width 
		WhitespaceNode(c_node_idx=1564, c_parent_idx=1501, mojo_node_idx=1536, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1565, c_parent_idx=1501, mojo_node_idx=1537, mojo_parent_idx=1473) 
		float slidercrank ; 
		WhitespaceNode(c_node_idx=1566, c_parent_idx=1501, mojo_node_idx=1538, mojo_parent_idx=1473) 
		            
		SingleLineCommentNode(c_node_idx=1567, c_parent_idx=1501, mojo_node_idx=1539, mojo_parent_idx=1473) 
		# slidercrank width 
		WhitespaceNode(c_node_idx=1568, c_parent_idx=1501, mojo_node_idx=1540, mojo_parent_idx=1473) 
		    
		PlaceHolderNode(c_node_idx=1569, c_parent_idx=1501, mojo_node_idx=1541, mojo_parent_idx=1473) 
		float frustum ; 
		WhitespaceNode(c_node_idx=1570, c_parent_idx=1501, mojo_node_idx=1542, mojo_parent_idx=1473) 
		                
		SingleLineCommentNode(c_node_idx=1571, c_parent_idx=1501, mojo_node_idx=1543, mojo_parent_idx=1473) 
		# frustum zfar plane 
		WhitespaceNode(c_node_idx=1572, c_parent_idx=1501, mojo_node_idx=1544, mojo_parent_idx=1473) 
		  
		} 
		scale ; 
		WhitespaceNode(c_node_idx=1573, c_parent_idx=1331, mojo_node_idx=1545, mojo_parent_idx=1303) 
		 
		 
		  
		PlaceHolderNode(c_node_idx=1574, c_parent_idx=1331, mojo_node_idx=1546, mojo_parent_idx=1303, c_children_idxs=1575, mojo_children_idxs=1547) 
		PlaceHolderNode(c_node_idx=1575, c_parent_idx=1574, mojo_node_idx=1547, mojo_parent_idx=1546, c_children_idxs=1576, mojo_children_idxs=1548) 
		struct 
		PlaceHolderNode(c_node_idx=1576, c_parent_idx=1575, mojo_node_idx=1548, mojo_parent_idx=1547, c_children_idxs=1577, 1578, 1579, 1580, 1581, 1582, ... len=103, mojo_children_idxs=1549, 1550, 1551, 1552, 1553, 1554, ... len=103) 
		{ 
		WhitespaceNode(c_node_idx=1577, c_parent_idx=1576, mojo_node_idx=1549, mojo_parent_idx=1548) 
		                       
		SingleLineCommentNode(c_node_idx=1578, c_parent_idx=1576, mojo_node_idx=1550, mojo_parent_idx=1548) 
		# color of decor elements 
		WhitespaceNode(c_node_idx=1579, c_parent_idx=1576, mojo_node_idx=1551, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1580, c_parent_idx=1576, mojo_node_idx=1552, mojo_parent_idx=1548) 
		float fog[4] ; 
		WhitespaceNode(c_node_idx=1581, c_parent_idx=1576, mojo_node_idx=1553, mojo_parent_idx=1548) 
		                 
		SingleLineCommentNode(c_node_idx=1582, c_parent_idx=1576, mojo_node_idx=1554, mojo_parent_idx=1548) 
		# fog 
		WhitespaceNode(c_node_idx=1583, c_parent_idx=1576, mojo_node_idx=1555, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1584, c_parent_idx=1576, mojo_node_idx=1556, mojo_parent_idx=1548) 
		float haze[4] ; 
		WhitespaceNode(c_node_idx=1585, c_parent_idx=1576, mojo_node_idx=1557, mojo_parent_idx=1548) 
		                
		SingleLineCommentNode(c_node_idx=1586, c_parent_idx=1576, mojo_node_idx=1558, mojo_parent_idx=1548) 
		# haze 
		WhitespaceNode(c_node_idx=1587, c_parent_idx=1576, mojo_node_idx=1559, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1588, c_parent_idx=1576, mojo_node_idx=1560, mojo_parent_idx=1548) 
		float force[4] ; 
		WhitespaceNode(c_node_idx=1589, c_parent_idx=1576, mojo_node_idx=1561, mojo_parent_idx=1548) 
		               
		SingleLineCommentNode(c_node_idx=1590, c_parent_idx=1576, mojo_node_idx=1562, mojo_parent_idx=1548) 
		# external force 
		WhitespaceNode(c_node_idx=1591, c_parent_idx=1576, mojo_node_idx=1563, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1592, c_parent_idx=1576, mojo_node_idx=1564, mojo_parent_idx=1548) 
		float inertia[4] ; 
		WhitespaceNode(c_node_idx=1593, c_parent_idx=1576, mojo_node_idx=1565, mojo_parent_idx=1548) 
		             
		SingleLineCommentNode(c_node_idx=1594, c_parent_idx=1576, mojo_node_idx=1566, mojo_parent_idx=1548) 
		# inertia box 
		WhitespaceNode(c_node_idx=1595, c_parent_idx=1576, mojo_node_idx=1567, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1596, c_parent_idx=1576, mojo_node_idx=1568, mojo_parent_idx=1548) 
		float joint[4] ; 
		WhitespaceNode(c_node_idx=1597, c_parent_idx=1576, mojo_node_idx=1569, mojo_parent_idx=1548) 
		               
		SingleLineCommentNode(c_node_idx=1598, c_parent_idx=1576, mojo_node_idx=1570, mojo_parent_idx=1548) 
		# joint 
		WhitespaceNode(c_node_idx=1599, c_parent_idx=1576, mojo_node_idx=1571, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1600, c_parent_idx=1576, mojo_node_idx=1572, mojo_parent_idx=1548) 
		float actuator[4] ; 
		WhitespaceNode(c_node_idx=1601, c_parent_idx=1576, mojo_node_idx=1573, mojo_parent_idx=1548) 
		            
		SingleLineCommentNode(c_node_idx=1602, c_parent_idx=1576, mojo_node_idx=1574, mojo_parent_idx=1548) 
		# actuator ,  neutral 
		WhitespaceNode(c_node_idx=1603, c_parent_idx=1576, mojo_node_idx=1575, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1604, c_parent_idx=1576, mojo_node_idx=1576, mojo_parent_idx=1548) 
		float actuatornegative[4] ; 
		WhitespaceNode(c_node_idx=1605, c_parent_idx=1576, mojo_node_idx=1577, mojo_parent_idx=1548) 
		    
		SingleLineCommentNode(c_node_idx=1606, c_parent_idx=1576, mojo_node_idx=1578, mojo_parent_idx=1548) 
		# actuator ,  negative limit 
		WhitespaceNode(c_node_idx=1607, c_parent_idx=1576, mojo_node_idx=1579, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1608, c_parent_idx=1576, mojo_node_idx=1580, mojo_parent_idx=1548) 
		float actuatorpositive[4] ; 
		WhitespaceNode(c_node_idx=1609, c_parent_idx=1576, mojo_node_idx=1581, mojo_parent_idx=1548) 
		    
		SingleLineCommentNode(c_node_idx=1610, c_parent_idx=1576, mojo_node_idx=1582, mojo_parent_idx=1548) 
		# actuator ,  positive limit 
		WhitespaceNode(c_node_idx=1611, c_parent_idx=1576, mojo_node_idx=1583, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1612, c_parent_idx=1576, mojo_node_idx=1584, mojo_parent_idx=1548) 
		float com[4] ; 
		WhitespaceNode(c_node_idx=1613, c_parent_idx=1576, mojo_node_idx=1585, mojo_parent_idx=1548) 
		                 
		SingleLineCommentNode(c_node_idx=1614, c_parent_idx=1576, mojo_node_idx=1586, mojo_parent_idx=1548) 
		# center of mass 
		WhitespaceNode(c_node_idx=1615, c_parent_idx=1576, mojo_node_idx=1587, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1616, c_parent_idx=1576, mojo_node_idx=1588, mojo_parent_idx=1548) 
		float camera[4] ; 
		WhitespaceNode(c_node_idx=1617, c_parent_idx=1576, mojo_node_idx=1589, mojo_parent_idx=1548) 
		              
		SingleLineCommentNode(c_node_idx=1618, c_parent_idx=1576, mojo_node_idx=1590, mojo_parent_idx=1548) 
		# camera object 
		WhitespaceNode(c_node_idx=1619, c_parent_idx=1576, mojo_node_idx=1591, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1620, c_parent_idx=1576, mojo_node_idx=1592, mojo_parent_idx=1548) 
		float light[4] ; 
		WhitespaceNode(c_node_idx=1621, c_parent_idx=1576, mojo_node_idx=1593, mojo_parent_idx=1548) 
		               
		SingleLineCommentNode(c_node_idx=1622, c_parent_idx=1576, mojo_node_idx=1594, mojo_parent_idx=1548) 
		# light object 
		WhitespaceNode(c_node_idx=1623, c_parent_idx=1576, mojo_node_idx=1595, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1624, c_parent_idx=1576, mojo_node_idx=1596, mojo_parent_idx=1548) 
		float selectpoint[4] ; 
		WhitespaceNode(c_node_idx=1625, c_parent_idx=1576, mojo_node_idx=1597, mojo_parent_idx=1548) 
		         
		SingleLineCommentNode(c_node_idx=1626, c_parent_idx=1576, mojo_node_idx=1598, mojo_parent_idx=1548) 
		# selection point 
		WhitespaceNode(c_node_idx=1627, c_parent_idx=1576, mojo_node_idx=1599, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1628, c_parent_idx=1576, mojo_node_idx=1600, mojo_parent_idx=1548) 
		float connect[4] ; 
		WhitespaceNode(c_node_idx=1629, c_parent_idx=1576, mojo_node_idx=1601, mojo_parent_idx=1548) 
		             
		SingleLineCommentNode(c_node_idx=1630, c_parent_idx=1576, mojo_node_idx=1602, mojo_parent_idx=1548) 
		# auto connect 
		WhitespaceNode(c_node_idx=1631, c_parent_idx=1576, mojo_node_idx=1603, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1632, c_parent_idx=1576, mojo_node_idx=1604, mojo_parent_idx=1548) 
		float contactpoint[4] ; 
		WhitespaceNode(c_node_idx=1633, c_parent_idx=1576, mojo_node_idx=1605, mojo_parent_idx=1548) 
		        
		SingleLineCommentNode(c_node_idx=1634, c_parent_idx=1576, mojo_node_idx=1606, mojo_parent_idx=1548) 
		# contact point 
		WhitespaceNode(c_node_idx=1635, c_parent_idx=1576, mojo_node_idx=1607, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1636, c_parent_idx=1576, mojo_node_idx=1608, mojo_parent_idx=1548) 
		float contactforce[4] ; 
		WhitespaceNode(c_node_idx=1637, c_parent_idx=1576, mojo_node_idx=1609, mojo_parent_idx=1548) 
		        
		SingleLineCommentNode(c_node_idx=1638, c_parent_idx=1576, mojo_node_idx=1610, mojo_parent_idx=1548) 
		# contact force 
		WhitespaceNode(c_node_idx=1639, c_parent_idx=1576, mojo_node_idx=1611, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1640, c_parent_idx=1576, mojo_node_idx=1612, mojo_parent_idx=1548) 
		float contactfriction[4] ; 
		WhitespaceNode(c_node_idx=1641, c_parent_idx=1576, mojo_node_idx=1613, mojo_parent_idx=1548) 
		     
		SingleLineCommentNode(c_node_idx=1642, c_parent_idx=1576, mojo_node_idx=1614, mojo_parent_idx=1548) 
		# contact friction force 
		WhitespaceNode(c_node_idx=1643, c_parent_idx=1576, mojo_node_idx=1615, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1644, c_parent_idx=1576, mojo_node_idx=1616, mojo_parent_idx=1548) 
		float contacttorque[4] ; 
		WhitespaceNode(c_node_idx=1645, c_parent_idx=1576, mojo_node_idx=1617, mojo_parent_idx=1548) 
		       
		SingleLineCommentNode(c_node_idx=1646, c_parent_idx=1576, mojo_node_idx=1618, mojo_parent_idx=1548) 
		# contact torque 
		WhitespaceNode(c_node_idx=1647, c_parent_idx=1576, mojo_node_idx=1619, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1648, c_parent_idx=1576, mojo_node_idx=1620, mojo_parent_idx=1548) 
		float contactgap[4] ; 
		WhitespaceNode(c_node_idx=1649, c_parent_idx=1576, mojo_node_idx=1621, mojo_parent_idx=1548) 
		          
		SingleLineCommentNode(c_node_idx=1650, c_parent_idx=1576, mojo_node_idx=1622, mojo_parent_idx=1548) 
		# contact point in gap 
		WhitespaceNode(c_node_idx=1651, c_parent_idx=1576, mojo_node_idx=1623, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1652, c_parent_idx=1576, mojo_node_idx=1624, mojo_parent_idx=1548) 
		float rangefinder[4] ; 
		WhitespaceNode(c_node_idx=1653, c_parent_idx=1576, mojo_node_idx=1625, mojo_parent_idx=1548) 
		         
		SingleLineCommentNode(c_node_idx=1654, c_parent_idx=1576, mojo_node_idx=1626, mojo_parent_idx=1548) 
		# rangefinder ray 
		WhitespaceNode(c_node_idx=1655, c_parent_idx=1576, mojo_node_idx=1627, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1656, c_parent_idx=1576, mojo_node_idx=1628, mojo_parent_idx=1548) 
		float constraint[4] ; 
		WhitespaceNode(c_node_idx=1657, c_parent_idx=1576, mojo_node_idx=1629, mojo_parent_idx=1548) 
		          
		SingleLineCommentNode(c_node_idx=1658, c_parent_idx=1576, mojo_node_idx=1630, mojo_parent_idx=1548) 
		# constraint 
		WhitespaceNode(c_node_idx=1659, c_parent_idx=1576, mojo_node_idx=1631, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1660, c_parent_idx=1576, mojo_node_idx=1632, mojo_parent_idx=1548) 
		float slidercrank[4] ; 
		WhitespaceNode(c_node_idx=1661, c_parent_idx=1576, mojo_node_idx=1633, mojo_parent_idx=1548) 
		         
		SingleLineCommentNode(c_node_idx=1662, c_parent_idx=1576, mojo_node_idx=1634, mojo_parent_idx=1548) 
		# slidercrank 
		WhitespaceNode(c_node_idx=1663, c_parent_idx=1576, mojo_node_idx=1635, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1664, c_parent_idx=1576, mojo_node_idx=1636, mojo_parent_idx=1548) 
		float crankbroken[4] ; 
		WhitespaceNode(c_node_idx=1665, c_parent_idx=1576, mojo_node_idx=1637, mojo_parent_idx=1548) 
		         
		SingleLineCommentNode(c_node_idx=1666, c_parent_idx=1576, mojo_node_idx=1638, mojo_parent_idx=1548) 
		# used when crank must be stretched/broken 
		WhitespaceNode(c_node_idx=1667, c_parent_idx=1576, mojo_node_idx=1639, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1668, c_parent_idx=1576, mojo_node_idx=1640, mojo_parent_idx=1548) 
		float frustum[4] ; 
		WhitespaceNode(c_node_idx=1669, c_parent_idx=1576, mojo_node_idx=1641, mojo_parent_idx=1548) 
		             
		SingleLineCommentNode(c_node_idx=1670, c_parent_idx=1576, mojo_node_idx=1642, mojo_parent_idx=1548) 
		# camera frustum 
		WhitespaceNode(c_node_idx=1671, c_parent_idx=1576, mojo_node_idx=1643, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1672, c_parent_idx=1576, mojo_node_idx=1644, mojo_parent_idx=1548) 
		float bv[4] ; 
		WhitespaceNode(c_node_idx=1673, c_parent_idx=1576, mojo_node_idx=1645, mojo_parent_idx=1548) 
		                  
		SingleLineCommentNode(c_node_idx=1674, c_parent_idx=1576, mojo_node_idx=1646, mojo_parent_idx=1548) 
		# bounding volume 
		WhitespaceNode(c_node_idx=1675, c_parent_idx=1576, mojo_node_idx=1647, mojo_parent_idx=1548) 
		    
		PlaceHolderNode(c_node_idx=1676, c_parent_idx=1576, mojo_node_idx=1648, mojo_parent_idx=1548) 
		float bvactive[4] ; 
		WhitespaceNode(c_node_idx=1677, c_parent_idx=1576, mojo_node_idx=1649, mojo_parent_idx=1548) 
		            
		SingleLineCommentNode(c_node_idx=1678, c_parent_idx=1576, mojo_node_idx=1650, mojo_parent_idx=1548) 
		# active bounding volume 
		WhitespaceNode(c_node_idx=1679, c_parent_idx=1576, mojo_node_idx=1651, mojo_parent_idx=1548) 
		  
		} 
		rgba ; 
		WhitespaceNode(c_node_idx=1680, c_parent_idx=1331, mojo_node_idx=1652, mojo_parent_idx=1303) 
		 
		} 
		; 
		WhitespaceNode(c_node_idx=1681, c_parent_idx=15, mojo_node_idx=1653, mojo_parent_idx=15) 
		 
		TypedefNode(alias=mjVisual, c_node_idx=1682, c_parent_idx=15, mojo_node_idx=1654, mojo_parent_idx=15, c_children_idxs=1683, 1684, mojo_children_idxs=1655) 
		# Complex typedef not supported yet: typedef <children> mjVisual ;  
		PlaceHolderNode(c_node_idx=1683, c_parent_idx=1682, mojo_node_idx=1655, mojo_parent_idx=1654) 
		struct mjVisual_ 
		WhitespaceNode(c_node_idx=1685, c_parent_idx=15, mojo_node_idx=1656, mojo_parent_idx=15) 
		 
		 
		 
		SingleLineCommentNode(c_node_idx=1686, c_parent_idx=15, mojo_node_idx=1657, mojo_parent_idx=15) 
		# ---------------------------------- mjStatistic --------------------------------------------------- 
		WhitespaceNode(c_node_idx=1687, c_parent_idx=15, mojo_node_idx=1658, mojo_parent_idx=15) 
		 
		PlaceHolderNode(c_node_idx=1688, c_parent_idx=15, mojo_node_idx=1659, mojo_parent_idx=15, c_children_idxs=1689, mojo_children_idxs=1660) 
		struct mjStatistic_ 
		PlaceHolderNode(c_node_idx=1689, c_parent_idx=1688, mojo_node_idx=1660, mojo_parent_idx=1659, c_children_idxs=1690, 1691, 1692, 1693, 1694, 1695, ... len=22, mojo_children_idxs=1661, 1662, 1663, 1664, 1665, 1666, ... len=22) 
		{ 
		WhitespaceNode(c_node_idx=1690, c_parent_idx=1689, mojo_node_idx=1661, mojo_parent_idx=1660) 
		            
		SingleLineCommentNode(c_node_idx=1691, c_parent_idx=1689, mojo_node_idx=1662, mojo_parent_idx=1660) 
		# model statistics (in qpos0) 
		WhitespaceNode(c_node_idx=1692, c_parent_idx=1689, mojo_node_idx=1663, mojo_parent_idx=1660) 
		  
		PlaceHolderNode(c_node_idx=1693, c_parent_idx=1689, mojo_node_idx=1664, mojo_parent_idx=1660) 
		mjtNum meaninertia ; 
		WhitespaceNode(c_node_idx=1694, c_parent_idx=1689, mojo_node_idx=1665, mojo_parent_idx=1660) 
		             
		SingleLineCommentNode(c_node_idx=1695, c_parent_idx=1689, mojo_node_idx=1666, mojo_parent_idx=1660) 
		# mean diagonal inertia 
		WhitespaceNode(c_node_idx=1696, c_parent_idx=1689, mojo_node_idx=1667, mojo_parent_idx=1660) 
		  
		PlaceHolderNode(c_node_idx=1697, c_parent_idx=1689, mojo_node_idx=1668, mojo_parent_idx=1660) 
		mjtNum meanmass ; 
		WhitespaceNode(c_node_idx=1698, c_parent_idx=1689, mojo_node_idx=1669, mojo_parent_idx=1660) 
		                
		SingleLineCommentNode(c_node_idx=1699, c_parent_idx=1689, mojo_node_idx=1670, mojo_parent_idx=1660) 
		# mean body mass 
		WhitespaceNode(c_node_idx=1700, c_parent_idx=1689, mojo_node_idx=1671, mojo_parent_idx=1660) 
		  
		PlaceHolderNode(c_node_idx=1701, c_parent_idx=1689, mojo_node_idx=1672, mojo_parent_idx=1660) 
		mjtNum meansize ; 
		WhitespaceNode(c_node_idx=1702, c_parent_idx=1689, mojo_node_idx=1673, mojo_parent_idx=1660) 
		                
		SingleLineCommentNode(c_node_idx=1703, c_parent_idx=1689, mojo_node_idx=1674, mojo_parent_idx=1660) 
		# mean body size 
		WhitespaceNode(c_node_idx=1704, c_parent_idx=1689, mojo_node_idx=1675, mojo_parent_idx=1660) 
		  
		PlaceHolderNode(c_node_idx=1705, c_parent_idx=1689, mojo_node_idx=1676, mojo_parent_idx=1660) 
		mjtNum extent ; 
		WhitespaceNode(c_node_idx=1706, c_parent_idx=1689, mojo_node_idx=1677, mojo_parent_idx=1660) 
		                  
		SingleLineCommentNode(c_node_idx=1707, c_parent_idx=1689, mojo_node_idx=1678, mojo_parent_idx=1660) 
		# spatial extent 
		WhitespaceNode(c_node_idx=1708, c_parent_idx=1689, mojo_node_idx=1679, mojo_parent_idx=1660) 
		  
		PlaceHolderNode(c_node_idx=1709, c_parent_idx=1689, mojo_node_idx=1680, mojo_parent_idx=1660) 
		mjtNum center[3] ; 
		WhitespaceNode(c_node_idx=1710, c_parent_idx=1689, mojo_node_idx=1681, mojo_parent_idx=1660) 
		               
		SingleLineCommentNode(c_node_idx=1711, c_parent_idx=1689, mojo_node_idx=1682, mojo_parent_idx=1660) 
		# center of model 
		} 
		; 
		WhitespaceNode(c_node_idx=1712, c_parent_idx=15, mojo_node_idx=1683, mojo_parent_idx=15) 
		 
		TypedefNode(alias=mjStatistic, c_node_idx=1713, c_parent_idx=15, mojo_node_idx=1684, mojo_parent_idx=15, c_children_idxs=1714, 1715, mojo_children_idxs=1685) 
		# Complex typedef not supported yet: typedef <children> mjStatistic ;  
		PlaceHolderNode(c_node_idx=1714, c_parent_idx=1713, mojo_node_idx=1685, mojo_parent_idx=1684) 
		struct mjStatistic_ 
		WhitespaceNode(c_node_idx=1716, c_parent_idx=15, mojo_node_idx=1686, mojo_parent_idx=15) 
		 
		 
		 
		SingleLineCommentNode(c_node_idx=1717, c_parent_idx=15, mojo_node_idx=1687, mojo_parent_idx=15) 
		# ---------------------------------- mjModel ------------------------------------------------------- 
		WhitespaceNode(c_node_idx=1718, c_parent_idx=15, mojo_node_idx=1688, mojo_parent_idx=15) 
		 
		PlaceHolderNode(c_node_idx=1719, c_parent_idx=15, mojo_node_idx=1689, mojo_parent_idx=15, c_children_idxs=1720, mojo_children_idxs=1690) 
		struct mjModel_ 
		PlaceHolderNode(c_node_idx=1720, c_parent_idx=1719, mojo_node_idx=1690, mojo_parent_idx=1689, c_children_idxs=1721, 1722, 1723, 1724, 1725, 1726, ... len=1939, mojo_children_idxs=1691, 1692, 1693, 1694, 1695, 1696, ... len=1939) 
		{ 
		WhitespaceNode(c_node_idx=1721, c_parent_idx=1720, mojo_node_idx=1691, mojo_parent_idx=1690) 
		  
		SingleLineCommentNode(c_node_idx=1722, c_parent_idx=1720, mojo_node_idx=1692, mojo_parent_idx=1690) 
		# ------------------------------- sizes 
		WhitespaceNode(c_node_idx=1723, c_parent_idx=1720, mojo_node_idx=1693, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=1724, c_parent_idx=1720, mojo_node_idx=1694, mojo_parent_idx=1690) 
		# sizes needed at mjModel construction 
		WhitespaceNode(c_node_idx=1725, c_parent_idx=1720, mojo_node_idx=1695, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1726, c_parent_idx=1720, mojo_node_idx=1696, mojo_parent_idx=1690) 
		int nq ; 
		WhitespaceNode(c_node_idx=1727, c_parent_idx=1720, mojo_node_idx=1697, mojo_parent_idx=1690) 
		                         
		SingleLineCommentNode(c_node_idx=1728, c_parent_idx=1720, mojo_node_idx=1698, mojo_parent_idx=1690) 
		# number of generalized coordinates = dim(qpos) 
		WhitespaceNode(c_node_idx=1729, c_parent_idx=1720, mojo_node_idx=1699, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1730, c_parent_idx=1720, mojo_node_idx=1700, mojo_parent_idx=1690) 
		int nv ; 
		WhitespaceNode(c_node_idx=1731, c_parent_idx=1720, mojo_node_idx=1701, mojo_parent_idx=1690) 
		                         
		SingleLineCommentNode(c_node_idx=1732, c_parent_idx=1720, mojo_node_idx=1702, mojo_parent_idx=1690) 
		# number of degrees of freedom = dim(qvel) 
		WhitespaceNode(c_node_idx=1733, c_parent_idx=1720, mojo_node_idx=1703, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1734, c_parent_idx=1720, mojo_node_idx=1704, mojo_parent_idx=1690) 
		int nu ; 
		WhitespaceNode(c_node_idx=1735, c_parent_idx=1720, mojo_node_idx=1705, mojo_parent_idx=1690) 
		                         
		SingleLineCommentNode(c_node_idx=1736, c_parent_idx=1720, mojo_node_idx=1706, mojo_parent_idx=1690) 
		# number of actuators/controls = dim(ctrl) 
		WhitespaceNode(c_node_idx=1737, c_parent_idx=1720, mojo_node_idx=1707, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1738, c_parent_idx=1720, mojo_node_idx=1708, mojo_parent_idx=1690) 
		int na ; 
		WhitespaceNode(c_node_idx=1739, c_parent_idx=1720, mojo_node_idx=1709, mojo_parent_idx=1690) 
		                         
		SingleLineCommentNode(c_node_idx=1740, c_parent_idx=1720, mojo_node_idx=1710, mojo_parent_idx=1690) 
		# number of activation states = dim(act) 
		WhitespaceNode(c_node_idx=1741, c_parent_idx=1720, mojo_node_idx=1711, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1742, c_parent_idx=1720, mojo_node_idx=1712, mojo_parent_idx=1690) 
		int nbody ; 
		WhitespaceNode(c_node_idx=1743, c_parent_idx=1720, mojo_node_idx=1713, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1744, c_parent_idx=1720, mojo_node_idx=1714, mojo_parent_idx=1690) 
		# number of bodies 
		WhitespaceNode(c_node_idx=1745, c_parent_idx=1720, mojo_node_idx=1715, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1746, c_parent_idx=1720, mojo_node_idx=1716, mojo_parent_idx=1690) 
		int nbvh ; 
		WhitespaceNode(c_node_idx=1747, c_parent_idx=1720, mojo_node_idx=1717, mojo_parent_idx=1690) 
		                       
		SingleLineCommentNode(c_node_idx=1748, c_parent_idx=1720, mojo_node_idx=1718, mojo_parent_idx=1690) 
		# number of total bounding volumes in all bodies 
		WhitespaceNode(c_node_idx=1749, c_parent_idx=1720, mojo_node_idx=1719, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1750, c_parent_idx=1720, mojo_node_idx=1720, mojo_parent_idx=1690) 
		int nbvhstatic ; 
		WhitespaceNode(c_node_idx=1751, c_parent_idx=1720, mojo_node_idx=1721, mojo_parent_idx=1690) 
		                 
		SingleLineCommentNode(c_node_idx=1752, c_parent_idx=1720, mojo_node_idx=1722, mojo_parent_idx=1690) 
		# number of static bounding volumes (aabb stored in mjModel) 
		WhitespaceNode(c_node_idx=1753, c_parent_idx=1720, mojo_node_idx=1723, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1754, c_parent_idx=1720, mojo_node_idx=1724, mojo_parent_idx=1690) 
		int nbvhdynamic ; 
		WhitespaceNode(c_node_idx=1755, c_parent_idx=1720, mojo_node_idx=1725, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=1756, c_parent_idx=1720, mojo_node_idx=1726, mojo_parent_idx=1690) 
		# number of dynamic bounding volumes (aabb stored in mjData) 
		WhitespaceNode(c_node_idx=1757, c_parent_idx=1720, mojo_node_idx=1727, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1758, c_parent_idx=1720, mojo_node_idx=1728, mojo_parent_idx=1690) 
		int njnt ; 
		WhitespaceNode(c_node_idx=1759, c_parent_idx=1720, mojo_node_idx=1729, mojo_parent_idx=1690) 
		                       
		SingleLineCommentNode(c_node_idx=1760, c_parent_idx=1720, mojo_node_idx=1730, mojo_parent_idx=1690) 
		# number of joints 
		WhitespaceNode(c_node_idx=1761, c_parent_idx=1720, mojo_node_idx=1731, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1762, c_parent_idx=1720, mojo_node_idx=1732, mojo_parent_idx=1690) 
		int ngeom ; 
		WhitespaceNode(c_node_idx=1763, c_parent_idx=1720, mojo_node_idx=1733, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1764, c_parent_idx=1720, mojo_node_idx=1734, mojo_parent_idx=1690) 
		# number of geoms 
		WhitespaceNode(c_node_idx=1765, c_parent_idx=1720, mojo_node_idx=1735, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1766, c_parent_idx=1720, mojo_node_idx=1736, mojo_parent_idx=1690) 
		int nsite ; 
		WhitespaceNode(c_node_idx=1767, c_parent_idx=1720, mojo_node_idx=1737, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1768, c_parent_idx=1720, mojo_node_idx=1738, mojo_parent_idx=1690) 
		# number of sites 
		WhitespaceNode(c_node_idx=1769, c_parent_idx=1720, mojo_node_idx=1739, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1770, c_parent_idx=1720, mojo_node_idx=1740, mojo_parent_idx=1690) 
		int ncam ; 
		WhitespaceNode(c_node_idx=1771, c_parent_idx=1720, mojo_node_idx=1741, mojo_parent_idx=1690) 
		                       
		SingleLineCommentNode(c_node_idx=1772, c_parent_idx=1720, mojo_node_idx=1742, mojo_parent_idx=1690) 
		# number of cameras 
		WhitespaceNode(c_node_idx=1773, c_parent_idx=1720, mojo_node_idx=1743, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1774, c_parent_idx=1720, mojo_node_idx=1744, mojo_parent_idx=1690) 
		int nlight ; 
		WhitespaceNode(c_node_idx=1775, c_parent_idx=1720, mojo_node_idx=1745, mojo_parent_idx=1690) 
		                     
		SingleLineCommentNode(c_node_idx=1776, c_parent_idx=1720, mojo_node_idx=1746, mojo_parent_idx=1690) 
		# number of lights 
		WhitespaceNode(c_node_idx=1777, c_parent_idx=1720, mojo_node_idx=1747, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1778, c_parent_idx=1720, mojo_node_idx=1748, mojo_parent_idx=1690) 
		int nflex ; 
		WhitespaceNode(c_node_idx=1779, c_parent_idx=1720, mojo_node_idx=1749, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1780, c_parent_idx=1720, mojo_node_idx=1750, mojo_parent_idx=1690) 
		# number of flexes 
		WhitespaceNode(c_node_idx=1781, c_parent_idx=1720, mojo_node_idx=1751, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1782, c_parent_idx=1720, mojo_node_idx=1752, mojo_parent_idx=1690) 
		int nflexvert ; 
		WhitespaceNode(c_node_idx=1783, c_parent_idx=1720, mojo_node_idx=1753, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1784, c_parent_idx=1720, mojo_node_idx=1754, mojo_parent_idx=1690) 
		# number of vertices in all flexes 
		WhitespaceNode(c_node_idx=1785, c_parent_idx=1720, mojo_node_idx=1755, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1786, c_parent_idx=1720, mojo_node_idx=1756, mojo_parent_idx=1690) 
		int nflexedge ; 
		WhitespaceNode(c_node_idx=1787, c_parent_idx=1720, mojo_node_idx=1757, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1788, c_parent_idx=1720, mojo_node_idx=1758, mojo_parent_idx=1690) 
		# number of edges in all flexes 
		WhitespaceNode(c_node_idx=1789, c_parent_idx=1720, mojo_node_idx=1759, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1790, c_parent_idx=1720, mojo_node_idx=1760, mojo_parent_idx=1690) 
		int nflexelem ; 
		WhitespaceNode(c_node_idx=1791, c_parent_idx=1720, mojo_node_idx=1761, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1792, c_parent_idx=1720, mojo_node_idx=1762, mojo_parent_idx=1690) 
		# number of elements in all flexes 
		WhitespaceNode(c_node_idx=1793, c_parent_idx=1720, mojo_node_idx=1763, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1794, c_parent_idx=1720, mojo_node_idx=1764, mojo_parent_idx=1690) 
		int nflexelemdata ; 
		WhitespaceNode(c_node_idx=1795, c_parent_idx=1720, mojo_node_idx=1765, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=1796, c_parent_idx=1720, mojo_node_idx=1766, mojo_parent_idx=1690) 
		# number of element vertex ids in all flexes 
		WhitespaceNode(c_node_idx=1797, c_parent_idx=1720, mojo_node_idx=1767, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1798, c_parent_idx=1720, mojo_node_idx=1768, mojo_parent_idx=1690) 
		int nflexelemedge ; 
		WhitespaceNode(c_node_idx=1799, c_parent_idx=1720, mojo_node_idx=1769, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=1800, c_parent_idx=1720, mojo_node_idx=1770, mojo_parent_idx=1690) 
		# number of element edge ids in all flexes 
		WhitespaceNode(c_node_idx=1801, c_parent_idx=1720, mojo_node_idx=1771, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1802, c_parent_idx=1720, mojo_node_idx=1772, mojo_parent_idx=1690) 
		int nflexshelldata ; 
		WhitespaceNode(c_node_idx=1803, c_parent_idx=1720, mojo_node_idx=1773, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=1804, c_parent_idx=1720, mojo_node_idx=1774, mojo_parent_idx=1690) 
		# number of shell fragment vertex ids in all flexes 
		WhitespaceNode(c_node_idx=1805, c_parent_idx=1720, mojo_node_idx=1775, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1806, c_parent_idx=1720, mojo_node_idx=1776, mojo_parent_idx=1690) 
		int nflexevpair ; 
		WhitespaceNode(c_node_idx=1807, c_parent_idx=1720, mojo_node_idx=1777, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=1808, c_parent_idx=1720, mojo_node_idx=1778, mojo_parent_idx=1690) 
		# number of element-vertex pairs in all flexes 
		WhitespaceNode(c_node_idx=1809, c_parent_idx=1720, mojo_node_idx=1779, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1810, c_parent_idx=1720, mojo_node_idx=1780, mojo_parent_idx=1690) 
		int nflextexcoord ; 
		WhitespaceNode(c_node_idx=1811, c_parent_idx=1720, mojo_node_idx=1781, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=1812, c_parent_idx=1720, mojo_node_idx=1782, mojo_parent_idx=1690) 
		# number of vertices with texture coordinates 
		WhitespaceNode(c_node_idx=1813, c_parent_idx=1720, mojo_node_idx=1783, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1814, c_parent_idx=1720, mojo_node_idx=1784, mojo_parent_idx=1690) 
		int nmesh ; 
		WhitespaceNode(c_node_idx=1815, c_parent_idx=1720, mojo_node_idx=1785, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1816, c_parent_idx=1720, mojo_node_idx=1786, mojo_parent_idx=1690) 
		# number of meshes 
		WhitespaceNode(c_node_idx=1817, c_parent_idx=1720, mojo_node_idx=1787, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1818, c_parent_idx=1720, mojo_node_idx=1788, mojo_parent_idx=1690) 
		int nmeshvert ; 
		WhitespaceNode(c_node_idx=1819, c_parent_idx=1720, mojo_node_idx=1789, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1820, c_parent_idx=1720, mojo_node_idx=1790, mojo_parent_idx=1690) 
		# number of vertices in all meshes 
		WhitespaceNode(c_node_idx=1821, c_parent_idx=1720, mojo_node_idx=1791, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1822, c_parent_idx=1720, mojo_node_idx=1792, mojo_parent_idx=1690) 
		int nmeshnormal ; 
		WhitespaceNode(c_node_idx=1823, c_parent_idx=1720, mojo_node_idx=1793, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=1824, c_parent_idx=1720, mojo_node_idx=1794, mojo_parent_idx=1690) 
		# number of normals in all meshes 
		WhitespaceNode(c_node_idx=1825, c_parent_idx=1720, mojo_node_idx=1795, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1826, c_parent_idx=1720, mojo_node_idx=1796, mojo_parent_idx=1690) 
		int nmeshtexcoord ; 
		WhitespaceNode(c_node_idx=1827, c_parent_idx=1720, mojo_node_idx=1797, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=1828, c_parent_idx=1720, mojo_node_idx=1798, mojo_parent_idx=1690) 
		# number of texcoords in all meshes 
		WhitespaceNode(c_node_idx=1829, c_parent_idx=1720, mojo_node_idx=1799, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1830, c_parent_idx=1720, mojo_node_idx=1800, mojo_parent_idx=1690) 
		int nmeshface ; 
		WhitespaceNode(c_node_idx=1831, c_parent_idx=1720, mojo_node_idx=1801, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1832, c_parent_idx=1720, mojo_node_idx=1802, mojo_parent_idx=1690) 
		# number of triangular faces in all meshes 
		WhitespaceNode(c_node_idx=1833, c_parent_idx=1720, mojo_node_idx=1803, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1834, c_parent_idx=1720, mojo_node_idx=1804, mojo_parent_idx=1690) 
		int nmeshgraph ; 
		WhitespaceNode(c_node_idx=1835, c_parent_idx=1720, mojo_node_idx=1805, mojo_parent_idx=1690) 
		                 
		SingleLineCommentNode(c_node_idx=1836, c_parent_idx=1720, mojo_node_idx=1806, mojo_parent_idx=1690) 
		# number of ints in mesh auxiliary data 
		WhitespaceNode(c_node_idx=1837, c_parent_idx=1720, mojo_node_idx=1807, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1838, c_parent_idx=1720, mojo_node_idx=1808, mojo_parent_idx=1690) 
		int nskin ; 
		WhitespaceNode(c_node_idx=1839, c_parent_idx=1720, mojo_node_idx=1809, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1840, c_parent_idx=1720, mojo_node_idx=1810, mojo_parent_idx=1690) 
		# number of skins 
		WhitespaceNode(c_node_idx=1841, c_parent_idx=1720, mojo_node_idx=1811, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1842, c_parent_idx=1720, mojo_node_idx=1812, mojo_parent_idx=1690) 
		int nskinvert ; 
		WhitespaceNode(c_node_idx=1843, c_parent_idx=1720, mojo_node_idx=1813, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1844, c_parent_idx=1720, mojo_node_idx=1814, mojo_parent_idx=1690) 
		# number of vertices in all skins 
		WhitespaceNode(c_node_idx=1845, c_parent_idx=1720, mojo_node_idx=1815, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1846, c_parent_idx=1720, mojo_node_idx=1816, mojo_parent_idx=1690) 
		int nskintexvert ; 
		WhitespaceNode(c_node_idx=1847, c_parent_idx=1720, mojo_node_idx=1817, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=1848, c_parent_idx=1720, mojo_node_idx=1818, mojo_parent_idx=1690) 
		# number of vertiex with texcoords in all skins 
		WhitespaceNode(c_node_idx=1849, c_parent_idx=1720, mojo_node_idx=1819, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1850, c_parent_idx=1720, mojo_node_idx=1820, mojo_parent_idx=1690) 
		int nskinface ; 
		WhitespaceNode(c_node_idx=1851, c_parent_idx=1720, mojo_node_idx=1821, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1852, c_parent_idx=1720, mojo_node_idx=1822, mojo_parent_idx=1690) 
		# number of triangular faces in all skins 
		WhitespaceNode(c_node_idx=1853, c_parent_idx=1720, mojo_node_idx=1823, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1854, c_parent_idx=1720, mojo_node_idx=1824, mojo_parent_idx=1690) 
		int nskinbone ; 
		WhitespaceNode(c_node_idx=1855, c_parent_idx=1720, mojo_node_idx=1825, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1856, c_parent_idx=1720, mojo_node_idx=1826, mojo_parent_idx=1690) 
		# number of bones in all skins 
		WhitespaceNode(c_node_idx=1857, c_parent_idx=1720, mojo_node_idx=1827, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1858, c_parent_idx=1720, mojo_node_idx=1828, mojo_parent_idx=1690) 
		int nskinbonevert ; 
		WhitespaceNode(c_node_idx=1859, c_parent_idx=1720, mojo_node_idx=1829, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=1860, c_parent_idx=1720, mojo_node_idx=1830, mojo_parent_idx=1690) 
		# number of vertices in all skin bones 
		WhitespaceNode(c_node_idx=1861, c_parent_idx=1720, mojo_node_idx=1831, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1862, c_parent_idx=1720, mojo_node_idx=1832, mojo_parent_idx=1690) 
		int nhfield ; 
		WhitespaceNode(c_node_idx=1863, c_parent_idx=1720, mojo_node_idx=1833, mojo_parent_idx=1690) 
		                    
		SingleLineCommentNode(c_node_idx=1864, c_parent_idx=1720, mojo_node_idx=1834, mojo_parent_idx=1690) 
		# number of heightfields 
		WhitespaceNode(c_node_idx=1865, c_parent_idx=1720, mojo_node_idx=1835, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1866, c_parent_idx=1720, mojo_node_idx=1836, mojo_parent_idx=1690) 
		int nhfielddata ; 
		WhitespaceNode(c_node_idx=1867, c_parent_idx=1720, mojo_node_idx=1837, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=1868, c_parent_idx=1720, mojo_node_idx=1838, mojo_parent_idx=1690) 
		# number of data points in all heightfields 
		WhitespaceNode(c_node_idx=1869, c_parent_idx=1720, mojo_node_idx=1839, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1870, c_parent_idx=1720, mojo_node_idx=1840, mojo_parent_idx=1690) 
		int ntex ; 
		WhitespaceNode(c_node_idx=1871, c_parent_idx=1720, mojo_node_idx=1841, mojo_parent_idx=1690) 
		                       
		SingleLineCommentNode(c_node_idx=1872, c_parent_idx=1720, mojo_node_idx=1842, mojo_parent_idx=1690) 
		# number of textures 
		WhitespaceNode(c_node_idx=1873, c_parent_idx=1720, mojo_node_idx=1843, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1874, c_parent_idx=1720, mojo_node_idx=1844, mojo_parent_idx=1690) 
		int ntexdata ; 
		WhitespaceNode(c_node_idx=1875, c_parent_idx=1720, mojo_node_idx=1845, mojo_parent_idx=1690) 
		                   
		SingleLineCommentNode(c_node_idx=1876, c_parent_idx=1720, mojo_node_idx=1846, mojo_parent_idx=1690) 
		# number of bytes in texture rgb data 
		WhitespaceNode(c_node_idx=1877, c_parent_idx=1720, mojo_node_idx=1847, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1878, c_parent_idx=1720, mojo_node_idx=1848, mojo_parent_idx=1690) 
		int nmat ; 
		WhitespaceNode(c_node_idx=1879, c_parent_idx=1720, mojo_node_idx=1849, mojo_parent_idx=1690) 
		                       
		SingleLineCommentNode(c_node_idx=1880, c_parent_idx=1720, mojo_node_idx=1850, mojo_parent_idx=1690) 
		# number of materials 
		WhitespaceNode(c_node_idx=1881, c_parent_idx=1720, mojo_node_idx=1851, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1882, c_parent_idx=1720, mojo_node_idx=1852, mojo_parent_idx=1690) 
		int npair ; 
		WhitespaceNode(c_node_idx=1883, c_parent_idx=1720, mojo_node_idx=1853, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1884, c_parent_idx=1720, mojo_node_idx=1854, mojo_parent_idx=1690) 
		# number of predefined geom pairs 
		WhitespaceNode(c_node_idx=1885, c_parent_idx=1720, mojo_node_idx=1855, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1886, c_parent_idx=1720, mojo_node_idx=1856, mojo_parent_idx=1690) 
		int nexclude ; 
		WhitespaceNode(c_node_idx=1887, c_parent_idx=1720, mojo_node_idx=1857, mojo_parent_idx=1690) 
		                   
		SingleLineCommentNode(c_node_idx=1888, c_parent_idx=1720, mojo_node_idx=1858, mojo_parent_idx=1690) 
		# number of excluded geom pairs 
		WhitespaceNode(c_node_idx=1889, c_parent_idx=1720, mojo_node_idx=1859, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1890, c_parent_idx=1720, mojo_node_idx=1860, mojo_parent_idx=1690) 
		int neq ; 
		WhitespaceNode(c_node_idx=1891, c_parent_idx=1720, mojo_node_idx=1861, mojo_parent_idx=1690) 
		                        
		SingleLineCommentNode(c_node_idx=1892, c_parent_idx=1720, mojo_node_idx=1862, mojo_parent_idx=1690) 
		# number of equality constraints 
		WhitespaceNode(c_node_idx=1893, c_parent_idx=1720, mojo_node_idx=1863, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1894, c_parent_idx=1720, mojo_node_idx=1864, mojo_parent_idx=1690) 
		int ntendon ; 
		WhitespaceNode(c_node_idx=1895, c_parent_idx=1720, mojo_node_idx=1865, mojo_parent_idx=1690) 
		                    
		SingleLineCommentNode(c_node_idx=1896, c_parent_idx=1720, mojo_node_idx=1866, mojo_parent_idx=1690) 
		# number of tendons 
		WhitespaceNode(c_node_idx=1897, c_parent_idx=1720, mojo_node_idx=1867, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1898, c_parent_idx=1720, mojo_node_idx=1868, mojo_parent_idx=1690) 
		int nwrap ; 
		WhitespaceNode(c_node_idx=1899, c_parent_idx=1720, mojo_node_idx=1869, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1900, c_parent_idx=1720, mojo_node_idx=1870, mojo_parent_idx=1690) 
		# number of wrap objects in all tendon paths 
		WhitespaceNode(c_node_idx=1901, c_parent_idx=1720, mojo_node_idx=1871, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1902, c_parent_idx=1720, mojo_node_idx=1872, mojo_parent_idx=1690) 
		int nsensor ; 
		WhitespaceNode(c_node_idx=1903, c_parent_idx=1720, mojo_node_idx=1873, mojo_parent_idx=1690) 
		                    
		SingleLineCommentNode(c_node_idx=1904, c_parent_idx=1720, mojo_node_idx=1874, mojo_parent_idx=1690) 
		# number of sensors 
		WhitespaceNode(c_node_idx=1905, c_parent_idx=1720, mojo_node_idx=1875, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1906, c_parent_idx=1720, mojo_node_idx=1876, mojo_parent_idx=1690) 
		int nnumeric ; 
		WhitespaceNode(c_node_idx=1907, c_parent_idx=1720, mojo_node_idx=1877, mojo_parent_idx=1690) 
		                   
		SingleLineCommentNode(c_node_idx=1908, c_parent_idx=1720, mojo_node_idx=1878, mojo_parent_idx=1690) 
		# number of numeric custom fields 
		WhitespaceNode(c_node_idx=1909, c_parent_idx=1720, mojo_node_idx=1879, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1910, c_parent_idx=1720, mojo_node_idx=1880, mojo_parent_idx=1690) 
		int nnumericdata ; 
		WhitespaceNode(c_node_idx=1911, c_parent_idx=1720, mojo_node_idx=1881, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=1912, c_parent_idx=1720, mojo_node_idx=1882, mojo_parent_idx=1690) 
		# number of mjtNums in all numeric fields 
		WhitespaceNode(c_node_idx=1913, c_parent_idx=1720, mojo_node_idx=1883, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1914, c_parent_idx=1720, mojo_node_idx=1884, mojo_parent_idx=1690) 
		int ntext ; 
		WhitespaceNode(c_node_idx=1915, c_parent_idx=1720, mojo_node_idx=1885, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=1916, c_parent_idx=1720, mojo_node_idx=1886, mojo_parent_idx=1690) 
		# number of text custom fields 
		WhitespaceNode(c_node_idx=1917, c_parent_idx=1720, mojo_node_idx=1887, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1918, c_parent_idx=1720, mojo_node_idx=1888, mojo_parent_idx=1690) 
		int ntextdata ; 
		WhitespaceNode(c_node_idx=1919, c_parent_idx=1720, mojo_node_idx=1889, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1920, c_parent_idx=1720, mojo_node_idx=1890, mojo_parent_idx=1690) 
		# number of mjtBytes in all text fields 
		WhitespaceNode(c_node_idx=1921, c_parent_idx=1720, mojo_node_idx=1891, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1922, c_parent_idx=1720, mojo_node_idx=1892, mojo_parent_idx=1690) 
		int ntuple ; 
		WhitespaceNode(c_node_idx=1923, c_parent_idx=1720, mojo_node_idx=1893, mojo_parent_idx=1690) 
		                     
		SingleLineCommentNode(c_node_idx=1924, c_parent_idx=1720, mojo_node_idx=1894, mojo_parent_idx=1690) 
		# number of tuple custom fields 
		WhitespaceNode(c_node_idx=1925, c_parent_idx=1720, mojo_node_idx=1895, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1926, c_parent_idx=1720, mojo_node_idx=1896, mojo_parent_idx=1690) 
		int ntupledata ; 
		WhitespaceNode(c_node_idx=1927, c_parent_idx=1720, mojo_node_idx=1897, mojo_parent_idx=1690) 
		                 
		SingleLineCommentNode(c_node_idx=1928, c_parent_idx=1720, mojo_node_idx=1898, mojo_parent_idx=1690) 
		# number of objects in all tuple fields 
		WhitespaceNode(c_node_idx=1929, c_parent_idx=1720, mojo_node_idx=1899, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1930, c_parent_idx=1720, mojo_node_idx=1900, mojo_parent_idx=1690) 
		int nkey ; 
		WhitespaceNode(c_node_idx=1931, c_parent_idx=1720, mojo_node_idx=1901, mojo_parent_idx=1690) 
		                       
		SingleLineCommentNode(c_node_idx=1932, c_parent_idx=1720, mojo_node_idx=1902, mojo_parent_idx=1690) 
		# number of keyframes 
		WhitespaceNode(c_node_idx=1933, c_parent_idx=1720, mojo_node_idx=1903, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1934, c_parent_idx=1720, mojo_node_idx=1904, mojo_parent_idx=1690) 
		int nmocap ; 
		WhitespaceNode(c_node_idx=1935, c_parent_idx=1720, mojo_node_idx=1905, mojo_parent_idx=1690) 
		                     
		SingleLineCommentNode(c_node_idx=1936, c_parent_idx=1720, mojo_node_idx=1906, mojo_parent_idx=1690) 
		# number of mocap bodies 
		WhitespaceNode(c_node_idx=1937, c_parent_idx=1720, mojo_node_idx=1907, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1938, c_parent_idx=1720, mojo_node_idx=1908, mojo_parent_idx=1690) 
		int nplugin ; 
		WhitespaceNode(c_node_idx=1939, c_parent_idx=1720, mojo_node_idx=1909, mojo_parent_idx=1690) 
		                    
		SingleLineCommentNode(c_node_idx=1940, c_parent_idx=1720, mojo_node_idx=1910, mojo_parent_idx=1690) 
		# number of plugin instances 
		WhitespaceNode(c_node_idx=1941, c_parent_idx=1720, mojo_node_idx=1911, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1942, c_parent_idx=1720, mojo_node_idx=1912, mojo_parent_idx=1690) 
		int npluginattr ; 
		WhitespaceNode(c_node_idx=1943, c_parent_idx=1720, mojo_node_idx=1913, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=1944, c_parent_idx=1720, mojo_node_idx=1914, mojo_parent_idx=1690) 
		# number of chars in all plugin config attributes 
		WhitespaceNode(c_node_idx=1945, c_parent_idx=1720, mojo_node_idx=1915, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1946, c_parent_idx=1720, mojo_node_idx=1916, mojo_parent_idx=1690) 
		int nuser_body ; 
		WhitespaceNode(c_node_idx=1947, c_parent_idx=1720, mojo_node_idx=1917, mojo_parent_idx=1690) 
		                 
		SingleLineCommentNode(c_node_idx=1948, c_parent_idx=1720, mojo_node_idx=1918, mojo_parent_idx=1690) 
		# number of mjtNums in body_user 
		WhitespaceNode(c_node_idx=1949, c_parent_idx=1720, mojo_node_idx=1919, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1950, c_parent_idx=1720, mojo_node_idx=1920, mojo_parent_idx=1690) 
		int nuser_jnt ; 
		WhitespaceNode(c_node_idx=1951, c_parent_idx=1720, mojo_node_idx=1921, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1952, c_parent_idx=1720, mojo_node_idx=1922, mojo_parent_idx=1690) 
		# number of mjtNums in jnt_user 
		WhitespaceNode(c_node_idx=1953, c_parent_idx=1720, mojo_node_idx=1923, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1954, c_parent_idx=1720, mojo_node_idx=1924, mojo_parent_idx=1690) 
		int nuser_geom ; 
		WhitespaceNode(c_node_idx=1955, c_parent_idx=1720, mojo_node_idx=1925, mojo_parent_idx=1690) 
		                 
		SingleLineCommentNode(c_node_idx=1956, c_parent_idx=1720, mojo_node_idx=1926, mojo_parent_idx=1690) 
		# number of mjtNums in geom_user 
		WhitespaceNode(c_node_idx=1957, c_parent_idx=1720, mojo_node_idx=1927, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1958, c_parent_idx=1720, mojo_node_idx=1928, mojo_parent_idx=1690) 
		int nuser_site ; 
		WhitespaceNode(c_node_idx=1959, c_parent_idx=1720, mojo_node_idx=1929, mojo_parent_idx=1690) 
		                 
		SingleLineCommentNode(c_node_idx=1960, c_parent_idx=1720, mojo_node_idx=1930, mojo_parent_idx=1690) 
		# number of mjtNums in site_user 
		WhitespaceNode(c_node_idx=1961, c_parent_idx=1720, mojo_node_idx=1931, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1962, c_parent_idx=1720, mojo_node_idx=1932, mojo_parent_idx=1690) 
		int nuser_cam ; 
		WhitespaceNode(c_node_idx=1963, c_parent_idx=1720, mojo_node_idx=1933, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=1964, c_parent_idx=1720, mojo_node_idx=1934, mojo_parent_idx=1690) 
		# number of mjtNums in cam_user 
		WhitespaceNode(c_node_idx=1965, c_parent_idx=1720, mojo_node_idx=1935, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1966, c_parent_idx=1720, mojo_node_idx=1936, mojo_parent_idx=1690) 
		int nuser_tendon ; 
		WhitespaceNode(c_node_idx=1967, c_parent_idx=1720, mojo_node_idx=1937, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=1968, c_parent_idx=1720, mojo_node_idx=1938, mojo_parent_idx=1690) 
		# number of mjtNums in tendon_user 
		WhitespaceNode(c_node_idx=1969, c_parent_idx=1720, mojo_node_idx=1939, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1970, c_parent_idx=1720, mojo_node_idx=1940, mojo_parent_idx=1690) 
		int nuser_actuator ; 
		WhitespaceNode(c_node_idx=1971, c_parent_idx=1720, mojo_node_idx=1941, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=1972, c_parent_idx=1720, mojo_node_idx=1942, mojo_parent_idx=1690) 
		# number of mjtNums in actuator_user 
		WhitespaceNode(c_node_idx=1973, c_parent_idx=1720, mojo_node_idx=1943, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1974, c_parent_idx=1720, mojo_node_idx=1944, mojo_parent_idx=1690) 
		int nuser_sensor ; 
		WhitespaceNode(c_node_idx=1975, c_parent_idx=1720, mojo_node_idx=1945, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=1976, c_parent_idx=1720, mojo_node_idx=1946, mojo_parent_idx=1690) 
		# number of mjtNums in sensor_user 
		WhitespaceNode(c_node_idx=1977, c_parent_idx=1720, mojo_node_idx=1947, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1978, c_parent_idx=1720, mojo_node_idx=1948, mojo_parent_idx=1690) 
		int nnames ; 
		WhitespaceNode(c_node_idx=1979, c_parent_idx=1720, mojo_node_idx=1949, mojo_parent_idx=1690) 
		                     
		SingleLineCommentNode(c_node_idx=1980, c_parent_idx=1720, mojo_node_idx=1950, mojo_parent_idx=1690) 
		# number of chars in all names 
		WhitespaceNode(c_node_idx=1981, c_parent_idx=1720, mojo_node_idx=1951, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1982, c_parent_idx=1720, mojo_node_idx=1952, mojo_parent_idx=1690) 
		int nnames_map ; 
		WhitespaceNode(c_node_idx=1983, c_parent_idx=1720, mojo_node_idx=1953, mojo_parent_idx=1690) 
		                 
		SingleLineCommentNode(c_node_idx=1984, c_parent_idx=1720, mojo_node_idx=1954, mojo_parent_idx=1690) 
		# number of slots in the names hash map 
		WhitespaceNode(c_node_idx=1985, c_parent_idx=1720, mojo_node_idx=1955, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1986, c_parent_idx=1720, mojo_node_idx=1956, mojo_parent_idx=1690) 
		int npaths ; 
		WhitespaceNode(c_node_idx=1987, c_parent_idx=1720, mojo_node_idx=1957, mojo_parent_idx=1690) 
		                     
		SingleLineCommentNode(c_node_idx=1988, c_parent_idx=1720, mojo_node_idx=1958, mojo_parent_idx=1690) 
		# number of chars in all paths 
		WhitespaceNode(c_node_idx=1989, c_parent_idx=1720, mojo_node_idx=1959, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=1990, c_parent_idx=1720, mojo_node_idx=1960, mojo_parent_idx=1690) 
		# sizes set after mjModel construction (only affect mjData) 
		WhitespaceNode(c_node_idx=1991, c_parent_idx=1720, mojo_node_idx=1961, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1992, c_parent_idx=1720, mojo_node_idx=1962, mojo_parent_idx=1690) 
		int nM ; 
		WhitespaceNode(c_node_idx=1993, c_parent_idx=1720, mojo_node_idx=1963, mojo_parent_idx=1690) 
		                         
		SingleLineCommentNode(c_node_idx=1994, c_parent_idx=1720, mojo_node_idx=1964, mojo_parent_idx=1690) 
		# number of non-zeros in sparse inertia matrix 
		WhitespaceNode(c_node_idx=1995, c_parent_idx=1720, mojo_node_idx=1965, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=1996, c_parent_idx=1720, mojo_node_idx=1966, mojo_parent_idx=1690) 
		int nB ; 
		WhitespaceNode(c_node_idx=1997, c_parent_idx=1720, mojo_node_idx=1967, mojo_parent_idx=1690) 
		                         
		SingleLineCommentNode(c_node_idx=1998, c_parent_idx=1720, mojo_node_idx=1968, mojo_parent_idx=1690) 
		# number of non-zeros in sparse body-dof matrix 
		WhitespaceNode(c_node_idx=1999, c_parent_idx=1720, mojo_node_idx=1969, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2000, c_parent_idx=1720, mojo_node_idx=1970, mojo_parent_idx=1690) 
		int nC ; 
		WhitespaceNode(c_node_idx=2001, c_parent_idx=1720, mojo_node_idx=1971, mojo_parent_idx=1690) 
		                         
		SingleLineCommentNode(c_node_idx=2002, c_parent_idx=1720, mojo_node_idx=1972, mojo_parent_idx=1690) 
		# number of non-zeros in sparse reduced dof-dof matrix 
		WhitespaceNode(c_node_idx=2003, c_parent_idx=1720, mojo_node_idx=1973, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2004, c_parent_idx=1720, mojo_node_idx=1974, mojo_parent_idx=1690) 
		int nD ; 
		WhitespaceNode(c_node_idx=2005, c_parent_idx=1720, mojo_node_idx=1975, mojo_parent_idx=1690) 
		                         
		SingleLineCommentNode(c_node_idx=2006, c_parent_idx=1720, mojo_node_idx=1976, mojo_parent_idx=1690) 
		# number of non-zeros in sparse dof-dof matrix 
		WhitespaceNode(c_node_idx=2007, c_parent_idx=1720, mojo_node_idx=1977, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2008, c_parent_idx=1720, mojo_node_idx=1978, mojo_parent_idx=1690) 
		int ntree ; 
		WhitespaceNode(c_node_idx=2009, c_parent_idx=1720, mojo_node_idx=1979, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=2010, c_parent_idx=1720, mojo_node_idx=1980, mojo_parent_idx=1690) 
		# number of kinematic trees under world body 
		WhitespaceNode(c_node_idx=2011, c_parent_idx=1720, mojo_node_idx=1981, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2012, c_parent_idx=1720, mojo_node_idx=1982, mojo_parent_idx=1690) 
		int ngravcomp ; 
		WhitespaceNode(c_node_idx=2013, c_parent_idx=1720, mojo_node_idx=1983, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=2014, c_parent_idx=1720, mojo_node_idx=1984, mojo_parent_idx=1690) 
		# number of bodies with nonzero gravcomp 
		WhitespaceNode(c_node_idx=2015, c_parent_idx=1720, mojo_node_idx=1985, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2016, c_parent_idx=1720, mojo_node_idx=1986, mojo_parent_idx=1690) 
		int nemax ; 
		WhitespaceNode(c_node_idx=2017, c_parent_idx=1720, mojo_node_idx=1987, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=2018, c_parent_idx=1720, mojo_node_idx=1988, mojo_parent_idx=1690) 
		# number of potential equality-constraint rows 
		WhitespaceNode(c_node_idx=2019, c_parent_idx=1720, mojo_node_idx=1989, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2020, c_parent_idx=1720, mojo_node_idx=1990, mojo_parent_idx=1690) 
		int njmax ; 
		WhitespaceNode(c_node_idx=2021, c_parent_idx=1720, mojo_node_idx=1991, mojo_parent_idx=1690) 
		                      
		SingleLineCommentNode(c_node_idx=2022, c_parent_idx=1720, mojo_node_idx=1992, mojo_parent_idx=1690) 
		# number of available rows in constraint Jacobian 
		WhitespaceNode(c_node_idx=2023, c_parent_idx=1720, mojo_node_idx=1993, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2024, c_parent_idx=1720, mojo_node_idx=1994, mojo_parent_idx=1690) 
		int nconmax ; 
		WhitespaceNode(c_node_idx=2025, c_parent_idx=1720, mojo_node_idx=1995, mojo_parent_idx=1690) 
		                    
		SingleLineCommentNode(c_node_idx=2026, c_parent_idx=1720, mojo_node_idx=1996, mojo_parent_idx=1690) 
		# number of potential contacts in contact list 
		WhitespaceNode(c_node_idx=2027, c_parent_idx=1720, mojo_node_idx=1997, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2028, c_parent_idx=1720, mojo_node_idx=1998, mojo_parent_idx=1690) 
		int nuserdata ; 
		WhitespaceNode(c_node_idx=2029, c_parent_idx=1720, mojo_node_idx=1999, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=2030, c_parent_idx=1720, mojo_node_idx=2000, mojo_parent_idx=1690) 
		# number of mjtNums reserved for the user 
		WhitespaceNode(c_node_idx=2031, c_parent_idx=1720, mojo_node_idx=2001, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2032, c_parent_idx=1720, mojo_node_idx=2002, mojo_parent_idx=1690) 
		int nsensordata ; 
		WhitespaceNode(c_node_idx=2033, c_parent_idx=1720, mojo_node_idx=2003, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=2034, c_parent_idx=1720, mojo_node_idx=2004, mojo_parent_idx=1690) 
		# number of mjtNums in sensor data vector 
		WhitespaceNode(c_node_idx=2035, c_parent_idx=1720, mojo_node_idx=2005, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2036, c_parent_idx=1720, mojo_node_idx=2006, mojo_parent_idx=1690) 
		int npluginstate ; 
		WhitespaceNode(c_node_idx=2037, c_parent_idx=1720, mojo_node_idx=2007, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=2038, c_parent_idx=1720, mojo_node_idx=2008, mojo_parent_idx=1690) 
		# number of mjtNums in plugin state vector 
		WhitespaceNode(c_node_idx=2039, c_parent_idx=1720, mojo_node_idx=2009, mojo_parent_idx=1690) 
		 
		  
		PlaceHolderNode(c_node_idx=2040, c_parent_idx=1720, mojo_node_idx=2010, mojo_parent_idx=1690) 
		size_t narena ; 
		WhitespaceNode(c_node_idx=2041, c_parent_idx=1720, mojo_node_idx=2011, mojo_parent_idx=1690) 
		                  
		SingleLineCommentNode(c_node_idx=2042, c_parent_idx=1720, mojo_node_idx=2012, mojo_parent_idx=1690) 
		# number of bytes in the mjData arena (inclusive of stack) 
		WhitespaceNode(c_node_idx=2043, c_parent_idx=1720, mojo_node_idx=2013, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2044, c_parent_idx=1720, mojo_node_idx=2014, mojo_parent_idx=1690) 
		size_t nbuffer ; 
		WhitespaceNode(c_node_idx=2045, c_parent_idx=1720, mojo_node_idx=2015, mojo_parent_idx=1690) 
		                 
		SingleLineCommentNode(c_node_idx=2046, c_parent_idx=1720, mojo_node_idx=2016, mojo_parent_idx=1690) 
		# number of bytes in buffer 
		WhitespaceNode(c_node_idx=2047, c_parent_idx=1720, mojo_node_idx=2017, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2048, c_parent_idx=1720, mojo_node_idx=2018, mojo_parent_idx=1690) 
		# ------------------------------- options and statistics 
		WhitespaceNode(c_node_idx=2049, c_parent_idx=1720, mojo_node_idx=2019, mojo_parent_idx=1690) 
		 
		  
		PlaceHolderNode(c_node_idx=2050, c_parent_idx=1720, mojo_node_idx=2020, mojo_parent_idx=1690) 
		mjOption opt ; 
		WhitespaceNode(c_node_idx=2051, c_parent_idx=1720, mojo_node_idx=2021, mojo_parent_idx=1690) 
		                   
		SingleLineCommentNode(c_node_idx=2052, c_parent_idx=1720, mojo_node_idx=2022, mojo_parent_idx=1690) 
		# physics options 
		WhitespaceNode(c_node_idx=2053, c_parent_idx=1720, mojo_node_idx=2023, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2054, c_parent_idx=1720, mojo_node_idx=2024, mojo_parent_idx=1690) 
		mjVisual vis ; 
		WhitespaceNode(c_node_idx=2055, c_parent_idx=1720, mojo_node_idx=2025, mojo_parent_idx=1690) 
		                   
		SingleLineCommentNode(c_node_idx=2056, c_parent_idx=1720, mojo_node_idx=2026, mojo_parent_idx=1690) 
		# visualization options 
		WhitespaceNode(c_node_idx=2057, c_parent_idx=1720, mojo_node_idx=2027, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2058, c_parent_idx=1720, mojo_node_idx=2028, mojo_parent_idx=1690) 
		mjStatistic stat ; 
		WhitespaceNode(c_node_idx=2059, c_parent_idx=1720, mojo_node_idx=2029, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=2060, c_parent_idx=1720, mojo_node_idx=2030, mojo_parent_idx=1690) 
		# model statistics 
		WhitespaceNode(c_node_idx=2061, c_parent_idx=1720, mojo_node_idx=2031, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2062, c_parent_idx=1720, mojo_node_idx=2032, mojo_parent_idx=1690) 
		# ------------------------------- buffers 
		WhitespaceNode(c_node_idx=2063, c_parent_idx=1720, mojo_node_idx=2033, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2064, c_parent_idx=1720, mojo_node_idx=2034, mojo_parent_idx=1690) 
		# main buffer 
		WhitespaceNode(c_node_idx=2065, c_parent_idx=1720, mojo_node_idx=2035, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2066, c_parent_idx=1720, mojo_node_idx=2036, mojo_parent_idx=1690) 
		void*     buffer ; 
		WhitespaceNode(c_node_idx=2067, c_parent_idx=1720, mojo_node_idx=2037, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=2068, c_parent_idx=1720, mojo_node_idx=2038, mojo_parent_idx=1690) 
		# main buffer ;  all pointers point in it    (nbuffer) 
		WhitespaceNode(c_node_idx=2069, c_parent_idx=1720, mojo_node_idx=2039, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2070, c_parent_idx=1720, mojo_node_idx=2040, mojo_parent_idx=1690) 
		# default generalized coordinates 
		WhitespaceNode(c_node_idx=2071, c_parent_idx=1720, mojo_node_idx=2041, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2072, c_parent_idx=1720, mojo_node_idx=2042, mojo_parent_idx=1690) 
		mjtNum*   qpos0 ; 
		WhitespaceNode(c_node_idx=2073, c_parent_idx=1720, mojo_node_idx=2043, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=2074, c_parent_idx=1720, mojo_node_idx=2044, mojo_parent_idx=1690) 
		# qpos values at default pose              (nq x 1) 
		WhitespaceNode(c_node_idx=2075, c_parent_idx=1720, mojo_node_idx=2045, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2076, c_parent_idx=1720, mojo_node_idx=2046, mojo_parent_idx=1690) 
		mjtNum*   qpos_spring ; 
		WhitespaceNode(c_node_idx=2077, c_parent_idx=1720, mojo_node_idx=2047, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2078, c_parent_idx=1720, mojo_node_idx=2048, mojo_parent_idx=1690) 
		# reference pose for springs               (nq x 1) 
		WhitespaceNode(c_node_idx=2079, c_parent_idx=1720, mojo_node_idx=2049, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2080, c_parent_idx=1720, mojo_node_idx=2050, mojo_parent_idx=1690) 
		# bodies 
		WhitespaceNode(c_node_idx=2081, c_parent_idx=1720, mojo_node_idx=2051, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2082, c_parent_idx=1720, mojo_node_idx=2052, mojo_parent_idx=1690) 
		int*      body_parentid ; 
		WhitespaceNode(c_node_idx=2083, c_parent_idx=1720, mojo_node_idx=2053, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2084, c_parent_idx=1720, mojo_node_idx=2054, mojo_parent_idx=1690) 
		# id of body's parent                      (nbody x 1) 
		WhitespaceNode(c_node_idx=2085, c_parent_idx=1720, mojo_node_idx=2055, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2086, c_parent_idx=1720, mojo_node_idx=2056, mojo_parent_idx=1690) 
		int*      body_rootid ; 
		WhitespaceNode(c_node_idx=2087, c_parent_idx=1720, mojo_node_idx=2057, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2088, c_parent_idx=1720, mojo_node_idx=2058, mojo_parent_idx=1690) 
		# id of root above body                    (nbody x 1) 
		WhitespaceNode(c_node_idx=2089, c_parent_idx=1720, mojo_node_idx=2059, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2090, c_parent_idx=1720, mojo_node_idx=2060, mojo_parent_idx=1690) 
		int*      body_weldid ; 
		WhitespaceNode(c_node_idx=2091, c_parent_idx=1720, mojo_node_idx=2061, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2092, c_parent_idx=1720, mojo_node_idx=2062, mojo_parent_idx=1690) 
		# id of body that this body is welded to   (nbody x 1) 
		WhitespaceNode(c_node_idx=2093, c_parent_idx=1720, mojo_node_idx=2063, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2094, c_parent_idx=1720, mojo_node_idx=2064, mojo_parent_idx=1690) 
		int*      body_mocapid ; 
		WhitespaceNode(c_node_idx=2095, c_parent_idx=1720, mojo_node_idx=2065, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2096, c_parent_idx=1720, mojo_node_idx=2066, mojo_parent_idx=1690) 
		# id of mocap data ;  -1: none               (nbody x 1) 
		WhitespaceNode(c_node_idx=2097, c_parent_idx=1720, mojo_node_idx=2067, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2098, c_parent_idx=1720, mojo_node_idx=2068, mojo_parent_idx=1690) 
		int*      body_jntnum ; 
		WhitespaceNode(c_node_idx=2099, c_parent_idx=1720, mojo_node_idx=2069, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2100, c_parent_idx=1720, mojo_node_idx=2070, mojo_parent_idx=1690) 
		# number of joints for this body           (nbody x 1) 
		WhitespaceNode(c_node_idx=2101, c_parent_idx=1720, mojo_node_idx=2071, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2102, c_parent_idx=1720, mojo_node_idx=2072, mojo_parent_idx=1690) 
		int*      body_jntadr ; 
		WhitespaceNode(c_node_idx=2103, c_parent_idx=1720, mojo_node_idx=2073, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2104, c_parent_idx=1720, mojo_node_idx=2074, mojo_parent_idx=1690) 
		# start addr of joints ;  -1: no joints      (nbody x 1) 
		WhitespaceNode(c_node_idx=2105, c_parent_idx=1720, mojo_node_idx=2075, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2106, c_parent_idx=1720, mojo_node_idx=2076, mojo_parent_idx=1690) 
		int*      body_dofnum ; 
		WhitespaceNode(c_node_idx=2107, c_parent_idx=1720, mojo_node_idx=2077, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2108, c_parent_idx=1720, mojo_node_idx=2078, mojo_parent_idx=1690) 
		# number of motion degrees of freedom      (nbody x 1) 
		WhitespaceNode(c_node_idx=2109, c_parent_idx=1720, mojo_node_idx=2079, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2110, c_parent_idx=1720, mojo_node_idx=2080, mojo_parent_idx=1690) 
		int*      body_dofadr ; 
		WhitespaceNode(c_node_idx=2111, c_parent_idx=1720, mojo_node_idx=2081, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2112, c_parent_idx=1720, mojo_node_idx=2082, mojo_parent_idx=1690) 
		# start addr of dofs ;  -1: no dofs          (nbody x 1) 
		WhitespaceNode(c_node_idx=2113, c_parent_idx=1720, mojo_node_idx=2083, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2114, c_parent_idx=1720, mojo_node_idx=2084, mojo_parent_idx=1690) 
		int*      body_treeid ; 
		WhitespaceNode(c_node_idx=2115, c_parent_idx=1720, mojo_node_idx=2085, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2116, c_parent_idx=1720, mojo_node_idx=2086, mojo_parent_idx=1690) 
		# id of body's kinematic tree ;  -1: static  (nbody x 1) 
		WhitespaceNode(c_node_idx=2117, c_parent_idx=1720, mojo_node_idx=2087, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2118, c_parent_idx=1720, mojo_node_idx=2088, mojo_parent_idx=1690) 
		int*      body_geomnum ; 
		WhitespaceNode(c_node_idx=2119, c_parent_idx=1720, mojo_node_idx=2089, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2120, c_parent_idx=1720, mojo_node_idx=2090, mojo_parent_idx=1690) 
		# number of geoms                          (nbody x 1) 
		WhitespaceNode(c_node_idx=2121, c_parent_idx=1720, mojo_node_idx=2091, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2122, c_parent_idx=1720, mojo_node_idx=2092, mojo_parent_idx=1690) 
		int*      body_geomadr ; 
		WhitespaceNode(c_node_idx=2123, c_parent_idx=1720, mojo_node_idx=2093, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2124, c_parent_idx=1720, mojo_node_idx=2094, mojo_parent_idx=1690) 
		# start addr of geoms ;  -1: no geoms        (nbody x 1) 
		WhitespaceNode(c_node_idx=2125, c_parent_idx=1720, mojo_node_idx=2095, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2126, c_parent_idx=1720, mojo_node_idx=2096, mojo_parent_idx=1690) 
		mjtByte*  body_simple ; 
		WhitespaceNode(c_node_idx=2127, c_parent_idx=1720, mojo_node_idx=2097, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2128, c_parent_idx=1720, mojo_node_idx=2098, mojo_parent_idx=1690) 
		# 1: diag M ;  2: diag M ,  sliders only       (nbody x 1) 
		WhitespaceNode(c_node_idx=2129, c_parent_idx=1720, mojo_node_idx=2099, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2130, c_parent_idx=1720, mojo_node_idx=2100, mojo_parent_idx=1690) 
		mjtByte*  body_sameframe ; 
		WhitespaceNode(c_node_idx=2131, c_parent_idx=1720, mojo_node_idx=2101, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2132, c_parent_idx=1720, mojo_node_idx=2102, mojo_parent_idx=1690) 
		# same frame as inertia (mjtSameframe)     (nbody x 1) 
		WhitespaceNode(c_node_idx=2133, c_parent_idx=1720, mojo_node_idx=2103, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2134, c_parent_idx=1720, mojo_node_idx=2104, mojo_parent_idx=1690) 
		mjtNum*   body_pos ; 
		WhitespaceNode(c_node_idx=2135, c_parent_idx=1720, mojo_node_idx=2105, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2136, c_parent_idx=1720, mojo_node_idx=2106, mojo_parent_idx=1690) 
		# position offset rel. to parent body      (nbody x 3) 
		WhitespaceNode(c_node_idx=2137, c_parent_idx=1720, mojo_node_idx=2107, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2138, c_parent_idx=1720, mojo_node_idx=2108, mojo_parent_idx=1690) 
		mjtNum*   body_quat ; 
		WhitespaceNode(c_node_idx=2139, c_parent_idx=1720, mojo_node_idx=2109, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2140, c_parent_idx=1720, mojo_node_idx=2110, mojo_parent_idx=1690) 
		# orientation offset rel. to parent body   (nbody x 4) 
		WhitespaceNode(c_node_idx=2141, c_parent_idx=1720, mojo_node_idx=2111, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2142, c_parent_idx=1720, mojo_node_idx=2112, mojo_parent_idx=1690) 
		mjtNum*   body_ipos ; 
		WhitespaceNode(c_node_idx=2143, c_parent_idx=1720, mojo_node_idx=2113, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2144, c_parent_idx=1720, mojo_node_idx=2114, mojo_parent_idx=1690) 
		# local position of center of mass         (nbody x 3) 
		WhitespaceNode(c_node_idx=2145, c_parent_idx=1720, mojo_node_idx=2115, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2146, c_parent_idx=1720, mojo_node_idx=2116, mojo_parent_idx=1690) 
		mjtNum*   body_iquat ; 
		WhitespaceNode(c_node_idx=2147, c_parent_idx=1720, mojo_node_idx=2117, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2148, c_parent_idx=1720, mojo_node_idx=2118, mojo_parent_idx=1690) 
		# local orientation of inertia ellipsoid   (nbody x 4) 
		WhitespaceNode(c_node_idx=2149, c_parent_idx=1720, mojo_node_idx=2119, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2150, c_parent_idx=1720, mojo_node_idx=2120, mojo_parent_idx=1690) 
		mjtNum*   body_mass ; 
		WhitespaceNode(c_node_idx=2151, c_parent_idx=1720, mojo_node_idx=2121, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2152, c_parent_idx=1720, mojo_node_idx=2122, mojo_parent_idx=1690) 
		# mass                                     (nbody x 1) 
		WhitespaceNode(c_node_idx=2153, c_parent_idx=1720, mojo_node_idx=2123, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2154, c_parent_idx=1720, mojo_node_idx=2124, mojo_parent_idx=1690) 
		mjtNum*   body_subtreemass ; 
		WhitespaceNode(c_node_idx=2155, c_parent_idx=1720, mojo_node_idx=2125, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2156, c_parent_idx=1720, mojo_node_idx=2126, mojo_parent_idx=1690) 
		# mass of subtree starting at this body    (nbody x 1) 
		WhitespaceNode(c_node_idx=2157, c_parent_idx=1720, mojo_node_idx=2127, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2158, c_parent_idx=1720, mojo_node_idx=2128, mojo_parent_idx=1690) 
		mjtNum*   body_inertia ; 
		WhitespaceNode(c_node_idx=2159, c_parent_idx=1720, mojo_node_idx=2129, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2160, c_parent_idx=1720, mojo_node_idx=2130, mojo_parent_idx=1690) 
		# diagonal inertia in ipos/iquat frame     (nbody x 3) 
		WhitespaceNode(c_node_idx=2161, c_parent_idx=1720, mojo_node_idx=2131, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2162, c_parent_idx=1720, mojo_node_idx=2132, mojo_parent_idx=1690) 
		mjtNum*   body_invweight0 ; 
		WhitespaceNode(c_node_idx=2163, c_parent_idx=1720, mojo_node_idx=2133, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=2164, c_parent_idx=1720, mojo_node_idx=2134, mojo_parent_idx=1690) 
		# mean inv inert in qpos0 (trn ,  rot)       (nbody x 2) 
		WhitespaceNode(c_node_idx=2165, c_parent_idx=1720, mojo_node_idx=2135, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2166, c_parent_idx=1720, mojo_node_idx=2136, mojo_parent_idx=1690) 
		mjtNum*   body_gravcomp ; 
		WhitespaceNode(c_node_idx=2167, c_parent_idx=1720, mojo_node_idx=2137, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2168, c_parent_idx=1720, mojo_node_idx=2138, mojo_parent_idx=1690) 
		# antigravity force ,  units of body weight  (nbody x 1) 
		WhitespaceNode(c_node_idx=2169, c_parent_idx=1720, mojo_node_idx=2139, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2170, c_parent_idx=1720, mojo_node_idx=2140, mojo_parent_idx=1690) 
		mjtNum*   body_margin ; 
		WhitespaceNode(c_node_idx=2171, c_parent_idx=1720, mojo_node_idx=2141, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2172, c_parent_idx=1720, mojo_node_idx=2142, mojo_parent_idx=1690) 
		# MAX over all geom margins                (nbody x 1) 
		WhitespaceNode(c_node_idx=2173, c_parent_idx=1720, mojo_node_idx=2143, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2174, c_parent_idx=1720, mojo_node_idx=2144, mojo_parent_idx=1690) 
		mjtNum*   body_user ; 
		WhitespaceNode(c_node_idx=2175, c_parent_idx=1720, mojo_node_idx=2145, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2176, c_parent_idx=1720, mojo_node_idx=2146, mojo_parent_idx=1690) 
		# user data                                (nbody x nuser_body) 
		WhitespaceNode(c_node_idx=2177, c_parent_idx=1720, mojo_node_idx=2147, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2178, c_parent_idx=1720, mojo_node_idx=2148, mojo_parent_idx=1690) 
		int*      body_plugin ; 
		WhitespaceNode(c_node_idx=2179, c_parent_idx=1720, mojo_node_idx=2149, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2180, c_parent_idx=1720, mojo_node_idx=2150, mojo_parent_idx=1690) 
		# plugin instance id ;  -1: not in use       (nbody x 1) 
		WhitespaceNode(c_node_idx=2181, c_parent_idx=1720, mojo_node_idx=2151, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2182, c_parent_idx=1720, mojo_node_idx=2152, mojo_parent_idx=1690) 
		int*      body_contype ; 
		WhitespaceNode(c_node_idx=2183, c_parent_idx=1720, mojo_node_idx=2153, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2184, c_parent_idx=1720, mojo_node_idx=2154, mojo_parent_idx=1690) 
		# OR over all geom contypes                (nbody x 1) 
		WhitespaceNode(c_node_idx=2185, c_parent_idx=1720, mojo_node_idx=2155, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2186, c_parent_idx=1720, mojo_node_idx=2156, mojo_parent_idx=1690) 
		int*      body_conaffinity ; 
		WhitespaceNode(c_node_idx=2187, c_parent_idx=1720, mojo_node_idx=2157, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2188, c_parent_idx=1720, mojo_node_idx=2158, mojo_parent_idx=1690) 
		# OR over all geom conaffinities           (nbody x 1) 
		WhitespaceNode(c_node_idx=2189, c_parent_idx=1720, mojo_node_idx=2159, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2190, c_parent_idx=1720, mojo_node_idx=2160, mojo_parent_idx=1690) 
		int*      body_bvhadr ; 
		WhitespaceNode(c_node_idx=2191, c_parent_idx=1720, mojo_node_idx=2161, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2192, c_parent_idx=1720, mojo_node_idx=2162, mojo_parent_idx=1690) 
		# address of bvh root                      (nbody x 1) 
		WhitespaceNode(c_node_idx=2193, c_parent_idx=1720, mojo_node_idx=2163, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2194, c_parent_idx=1720, mojo_node_idx=2164, mojo_parent_idx=1690) 
		int*      body_bvhnum ; 
		WhitespaceNode(c_node_idx=2195, c_parent_idx=1720, mojo_node_idx=2165, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2196, c_parent_idx=1720, mojo_node_idx=2166, mojo_parent_idx=1690) 
		# number of bounding volumes               (nbody x 1) 
		WhitespaceNode(c_node_idx=2197, c_parent_idx=1720, mojo_node_idx=2167, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2198, c_parent_idx=1720, mojo_node_idx=2168, mojo_parent_idx=1690) 
		# bounding volume hierarchy 
		WhitespaceNode(c_node_idx=2199, c_parent_idx=1720, mojo_node_idx=2169, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2200, c_parent_idx=1720, mojo_node_idx=2170, mojo_parent_idx=1690) 
		int*      bvh_depth ; 
		WhitespaceNode(c_node_idx=2201, c_parent_idx=1720, mojo_node_idx=2171, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2202, c_parent_idx=1720, mojo_node_idx=2172, mojo_parent_idx=1690) 
		# depth in the bounding volume hierarchy   (nbvh x 1) 
		WhitespaceNode(c_node_idx=2203, c_parent_idx=1720, mojo_node_idx=2173, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2204, c_parent_idx=1720, mojo_node_idx=2174, mojo_parent_idx=1690) 
		int*      bvh_child ; 
		WhitespaceNode(c_node_idx=2205, c_parent_idx=1720, mojo_node_idx=2175, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2206, c_parent_idx=1720, mojo_node_idx=2176, mojo_parent_idx=1690) 
		# left and right children in tree          (nbvh x 2) 
		WhitespaceNode(c_node_idx=2207, c_parent_idx=1720, mojo_node_idx=2177, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2208, c_parent_idx=1720, mojo_node_idx=2178, mojo_parent_idx=1690) 
		int*      bvh_nodeid ; 
		WhitespaceNode(c_node_idx=2209, c_parent_idx=1720, mojo_node_idx=2179, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2210, c_parent_idx=1720, mojo_node_idx=2180, mojo_parent_idx=1690) 
		# geom or elem id of node ;  -1: non-leaf    (nbvh x 1) 
		WhitespaceNode(c_node_idx=2211, c_parent_idx=1720, mojo_node_idx=2181, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2212, c_parent_idx=1720, mojo_node_idx=2182, mojo_parent_idx=1690) 
		mjtNum*   bvh_aabb ; 
		WhitespaceNode(c_node_idx=2213, c_parent_idx=1720, mojo_node_idx=2183, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2214, c_parent_idx=1720, mojo_node_idx=2184, mojo_parent_idx=1690) 
		# local bounding box (center ,  size)        (nbvhstatic x 6) 
		WhitespaceNode(c_node_idx=2215, c_parent_idx=1720, mojo_node_idx=2185, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2216, c_parent_idx=1720, mojo_node_idx=2186, mojo_parent_idx=1690) 
		# joints 
		WhitespaceNode(c_node_idx=2217, c_parent_idx=1720, mojo_node_idx=2187, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2218, c_parent_idx=1720, mojo_node_idx=2188, mojo_parent_idx=1690) 
		int*      jnt_type ; 
		WhitespaceNode(c_node_idx=2219, c_parent_idx=1720, mojo_node_idx=2189, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2220, c_parent_idx=1720, mojo_node_idx=2190, mojo_parent_idx=1690) 
		# type of joint (mjtJoint)                 (njnt x 1) 
		WhitespaceNode(c_node_idx=2221, c_parent_idx=1720, mojo_node_idx=2191, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2222, c_parent_idx=1720, mojo_node_idx=2192, mojo_parent_idx=1690) 
		int*      jnt_qposadr ; 
		WhitespaceNode(c_node_idx=2223, c_parent_idx=1720, mojo_node_idx=2193, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2224, c_parent_idx=1720, mojo_node_idx=2194, mojo_parent_idx=1690) 
		# start addr in 'qpos' for joint's data    (njnt x 1) 
		WhitespaceNode(c_node_idx=2225, c_parent_idx=1720, mojo_node_idx=2195, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2226, c_parent_idx=1720, mojo_node_idx=2196, mojo_parent_idx=1690) 
		int*      jnt_dofadr ; 
		WhitespaceNode(c_node_idx=2227, c_parent_idx=1720, mojo_node_idx=2197, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2228, c_parent_idx=1720, mojo_node_idx=2198, mojo_parent_idx=1690) 
		# start addr in 'qvel' for joint's data    (njnt x 1) 
		WhitespaceNode(c_node_idx=2229, c_parent_idx=1720, mojo_node_idx=2199, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2230, c_parent_idx=1720, mojo_node_idx=2200, mojo_parent_idx=1690) 
		int*      jnt_bodyid ; 
		WhitespaceNode(c_node_idx=2231, c_parent_idx=1720, mojo_node_idx=2201, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2232, c_parent_idx=1720, mojo_node_idx=2202, mojo_parent_idx=1690) 
		# id of joint's body                       (njnt x 1) 
		WhitespaceNode(c_node_idx=2233, c_parent_idx=1720, mojo_node_idx=2203, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2234, c_parent_idx=1720, mojo_node_idx=2204, mojo_parent_idx=1690) 
		int*      jnt_group ; 
		WhitespaceNode(c_node_idx=2235, c_parent_idx=1720, mojo_node_idx=2205, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2236, c_parent_idx=1720, mojo_node_idx=2206, mojo_parent_idx=1690) 
		# group for visibility                     (njnt x 1) 
		WhitespaceNode(c_node_idx=2237, c_parent_idx=1720, mojo_node_idx=2207, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2238, c_parent_idx=1720, mojo_node_idx=2208, mojo_parent_idx=1690) 
		mjtByte*  jnt_limited ; 
		WhitespaceNode(c_node_idx=2239, c_parent_idx=1720, mojo_node_idx=2209, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2240, c_parent_idx=1720, mojo_node_idx=2210, mojo_parent_idx=1690) 
		# does joint have limits                   (njnt x 1) 
		WhitespaceNode(c_node_idx=2241, c_parent_idx=1720, mojo_node_idx=2211, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2242, c_parent_idx=1720, mojo_node_idx=2212, mojo_parent_idx=1690) 
		mjtByte*  jnt_actfrclimited ; 
		WhitespaceNode(c_node_idx=2243, c_parent_idx=1720, mojo_node_idx=2213, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=2244, c_parent_idx=1720, mojo_node_idx=2214, mojo_parent_idx=1690) 
		# does joint have actuator force limits    (njnt x 1) 
		WhitespaceNode(c_node_idx=2245, c_parent_idx=1720, mojo_node_idx=2215, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2246, c_parent_idx=1720, mojo_node_idx=2216, mojo_parent_idx=1690) 
		mjtByte*  jnt_actgravcomp ; 
		WhitespaceNode(c_node_idx=2247, c_parent_idx=1720, mojo_node_idx=2217, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=2248, c_parent_idx=1720, mojo_node_idx=2218, mojo_parent_idx=1690) 
		# is gravcomp force applied via actuators  (njnt x 1) 
		WhitespaceNode(c_node_idx=2249, c_parent_idx=1720, mojo_node_idx=2219, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2250, c_parent_idx=1720, mojo_node_idx=2220, mojo_parent_idx=1690) 
		mjtNum*   jnt_solref ; 
		WhitespaceNode(c_node_idx=2251, c_parent_idx=1720, mojo_node_idx=2221, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2252, c_parent_idx=1720, mojo_node_idx=2222, mojo_parent_idx=1690) 
		# constraint solver reference: limit       (njnt x mjNREF) 
		WhitespaceNode(c_node_idx=2253, c_parent_idx=1720, mojo_node_idx=2223, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2254, c_parent_idx=1720, mojo_node_idx=2224, mojo_parent_idx=1690) 
		mjtNum*   jnt_solimp ; 
		WhitespaceNode(c_node_idx=2255, c_parent_idx=1720, mojo_node_idx=2225, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2256, c_parent_idx=1720, mojo_node_idx=2226, mojo_parent_idx=1690) 
		# constraint solver impedance: limit       (njnt x mjNIMP) 
		WhitespaceNode(c_node_idx=2257, c_parent_idx=1720, mojo_node_idx=2227, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2258, c_parent_idx=1720, mojo_node_idx=2228, mojo_parent_idx=1690) 
		mjtNum*   jnt_pos ; 
		WhitespaceNode(c_node_idx=2259, c_parent_idx=1720, mojo_node_idx=2229, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=2260, c_parent_idx=1720, mojo_node_idx=2230, mojo_parent_idx=1690) 
		# local anchor position                    (njnt x 3) 
		WhitespaceNode(c_node_idx=2261, c_parent_idx=1720, mojo_node_idx=2231, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2262, c_parent_idx=1720, mojo_node_idx=2232, mojo_parent_idx=1690) 
		mjtNum*   jnt_axis ; 
		WhitespaceNode(c_node_idx=2263, c_parent_idx=1720, mojo_node_idx=2233, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2264, c_parent_idx=1720, mojo_node_idx=2234, mojo_parent_idx=1690) 
		# local joint axis                         (njnt x 3) 
		WhitespaceNode(c_node_idx=2265, c_parent_idx=1720, mojo_node_idx=2235, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2266, c_parent_idx=1720, mojo_node_idx=2236, mojo_parent_idx=1690) 
		mjtNum*   jnt_stiffness ; 
		WhitespaceNode(c_node_idx=2267, c_parent_idx=1720, mojo_node_idx=2237, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2268, c_parent_idx=1720, mojo_node_idx=2238, mojo_parent_idx=1690) 
		# stiffness coefficient                    (njnt x 1) 
		WhitespaceNode(c_node_idx=2269, c_parent_idx=1720, mojo_node_idx=2239, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2270, c_parent_idx=1720, mojo_node_idx=2240, mojo_parent_idx=1690) 
		mjtNum*   jnt_range ; 
		WhitespaceNode(c_node_idx=2271, c_parent_idx=1720, mojo_node_idx=2241, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2272, c_parent_idx=1720, mojo_node_idx=2242, mojo_parent_idx=1690) 
		# joint limits                             (njnt x 2) 
		WhitespaceNode(c_node_idx=2273, c_parent_idx=1720, mojo_node_idx=2243, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2274, c_parent_idx=1720, mojo_node_idx=2244, mojo_parent_idx=1690) 
		mjtNum*   jnt_actfrcrange ; 
		WhitespaceNode(c_node_idx=2275, c_parent_idx=1720, mojo_node_idx=2245, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=2276, c_parent_idx=1720, mojo_node_idx=2246, mojo_parent_idx=1690) 
		# range of total actuator force            (njnt x 2) 
		WhitespaceNode(c_node_idx=2277, c_parent_idx=1720, mojo_node_idx=2247, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2278, c_parent_idx=1720, mojo_node_idx=2248, mojo_parent_idx=1690) 
		mjtNum*   jnt_margin ; 
		WhitespaceNode(c_node_idx=2279, c_parent_idx=1720, mojo_node_idx=2249, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2280, c_parent_idx=1720, mojo_node_idx=2250, mojo_parent_idx=1690) 
		# min distance for limit detection         (njnt x 1) 
		WhitespaceNode(c_node_idx=2281, c_parent_idx=1720, mojo_node_idx=2251, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2282, c_parent_idx=1720, mojo_node_idx=2252, mojo_parent_idx=1690) 
		mjtNum*   jnt_user ; 
		WhitespaceNode(c_node_idx=2283, c_parent_idx=1720, mojo_node_idx=2253, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2284, c_parent_idx=1720, mojo_node_idx=2254, mojo_parent_idx=1690) 
		# user data                                (njnt x nuser_jnt) 
		WhitespaceNode(c_node_idx=2285, c_parent_idx=1720, mojo_node_idx=2255, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2286, c_parent_idx=1720, mojo_node_idx=2256, mojo_parent_idx=1690) 
		# dofs 
		WhitespaceNode(c_node_idx=2287, c_parent_idx=1720, mojo_node_idx=2257, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2288, c_parent_idx=1720, mojo_node_idx=2258, mojo_parent_idx=1690) 
		int*      dof_bodyid ; 
		WhitespaceNode(c_node_idx=2289, c_parent_idx=1720, mojo_node_idx=2259, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2290, c_parent_idx=1720, mojo_node_idx=2260, mojo_parent_idx=1690) 
		# id of dof's body                         (nv x 1) 
		WhitespaceNode(c_node_idx=2291, c_parent_idx=1720, mojo_node_idx=2261, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2292, c_parent_idx=1720, mojo_node_idx=2262, mojo_parent_idx=1690) 
		int*      dof_jntid ; 
		WhitespaceNode(c_node_idx=2293, c_parent_idx=1720, mojo_node_idx=2263, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2294, c_parent_idx=1720, mojo_node_idx=2264, mojo_parent_idx=1690) 
		# id of dof's joint                        (nv x 1) 
		WhitespaceNode(c_node_idx=2295, c_parent_idx=1720, mojo_node_idx=2265, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2296, c_parent_idx=1720, mojo_node_idx=2266, mojo_parent_idx=1690) 
		int*      dof_parentid ; 
		WhitespaceNode(c_node_idx=2297, c_parent_idx=1720, mojo_node_idx=2267, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2298, c_parent_idx=1720, mojo_node_idx=2268, mojo_parent_idx=1690) 
		# id of dof's parent ;  -1: none             (nv x 1) 
		WhitespaceNode(c_node_idx=2299, c_parent_idx=1720, mojo_node_idx=2269, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2300, c_parent_idx=1720, mojo_node_idx=2270, mojo_parent_idx=1690) 
		int*      dof_treeid ; 
		WhitespaceNode(c_node_idx=2301, c_parent_idx=1720, mojo_node_idx=2271, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2302, c_parent_idx=1720, mojo_node_idx=2272, mojo_parent_idx=1690) 
		# id of dof's kinematic tree               (nv x 1) 
		WhitespaceNode(c_node_idx=2303, c_parent_idx=1720, mojo_node_idx=2273, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2304, c_parent_idx=1720, mojo_node_idx=2274, mojo_parent_idx=1690) 
		int*      dof_Madr ; 
		WhitespaceNode(c_node_idx=2305, c_parent_idx=1720, mojo_node_idx=2275, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2306, c_parent_idx=1720, mojo_node_idx=2276, mojo_parent_idx=1690) 
		# dof address in M-diagonal                (nv x 1) 
		WhitespaceNode(c_node_idx=2307, c_parent_idx=1720, mojo_node_idx=2277, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2308, c_parent_idx=1720, mojo_node_idx=2278, mojo_parent_idx=1690) 
		int*      dof_simplenum ; 
		WhitespaceNode(c_node_idx=2309, c_parent_idx=1720, mojo_node_idx=2279, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2310, c_parent_idx=1720, mojo_node_idx=2280, mojo_parent_idx=1690) 
		# number of consecutive simple dofs        (nv x 1) 
		WhitespaceNode(c_node_idx=2311, c_parent_idx=1720, mojo_node_idx=2281, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2312, c_parent_idx=1720, mojo_node_idx=2282, mojo_parent_idx=1690) 
		mjtNum*   dof_solref ; 
		WhitespaceNode(c_node_idx=2313, c_parent_idx=1720, mojo_node_idx=2283, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2314, c_parent_idx=1720, mojo_node_idx=2284, mojo_parent_idx=1690) 
		# constraint solver reference:frictionloss (nv x mjNREF) 
		WhitespaceNode(c_node_idx=2315, c_parent_idx=1720, mojo_node_idx=2285, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2316, c_parent_idx=1720, mojo_node_idx=2286, mojo_parent_idx=1690) 
		mjtNum*   dof_solimp ; 
		WhitespaceNode(c_node_idx=2317, c_parent_idx=1720, mojo_node_idx=2287, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2318, c_parent_idx=1720, mojo_node_idx=2288, mojo_parent_idx=1690) 
		# constraint solver impedance:frictionloss (nv x mjNIMP) 
		WhitespaceNode(c_node_idx=2319, c_parent_idx=1720, mojo_node_idx=2289, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2320, c_parent_idx=1720, mojo_node_idx=2290, mojo_parent_idx=1690) 
		mjtNum*   dof_frictionloss ; 
		WhitespaceNode(c_node_idx=2321, c_parent_idx=1720, mojo_node_idx=2291, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2322, c_parent_idx=1720, mojo_node_idx=2292, mojo_parent_idx=1690) 
		# dof friction loss                        (nv x 1) 
		WhitespaceNode(c_node_idx=2323, c_parent_idx=1720, mojo_node_idx=2293, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2324, c_parent_idx=1720, mojo_node_idx=2294, mojo_parent_idx=1690) 
		mjtNum*   dof_armature ; 
		WhitespaceNode(c_node_idx=2325, c_parent_idx=1720, mojo_node_idx=2295, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2326, c_parent_idx=1720, mojo_node_idx=2296, mojo_parent_idx=1690) 
		# dof armature inertia/mass                (nv x 1) 
		WhitespaceNode(c_node_idx=2327, c_parent_idx=1720, mojo_node_idx=2297, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2328, c_parent_idx=1720, mojo_node_idx=2298, mojo_parent_idx=1690) 
		mjtNum*   dof_damping ; 
		WhitespaceNode(c_node_idx=2329, c_parent_idx=1720, mojo_node_idx=2299, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2330, c_parent_idx=1720, mojo_node_idx=2300, mojo_parent_idx=1690) 
		# damping coefficient                      (nv x 1) 
		WhitespaceNode(c_node_idx=2331, c_parent_idx=1720, mojo_node_idx=2301, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2332, c_parent_idx=1720, mojo_node_idx=2302, mojo_parent_idx=1690) 
		mjtNum*   dof_invweight0 ; 
		WhitespaceNode(c_node_idx=2333, c_parent_idx=1720, mojo_node_idx=2303, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2334, c_parent_idx=1720, mojo_node_idx=2304, mojo_parent_idx=1690) 
		# diag. inverse inertia in qpos0           (nv x 1) 
		WhitespaceNode(c_node_idx=2335, c_parent_idx=1720, mojo_node_idx=2305, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2336, c_parent_idx=1720, mojo_node_idx=2306, mojo_parent_idx=1690) 
		mjtNum*   dof_M0 ; 
		WhitespaceNode(c_node_idx=2337, c_parent_idx=1720, mojo_node_idx=2307, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=2338, c_parent_idx=1720, mojo_node_idx=2308, mojo_parent_idx=1690) 
		# diag. inertia in qpos0                   (nv x 1) 
		WhitespaceNode(c_node_idx=2339, c_parent_idx=1720, mojo_node_idx=2309, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2340, c_parent_idx=1720, mojo_node_idx=2310, mojo_parent_idx=1690) 
		# geoms 
		WhitespaceNode(c_node_idx=2341, c_parent_idx=1720, mojo_node_idx=2311, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2342, c_parent_idx=1720, mojo_node_idx=2312, mojo_parent_idx=1690) 
		int*      geom_type ; 
		WhitespaceNode(c_node_idx=2343, c_parent_idx=1720, mojo_node_idx=2313, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2344, c_parent_idx=1720, mojo_node_idx=2314, mojo_parent_idx=1690) 
		# geometric type (mjtGeom)                 (ngeom x 1) 
		WhitespaceNode(c_node_idx=2345, c_parent_idx=1720, mojo_node_idx=2315, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2346, c_parent_idx=1720, mojo_node_idx=2316, mojo_parent_idx=1690) 
		int*      geom_contype ; 
		WhitespaceNode(c_node_idx=2347, c_parent_idx=1720, mojo_node_idx=2317, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2348, c_parent_idx=1720, mojo_node_idx=2318, mojo_parent_idx=1690) 
		# geom contact type                        (ngeom x 1) 
		WhitespaceNode(c_node_idx=2349, c_parent_idx=1720, mojo_node_idx=2319, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2350, c_parent_idx=1720, mojo_node_idx=2320, mojo_parent_idx=1690) 
		int*      geom_conaffinity ; 
		WhitespaceNode(c_node_idx=2351, c_parent_idx=1720, mojo_node_idx=2321, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2352, c_parent_idx=1720, mojo_node_idx=2322, mojo_parent_idx=1690) 
		# geom contact affinity                    (ngeom x 1) 
		WhitespaceNode(c_node_idx=2353, c_parent_idx=1720, mojo_node_idx=2323, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2354, c_parent_idx=1720, mojo_node_idx=2324, mojo_parent_idx=1690) 
		int*      geom_condim ; 
		WhitespaceNode(c_node_idx=2355, c_parent_idx=1720, mojo_node_idx=2325, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2356, c_parent_idx=1720, mojo_node_idx=2326, mojo_parent_idx=1690) 
		# contact dimensionality (1 ,  3 ,  4 ,  6)      (ngeom x 1) 
		WhitespaceNode(c_node_idx=2357, c_parent_idx=1720, mojo_node_idx=2327, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2358, c_parent_idx=1720, mojo_node_idx=2328, mojo_parent_idx=1690) 
		int*      geom_bodyid ; 
		WhitespaceNode(c_node_idx=2359, c_parent_idx=1720, mojo_node_idx=2329, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2360, c_parent_idx=1720, mojo_node_idx=2330, mojo_parent_idx=1690) 
		# id of geom's body                        (ngeom x 1) 
		WhitespaceNode(c_node_idx=2361, c_parent_idx=1720, mojo_node_idx=2331, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2362, c_parent_idx=1720, mojo_node_idx=2332, mojo_parent_idx=1690) 
		int*      geom_dataid ; 
		WhitespaceNode(c_node_idx=2363, c_parent_idx=1720, mojo_node_idx=2333, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2364, c_parent_idx=1720, mojo_node_idx=2334, mojo_parent_idx=1690) 
		# id of geom's mesh/hfield ;  -1: none       (ngeom x 1) 
		WhitespaceNode(c_node_idx=2365, c_parent_idx=1720, mojo_node_idx=2335, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2366, c_parent_idx=1720, mojo_node_idx=2336, mojo_parent_idx=1690) 
		int*      geom_matid ; 
		WhitespaceNode(c_node_idx=2367, c_parent_idx=1720, mojo_node_idx=2337, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2368, c_parent_idx=1720, mojo_node_idx=2338, mojo_parent_idx=1690) 
		# material id for rendering ;  -1: none      (ngeom x 1) 
		WhitespaceNode(c_node_idx=2369, c_parent_idx=1720, mojo_node_idx=2339, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2370, c_parent_idx=1720, mojo_node_idx=2340, mojo_parent_idx=1690) 
		int*      geom_group ; 
		WhitespaceNode(c_node_idx=2371, c_parent_idx=1720, mojo_node_idx=2341, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2372, c_parent_idx=1720, mojo_node_idx=2342, mojo_parent_idx=1690) 
		# group for visibility                     (ngeom x 1) 
		WhitespaceNode(c_node_idx=2373, c_parent_idx=1720, mojo_node_idx=2343, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2374, c_parent_idx=1720, mojo_node_idx=2344, mojo_parent_idx=1690) 
		int*      geom_priority ; 
		WhitespaceNode(c_node_idx=2375, c_parent_idx=1720, mojo_node_idx=2345, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2376, c_parent_idx=1720, mojo_node_idx=2346, mojo_parent_idx=1690) 
		# geom contact priority                    (ngeom x 1) 
		WhitespaceNode(c_node_idx=2377, c_parent_idx=1720, mojo_node_idx=2347, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2378, c_parent_idx=1720, mojo_node_idx=2348, mojo_parent_idx=1690) 
		int*      geom_plugin ; 
		WhitespaceNode(c_node_idx=2379, c_parent_idx=1720, mojo_node_idx=2349, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2380, c_parent_idx=1720, mojo_node_idx=2350, mojo_parent_idx=1690) 
		# plugin instance id ;  -1: not in use       (ngeom x 1) 
		WhitespaceNode(c_node_idx=2381, c_parent_idx=1720, mojo_node_idx=2351, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2382, c_parent_idx=1720, mojo_node_idx=2352, mojo_parent_idx=1690) 
		mjtByte*  geom_sameframe ; 
		WhitespaceNode(c_node_idx=2383, c_parent_idx=1720, mojo_node_idx=2353, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2384, c_parent_idx=1720, mojo_node_idx=2354, mojo_parent_idx=1690) 
		# same frame as body (mjtSameframe)        (ngeom x 1) 
		WhitespaceNode(c_node_idx=2385, c_parent_idx=1720, mojo_node_idx=2355, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2386, c_parent_idx=1720, mojo_node_idx=2356, mojo_parent_idx=1690) 
		mjtNum*   geom_solmix ; 
		WhitespaceNode(c_node_idx=2387, c_parent_idx=1720, mojo_node_idx=2357, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2388, c_parent_idx=1720, mojo_node_idx=2358, mojo_parent_idx=1690) 
		# mixing coef for solref/imp in geom pair  (ngeom x 1) 
		WhitespaceNode(c_node_idx=2389, c_parent_idx=1720, mojo_node_idx=2359, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2390, c_parent_idx=1720, mojo_node_idx=2360, mojo_parent_idx=1690) 
		mjtNum*   geom_solref ; 
		WhitespaceNode(c_node_idx=2391, c_parent_idx=1720, mojo_node_idx=2361, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2392, c_parent_idx=1720, mojo_node_idx=2362, mojo_parent_idx=1690) 
		# constraint solver reference: contact     (ngeom x mjNREF) 
		WhitespaceNode(c_node_idx=2393, c_parent_idx=1720, mojo_node_idx=2363, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2394, c_parent_idx=1720, mojo_node_idx=2364, mojo_parent_idx=1690) 
		mjtNum*   geom_solimp ; 
		WhitespaceNode(c_node_idx=2395, c_parent_idx=1720, mojo_node_idx=2365, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2396, c_parent_idx=1720, mojo_node_idx=2366, mojo_parent_idx=1690) 
		# constraint solver impedance: contact     (ngeom x mjNIMP) 
		WhitespaceNode(c_node_idx=2397, c_parent_idx=1720, mojo_node_idx=2367, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2398, c_parent_idx=1720, mojo_node_idx=2368, mojo_parent_idx=1690) 
		mjtNum*   geom_size ; 
		WhitespaceNode(c_node_idx=2399, c_parent_idx=1720, mojo_node_idx=2369, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2400, c_parent_idx=1720, mojo_node_idx=2370, mojo_parent_idx=1690) 
		# geom-specific size parameters            (ngeom x 3) 
		WhitespaceNode(c_node_idx=2401, c_parent_idx=1720, mojo_node_idx=2371, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2402, c_parent_idx=1720, mojo_node_idx=2372, mojo_parent_idx=1690) 
		mjtNum*   geom_aabb ; 
		WhitespaceNode(c_node_idx=2403, c_parent_idx=1720, mojo_node_idx=2373, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2404, c_parent_idx=1720, mojo_node_idx=2374, mojo_parent_idx=1690) 
		# bounding box ,  (center ,  size)             (ngeom x 6) 
		WhitespaceNode(c_node_idx=2405, c_parent_idx=1720, mojo_node_idx=2375, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2406, c_parent_idx=1720, mojo_node_idx=2376, mojo_parent_idx=1690) 
		mjtNum*   geom_rbound ; 
		WhitespaceNode(c_node_idx=2407, c_parent_idx=1720, mojo_node_idx=2377, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2408, c_parent_idx=1720, mojo_node_idx=2378, mojo_parent_idx=1690) 
		# radius of bounding sphere                (ngeom x 1) 
		WhitespaceNode(c_node_idx=2409, c_parent_idx=1720, mojo_node_idx=2379, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2410, c_parent_idx=1720, mojo_node_idx=2380, mojo_parent_idx=1690) 
		mjtNum*   geom_pos ; 
		WhitespaceNode(c_node_idx=2411, c_parent_idx=1720, mojo_node_idx=2381, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2412, c_parent_idx=1720, mojo_node_idx=2382, mojo_parent_idx=1690) 
		# local position offset rel. to body       (ngeom x 3) 
		WhitespaceNode(c_node_idx=2413, c_parent_idx=1720, mojo_node_idx=2383, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2414, c_parent_idx=1720, mojo_node_idx=2384, mojo_parent_idx=1690) 
		mjtNum*   geom_quat ; 
		WhitespaceNode(c_node_idx=2415, c_parent_idx=1720, mojo_node_idx=2385, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2416, c_parent_idx=1720, mojo_node_idx=2386, mojo_parent_idx=1690) 
		# local orientation offset rel. to body    (ngeom x 4) 
		WhitespaceNode(c_node_idx=2417, c_parent_idx=1720, mojo_node_idx=2387, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2418, c_parent_idx=1720, mojo_node_idx=2388, mojo_parent_idx=1690) 
		mjtNum*   geom_friction ; 
		WhitespaceNode(c_node_idx=2419, c_parent_idx=1720, mojo_node_idx=2389, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2420, c_parent_idx=1720, mojo_node_idx=2390, mojo_parent_idx=1690) 
		# friction for (slide ,  spin ,  roll)         (ngeom x 3) 
		WhitespaceNode(c_node_idx=2421, c_parent_idx=1720, mojo_node_idx=2391, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2422, c_parent_idx=1720, mojo_node_idx=2392, mojo_parent_idx=1690) 
		mjtNum*   geom_margin ; 
		WhitespaceNode(c_node_idx=2423, c_parent_idx=1720, mojo_node_idx=2393, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2424, c_parent_idx=1720, mojo_node_idx=2394, mojo_parent_idx=1690) 
		# detect contact if dist<margin            (ngeom x 1) 
		WhitespaceNode(c_node_idx=2425, c_parent_idx=1720, mojo_node_idx=2395, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2426, c_parent_idx=1720, mojo_node_idx=2396, mojo_parent_idx=1690) 
		mjtNum*   geom_gap ; 
		WhitespaceNode(c_node_idx=2427, c_parent_idx=1720, mojo_node_idx=2397, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2428, c_parent_idx=1720, mojo_node_idx=2398, mojo_parent_idx=1690) 
		# include in solver if dist<margin-gap     (ngeom x 1) 
		WhitespaceNode(c_node_idx=2429, c_parent_idx=1720, mojo_node_idx=2399, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2430, c_parent_idx=1720, mojo_node_idx=2400, mojo_parent_idx=1690) 
		mjtNum*   geom_fluid ; 
		WhitespaceNode(c_node_idx=2431, c_parent_idx=1720, mojo_node_idx=2401, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2432, c_parent_idx=1720, mojo_node_idx=2402, mojo_parent_idx=1690) 
		# fluid interaction parameters             (ngeom x mjNFLUID) 
		WhitespaceNode(c_node_idx=2433, c_parent_idx=1720, mojo_node_idx=2403, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2434, c_parent_idx=1720, mojo_node_idx=2404, mojo_parent_idx=1690) 
		mjtNum*   geom_user ; 
		WhitespaceNode(c_node_idx=2435, c_parent_idx=1720, mojo_node_idx=2405, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2436, c_parent_idx=1720, mojo_node_idx=2406, mojo_parent_idx=1690) 
		# user data                                (ngeom x nuser_geom) 
		WhitespaceNode(c_node_idx=2437, c_parent_idx=1720, mojo_node_idx=2407, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2438, c_parent_idx=1720, mojo_node_idx=2408, mojo_parent_idx=1690) 
		float*    geom_rgba ; 
		WhitespaceNode(c_node_idx=2439, c_parent_idx=1720, mojo_node_idx=2409, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2440, c_parent_idx=1720, mojo_node_idx=2410, mojo_parent_idx=1690) 
		# rgba when material is omitted            (ngeom x 4) 
		WhitespaceNode(c_node_idx=2441, c_parent_idx=1720, mojo_node_idx=2411, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2442, c_parent_idx=1720, mojo_node_idx=2412, mojo_parent_idx=1690) 
		# sites 
		WhitespaceNode(c_node_idx=2443, c_parent_idx=1720, mojo_node_idx=2413, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2444, c_parent_idx=1720, mojo_node_idx=2414, mojo_parent_idx=1690) 
		int*      site_type ; 
		WhitespaceNode(c_node_idx=2445, c_parent_idx=1720, mojo_node_idx=2415, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2446, c_parent_idx=1720, mojo_node_idx=2416, mojo_parent_idx=1690) 
		# geom type for rendering (mjtGeom)        (nsite x 1) 
		WhitespaceNode(c_node_idx=2447, c_parent_idx=1720, mojo_node_idx=2417, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2448, c_parent_idx=1720, mojo_node_idx=2418, mojo_parent_idx=1690) 
		int*      site_bodyid ; 
		WhitespaceNode(c_node_idx=2449, c_parent_idx=1720, mojo_node_idx=2419, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2450, c_parent_idx=1720, mojo_node_idx=2420, mojo_parent_idx=1690) 
		# id of site's body                        (nsite x 1) 
		WhitespaceNode(c_node_idx=2451, c_parent_idx=1720, mojo_node_idx=2421, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2452, c_parent_idx=1720, mojo_node_idx=2422, mojo_parent_idx=1690) 
		int*      site_matid ; 
		WhitespaceNode(c_node_idx=2453, c_parent_idx=1720, mojo_node_idx=2423, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2454, c_parent_idx=1720, mojo_node_idx=2424, mojo_parent_idx=1690) 
		# material id for rendering ;  -1: none      (nsite x 1) 
		WhitespaceNode(c_node_idx=2455, c_parent_idx=1720, mojo_node_idx=2425, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2456, c_parent_idx=1720, mojo_node_idx=2426, mojo_parent_idx=1690) 
		int*      site_group ; 
		WhitespaceNode(c_node_idx=2457, c_parent_idx=1720, mojo_node_idx=2427, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2458, c_parent_idx=1720, mojo_node_idx=2428, mojo_parent_idx=1690) 
		# group for visibility                     (nsite x 1) 
		WhitespaceNode(c_node_idx=2459, c_parent_idx=1720, mojo_node_idx=2429, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2460, c_parent_idx=1720, mojo_node_idx=2430, mojo_parent_idx=1690) 
		mjtByte*  site_sameframe ; 
		WhitespaceNode(c_node_idx=2461, c_parent_idx=1720, mojo_node_idx=2431, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2462, c_parent_idx=1720, mojo_node_idx=2432, mojo_parent_idx=1690) 
		# same frame as body (mjtSameframe)        (nsite x 1) 
		WhitespaceNode(c_node_idx=2463, c_parent_idx=1720, mojo_node_idx=2433, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2464, c_parent_idx=1720, mojo_node_idx=2434, mojo_parent_idx=1690) 
		mjtNum*   site_size ; 
		WhitespaceNode(c_node_idx=2465, c_parent_idx=1720, mojo_node_idx=2435, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2466, c_parent_idx=1720, mojo_node_idx=2436, mojo_parent_idx=1690) 
		# geom size for rendering                  (nsite x 3) 
		WhitespaceNode(c_node_idx=2467, c_parent_idx=1720, mojo_node_idx=2437, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2468, c_parent_idx=1720, mojo_node_idx=2438, mojo_parent_idx=1690) 
		mjtNum*   site_pos ; 
		WhitespaceNode(c_node_idx=2469, c_parent_idx=1720, mojo_node_idx=2439, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2470, c_parent_idx=1720, mojo_node_idx=2440, mojo_parent_idx=1690) 
		# local position offset rel. to body       (nsite x 3) 
		WhitespaceNode(c_node_idx=2471, c_parent_idx=1720, mojo_node_idx=2441, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2472, c_parent_idx=1720, mojo_node_idx=2442, mojo_parent_idx=1690) 
		mjtNum*   site_quat ; 
		WhitespaceNode(c_node_idx=2473, c_parent_idx=1720, mojo_node_idx=2443, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2474, c_parent_idx=1720, mojo_node_idx=2444, mojo_parent_idx=1690) 
		# local orientation offset rel. to body    (nsite x 4) 
		WhitespaceNode(c_node_idx=2475, c_parent_idx=1720, mojo_node_idx=2445, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2476, c_parent_idx=1720, mojo_node_idx=2446, mojo_parent_idx=1690) 
		mjtNum*   site_user ; 
		WhitespaceNode(c_node_idx=2477, c_parent_idx=1720, mojo_node_idx=2447, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2478, c_parent_idx=1720, mojo_node_idx=2448, mojo_parent_idx=1690) 
		# user data                                (nsite x nuser_site) 
		WhitespaceNode(c_node_idx=2479, c_parent_idx=1720, mojo_node_idx=2449, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2480, c_parent_idx=1720, mojo_node_idx=2450, mojo_parent_idx=1690) 
		float*    site_rgba ; 
		WhitespaceNode(c_node_idx=2481, c_parent_idx=1720, mojo_node_idx=2451, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2482, c_parent_idx=1720, mojo_node_idx=2452, mojo_parent_idx=1690) 
		# rgba when material is omitted            (nsite x 4) 
		WhitespaceNode(c_node_idx=2483, c_parent_idx=1720, mojo_node_idx=2453, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2484, c_parent_idx=1720, mojo_node_idx=2454, mojo_parent_idx=1690) 
		# cameras 
		WhitespaceNode(c_node_idx=2485, c_parent_idx=1720, mojo_node_idx=2455, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2486, c_parent_idx=1720, mojo_node_idx=2456, mojo_parent_idx=1690) 
		int*      cam_mode ; 
		WhitespaceNode(c_node_idx=2487, c_parent_idx=1720, mojo_node_idx=2457, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2488, c_parent_idx=1720, mojo_node_idx=2458, mojo_parent_idx=1690) 
		# camera tracking mode (mjtCamLight)       (ncam x 1) 
		WhitespaceNode(c_node_idx=2489, c_parent_idx=1720, mojo_node_idx=2459, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2490, c_parent_idx=1720, mojo_node_idx=2460, mojo_parent_idx=1690) 
		int*      cam_bodyid ; 
		WhitespaceNode(c_node_idx=2491, c_parent_idx=1720, mojo_node_idx=2461, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2492, c_parent_idx=1720, mojo_node_idx=2462, mojo_parent_idx=1690) 
		# id of camera's body                      (ncam x 1) 
		WhitespaceNode(c_node_idx=2493, c_parent_idx=1720, mojo_node_idx=2463, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2494, c_parent_idx=1720, mojo_node_idx=2464, mojo_parent_idx=1690) 
		int*      cam_targetbodyid ; 
		WhitespaceNode(c_node_idx=2495, c_parent_idx=1720, mojo_node_idx=2465, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2496, c_parent_idx=1720, mojo_node_idx=2466, mojo_parent_idx=1690) 
		# id of targeted body ;  -1: none            (ncam x 1) 
		WhitespaceNode(c_node_idx=2497, c_parent_idx=1720, mojo_node_idx=2467, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2498, c_parent_idx=1720, mojo_node_idx=2468, mojo_parent_idx=1690) 
		mjtNum*   cam_pos ; 
		WhitespaceNode(c_node_idx=2499, c_parent_idx=1720, mojo_node_idx=2469, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=2500, c_parent_idx=1720, mojo_node_idx=2470, mojo_parent_idx=1690) 
		# position rel. to body frame              (ncam x 3) 
		WhitespaceNode(c_node_idx=2501, c_parent_idx=1720, mojo_node_idx=2471, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2502, c_parent_idx=1720, mojo_node_idx=2472, mojo_parent_idx=1690) 
		mjtNum*   cam_quat ; 
		WhitespaceNode(c_node_idx=2503, c_parent_idx=1720, mojo_node_idx=2473, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2504, c_parent_idx=1720, mojo_node_idx=2474, mojo_parent_idx=1690) 
		# orientation rel. to body frame           (ncam x 4) 
		WhitespaceNode(c_node_idx=2505, c_parent_idx=1720, mojo_node_idx=2475, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2506, c_parent_idx=1720, mojo_node_idx=2476, mojo_parent_idx=1690) 
		mjtNum*   cam_poscom0 ; 
		WhitespaceNode(c_node_idx=2507, c_parent_idx=1720, mojo_node_idx=2477, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2508, c_parent_idx=1720, mojo_node_idx=2478, mojo_parent_idx=1690) 
		# global position rel. to sub-com in qpos0 (ncam x 3) 
		WhitespaceNode(c_node_idx=2509, c_parent_idx=1720, mojo_node_idx=2479, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2510, c_parent_idx=1720, mojo_node_idx=2480, mojo_parent_idx=1690) 
		mjtNum*   cam_pos0 ; 
		WhitespaceNode(c_node_idx=2511, c_parent_idx=1720, mojo_node_idx=2481, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2512, c_parent_idx=1720, mojo_node_idx=2482, mojo_parent_idx=1690) 
		# global position rel. to body in qpos0    (ncam x 3) 
		WhitespaceNode(c_node_idx=2513, c_parent_idx=1720, mojo_node_idx=2483, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2514, c_parent_idx=1720, mojo_node_idx=2484, mojo_parent_idx=1690) 
		mjtNum*   cam_mat0 ; 
		WhitespaceNode(c_node_idx=2515, c_parent_idx=1720, mojo_node_idx=2485, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2516, c_parent_idx=1720, mojo_node_idx=2486, mojo_parent_idx=1690) 
		# global orientation in qpos0              (ncam x 9) 
		WhitespaceNode(c_node_idx=2517, c_parent_idx=1720, mojo_node_idx=2487, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2518, c_parent_idx=1720, mojo_node_idx=2488, mojo_parent_idx=1690) 
		int*      cam_orthographic ; 
		WhitespaceNode(c_node_idx=2519, c_parent_idx=1720, mojo_node_idx=2489, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2520, c_parent_idx=1720, mojo_node_idx=2490, mojo_parent_idx=1690) 
		# orthographic camera ;  0: no ,  1: yes       (ncam x 1) 
		WhitespaceNode(c_node_idx=2521, c_parent_idx=1720, mojo_node_idx=2491, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2522, c_parent_idx=1720, mojo_node_idx=2492, mojo_parent_idx=1690) 
		mjtNum*   cam_fovy ; 
		WhitespaceNode(c_node_idx=2523, c_parent_idx=1720, mojo_node_idx=2493, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2524, c_parent_idx=1720, mojo_node_idx=2494, mojo_parent_idx=1690) 
		# y field-of-view (ortho ? len : deg)      (ncam x 1) 
		WhitespaceNode(c_node_idx=2525, c_parent_idx=1720, mojo_node_idx=2495, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2526, c_parent_idx=1720, mojo_node_idx=2496, mojo_parent_idx=1690) 
		mjtNum*   cam_ipd ; 
		WhitespaceNode(c_node_idx=2527, c_parent_idx=1720, mojo_node_idx=2497, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=2528, c_parent_idx=1720, mojo_node_idx=2498, mojo_parent_idx=1690) 
		# inter-pupilary distance                  (ncam x 1) 
		WhitespaceNode(c_node_idx=2529, c_parent_idx=1720, mojo_node_idx=2499, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2530, c_parent_idx=1720, mojo_node_idx=2500, mojo_parent_idx=1690) 
		int*      cam_resolution ; 
		WhitespaceNode(c_node_idx=2531, c_parent_idx=1720, mojo_node_idx=2501, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2532, c_parent_idx=1720, mojo_node_idx=2502, mojo_parent_idx=1690) 
		# resolution: pixels [width ,  height]       (ncam x 2) 
		WhitespaceNode(c_node_idx=2533, c_parent_idx=1720, mojo_node_idx=2503, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2534, c_parent_idx=1720, mojo_node_idx=2504, mojo_parent_idx=1690) 
		float*    cam_sensorsize ; 
		WhitespaceNode(c_node_idx=2535, c_parent_idx=1720, mojo_node_idx=2505, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2536, c_parent_idx=1720, mojo_node_idx=2506, mojo_parent_idx=1690) 
		# sensor size: length [width ,  height]      (ncam x 2) 
		WhitespaceNode(c_node_idx=2537, c_parent_idx=1720, mojo_node_idx=2507, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2538, c_parent_idx=1720, mojo_node_idx=2508, mojo_parent_idx=1690) 
		float*    cam_intrinsic ; 
		WhitespaceNode(c_node_idx=2539, c_parent_idx=1720, mojo_node_idx=2509, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2540, c_parent_idx=1720, mojo_node_idx=2510, mojo_parent_idx=1690) 
		# [focal length ;  principal point]          (ncam x 4) 
		WhitespaceNode(c_node_idx=2541, c_parent_idx=1720, mojo_node_idx=2511, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2542, c_parent_idx=1720, mojo_node_idx=2512, mojo_parent_idx=1690) 
		mjtNum*   cam_user ; 
		WhitespaceNode(c_node_idx=2543, c_parent_idx=1720, mojo_node_idx=2513, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2544, c_parent_idx=1720, mojo_node_idx=2514, mojo_parent_idx=1690) 
		# user data                                (ncam x nuser_cam) 
		WhitespaceNode(c_node_idx=2545, c_parent_idx=1720, mojo_node_idx=2515, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2546, c_parent_idx=1720, mojo_node_idx=2516, mojo_parent_idx=1690) 
		# lights 
		WhitespaceNode(c_node_idx=2547, c_parent_idx=1720, mojo_node_idx=2517, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2548, c_parent_idx=1720, mojo_node_idx=2518, mojo_parent_idx=1690) 
		int*      light_mode ; 
		WhitespaceNode(c_node_idx=2549, c_parent_idx=1720, mojo_node_idx=2519, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2550, c_parent_idx=1720, mojo_node_idx=2520, mojo_parent_idx=1690) 
		# light tracking mode (mjtCamLight)        (nlight x 1) 
		WhitespaceNode(c_node_idx=2551, c_parent_idx=1720, mojo_node_idx=2521, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2552, c_parent_idx=1720, mojo_node_idx=2522, mojo_parent_idx=1690) 
		int*      light_bodyid ; 
		WhitespaceNode(c_node_idx=2553, c_parent_idx=1720, mojo_node_idx=2523, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2554, c_parent_idx=1720, mojo_node_idx=2524, mojo_parent_idx=1690) 
		# id of light's body                       (nlight x 1) 
		WhitespaceNode(c_node_idx=2555, c_parent_idx=1720, mojo_node_idx=2525, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2556, c_parent_idx=1720, mojo_node_idx=2526, mojo_parent_idx=1690) 
		int*      light_targetbodyid ; 
		WhitespaceNode(c_node_idx=2557, c_parent_idx=1720, mojo_node_idx=2527, mojo_parent_idx=1690) 
		   
		SingleLineCommentNode(c_node_idx=2558, c_parent_idx=1720, mojo_node_idx=2528, mojo_parent_idx=1690) 
		# id of targeted body ;  -1: none            (nlight x 1) 
		WhitespaceNode(c_node_idx=2559, c_parent_idx=1720, mojo_node_idx=2529, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2560, c_parent_idx=1720, mojo_node_idx=2530, mojo_parent_idx=1690) 
		mjtByte*  light_directional ; 
		WhitespaceNode(c_node_idx=2561, c_parent_idx=1720, mojo_node_idx=2531, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=2562, c_parent_idx=1720, mojo_node_idx=2532, mojo_parent_idx=1690) 
		# directional light                        (nlight x 1) 
		WhitespaceNode(c_node_idx=2563, c_parent_idx=1720, mojo_node_idx=2533, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2564, c_parent_idx=1720, mojo_node_idx=2534, mojo_parent_idx=1690) 
		mjtByte*  light_castshadow ; 
		WhitespaceNode(c_node_idx=2565, c_parent_idx=1720, mojo_node_idx=2535, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2566, c_parent_idx=1720, mojo_node_idx=2536, mojo_parent_idx=1690) 
		# does light cast shadows                  (nlight x 1) 
		WhitespaceNode(c_node_idx=2567, c_parent_idx=1720, mojo_node_idx=2537, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2568, c_parent_idx=1720, mojo_node_idx=2538, mojo_parent_idx=1690) 
		float*    light_bulbradius ; 
		WhitespaceNode(c_node_idx=2569, c_parent_idx=1720, mojo_node_idx=2539, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2570, c_parent_idx=1720, mojo_node_idx=2540, mojo_parent_idx=1690) 
		# light radius for soft shadows            (nlight x 1) 
		WhitespaceNode(c_node_idx=2571, c_parent_idx=1720, mojo_node_idx=2541, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2572, c_parent_idx=1720, mojo_node_idx=2542, mojo_parent_idx=1690) 
		mjtByte*  light_active ; 
		WhitespaceNode(c_node_idx=2573, c_parent_idx=1720, mojo_node_idx=2543, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2574, c_parent_idx=1720, mojo_node_idx=2544, mojo_parent_idx=1690) 
		# is light on                              (nlight x 1) 
		WhitespaceNode(c_node_idx=2575, c_parent_idx=1720, mojo_node_idx=2545, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2576, c_parent_idx=1720, mojo_node_idx=2546, mojo_parent_idx=1690) 
		mjtNum*   light_pos ; 
		WhitespaceNode(c_node_idx=2577, c_parent_idx=1720, mojo_node_idx=2547, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2578, c_parent_idx=1720, mojo_node_idx=2548, mojo_parent_idx=1690) 
		# position rel. to body frame              (nlight x 3) 
		WhitespaceNode(c_node_idx=2579, c_parent_idx=1720, mojo_node_idx=2549, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2580, c_parent_idx=1720, mojo_node_idx=2550, mojo_parent_idx=1690) 
		mjtNum*   light_dir ; 
		WhitespaceNode(c_node_idx=2581, c_parent_idx=1720, mojo_node_idx=2551, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2582, c_parent_idx=1720, mojo_node_idx=2552, mojo_parent_idx=1690) 
		# direction rel. to body frame             (nlight x 3) 
		WhitespaceNode(c_node_idx=2583, c_parent_idx=1720, mojo_node_idx=2553, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2584, c_parent_idx=1720, mojo_node_idx=2554, mojo_parent_idx=1690) 
		mjtNum*   light_poscom0 ; 
		WhitespaceNode(c_node_idx=2585, c_parent_idx=1720, mojo_node_idx=2555, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2586, c_parent_idx=1720, mojo_node_idx=2556, mojo_parent_idx=1690) 
		# global position rel. to sub-com in qpos0 (nlight x 3) 
		WhitespaceNode(c_node_idx=2587, c_parent_idx=1720, mojo_node_idx=2557, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2588, c_parent_idx=1720, mojo_node_idx=2558, mojo_parent_idx=1690) 
		mjtNum*   light_pos0 ; 
		WhitespaceNode(c_node_idx=2589, c_parent_idx=1720, mojo_node_idx=2559, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2590, c_parent_idx=1720, mojo_node_idx=2560, mojo_parent_idx=1690) 
		# global position rel. to body in qpos0    (nlight x 3) 
		WhitespaceNode(c_node_idx=2591, c_parent_idx=1720, mojo_node_idx=2561, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2592, c_parent_idx=1720, mojo_node_idx=2562, mojo_parent_idx=1690) 
		mjtNum*   light_dir0 ; 
		WhitespaceNode(c_node_idx=2593, c_parent_idx=1720, mojo_node_idx=2563, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2594, c_parent_idx=1720, mojo_node_idx=2564, mojo_parent_idx=1690) 
		# global direction in qpos0                (nlight x 3) 
		WhitespaceNode(c_node_idx=2595, c_parent_idx=1720, mojo_node_idx=2565, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2596, c_parent_idx=1720, mojo_node_idx=2566, mojo_parent_idx=1690) 
		float*    light_attenuation ; 
		WhitespaceNode(c_node_idx=2597, c_parent_idx=1720, mojo_node_idx=2567, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=2598, c_parent_idx=1720, mojo_node_idx=2568, mojo_parent_idx=1690) 
		# OpenGL attenuation (quadratic model)     (nlight x 3) 
		WhitespaceNode(c_node_idx=2599, c_parent_idx=1720, mojo_node_idx=2569, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2600, c_parent_idx=1720, mojo_node_idx=2570, mojo_parent_idx=1690) 
		float*    light_cutoff ; 
		WhitespaceNode(c_node_idx=2601, c_parent_idx=1720, mojo_node_idx=2571, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2602, c_parent_idx=1720, mojo_node_idx=2572, mojo_parent_idx=1690) 
		# OpenGL cutoff                            (nlight x 1) 
		WhitespaceNode(c_node_idx=2603, c_parent_idx=1720, mojo_node_idx=2573, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2604, c_parent_idx=1720, mojo_node_idx=2574, mojo_parent_idx=1690) 
		float*    light_exponent ; 
		WhitespaceNode(c_node_idx=2605, c_parent_idx=1720, mojo_node_idx=2575, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2606, c_parent_idx=1720, mojo_node_idx=2576, mojo_parent_idx=1690) 
		# OpenGL exponent                          (nlight x 1) 
		WhitespaceNode(c_node_idx=2607, c_parent_idx=1720, mojo_node_idx=2577, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2608, c_parent_idx=1720, mojo_node_idx=2578, mojo_parent_idx=1690) 
		float*    light_ambient ; 
		WhitespaceNode(c_node_idx=2609, c_parent_idx=1720, mojo_node_idx=2579, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2610, c_parent_idx=1720, mojo_node_idx=2580, mojo_parent_idx=1690) 
		# ambient rgb (alpha=1)                    (nlight x 3) 
		WhitespaceNode(c_node_idx=2611, c_parent_idx=1720, mojo_node_idx=2581, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2612, c_parent_idx=1720, mojo_node_idx=2582, mojo_parent_idx=1690) 
		float*    light_diffuse ; 
		WhitespaceNode(c_node_idx=2613, c_parent_idx=1720, mojo_node_idx=2583, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2614, c_parent_idx=1720, mojo_node_idx=2584, mojo_parent_idx=1690) 
		# diffuse rgb (alpha=1)                    (nlight x 3) 
		WhitespaceNode(c_node_idx=2615, c_parent_idx=1720, mojo_node_idx=2585, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2616, c_parent_idx=1720, mojo_node_idx=2586, mojo_parent_idx=1690) 
		float*    light_specular ; 
		WhitespaceNode(c_node_idx=2617, c_parent_idx=1720, mojo_node_idx=2587, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2618, c_parent_idx=1720, mojo_node_idx=2588, mojo_parent_idx=1690) 
		# specular rgb (alpha=1)                   (nlight x 3) 
		WhitespaceNode(c_node_idx=2619, c_parent_idx=1720, mojo_node_idx=2589, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2620, c_parent_idx=1720, mojo_node_idx=2590, mojo_parent_idx=1690) 
		# flexes: contact properties 
		WhitespaceNode(c_node_idx=2621, c_parent_idx=1720, mojo_node_idx=2591, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2622, c_parent_idx=1720, mojo_node_idx=2592, mojo_parent_idx=1690) 
		int*      flex_contype ; 
		WhitespaceNode(c_node_idx=2623, c_parent_idx=1720, mojo_node_idx=2593, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2624, c_parent_idx=1720, mojo_node_idx=2594, mojo_parent_idx=1690) 
		# flex contact type                        (nflex x 1) 
		WhitespaceNode(c_node_idx=2625, c_parent_idx=1720, mojo_node_idx=2595, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2626, c_parent_idx=1720, mojo_node_idx=2596, mojo_parent_idx=1690) 
		int*      flex_conaffinity ; 
		WhitespaceNode(c_node_idx=2627, c_parent_idx=1720, mojo_node_idx=2597, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2628, c_parent_idx=1720, mojo_node_idx=2598, mojo_parent_idx=1690) 
		# flex contact affinity                    (nflex x 1) 
		WhitespaceNode(c_node_idx=2629, c_parent_idx=1720, mojo_node_idx=2599, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2630, c_parent_idx=1720, mojo_node_idx=2600, mojo_parent_idx=1690) 
		int*      flex_condim ; 
		WhitespaceNode(c_node_idx=2631, c_parent_idx=1720, mojo_node_idx=2601, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2632, c_parent_idx=1720, mojo_node_idx=2602, mojo_parent_idx=1690) 
		# contact dimensionality (1 ,  3 ,  4 ,  6)      (nflex x 1) 
		WhitespaceNode(c_node_idx=2633, c_parent_idx=1720, mojo_node_idx=2603, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2634, c_parent_idx=1720, mojo_node_idx=2604, mojo_parent_idx=1690) 
		int*      flex_priority ; 
		WhitespaceNode(c_node_idx=2635, c_parent_idx=1720, mojo_node_idx=2605, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2636, c_parent_idx=1720, mojo_node_idx=2606, mojo_parent_idx=1690) 
		# flex contact priority                    (nflex x 1) 
		WhitespaceNode(c_node_idx=2637, c_parent_idx=1720, mojo_node_idx=2607, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2638, c_parent_idx=1720, mojo_node_idx=2608, mojo_parent_idx=1690) 
		mjtNum*   flex_solmix ; 
		WhitespaceNode(c_node_idx=2639, c_parent_idx=1720, mojo_node_idx=2609, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2640, c_parent_idx=1720, mojo_node_idx=2610, mojo_parent_idx=1690) 
		# mix coef for solref/imp in contact pair  (nflex x 1) 
		WhitespaceNode(c_node_idx=2641, c_parent_idx=1720, mojo_node_idx=2611, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2642, c_parent_idx=1720, mojo_node_idx=2612, mojo_parent_idx=1690) 
		mjtNum*   flex_solref ; 
		WhitespaceNode(c_node_idx=2643, c_parent_idx=1720, mojo_node_idx=2613, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2644, c_parent_idx=1720, mojo_node_idx=2614, mojo_parent_idx=1690) 
		# constraint solver reference: contact     (nflex x mjNREF) 
		WhitespaceNode(c_node_idx=2645, c_parent_idx=1720, mojo_node_idx=2615, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2646, c_parent_idx=1720, mojo_node_idx=2616, mojo_parent_idx=1690) 
		mjtNum*   flex_solimp ; 
		WhitespaceNode(c_node_idx=2647, c_parent_idx=1720, mojo_node_idx=2617, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2648, c_parent_idx=1720, mojo_node_idx=2618, mojo_parent_idx=1690) 
		# constraint solver impedance: contact     (nflex x mjNIMP) 
		WhitespaceNode(c_node_idx=2649, c_parent_idx=1720, mojo_node_idx=2619, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2650, c_parent_idx=1720, mojo_node_idx=2620, mojo_parent_idx=1690) 
		mjtNum*   flex_friction ; 
		WhitespaceNode(c_node_idx=2651, c_parent_idx=1720, mojo_node_idx=2621, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2652, c_parent_idx=1720, mojo_node_idx=2622, mojo_parent_idx=1690) 
		# friction for (slide ,  spin ,  roll)         (nflex x 3) 
		WhitespaceNode(c_node_idx=2653, c_parent_idx=1720, mojo_node_idx=2623, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2654, c_parent_idx=1720, mojo_node_idx=2624, mojo_parent_idx=1690) 
		mjtNum*   flex_margin ; 
		WhitespaceNode(c_node_idx=2655, c_parent_idx=1720, mojo_node_idx=2625, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2656, c_parent_idx=1720, mojo_node_idx=2626, mojo_parent_idx=1690) 
		# detect contact if dist<margin            (nflex x 1) 
		WhitespaceNode(c_node_idx=2657, c_parent_idx=1720, mojo_node_idx=2627, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2658, c_parent_idx=1720, mojo_node_idx=2628, mojo_parent_idx=1690) 
		mjtNum*   flex_gap ; 
		WhitespaceNode(c_node_idx=2659, c_parent_idx=1720, mojo_node_idx=2629, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2660, c_parent_idx=1720, mojo_node_idx=2630, mojo_parent_idx=1690) 
		# include in solver if dist<margin-gap     (nflex x 1) 
		WhitespaceNode(c_node_idx=2661, c_parent_idx=1720, mojo_node_idx=2631, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2662, c_parent_idx=1720, mojo_node_idx=2632, mojo_parent_idx=1690) 
		mjtByte*  flex_internal ; 
		WhitespaceNode(c_node_idx=2663, c_parent_idx=1720, mojo_node_idx=2633, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2664, c_parent_idx=1720, mojo_node_idx=2634, mojo_parent_idx=1690) 
		# internal flex collision enabled          (nflex x 1) 
		WhitespaceNode(c_node_idx=2665, c_parent_idx=1720, mojo_node_idx=2635, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2666, c_parent_idx=1720, mojo_node_idx=2636, mojo_parent_idx=1690) 
		int*      flex_selfcollide ; 
		WhitespaceNode(c_node_idx=2667, c_parent_idx=1720, mojo_node_idx=2637, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2668, c_parent_idx=1720, mojo_node_idx=2638, mojo_parent_idx=1690) 
		# self collision mode (mjtFlexSelf)        (nflex x 1) 
		WhitespaceNode(c_node_idx=2669, c_parent_idx=1720, mojo_node_idx=2639, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2670, c_parent_idx=1720, mojo_node_idx=2640, mojo_parent_idx=1690) 
		int*      flex_activelayers ; 
		WhitespaceNode(c_node_idx=2671, c_parent_idx=1720, mojo_node_idx=2641, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=2672, c_parent_idx=1720, mojo_node_idx=2642, mojo_parent_idx=1690) 
		# number of active element layers ,  3D only (nflex x 1) 
		WhitespaceNode(c_node_idx=2673, c_parent_idx=1720, mojo_node_idx=2643, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2674, c_parent_idx=1720, mojo_node_idx=2644, mojo_parent_idx=1690) 
		# flexes: other properties 
		WhitespaceNode(c_node_idx=2675, c_parent_idx=1720, mojo_node_idx=2645, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2676, c_parent_idx=1720, mojo_node_idx=2646, mojo_parent_idx=1690) 
		int*      flex_dim ; 
		WhitespaceNode(c_node_idx=2677, c_parent_idx=1720, mojo_node_idx=2647, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2678, c_parent_idx=1720, mojo_node_idx=2648, mojo_parent_idx=1690) 
		# 1: lines ,  2: triangles ,  3: tetrahedra    (nflex x 1) 
		WhitespaceNode(c_node_idx=2679, c_parent_idx=1720, mojo_node_idx=2649, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2680, c_parent_idx=1720, mojo_node_idx=2650, mojo_parent_idx=1690) 
		int*      flex_matid ; 
		WhitespaceNode(c_node_idx=2681, c_parent_idx=1720, mojo_node_idx=2651, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2682, c_parent_idx=1720, mojo_node_idx=2652, mojo_parent_idx=1690) 
		# material id for rendering                (nflex x 1) 
		WhitespaceNode(c_node_idx=2683, c_parent_idx=1720, mojo_node_idx=2653, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2684, c_parent_idx=1720, mojo_node_idx=2654, mojo_parent_idx=1690) 
		int*      flex_group ; 
		WhitespaceNode(c_node_idx=2685, c_parent_idx=1720, mojo_node_idx=2655, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2686, c_parent_idx=1720, mojo_node_idx=2656, mojo_parent_idx=1690) 
		# group for visibility                     (nflex x 1) 
		WhitespaceNode(c_node_idx=2687, c_parent_idx=1720, mojo_node_idx=2657, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2688, c_parent_idx=1720, mojo_node_idx=2658, mojo_parent_idx=1690) 
		int*      flex_vertadr ; 
		WhitespaceNode(c_node_idx=2689, c_parent_idx=1720, mojo_node_idx=2659, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2690, c_parent_idx=1720, mojo_node_idx=2660, mojo_parent_idx=1690) 
		# first vertex address                     (nflex x 1) 
		WhitespaceNode(c_node_idx=2691, c_parent_idx=1720, mojo_node_idx=2661, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2692, c_parent_idx=1720, mojo_node_idx=2662, mojo_parent_idx=1690) 
		int*      flex_vertnum ; 
		WhitespaceNode(c_node_idx=2693, c_parent_idx=1720, mojo_node_idx=2663, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2694, c_parent_idx=1720, mojo_node_idx=2664, mojo_parent_idx=1690) 
		# number of vertices                       (nflex x 1) 
		WhitespaceNode(c_node_idx=2695, c_parent_idx=1720, mojo_node_idx=2665, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2696, c_parent_idx=1720, mojo_node_idx=2666, mojo_parent_idx=1690) 
		int*      flex_edgeadr ; 
		WhitespaceNode(c_node_idx=2697, c_parent_idx=1720, mojo_node_idx=2667, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2698, c_parent_idx=1720, mojo_node_idx=2668, mojo_parent_idx=1690) 
		# first edge address                       (nflex x 1) 
		WhitespaceNode(c_node_idx=2699, c_parent_idx=1720, mojo_node_idx=2669, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2700, c_parent_idx=1720, mojo_node_idx=2670, mojo_parent_idx=1690) 
		int*      flex_edgenum ; 
		WhitespaceNode(c_node_idx=2701, c_parent_idx=1720, mojo_node_idx=2671, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2702, c_parent_idx=1720, mojo_node_idx=2672, mojo_parent_idx=1690) 
		# number of edges                          (nflex x 1) 
		WhitespaceNode(c_node_idx=2703, c_parent_idx=1720, mojo_node_idx=2673, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2704, c_parent_idx=1720, mojo_node_idx=2674, mojo_parent_idx=1690) 
		int*      flex_elemadr ; 
		WhitespaceNode(c_node_idx=2705, c_parent_idx=1720, mojo_node_idx=2675, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2706, c_parent_idx=1720, mojo_node_idx=2676, mojo_parent_idx=1690) 
		# first element address                    (nflex x 1) 
		WhitespaceNode(c_node_idx=2707, c_parent_idx=1720, mojo_node_idx=2677, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2708, c_parent_idx=1720, mojo_node_idx=2678, mojo_parent_idx=1690) 
		int*      flex_elemnum ; 
		WhitespaceNode(c_node_idx=2709, c_parent_idx=1720, mojo_node_idx=2679, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2710, c_parent_idx=1720, mojo_node_idx=2680, mojo_parent_idx=1690) 
		# number of elements                       (nflex x 1) 
		WhitespaceNode(c_node_idx=2711, c_parent_idx=1720, mojo_node_idx=2681, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2712, c_parent_idx=1720, mojo_node_idx=2682, mojo_parent_idx=1690) 
		int*      flex_elemdataadr ; 
		WhitespaceNode(c_node_idx=2713, c_parent_idx=1720, mojo_node_idx=2683, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2714, c_parent_idx=1720, mojo_node_idx=2684, mojo_parent_idx=1690) 
		# first element vertex id address          (nflex x 1) 
		WhitespaceNode(c_node_idx=2715, c_parent_idx=1720, mojo_node_idx=2685, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2716, c_parent_idx=1720, mojo_node_idx=2686, mojo_parent_idx=1690) 
		int*      flex_elemedgeadr ; 
		WhitespaceNode(c_node_idx=2717, c_parent_idx=1720, mojo_node_idx=2687, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2718, c_parent_idx=1720, mojo_node_idx=2688, mojo_parent_idx=1690) 
		# first element edge id address            (nflex x 1) 
		WhitespaceNode(c_node_idx=2719, c_parent_idx=1720, mojo_node_idx=2689, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2720, c_parent_idx=1720, mojo_node_idx=2690, mojo_parent_idx=1690) 
		int*      flex_shellnum ; 
		WhitespaceNode(c_node_idx=2721, c_parent_idx=1720, mojo_node_idx=2691, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2722, c_parent_idx=1720, mojo_node_idx=2692, mojo_parent_idx=1690) 
		# number of shells                         (nflex x 1) 
		WhitespaceNode(c_node_idx=2723, c_parent_idx=1720, mojo_node_idx=2693, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2724, c_parent_idx=1720, mojo_node_idx=2694, mojo_parent_idx=1690) 
		int*      flex_shelldataadr ; 
		WhitespaceNode(c_node_idx=2725, c_parent_idx=1720, mojo_node_idx=2695, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=2726, c_parent_idx=1720, mojo_node_idx=2696, mojo_parent_idx=1690) 
		# first shell data address                 (nflex x 1) 
		WhitespaceNode(c_node_idx=2727, c_parent_idx=1720, mojo_node_idx=2697, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2728, c_parent_idx=1720, mojo_node_idx=2698, mojo_parent_idx=1690) 
		int*      flex_evpairadr ; 
		WhitespaceNode(c_node_idx=2729, c_parent_idx=1720, mojo_node_idx=2699, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2730, c_parent_idx=1720, mojo_node_idx=2700, mojo_parent_idx=1690) 
		# first evpair address                     (nflex x 1) 
		WhitespaceNode(c_node_idx=2731, c_parent_idx=1720, mojo_node_idx=2701, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2732, c_parent_idx=1720, mojo_node_idx=2702, mojo_parent_idx=1690) 
		int*      flex_evpairnum ; 
		WhitespaceNode(c_node_idx=2733, c_parent_idx=1720, mojo_node_idx=2703, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2734, c_parent_idx=1720, mojo_node_idx=2704, mojo_parent_idx=1690) 
		# number of evpairs                        (nflex x 1) 
		WhitespaceNode(c_node_idx=2735, c_parent_idx=1720, mojo_node_idx=2705, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2736, c_parent_idx=1720, mojo_node_idx=2706, mojo_parent_idx=1690) 
		int*      flex_texcoordadr ; 
		WhitespaceNode(c_node_idx=2737, c_parent_idx=1720, mojo_node_idx=2707, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2738, c_parent_idx=1720, mojo_node_idx=2708, mojo_parent_idx=1690) 
		# address in flex_texcoord ;  -1: none       (nflex x 1) 
		WhitespaceNode(c_node_idx=2739, c_parent_idx=1720, mojo_node_idx=2709, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2740, c_parent_idx=1720, mojo_node_idx=2710, mojo_parent_idx=1690) 
		int*      flex_vertbodyid ; 
		WhitespaceNode(c_node_idx=2741, c_parent_idx=1720, mojo_node_idx=2711, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=2742, c_parent_idx=1720, mojo_node_idx=2712, mojo_parent_idx=1690) 
		# vertex body ids                          (nflexvert x 1) 
		WhitespaceNode(c_node_idx=2743, c_parent_idx=1720, mojo_node_idx=2713, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2744, c_parent_idx=1720, mojo_node_idx=2714, mojo_parent_idx=1690) 
		int*      flex_edge ; 
		WhitespaceNode(c_node_idx=2745, c_parent_idx=1720, mojo_node_idx=2715, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2746, c_parent_idx=1720, mojo_node_idx=2716, mojo_parent_idx=1690) 
		# edge vertex ids (2 per edge)             (nflexedge x 2) 
		WhitespaceNode(c_node_idx=2747, c_parent_idx=1720, mojo_node_idx=2717, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2748, c_parent_idx=1720, mojo_node_idx=2718, mojo_parent_idx=1690) 
		int*      flex_elem ; 
		WhitespaceNode(c_node_idx=2749, c_parent_idx=1720, mojo_node_idx=2719, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2750, c_parent_idx=1720, mojo_node_idx=2720, mojo_parent_idx=1690) 
		# element vertex ids (dim+1 per elem)      (nflexelemdata x 1) 
		WhitespaceNode(c_node_idx=2751, c_parent_idx=1720, mojo_node_idx=2721, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2752, c_parent_idx=1720, mojo_node_idx=2722, mojo_parent_idx=1690) 
		int*      flex_elemedge ; 
		WhitespaceNode(c_node_idx=2753, c_parent_idx=1720, mojo_node_idx=2723, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2754, c_parent_idx=1720, mojo_node_idx=2724, mojo_parent_idx=1690) 
		# element edge ids                         (nflexelemedge x 1) 
		WhitespaceNode(c_node_idx=2755, c_parent_idx=1720, mojo_node_idx=2725, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2756, c_parent_idx=1720, mojo_node_idx=2726, mojo_parent_idx=1690) 
		int*      flex_elemlayer ; 
		WhitespaceNode(c_node_idx=2757, c_parent_idx=1720, mojo_node_idx=2727, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2758, c_parent_idx=1720, mojo_node_idx=2728, mojo_parent_idx=1690) 
		# element distance from surface ,  3D only   (nflexelem x 1) 
		WhitespaceNode(c_node_idx=2759, c_parent_idx=1720, mojo_node_idx=2729, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2760, c_parent_idx=1720, mojo_node_idx=2730, mojo_parent_idx=1690) 
		int*      flex_shell ; 
		WhitespaceNode(c_node_idx=2761, c_parent_idx=1720, mojo_node_idx=2731, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2762, c_parent_idx=1720, mojo_node_idx=2732, mojo_parent_idx=1690) 
		# shell fragment vertex ids (dim per frag) (nflexshelldata x 1) 
		WhitespaceNode(c_node_idx=2763, c_parent_idx=1720, mojo_node_idx=2733, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2764, c_parent_idx=1720, mojo_node_idx=2734, mojo_parent_idx=1690) 
		int*      flex_evpair ; 
		WhitespaceNode(c_node_idx=2765, c_parent_idx=1720, mojo_node_idx=2735, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2766, c_parent_idx=1720, mojo_node_idx=2736, mojo_parent_idx=1690) 
		# (element ,  vertex) collision pairs        (nflexevpair x 2) 
		WhitespaceNode(c_node_idx=2767, c_parent_idx=1720, mojo_node_idx=2737, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2768, c_parent_idx=1720, mojo_node_idx=2738, mojo_parent_idx=1690) 
		mjtNum*   flex_vert ; 
		WhitespaceNode(c_node_idx=2769, c_parent_idx=1720, mojo_node_idx=2739, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2770, c_parent_idx=1720, mojo_node_idx=2740, mojo_parent_idx=1690) 
		# vertex positions in local body frames    (nflexvert x 3) 
		WhitespaceNode(c_node_idx=2771, c_parent_idx=1720, mojo_node_idx=2741, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2772, c_parent_idx=1720, mojo_node_idx=2742, mojo_parent_idx=1690) 
		mjtNum*   flex_xvert0 ; 
		WhitespaceNode(c_node_idx=2773, c_parent_idx=1720, mojo_node_idx=2743, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2774, c_parent_idx=1720, mojo_node_idx=2744, mojo_parent_idx=1690) 
		# Cartesian vertex positions in qpos0      (nflexvert x 3) 
		WhitespaceNode(c_node_idx=2775, c_parent_idx=1720, mojo_node_idx=2745, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2776, c_parent_idx=1720, mojo_node_idx=2746, mojo_parent_idx=1690) 
		mjtNum*   flexedge_length0 ; 
		WhitespaceNode(c_node_idx=2777, c_parent_idx=1720, mojo_node_idx=2747, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2778, c_parent_idx=1720, mojo_node_idx=2748, mojo_parent_idx=1690) 
		# edge lengths in qpos0                    (nflexedge x 1) 
		WhitespaceNode(c_node_idx=2779, c_parent_idx=1720, mojo_node_idx=2749, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2780, c_parent_idx=1720, mojo_node_idx=2750, mojo_parent_idx=1690) 
		mjtNum*   flexedge_invweight0 ; 
		WhitespaceNode(c_node_idx=2781, c_parent_idx=1720, mojo_node_idx=2751, mojo_parent_idx=1690) 
		  
		SingleLineCommentNode(c_node_idx=2782, c_parent_idx=1720, mojo_node_idx=2752, mojo_parent_idx=1690) 
		# edge inv. weight in qpos0                (nflexedge x 1) 
		WhitespaceNode(c_node_idx=2783, c_parent_idx=1720, mojo_node_idx=2753, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2784, c_parent_idx=1720, mojo_node_idx=2754, mojo_parent_idx=1690) 
		mjtNum*   flex_radius ; 
		WhitespaceNode(c_node_idx=2785, c_parent_idx=1720, mojo_node_idx=2755, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2786, c_parent_idx=1720, mojo_node_idx=2756, mojo_parent_idx=1690) 
		# radius around primitive element          (nflex x 1) 
		WhitespaceNode(c_node_idx=2787, c_parent_idx=1720, mojo_node_idx=2757, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2788, c_parent_idx=1720, mojo_node_idx=2758, mojo_parent_idx=1690) 
		mjtNum*   flex_stiffness ; 
		WhitespaceNode(c_node_idx=2789, c_parent_idx=1720, mojo_node_idx=2759, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2790, c_parent_idx=1720, mojo_node_idx=2760, mojo_parent_idx=1690) 
		# finite element stiffness matrix          (nflexelem x 21) 
		WhitespaceNode(c_node_idx=2791, c_parent_idx=1720, mojo_node_idx=2761, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2792, c_parent_idx=1720, mojo_node_idx=2762, mojo_parent_idx=1690) 
		mjtNum*   flex_damping ; 
		WhitespaceNode(c_node_idx=2793, c_parent_idx=1720, mojo_node_idx=2763, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2794, c_parent_idx=1720, mojo_node_idx=2764, mojo_parent_idx=1690) 
		# Rayleigh's damping coefficient           (nflex x 1) 
		WhitespaceNode(c_node_idx=2795, c_parent_idx=1720, mojo_node_idx=2765, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2796, c_parent_idx=1720, mojo_node_idx=2766, mojo_parent_idx=1690) 
		mjtNum*   flex_edgestiffness ; 
		WhitespaceNode(c_node_idx=2797, c_parent_idx=1720, mojo_node_idx=2767, mojo_parent_idx=1690) 
		   
		SingleLineCommentNode(c_node_idx=2798, c_parent_idx=1720, mojo_node_idx=2768, mojo_parent_idx=1690) 
		# edge stiffness                           (nflex x 1) 
		WhitespaceNode(c_node_idx=2799, c_parent_idx=1720, mojo_node_idx=2769, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2800, c_parent_idx=1720, mojo_node_idx=2770, mojo_parent_idx=1690) 
		mjtNum*   flex_edgedamping ; 
		WhitespaceNode(c_node_idx=2801, c_parent_idx=1720, mojo_node_idx=2771, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2802, c_parent_idx=1720, mojo_node_idx=2772, mojo_parent_idx=1690) 
		# edge damping                             (nflex x 1) 
		WhitespaceNode(c_node_idx=2803, c_parent_idx=1720, mojo_node_idx=2773, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2804, c_parent_idx=1720, mojo_node_idx=2774, mojo_parent_idx=1690) 
		mjtByte*  flex_edgeequality ; 
		WhitespaceNode(c_node_idx=2805, c_parent_idx=1720, mojo_node_idx=2775, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=2806, c_parent_idx=1720, mojo_node_idx=2776, mojo_parent_idx=1690) 
		# is edge equality constraint defined      (nflex x 1) 
		WhitespaceNode(c_node_idx=2807, c_parent_idx=1720, mojo_node_idx=2777, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2808, c_parent_idx=1720, mojo_node_idx=2778, mojo_parent_idx=1690) 
		mjtByte*  flex_rigid ; 
		WhitespaceNode(c_node_idx=2809, c_parent_idx=1720, mojo_node_idx=2779, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2810, c_parent_idx=1720, mojo_node_idx=2780, mojo_parent_idx=1690) 
		# are all verices in the same body         (nflex x 1) 
		WhitespaceNode(c_node_idx=2811, c_parent_idx=1720, mojo_node_idx=2781, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2812, c_parent_idx=1720, mojo_node_idx=2782, mojo_parent_idx=1690) 
		mjtByte*  flexedge_rigid ; 
		WhitespaceNode(c_node_idx=2813, c_parent_idx=1720, mojo_node_idx=2783, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2814, c_parent_idx=1720, mojo_node_idx=2784, mojo_parent_idx=1690) 
		# are both edge vertices in same body      (nflexedge x 1) 
		WhitespaceNode(c_node_idx=2815, c_parent_idx=1720, mojo_node_idx=2785, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2816, c_parent_idx=1720, mojo_node_idx=2786, mojo_parent_idx=1690) 
		mjtByte*  flex_centered ; 
		WhitespaceNode(c_node_idx=2817, c_parent_idx=1720, mojo_node_idx=2787, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2818, c_parent_idx=1720, mojo_node_idx=2788, mojo_parent_idx=1690) 
		# are all vertex coordinates (0 , 0 , 0)       (nflex x 1) 
		WhitespaceNode(c_node_idx=2819, c_parent_idx=1720, mojo_node_idx=2789, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2820, c_parent_idx=1720, mojo_node_idx=2790, mojo_parent_idx=1690) 
		mjtByte*  flex_flatskin ; 
		WhitespaceNode(c_node_idx=2821, c_parent_idx=1720, mojo_node_idx=2791, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2822, c_parent_idx=1720, mojo_node_idx=2792, mojo_parent_idx=1690) 
		# render flex skin with flat shading       (nflex x 1) 
		WhitespaceNode(c_node_idx=2823, c_parent_idx=1720, mojo_node_idx=2793, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2824, c_parent_idx=1720, mojo_node_idx=2794, mojo_parent_idx=1690) 
		int*      flex_bvhadr ; 
		WhitespaceNode(c_node_idx=2825, c_parent_idx=1720, mojo_node_idx=2795, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2826, c_parent_idx=1720, mojo_node_idx=2796, mojo_parent_idx=1690) 
		# address of bvh root ;  -1: no bvh          (nflex x 1) 
		WhitespaceNode(c_node_idx=2827, c_parent_idx=1720, mojo_node_idx=2797, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2828, c_parent_idx=1720, mojo_node_idx=2798, mojo_parent_idx=1690) 
		int*      flex_bvhnum ; 
		WhitespaceNode(c_node_idx=2829, c_parent_idx=1720, mojo_node_idx=2799, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2830, c_parent_idx=1720, mojo_node_idx=2800, mojo_parent_idx=1690) 
		# number of bounding volumes               (nflex x 1) 
		WhitespaceNode(c_node_idx=2831, c_parent_idx=1720, mojo_node_idx=2801, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2832, c_parent_idx=1720, mojo_node_idx=2802, mojo_parent_idx=1690) 
		float*    flex_rgba ; 
		WhitespaceNode(c_node_idx=2833, c_parent_idx=1720, mojo_node_idx=2803, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2834, c_parent_idx=1720, mojo_node_idx=2804, mojo_parent_idx=1690) 
		# rgba when material is omitted            (nflex x 4) 
		WhitespaceNode(c_node_idx=2835, c_parent_idx=1720, mojo_node_idx=2805, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2836, c_parent_idx=1720, mojo_node_idx=2806, mojo_parent_idx=1690) 
		float*    flex_texcoord ; 
		WhitespaceNode(c_node_idx=2837, c_parent_idx=1720, mojo_node_idx=2807, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2838, c_parent_idx=1720, mojo_node_idx=2808, mojo_parent_idx=1690) 
		# vertex texture coordinates               (nflextexcoord x 2) 
		WhitespaceNode(c_node_idx=2839, c_parent_idx=1720, mojo_node_idx=2809, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2840, c_parent_idx=1720, mojo_node_idx=2810, mojo_parent_idx=1690) 
		# meshes 
		WhitespaceNode(c_node_idx=2841, c_parent_idx=1720, mojo_node_idx=2811, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2842, c_parent_idx=1720, mojo_node_idx=2812, mojo_parent_idx=1690) 
		int*      mesh_vertadr ; 
		WhitespaceNode(c_node_idx=2843, c_parent_idx=1720, mojo_node_idx=2813, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2844, c_parent_idx=1720, mojo_node_idx=2814, mojo_parent_idx=1690) 
		# first vertex address                     (nmesh x 1) 
		WhitespaceNode(c_node_idx=2845, c_parent_idx=1720, mojo_node_idx=2815, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2846, c_parent_idx=1720, mojo_node_idx=2816, mojo_parent_idx=1690) 
		int*      mesh_vertnum ; 
		WhitespaceNode(c_node_idx=2847, c_parent_idx=1720, mojo_node_idx=2817, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2848, c_parent_idx=1720, mojo_node_idx=2818, mojo_parent_idx=1690) 
		# number of vertices                       (nmesh x 1) 
		WhitespaceNode(c_node_idx=2849, c_parent_idx=1720, mojo_node_idx=2819, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2850, c_parent_idx=1720, mojo_node_idx=2820, mojo_parent_idx=1690) 
		int*      mesh_faceadr ; 
		WhitespaceNode(c_node_idx=2851, c_parent_idx=1720, mojo_node_idx=2821, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2852, c_parent_idx=1720, mojo_node_idx=2822, mojo_parent_idx=1690) 
		# first face address                       (nmesh x 1) 
		WhitespaceNode(c_node_idx=2853, c_parent_idx=1720, mojo_node_idx=2823, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2854, c_parent_idx=1720, mojo_node_idx=2824, mojo_parent_idx=1690) 
		int*      mesh_facenum ; 
		WhitespaceNode(c_node_idx=2855, c_parent_idx=1720, mojo_node_idx=2825, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2856, c_parent_idx=1720, mojo_node_idx=2826, mojo_parent_idx=1690) 
		# number of faces                          (nmesh x 1) 
		WhitespaceNode(c_node_idx=2857, c_parent_idx=1720, mojo_node_idx=2827, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2858, c_parent_idx=1720, mojo_node_idx=2828, mojo_parent_idx=1690) 
		int*      mesh_bvhadr ; 
		WhitespaceNode(c_node_idx=2859, c_parent_idx=1720, mojo_node_idx=2829, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2860, c_parent_idx=1720, mojo_node_idx=2830, mojo_parent_idx=1690) 
		# address of bvh root                      (nmesh x 1) 
		WhitespaceNode(c_node_idx=2861, c_parent_idx=1720, mojo_node_idx=2831, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2862, c_parent_idx=1720, mojo_node_idx=2832, mojo_parent_idx=1690) 
		int*      mesh_bvhnum ; 
		WhitespaceNode(c_node_idx=2863, c_parent_idx=1720, mojo_node_idx=2833, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2864, c_parent_idx=1720, mojo_node_idx=2834, mojo_parent_idx=1690) 
		# number of bvh                            (nmesh x 1) 
		WhitespaceNode(c_node_idx=2865, c_parent_idx=1720, mojo_node_idx=2835, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2866, c_parent_idx=1720, mojo_node_idx=2836, mojo_parent_idx=1690) 
		int*      mesh_normaladr ; 
		WhitespaceNode(c_node_idx=2867, c_parent_idx=1720, mojo_node_idx=2837, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2868, c_parent_idx=1720, mojo_node_idx=2838, mojo_parent_idx=1690) 
		# first normal address                     (nmesh x 1) 
		WhitespaceNode(c_node_idx=2869, c_parent_idx=1720, mojo_node_idx=2839, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2870, c_parent_idx=1720, mojo_node_idx=2840, mojo_parent_idx=1690) 
		int*      mesh_normalnum ; 
		WhitespaceNode(c_node_idx=2871, c_parent_idx=1720, mojo_node_idx=2841, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=2872, c_parent_idx=1720, mojo_node_idx=2842, mojo_parent_idx=1690) 
		# number of normals                        (nmesh x 1) 
		WhitespaceNode(c_node_idx=2873, c_parent_idx=1720, mojo_node_idx=2843, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2874, c_parent_idx=1720, mojo_node_idx=2844, mojo_parent_idx=1690) 
		int*      mesh_texcoordadr ; 
		WhitespaceNode(c_node_idx=2875, c_parent_idx=1720, mojo_node_idx=2845, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2876, c_parent_idx=1720, mojo_node_idx=2846, mojo_parent_idx=1690) 
		# texcoord data address ;  -1: no texcoord   (nmesh x 1) 
		WhitespaceNode(c_node_idx=2877, c_parent_idx=1720, mojo_node_idx=2847, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2878, c_parent_idx=1720, mojo_node_idx=2848, mojo_parent_idx=1690) 
		int*      mesh_texcoordnum ; 
		WhitespaceNode(c_node_idx=2879, c_parent_idx=1720, mojo_node_idx=2849, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2880, c_parent_idx=1720, mojo_node_idx=2850, mojo_parent_idx=1690) 
		# number of texcoord                       (nmesh x 1) 
		WhitespaceNode(c_node_idx=2881, c_parent_idx=1720, mojo_node_idx=2851, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2882, c_parent_idx=1720, mojo_node_idx=2852, mojo_parent_idx=1690) 
		int*      mesh_graphadr ; 
		WhitespaceNode(c_node_idx=2883, c_parent_idx=1720, mojo_node_idx=2853, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2884, c_parent_idx=1720, mojo_node_idx=2854, mojo_parent_idx=1690) 
		# graph data address ;  -1: no graph         (nmesh x 1) 
		WhitespaceNode(c_node_idx=2885, c_parent_idx=1720, mojo_node_idx=2855, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2886, c_parent_idx=1720, mojo_node_idx=2856, mojo_parent_idx=1690) 
		float*    mesh_vert ; 
		WhitespaceNode(c_node_idx=2887, c_parent_idx=1720, mojo_node_idx=2857, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2888, c_parent_idx=1720, mojo_node_idx=2858, mojo_parent_idx=1690) 
		# vertex positions for all meshes          (nmeshvert x 3) 
		WhitespaceNode(c_node_idx=2889, c_parent_idx=1720, mojo_node_idx=2859, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2890, c_parent_idx=1720, mojo_node_idx=2860, mojo_parent_idx=1690) 
		float*    mesh_normal ; 
		WhitespaceNode(c_node_idx=2891, c_parent_idx=1720, mojo_node_idx=2861, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=2892, c_parent_idx=1720, mojo_node_idx=2862, mojo_parent_idx=1690) 
		# normals for all meshes                   (nmeshnormal x 3) 
		WhitespaceNode(c_node_idx=2893, c_parent_idx=1720, mojo_node_idx=2863, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2894, c_parent_idx=1720, mojo_node_idx=2864, mojo_parent_idx=1690) 
		float*    mesh_texcoord ; 
		WhitespaceNode(c_node_idx=2895, c_parent_idx=1720, mojo_node_idx=2865, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2896, c_parent_idx=1720, mojo_node_idx=2866, mojo_parent_idx=1690) 
		# vertex texcoords for all meshes          (nmeshtexcoord x 2) 
		WhitespaceNode(c_node_idx=2897, c_parent_idx=1720, mojo_node_idx=2867, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2898, c_parent_idx=1720, mojo_node_idx=2868, mojo_parent_idx=1690) 
		int*      mesh_face ; 
		WhitespaceNode(c_node_idx=2899, c_parent_idx=1720, mojo_node_idx=2869, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2900, c_parent_idx=1720, mojo_node_idx=2870, mojo_parent_idx=1690) 
		# vertex face data                         (nmeshface x 3) 
		WhitespaceNode(c_node_idx=2901, c_parent_idx=1720, mojo_node_idx=2871, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2902, c_parent_idx=1720, mojo_node_idx=2872, mojo_parent_idx=1690) 
		int*      mesh_facenormal ; 
		WhitespaceNode(c_node_idx=2903, c_parent_idx=1720, mojo_node_idx=2873, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=2904, c_parent_idx=1720, mojo_node_idx=2874, mojo_parent_idx=1690) 
		# normal face data                         (nmeshface x 3) 
		WhitespaceNode(c_node_idx=2905, c_parent_idx=1720, mojo_node_idx=2875, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2906, c_parent_idx=1720, mojo_node_idx=2876, mojo_parent_idx=1690) 
		int*      mesh_facetexcoord ; 
		WhitespaceNode(c_node_idx=2907, c_parent_idx=1720, mojo_node_idx=2877, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=2908, c_parent_idx=1720, mojo_node_idx=2878, mojo_parent_idx=1690) 
		# texture face data                        (nmeshface x 3) 
		WhitespaceNode(c_node_idx=2909, c_parent_idx=1720, mojo_node_idx=2879, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2910, c_parent_idx=1720, mojo_node_idx=2880, mojo_parent_idx=1690) 
		int*      mesh_graph ; 
		WhitespaceNode(c_node_idx=2911, c_parent_idx=1720, mojo_node_idx=2881, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2912, c_parent_idx=1720, mojo_node_idx=2882, mojo_parent_idx=1690) 
		# convex graph data                        (nmeshgraph x 1) 
		WhitespaceNode(c_node_idx=2913, c_parent_idx=1720, mojo_node_idx=2883, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2914, c_parent_idx=1720, mojo_node_idx=2884, mojo_parent_idx=1690) 
		mjtNum*   mesh_scale ; 
		WhitespaceNode(c_node_idx=2915, c_parent_idx=1720, mojo_node_idx=2885, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2916, c_parent_idx=1720, mojo_node_idx=2886, mojo_parent_idx=1690) 
		# scaling applied to asset vertices        (nmesh x 3) 
		WhitespaceNode(c_node_idx=2917, c_parent_idx=1720, mojo_node_idx=2887, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2918, c_parent_idx=1720, mojo_node_idx=2888, mojo_parent_idx=1690) 
		mjtNum*   mesh_pos ; 
		WhitespaceNode(c_node_idx=2919, c_parent_idx=1720, mojo_node_idx=2889, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=2920, c_parent_idx=1720, mojo_node_idx=2890, mojo_parent_idx=1690) 
		# translation applied to asset vertices    (nmesh x 3) 
		WhitespaceNode(c_node_idx=2921, c_parent_idx=1720, mojo_node_idx=2891, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2922, c_parent_idx=1720, mojo_node_idx=2892, mojo_parent_idx=1690) 
		mjtNum*   mesh_quat ; 
		WhitespaceNode(c_node_idx=2923, c_parent_idx=1720, mojo_node_idx=2893, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2924, c_parent_idx=1720, mojo_node_idx=2894, mojo_parent_idx=1690) 
		# rotation applied to asset vertices       (nmesh x 4) 
		WhitespaceNode(c_node_idx=2925, c_parent_idx=1720, mojo_node_idx=2895, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2926, c_parent_idx=1720, mojo_node_idx=2896, mojo_parent_idx=1690) 
		int*      mesh_pathadr ; 
		WhitespaceNode(c_node_idx=2927, c_parent_idx=1720, mojo_node_idx=2897, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2928, c_parent_idx=1720, mojo_node_idx=2898, mojo_parent_idx=1690) 
		# address of asset path for mesh ;  -1: none (nmesh x 1) 
		WhitespaceNode(c_node_idx=2929, c_parent_idx=1720, mojo_node_idx=2899, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=2930, c_parent_idx=1720, mojo_node_idx=2900, mojo_parent_idx=1690) 
		# skins 
		WhitespaceNode(c_node_idx=2931, c_parent_idx=1720, mojo_node_idx=2901, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2932, c_parent_idx=1720, mojo_node_idx=2902, mojo_parent_idx=1690) 
		int*      skin_matid ; 
		WhitespaceNode(c_node_idx=2933, c_parent_idx=1720, mojo_node_idx=2903, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2934, c_parent_idx=1720, mojo_node_idx=2904, mojo_parent_idx=1690) 
		# skin material id ;  -1: none               (nskin x 1) 
		WhitespaceNode(c_node_idx=2935, c_parent_idx=1720, mojo_node_idx=2905, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2936, c_parent_idx=1720, mojo_node_idx=2906, mojo_parent_idx=1690) 
		int*      skin_group ; 
		WhitespaceNode(c_node_idx=2937, c_parent_idx=1720, mojo_node_idx=2907, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=2938, c_parent_idx=1720, mojo_node_idx=2908, mojo_parent_idx=1690) 
		# group for visibility                     (nskin x 1) 
		WhitespaceNode(c_node_idx=2939, c_parent_idx=1720, mojo_node_idx=2909, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2940, c_parent_idx=1720, mojo_node_idx=2910, mojo_parent_idx=1690) 
		float*    skin_rgba ; 
		WhitespaceNode(c_node_idx=2941, c_parent_idx=1720, mojo_node_idx=2911, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2942, c_parent_idx=1720, mojo_node_idx=2912, mojo_parent_idx=1690) 
		# skin rgba                                (nskin x 4) 
		WhitespaceNode(c_node_idx=2943, c_parent_idx=1720, mojo_node_idx=2913, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2944, c_parent_idx=1720, mojo_node_idx=2914, mojo_parent_idx=1690) 
		float*    skin_inflate ; 
		WhitespaceNode(c_node_idx=2945, c_parent_idx=1720, mojo_node_idx=2915, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2946, c_parent_idx=1720, mojo_node_idx=2916, mojo_parent_idx=1690) 
		# inflate skin in normal direction         (nskin x 1) 
		WhitespaceNode(c_node_idx=2947, c_parent_idx=1720, mojo_node_idx=2917, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2948, c_parent_idx=1720, mojo_node_idx=2918, mojo_parent_idx=1690) 
		int*      skin_vertadr ; 
		WhitespaceNode(c_node_idx=2949, c_parent_idx=1720, mojo_node_idx=2919, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2950, c_parent_idx=1720, mojo_node_idx=2920, mojo_parent_idx=1690) 
		# first vertex address                     (nskin x 1) 
		WhitespaceNode(c_node_idx=2951, c_parent_idx=1720, mojo_node_idx=2921, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2952, c_parent_idx=1720, mojo_node_idx=2922, mojo_parent_idx=1690) 
		int*      skin_vertnum ; 
		WhitespaceNode(c_node_idx=2953, c_parent_idx=1720, mojo_node_idx=2923, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2954, c_parent_idx=1720, mojo_node_idx=2924, mojo_parent_idx=1690) 
		# number of vertices                       (nskin x 1) 
		WhitespaceNode(c_node_idx=2955, c_parent_idx=1720, mojo_node_idx=2925, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2956, c_parent_idx=1720, mojo_node_idx=2926, mojo_parent_idx=1690) 
		int*      skin_texcoordadr ; 
		WhitespaceNode(c_node_idx=2957, c_parent_idx=1720, mojo_node_idx=2927, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2958, c_parent_idx=1720, mojo_node_idx=2928, mojo_parent_idx=1690) 
		# texcoord data address ;  -1: no texcoord   (nskin x 1) 
		WhitespaceNode(c_node_idx=2959, c_parent_idx=1720, mojo_node_idx=2929, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2960, c_parent_idx=1720, mojo_node_idx=2930, mojo_parent_idx=1690) 
		int*      skin_faceadr ; 
		WhitespaceNode(c_node_idx=2961, c_parent_idx=1720, mojo_node_idx=2931, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2962, c_parent_idx=1720, mojo_node_idx=2932, mojo_parent_idx=1690) 
		# first face address                       (nskin x 1) 
		WhitespaceNode(c_node_idx=2963, c_parent_idx=1720, mojo_node_idx=2933, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2964, c_parent_idx=1720, mojo_node_idx=2934, mojo_parent_idx=1690) 
		int*      skin_facenum ; 
		WhitespaceNode(c_node_idx=2965, c_parent_idx=1720, mojo_node_idx=2935, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2966, c_parent_idx=1720, mojo_node_idx=2936, mojo_parent_idx=1690) 
		# number of faces                          (nskin x 1) 
		WhitespaceNode(c_node_idx=2967, c_parent_idx=1720, mojo_node_idx=2937, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2968, c_parent_idx=1720, mojo_node_idx=2938, mojo_parent_idx=1690) 
		int*      skin_boneadr ; 
		WhitespaceNode(c_node_idx=2969, c_parent_idx=1720, mojo_node_idx=2939, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2970, c_parent_idx=1720, mojo_node_idx=2940, mojo_parent_idx=1690) 
		# first bone in skin                       (nskin x 1) 
		WhitespaceNode(c_node_idx=2971, c_parent_idx=1720, mojo_node_idx=2941, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2972, c_parent_idx=1720, mojo_node_idx=2942, mojo_parent_idx=1690) 
		int*      skin_bonenum ; 
		WhitespaceNode(c_node_idx=2973, c_parent_idx=1720, mojo_node_idx=2943, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=2974, c_parent_idx=1720, mojo_node_idx=2944, mojo_parent_idx=1690) 
		# number of bones in skin                  (nskin x 1) 
		WhitespaceNode(c_node_idx=2975, c_parent_idx=1720, mojo_node_idx=2945, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2976, c_parent_idx=1720, mojo_node_idx=2946, mojo_parent_idx=1690) 
		float*    skin_vert ; 
		WhitespaceNode(c_node_idx=2977, c_parent_idx=1720, mojo_node_idx=2947, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2978, c_parent_idx=1720, mojo_node_idx=2948, mojo_parent_idx=1690) 
		# vertex positions for all skin meshes     (nskinvert x 3) 
		WhitespaceNode(c_node_idx=2979, c_parent_idx=1720, mojo_node_idx=2949, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2980, c_parent_idx=1720, mojo_node_idx=2950, mojo_parent_idx=1690) 
		float*    skin_texcoord ; 
		WhitespaceNode(c_node_idx=2981, c_parent_idx=1720, mojo_node_idx=2951, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=2982, c_parent_idx=1720, mojo_node_idx=2952, mojo_parent_idx=1690) 
		# vertex texcoords for all skin meshes     (nskintexvert x 2) 
		WhitespaceNode(c_node_idx=2983, c_parent_idx=1720, mojo_node_idx=2953, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2984, c_parent_idx=1720, mojo_node_idx=2954, mojo_parent_idx=1690) 
		int*      skin_face ; 
		WhitespaceNode(c_node_idx=2985, c_parent_idx=1720, mojo_node_idx=2955, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=2986, c_parent_idx=1720, mojo_node_idx=2956, mojo_parent_idx=1690) 
		# triangle faces for all skin meshes       (nskinface x 3) 
		WhitespaceNode(c_node_idx=2987, c_parent_idx=1720, mojo_node_idx=2957, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2988, c_parent_idx=1720, mojo_node_idx=2958, mojo_parent_idx=1690) 
		int*      skin_bonevertadr ; 
		WhitespaceNode(c_node_idx=2989, c_parent_idx=1720, mojo_node_idx=2959, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2990, c_parent_idx=1720, mojo_node_idx=2960, mojo_parent_idx=1690) 
		# first vertex in each bone                (nskinbone x 1) 
		WhitespaceNode(c_node_idx=2991, c_parent_idx=1720, mojo_node_idx=2961, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2992, c_parent_idx=1720, mojo_node_idx=2962, mojo_parent_idx=1690) 
		int*      skin_bonevertnum ; 
		WhitespaceNode(c_node_idx=2993, c_parent_idx=1720, mojo_node_idx=2963, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2994, c_parent_idx=1720, mojo_node_idx=2964, mojo_parent_idx=1690) 
		# number of vertices in each bone          (nskinbone x 1) 
		WhitespaceNode(c_node_idx=2995, c_parent_idx=1720, mojo_node_idx=2965, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=2996, c_parent_idx=1720, mojo_node_idx=2966, mojo_parent_idx=1690) 
		float*    skin_bonebindpos ; 
		WhitespaceNode(c_node_idx=2997, c_parent_idx=1720, mojo_node_idx=2967, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=2998, c_parent_idx=1720, mojo_node_idx=2968, mojo_parent_idx=1690) 
		# bind pos of each bone                    (nskinbone x 3) 
		WhitespaceNode(c_node_idx=2999, c_parent_idx=1720, mojo_node_idx=2969, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3000, c_parent_idx=1720, mojo_node_idx=2970, mojo_parent_idx=1690) 
		float*    skin_bonebindquat ; 
		WhitespaceNode(c_node_idx=3001, c_parent_idx=1720, mojo_node_idx=2971, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3002, c_parent_idx=1720, mojo_node_idx=2972, mojo_parent_idx=1690) 
		# bind quat of each bone                   (nskinbone x 4) 
		WhitespaceNode(c_node_idx=3003, c_parent_idx=1720, mojo_node_idx=2973, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3004, c_parent_idx=1720, mojo_node_idx=2974, mojo_parent_idx=1690) 
		int*      skin_bonebodyid ; 
		WhitespaceNode(c_node_idx=3005, c_parent_idx=1720, mojo_node_idx=2975, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3006, c_parent_idx=1720, mojo_node_idx=2976, mojo_parent_idx=1690) 
		# body id of each bone                     (nskinbone x 1) 
		WhitespaceNode(c_node_idx=3007, c_parent_idx=1720, mojo_node_idx=2977, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3008, c_parent_idx=1720, mojo_node_idx=2978, mojo_parent_idx=1690) 
		int*      skin_bonevertid ; 
		WhitespaceNode(c_node_idx=3009, c_parent_idx=1720, mojo_node_idx=2979, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3010, c_parent_idx=1720, mojo_node_idx=2980, mojo_parent_idx=1690) 
		# mesh ids of vertices in each bone        (nskinbonevert x 1) 
		WhitespaceNode(c_node_idx=3011, c_parent_idx=1720, mojo_node_idx=2981, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3012, c_parent_idx=1720, mojo_node_idx=2982, mojo_parent_idx=1690) 
		float*    skin_bonevertweight ; 
		WhitespaceNode(c_node_idx=3013, c_parent_idx=1720, mojo_node_idx=2983, mojo_parent_idx=1690) 
		  
		SingleLineCommentNode(c_node_idx=3014, c_parent_idx=1720, mojo_node_idx=2984, mojo_parent_idx=1690) 
		# weights of vertices in each bone         (nskinbonevert x 1) 
		WhitespaceNode(c_node_idx=3015, c_parent_idx=1720, mojo_node_idx=2985, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3016, c_parent_idx=1720, mojo_node_idx=2986, mojo_parent_idx=1690) 
		int*      skin_pathadr ; 
		WhitespaceNode(c_node_idx=3017, c_parent_idx=1720, mojo_node_idx=2987, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3018, c_parent_idx=1720, mojo_node_idx=2988, mojo_parent_idx=1690) 
		# address of asset path for skin ;  -1: none (nskin x 1) 
		WhitespaceNode(c_node_idx=3019, c_parent_idx=1720, mojo_node_idx=2989, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3020, c_parent_idx=1720, mojo_node_idx=2990, mojo_parent_idx=1690) 
		# height fields 
		WhitespaceNode(c_node_idx=3021, c_parent_idx=1720, mojo_node_idx=2991, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3022, c_parent_idx=1720, mojo_node_idx=2992, mojo_parent_idx=1690) 
		mjtNum*   hfield_size ; 
		WhitespaceNode(c_node_idx=3023, c_parent_idx=1720, mojo_node_idx=2993, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3024, c_parent_idx=1720, mojo_node_idx=2994, mojo_parent_idx=1690) 
		# (x ,  y ,  z_top ,  z_bottom)                  (nhfield x 4) 
		WhitespaceNode(c_node_idx=3025, c_parent_idx=1720, mojo_node_idx=2995, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3026, c_parent_idx=1720, mojo_node_idx=2996, mojo_parent_idx=1690) 
		int*      hfield_nrow ; 
		WhitespaceNode(c_node_idx=3027, c_parent_idx=1720, mojo_node_idx=2997, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3028, c_parent_idx=1720, mojo_node_idx=2998, mojo_parent_idx=1690) 
		# number of rows in grid                   (nhfield x 1) 
		WhitespaceNode(c_node_idx=3029, c_parent_idx=1720, mojo_node_idx=2999, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3030, c_parent_idx=1720, mojo_node_idx=3000, mojo_parent_idx=1690) 
		int*      hfield_ncol ; 
		WhitespaceNode(c_node_idx=3031, c_parent_idx=1720, mojo_node_idx=3001, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3032, c_parent_idx=1720, mojo_node_idx=3002, mojo_parent_idx=1690) 
		# number of columns in grid                (nhfield x 1) 
		WhitespaceNode(c_node_idx=3033, c_parent_idx=1720, mojo_node_idx=3003, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3034, c_parent_idx=1720, mojo_node_idx=3004, mojo_parent_idx=1690) 
		int*      hfield_adr ; 
		WhitespaceNode(c_node_idx=3035, c_parent_idx=1720, mojo_node_idx=3005, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3036, c_parent_idx=1720, mojo_node_idx=3006, mojo_parent_idx=1690) 
		# address in hfield_data                   (nhfield x 1) 
		WhitespaceNode(c_node_idx=3037, c_parent_idx=1720, mojo_node_idx=3007, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3038, c_parent_idx=1720, mojo_node_idx=3008, mojo_parent_idx=1690) 
		float*    hfield_data ; 
		WhitespaceNode(c_node_idx=3039, c_parent_idx=1720, mojo_node_idx=3009, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3040, c_parent_idx=1720, mojo_node_idx=3010, mojo_parent_idx=1690) 
		# elevation data                           (nhfielddata x 1) 
		WhitespaceNode(c_node_idx=3041, c_parent_idx=1720, mojo_node_idx=3011, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3042, c_parent_idx=1720, mojo_node_idx=3012, mojo_parent_idx=1690) 
		int*      hfield_pathadr ; 
		WhitespaceNode(c_node_idx=3043, c_parent_idx=1720, mojo_node_idx=3013, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3044, c_parent_idx=1720, mojo_node_idx=3014, mojo_parent_idx=1690) 
		# address of hfield asset path ;  -1: none   (nhfield x 1) 
		WhitespaceNode(c_node_idx=3045, c_parent_idx=1720, mojo_node_idx=3015, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3046, c_parent_idx=1720, mojo_node_idx=3016, mojo_parent_idx=1690) 
		# textures 
		WhitespaceNode(c_node_idx=3047, c_parent_idx=1720, mojo_node_idx=3017, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3048, c_parent_idx=1720, mojo_node_idx=3018, mojo_parent_idx=1690) 
		int*      tex_type ; 
		WhitespaceNode(c_node_idx=3049, c_parent_idx=1720, mojo_node_idx=3019, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3050, c_parent_idx=1720, mojo_node_idx=3020, mojo_parent_idx=1690) 
		# texture type (mjtTexture)                (ntex x 1) 
		WhitespaceNode(c_node_idx=3051, c_parent_idx=1720, mojo_node_idx=3021, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3052, c_parent_idx=1720, mojo_node_idx=3022, mojo_parent_idx=1690) 
		int*      tex_height ; 
		WhitespaceNode(c_node_idx=3053, c_parent_idx=1720, mojo_node_idx=3023, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3054, c_parent_idx=1720, mojo_node_idx=3024, mojo_parent_idx=1690) 
		# number of rows in texture image          (ntex x 1) 
		WhitespaceNode(c_node_idx=3055, c_parent_idx=1720, mojo_node_idx=3025, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3056, c_parent_idx=1720, mojo_node_idx=3026, mojo_parent_idx=1690) 
		int*      tex_width ; 
		WhitespaceNode(c_node_idx=3057, c_parent_idx=1720, mojo_node_idx=3027, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3058, c_parent_idx=1720, mojo_node_idx=3028, mojo_parent_idx=1690) 
		# number of columns in texture image       (ntex x 1) 
		WhitespaceNode(c_node_idx=3059, c_parent_idx=1720, mojo_node_idx=3029, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3060, c_parent_idx=1720, mojo_node_idx=3030, mojo_parent_idx=1690) 
		int*      tex_nchannel ; 
		WhitespaceNode(c_node_idx=3061, c_parent_idx=1720, mojo_node_idx=3031, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3062, c_parent_idx=1720, mojo_node_idx=3032, mojo_parent_idx=1690) 
		# number of channels in texture image      (ntex x 1) 
		WhitespaceNode(c_node_idx=3063, c_parent_idx=1720, mojo_node_idx=3033, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3064, c_parent_idx=1720, mojo_node_idx=3034, mojo_parent_idx=1690) 
		int*      tex_adr ; 
		WhitespaceNode(c_node_idx=3065, c_parent_idx=1720, mojo_node_idx=3035, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=3066, c_parent_idx=1720, mojo_node_idx=3036, mojo_parent_idx=1690) 
		# start address in tex_data                (ntex x 1) 
		WhitespaceNode(c_node_idx=3067, c_parent_idx=1720, mojo_node_idx=3037, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3068, c_parent_idx=1720, mojo_node_idx=3038, mojo_parent_idx=1690) 
		mjtByte*  tex_data ; 
		WhitespaceNode(c_node_idx=3069, c_parent_idx=1720, mojo_node_idx=3039, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3070, c_parent_idx=1720, mojo_node_idx=3040, mojo_parent_idx=1690) 
		# pixel values                             (ntexdata x 1) 
		WhitespaceNode(c_node_idx=3071, c_parent_idx=1720, mojo_node_idx=3041, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3072, c_parent_idx=1720, mojo_node_idx=3042, mojo_parent_idx=1690) 
		int*      tex_pathadr ; 
		WhitespaceNode(c_node_idx=3073, c_parent_idx=1720, mojo_node_idx=3043, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3074, c_parent_idx=1720, mojo_node_idx=3044, mojo_parent_idx=1690) 
		# address of texture asset path ;  -1: none  (ntex x 1) 
		WhitespaceNode(c_node_idx=3075, c_parent_idx=1720, mojo_node_idx=3045, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3076, c_parent_idx=1720, mojo_node_idx=3046, mojo_parent_idx=1690) 
		# materials 
		WhitespaceNode(c_node_idx=3077, c_parent_idx=1720, mojo_node_idx=3047, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3078, c_parent_idx=1720, mojo_node_idx=3048, mojo_parent_idx=1690) 
		int*      mat_texid ; 
		WhitespaceNode(c_node_idx=3079, c_parent_idx=1720, mojo_node_idx=3049, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3080, c_parent_idx=1720, mojo_node_idx=3050, mojo_parent_idx=1690) 
		# indices of textures ;  -1: none            (nmat x mjNTEXROLE) 
		WhitespaceNode(c_node_idx=3081, c_parent_idx=1720, mojo_node_idx=3051, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3082, c_parent_idx=1720, mojo_node_idx=3052, mojo_parent_idx=1690) 
		mjtByte*  mat_texuniform ; 
		WhitespaceNode(c_node_idx=3083, c_parent_idx=1720, mojo_node_idx=3053, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3084, c_parent_idx=1720, mojo_node_idx=3054, mojo_parent_idx=1690) 
		# make texture cube uniform                (nmat x 1) 
		WhitespaceNode(c_node_idx=3085, c_parent_idx=1720, mojo_node_idx=3055, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3086, c_parent_idx=1720, mojo_node_idx=3056, mojo_parent_idx=1690) 
		float*    mat_texrepeat ; 
		WhitespaceNode(c_node_idx=3087, c_parent_idx=1720, mojo_node_idx=3057, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3088, c_parent_idx=1720, mojo_node_idx=3058, mojo_parent_idx=1690) 
		# texture repetition for 2d mapping        (nmat x 2) 
		WhitespaceNode(c_node_idx=3089, c_parent_idx=1720, mojo_node_idx=3059, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3090, c_parent_idx=1720, mojo_node_idx=3060, mojo_parent_idx=1690) 
		float*    mat_emission ; 
		WhitespaceNode(c_node_idx=3091, c_parent_idx=1720, mojo_node_idx=3061, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3092, c_parent_idx=1720, mojo_node_idx=3062, mojo_parent_idx=1690) 
		# emission (x rgb)                         (nmat x 1) 
		WhitespaceNode(c_node_idx=3093, c_parent_idx=1720, mojo_node_idx=3063, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3094, c_parent_idx=1720, mojo_node_idx=3064, mojo_parent_idx=1690) 
		float*    mat_specular ; 
		WhitespaceNode(c_node_idx=3095, c_parent_idx=1720, mojo_node_idx=3065, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3096, c_parent_idx=1720, mojo_node_idx=3066, mojo_parent_idx=1690) 
		# specular (x white)                       (nmat x 1) 
		WhitespaceNode(c_node_idx=3097, c_parent_idx=1720, mojo_node_idx=3067, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3098, c_parent_idx=1720, mojo_node_idx=3068, mojo_parent_idx=1690) 
		float*    mat_shininess ; 
		WhitespaceNode(c_node_idx=3099, c_parent_idx=1720, mojo_node_idx=3069, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3100, c_parent_idx=1720, mojo_node_idx=3070, mojo_parent_idx=1690) 
		# shininess coef                           (nmat x 1) 
		WhitespaceNode(c_node_idx=3101, c_parent_idx=1720, mojo_node_idx=3071, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3102, c_parent_idx=1720, mojo_node_idx=3072, mojo_parent_idx=1690) 
		float*    mat_reflectance ; 
		WhitespaceNode(c_node_idx=3103, c_parent_idx=1720, mojo_node_idx=3073, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3104, c_parent_idx=1720, mojo_node_idx=3074, mojo_parent_idx=1690) 
		# reflectance (0: disable)                 (nmat x 1) 
		WhitespaceNode(c_node_idx=3105, c_parent_idx=1720, mojo_node_idx=3075, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3106, c_parent_idx=1720, mojo_node_idx=3076, mojo_parent_idx=1690) 
		float*    mat_metallic ; 
		WhitespaceNode(c_node_idx=3107, c_parent_idx=1720, mojo_node_idx=3077, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3108, c_parent_idx=1720, mojo_node_idx=3078, mojo_parent_idx=1690) 
		# metallic coef                            (nmat x 1) 
		WhitespaceNode(c_node_idx=3109, c_parent_idx=1720, mojo_node_idx=3079, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3110, c_parent_idx=1720, mojo_node_idx=3080, mojo_parent_idx=1690) 
		float*    mat_roughness ; 
		WhitespaceNode(c_node_idx=3111, c_parent_idx=1720, mojo_node_idx=3081, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3112, c_parent_idx=1720, mojo_node_idx=3082, mojo_parent_idx=1690) 
		# roughness coef                           (nmat x 1) 
		WhitespaceNode(c_node_idx=3113, c_parent_idx=1720, mojo_node_idx=3083, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3114, c_parent_idx=1720, mojo_node_idx=3084, mojo_parent_idx=1690) 
		float*    mat_rgba ; 
		WhitespaceNode(c_node_idx=3115, c_parent_idx=1720, mojo_node_idx=3085, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3116, c_parent_idx=1720, mojo_node_idx=3086, mojo_parent_idx=1690) 
		# rgba                                     (nmat x 4) 
		WhitespaceNode(c_node_idx=3117, c_parent_idx=1720, mojo_node_idx=3087, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3118, c_parent_idx=1720, mojo_node_idx=3088, mojo_parent_idx=1690) 
		# predefined geom pairs for collision detection ;  has precedence over exclude 
		WhitespaceNode(c_node_idx=3119, c_parent_idx=1720, mojo_node_idx=3089, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3120, c_parent_idx=1720, mojo_node_idx=3090, mojo_parent_idx=1690) 
		int*      pair_dim ; 
		WhitespaceNode(c_node_idx=3121, c_parent_idx=1720, mojo_node_idx=3091, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3122, c_parent_idx=1720, mojo_node_idx=3092, mojo_parent_idx=1690) 
		# contact dimensionality                   (npair x 1) 
		WhitespaceNode(c_node_idx=3123, c_parent_idx=1720, mojo_node_idx=3093, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3124, c_parent_idx=1720, mojo_node_idx=3094, mojo_parent_idx=1690) 
		int*      pair_geom1 ; 
		WhitespaceNode(c_node_idx=3125, c_parent_idx=1720, mojo_node_idx=3095, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3126, c_parent_idx=1720, mojo_node_idx=3096, mojo_parent_idx=1690) 
		# id of geom1                              (npair x 1) 
		WhitespaceNode(c_node_idx=3127, c_parent_idx=1720, mojo_node_idx=3097, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3128, c_parent_idx=1720, mojo_node_idx=3098, mojo_parent_idx=1690) 
		int*      pair_geom2 ; 
		WhitespaceNode(c_node_idx=3129, c_parent_idx=1720, mojo_node_idx=3099, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3130, c_parent_idx=1720, mojo_node_idx=3100, mojo_parent_idx=1690) 
		# id of geom2                              (npair x 1) 
		WhitespaceNode(c_node_idx=3131, c_parent_idx=1720, mojo_node_idx=3101, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3132, c_parent_idx=1720, mojo_node_idx=3102, mojo_parent_idx=1690) 
		int*      pair_signature ; 
		WhitespaceNode(c_node_idx=3133, c_parent_idx=1720, mojo_node_idx=3103, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3134, c_parent_idx=1720, mojo_node_idx=3104, mojo_parent_idx=1690) 
		# body1 << 16 + body2                      (npair x 1) 
		WhitespaceNode(c_node_idx=3135, c_parent_idx=1720, mojo_node_idx=3105, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3136, c_parent_idx=1720, mojo_node_idx=3106, mojo_parent_idx=1690) 
		mjtNum*   pair_solref ; 
		WhitespaceNode(c_node_idx=3137, c_parent_idx=1720, mojo_node_idx=3107, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3138, c_parent_idx=1720, mojo_node_idx=3108, mojo_parent_idx=1690) 
		# solver reference: contact normal         (npair x mjNREF) 
		WhitespaceNode(c_node_idx=3139, c_parent_idx=1720, mojo_node_idx=3109, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3140, c_parent_idx=1720, mojo_node_idx=3110, mojo_parent_idx=1690) 
		mjtNum*   pair_solreffriction ; 
		WhitespaceNode(c_node_idx=3141, c_parent_idx=1720, mojo_node_idx=3111, mojo_parent_idx=1690) 
		  
		SingleLineCommentNode(c_node_idx=3142, c_parent_idx=1720, mojo_node_idx=3112, mojo_parent_idx=1690) 
		# solver reference: contact friction       (npair x mjNREF) 
		WhitespaceNode(c_node_idx=3143, c_parent_idx=1720, mojo_node_idx=3113, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3144, c_parent_idx=1720, mojo_node_idx=3114, mojo_parent_idx=1690) 
		mjtNum*   pair_solimp ; 
		WhitespaceNode(c_node_idx=3145, c_parent_idx=1720, mojo_node_idx=3115, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3146, c_parent_idx=1720, mojo_node_idx=3116, mojo_parent_idx=1690) 
		# solver impedance: contact                (npair x mjNIMP) 
		WhitespaceNode(c_node_idx=3147, c_parent_idx=1720, mojo_node_idx=3117, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3148, c_parent_idx=1720, mojo_node_idx=3118, mojo_parent_idx=1690) 
		mjtNum*   pair_margin ; 
		WhitespaceNode(c_node_idx=3149, c_parent_idx=1720, mojo_node_idx=3119, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3150, c_parent_idx=1720, mojo_node_idx=3120, mojo_parent_idx=1690) 
		# detect contact if dist<margin            (npair x 1) 
		WhitespaceNode(c_node_idx=3151, c_parent_idx=1720, mojo_node_idx=3121, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3152, c_parent_idx=1720, mojo_node_idx=3122, mojo_parent_idx=1690) 
		mjtNum*   pair_gap ; 
		WhitespaceNode(c_node_idx=3153, c_parent_idx=1720, mojo_node_idx=3123, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3154, c_parent_idx=1720, mojo_node_idx=3124, mojo_parent_idx=1690) 
		# include in solver if dist<margin-gap     (npair x 1) 
		WhitespaceNode(c_node_idx=3155, c_parent_idx=1720, mojo_node_idx=3125, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3156, c_parent_idx=1720, mojo_node_idx=3126, mojo_parent_idx=1690) 
		mjtNum*   pair_friction ; 
		WhitespaceNode(c_node_idx=3157, c_parent_idx=1720, mojo_node_idx=3127, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3158, c_parent_idx=1720, mojo_node_idx=3128, mojo_parent_idx=1690) 
		# tangent1 ,  2 ,  spin ,  roll1 ,  2              (npair x 5) 
		WhitespaceNode(c_node_idx=3159, c_parent_idx=1720, mojo_node_idx=3129, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3160, c_parent_idx=1720, mojo_node_idx=3130, mojo_parent_idx=1690) 
		# excluded body pairs for collision detection 
		WhitespaceNode(c_node_idx=3161, c_parent_idx=1720, mojo_node_idx=3131, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3162, c_parent_idx=1720, mojo_node_idx=3132, mojo_parent_idx=1690) 
		int*      exclude_signature ; 
		WhitespaceNode(c_node_idx=3163, c_parent_idx=1720, mojo_node_idx=3133, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3164, c_parent_idx=1720, mojo_node_idx=3134, mojo_parent_idx=1690) 
		# body1 << 16 + body2                      (nexclude x 1) 
		WhitespaceNode(c_node_idx=3165, c_parent_idx=1720, mojo_node_idx=3135, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3166, c_parent_idx=1720, mojo_node_idx=3136, mojo_parent_idx=1690) 
		# equality constraints 
		WhitespaceNode(c_node_idx=3167, c_parent_idx=1720, mojo_node_idx=3137, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3168, c_parent_idx=1720, mojo_node_idx=3138, mojo_parent_idx=1690) 
		int*      eq_type ; 
		WhitespaceNode(c_node_idx=3169, c_parent_idx=1720, mojo_node_idx=3139, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=3170, c_parent_idx=1720, mojo_node_idx=3140, mojo_parent_idx=1690) 
		# constraint type (mjtEq)                  (neq x 1) 
		WhitespaceNode(c_node_idx=3171, c_parent_idx=1720, mojo_node_idx=3141, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3172, c_parent_idx=1720, mojo_node_idx=3142, mojo_parent_idx=1690) 
		int*      eq_obj1id ; 
		WhitespaceNode(c_node_idx=3173, c_parent_idx=1720, mojo_node_idx=3143, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3174, c_parent_idx=1720, mojo_node_idx=3144, mojo_parent_idx=1690) 
		# id of object 1                           (neq x 1) 
		WhitespaceNode(c_node_idx=3175, c_parent_idx=1720, mojo_node_idx=3145, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3176, c_parent_idx=1720, mojo_node_idx=3146, mojo_parent_idx=1690) 
		int*      eq_obj2id ; 
		WhitespaceNode(c_node_idx=3177, c_parent_idx=1720, mojo_node_idx=3147, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3178, c_parent_idx=1720, mojo_node_idx=3148, mojo_parent_idx=1690) 
		# id of object 2                           (neq x 1) 
		WhitespaceNode(c_node_idx=3179, c_parent_idx=1720, mojo_node_idx=3149, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3180, c_parent_idx=1720, mojo_node_idx=3150, mojo_parent_idx=1690) 
		int*      eq_objtype ; 
		WhitespaceNode(c_node_idx=3181, c_parent_idx=1720, mojo_node_idx=3151, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3182, c_parent_idx=1720, mojo_node_idx=3152, mojo_parent_idx=1690) 
		# type of both objects (mjtObj)            (neq x 1) 
		WhitespaceNode(c_node_idx=3183, c_parent_idx=1720, mojo_node_idx=3153, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3184, c_parent_idx=1720, mojo_node_idx=3154, mojo_parent_idx=1690) 
		mjtByte*  eq_active0 ; 
		WhitespaceNode(c_node_idx=3185, c_parent_idx=1720, mojo_node_idx=3155, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3186, c_parent_idx=1720, mojo_node_idx=3156, mojo_parent_idx=1690) 
		# initial enable/disable constraint state  (neq x 1) 
		WhitespaceNode(c_node_idx=3187, c_parent_idx=1720, mojo_node_idx=3157, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3188, c_parent_idx=1720, mojo_node_idx=3158, mojo_parent_idx=1690) 
		mjtNum*   eq_solref ; 
		WhitespaceNode(c_node_idx=3189, c_parent_idx=1720, mojo_node_idx=3159, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3190, c_parent_idx=1720, mojo_node_idx=3160, mojo_parent_idx=1690) 
		# constraint solver reference              (neq x mjNREF) 
		WhitespaceNode(c_node_idx=3191, c_parent_idx=1720, mojo_node_idx=3161, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3192, c_parent_idx=1720, mojo_node_idx=3162, mojo_parent_idx=1690) 
		mjtNum*   eq_solimp ; 
		WhitespaceNode(c_node_idx=3193, c_parent_idx=1720, mojo_node_idx=3163, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3194, c_parent_idx=1720, mojo_node_idx=3164, mojo_parent_idx=1690) 
		# constraint solver impedance              (neq x mjNIMP) 
		WhitespaceNode(c_node_idx=3195, c_parent_idx=1720, mojo_node_idx=3165, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3196, c_parent_idx=1720, mojo_node_idx=3166, mojo_parent_idx=1690) 
		mjtNum*   eq_data ; 
		WhitespaceNode(c_node_idx=3197, c_parent_idx=1720, mojo_node_idx=3167, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=3198, c_parent_idx=1720, mojo_node_idx=3168, mojo_parent_idx=1690) 
		# numeric data for constraint              (neq x mjNEQDATA) 
		WhitespaceNode(c_node_idx=3199, c_parent_idx=1720, mojo_node_idx=3169, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3200, c_parent_idx=1720, mojo_node_idx=3170, mojo_parent_idx=1690) 
		# tendons 
		WhitespaceNode(c_node_idx=3201, c_parent_idx=1720, mojo_node_idx=3171, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3202, c_parent_idx=1720, mojo_node_idx=3172, mojo_parent_idx=1690) 
		int*      tendon_adr ; 
		WhitespaceNode(c_node_idx=3203, c_parent_idx=1720, mojo_node_idx=3173, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3204, c_parent_idx=1720, mojo_node_idx=3174, mojo_parent_idx=1690) 
		# address of first object in tendon's path (ntendon x 1) 
		WhitespaceNode(c_node_idx=3205, c_parent_idx=1720, mojo_node_idx=3175, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3206, c_parent_idx=1720, mojo_node_idx=3176, mojo_parent_idx=1690) 
		int*      tendon_num ; 
		WhitespaceNode(c_node_idx=3207, c_parent_idx=1720, mojo_node_idx=3177, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3208, c_parent_idx=1720, mojo_node_idx=3178, mojo_parent_idx=1690) 
		# number of objects in tendon's path       (ntendon x 1) 
		WhitespaceNode(c_node_idx=3209, c_parent_idx=1720, mojo_node_idx=3179, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3210, c_parent_idx=1720, mojo_node_idx=3180, mojo_parent_idx=1690) 
		int*      tendon_matid ; 
		WhitespaceNode(c_node_idx=3211, c_parent_idx=1720, mojo_node_idx=3181, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3212, c_parent_idx=1720, mojo_node_idx=3182, mojo_parent_idx=1690) 
		# material id for rendering                (ntendon x 1) 
		WhitespaceNode(c_node_idx=3213, c_parent_idx=1720, mojo_node_idx=3183, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3214, c_parent_idx=1720, mojo_node_idx=3184, mojo_parent_idx=1690) 
		int*      tendon_group ; 
		WhitespaceNode(c_node_idx=3215, c_parent_idx=1720, mojo_node_idx=3185, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3216, c_parent_idx=1720, mojo_node_idx=3186, mojo_parent_idx=1690) 
		# group for visibility                     (ntendon x 1) 
		WhitespaceNode(c_node_idx=3217, c_parent_idx=1720, mojo_node_idx=3187, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3218, c_parent_idx=1720, mojo_node_idx=3188, mojo_parent_idx=1690) 
		mjtByte*  tendon_limited ; 
		WhitespaceNode(c_node_idx=3219, c_parent_idx=1720, mojo_node_idx=3189, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3220, c_parent_idx=1720, mojo_node_idx=3190, mojo_parent_idx=1690) 
		# does tendon have length limits           (ntendon x 1) 
		WhitespaceNode(c_node_idx=3221, c_parent_idx=1720, mojo_node_idx=3191, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3222, c_parent_idx=1720, mojo_node_idx=3192, mojo_parent_idx=1690) 
		mjtNum*   tendon_width ; 
		WhitespaceNode(c_node_idx=3223, c_parent_idx=1720, mojo_node_idx=3193, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3224, c_parent_idx=1720, mojo_node_idx=3194, mojo_parent_idx=1690) 
		# width for rendering                      (ntendon x 1) 
		WhitespaceNode(c_node_idx=3225, c_parent_idx=1720, mojo_node_idx=3195, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3226, c_parent_idx=1720, mojo_node_idx=3196, mojo_parent_idx=1690) 
		mjtNum*   tendon_solref_lim ; 
		WhitespaceNode(c_node_idx=3227, c_parent_idx=1720, mojo_node_idx=3197, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3228, c_parent_idx=1720, mojo_node_idx=3198, mojo_parent_idx=1690) 
		# constraint solver reference: limit       (ntendon x mjNREF) 
		WhitespaceNode(c_node_idx=3229, c_parent_idx=1720, mojo_node_idx=3199, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3230, c_parent_idx=1720, mojo_node_idx=3200, mojo_parent_idx=1690) 
		mjtNum*   tendon_solimp_lim ; 
		WhitespaceNode(c_node_idx=3231, c_parent_idx=1720, mojo_node_idx=3201, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3232, c_parent_idx=1720, mojo_node_idx=3202, mojo_parent_idx=1690) 
		# constraint solver impedance: limit       (ntendon x mjNIMP) 
		WhitespaceNode(c_node_idx=3233, c_parent_idx=1720, mojo_node_idx=3203, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3234, c_parent_idx=1720, mojo_node_idx=3204, mojo_parent_idx=1690) 
		mjtNum*   tendon_solref_fri ; 
		WhitespaceNode(c_node_idx=3235, c_parent_idx=1720, mojo_node_idx=3205, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3236, c_parent_idx=1720, mojo_node_idx=3206, mojo_parent_idx=1690) 
		# constraint solver reference: friction    (ntendon x mjNREF) 
		WhitespaceNode(c_node_idx=3237, c_parent_idx=1720, mojo_node_idx=3207, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3238, c_parent_idx=1720, mojo_node_idx=3208, mojo_parent_idx=1690) 
		mjtNum*   tendon_solimp_fri ; 
		WhitespaceNode(c_node_idx=3239, c_parent_idx=1720, mojo_node_idx=3209, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3240, c_parent_idx=1720, mojo_node_idx=3210, mojo_parent_idx=1690) 
		# constraint solver impedance: friction    (ntendon x mjNIMP) 
		WhitespaceNode(c_node_idx=3241, c_parent_idx=1720, mojo_node_idx=3211, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3242, c_parent_idx=1720, mojo_node_idx=3212, mojo_parent_idx=1690) 
		mjtNum*   tendon_range ; 
		WhitespaceNode(c_node_idx=3243, c_parent_idx=1720, mojo_node_idx=3213, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3244, c_parent_idx=1720, mojo_node_idx=3214, mojo_parent_idx=1690) 
		# tendon length limits                     (ntendon x 2) 
		WhitespaceNode(c_node_idx=3245, c_parent_idx=1720, mojo_node_idx=3215, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3246, c_parent_idx=1720, mojo_node_idx=3216, mojo_parent_idx=1690) 
		mjtNum*   tendon_margin ; 
		WhitespaceNode(c_node_idx=3247, c_parent_idx=1720, mojo_node_idx=3217, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3248, c_parent_idx=1720, mojo_node_idx=3218, mojo_parent_idx=1690) 
		# min distance for limit detection         (ntendon x 1) 
		WhitespaceNode(c_node_idx=3249, c_parent_idx=1720, mojo_node_idx=3219, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3250, c_parent_idx=1720, mojo_node_idx=3220, mojo_parent_idx=1690) 
		mjtNum*   tendon_stiffness ; 
		WhitespaceNode(c_node_idx=3251, c_parent_idx=1720, mojo_node_idx=3221, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=3252, c_parent_idx=1720, mojo_node_idx=3222, mojo_parent_idx=1690) 
		# stiffness coefficient                    (ntendon x 1) 
		WhitespaceNode(c_node_idx=3253, c_parent_idx=1720, mojo_node_idx=3223, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3254, c_parent_idx=1720, mojo_node_idx=3224, mojo_parent_idx=1690) 
		mjtNum*   tendon_damping ; 
		WhitespaceNode(c_node_idx=3255, c_parent_idx=1720, mojo_node_idx=3225, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3256, c_parent_idx=1720, mojo_node_idx=3226, mojo_parent_idx=1690) 
		# damping coefficient                      (ntendon x 1) 
		WhitespaceNode(c_node_idx=3257, c_parent_idx=1720, mojo_node_idx=3227, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3258, c_parent_idx=1720, mojo_node_idx=3228, mojo_parent_idx=1690) 
		mjtNum*   tendon_frictionloss ; 
		WhitespaceNode(c_node_idx=3259, c_parent_idx=1720, mojo_node_idx=3229, mojo_parent_idx=1690) 
		  
		SingleLineCommentNode(c_node_idx=3260, c_parent_idx=1720, mojo_node_idx=3230, mojo_parent_idx=1690) 
		# loss due to friction                     (ntendon x 1) 
		WhitespaceNode(c_node_idx=3261, c_parent_idx=1720, mojo_node_idx=3231, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3262, c_parent_idx=1720, mojo_node_idx=3232, mojo_parent_idx=1690) 
		mjtNum*   tendon_lengthspring ; 
		WhitespaceNode(c_node_idx=3263, c_parent_idx=1720, mojo_node_idx=3233, mojo_parent_idx=1690) 
		  
		SingleLineCommentNode(c_node_idx=3264, c_parent_idx=1720, mojo_node_idx=3234, mojo_parent_idx=1690) 
		# spring resting length range              (ntendon x 2) 
		WhitespaceNode(c_node_idx=3265, c_parent_idx=1720, mojo_node_idx=3235, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3266, c_parent_idx=1720, mojo_node_idx=3236, mojo_parent_idx=1690) 
		mjtNum*   tendon_length0 ; 
		WhitespaceNode(c_node_idx=3267, c_parent_idx=1720, mojo_node_idx=3237, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3268, c_parent_idx=1720, mojo_node_idx=3238, mojo_parent_idx=1690) 
		# tendon length in qpos0                   (ntendon x 1) 
		WhitespaceNode(c_node_idx=3269, c_parent_idx=1720, mojo_node_idx=3239, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3270, c_parent_idx=1720, mojo_node_idx=3240, mojo_parent_idx=1690) 
		mjtNum*   tendon_invweight0 ; 
		WhitespaceNode(c_node_idx=3271, c_parent_idx=1720, mojo_node_idx=3241, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3272, c_parent_idx=1720, mojo_node_idx=3242, mojo_parent_idx=1690) 
		# inv. weight in qpos0                     (ntendon x 1) 
		WhitespaceNode(c_node_idx=3273, c_parent_idx=1720, mojo_node_idx=3243, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3274, c_parent_idx=1720, mojo_node_idx=3244, mojo_parent_idx=1690) 
		mjtNum*   tendon_user ; 
		WhitespaceNode(c_node_idx=3275, c_parent_idx=1720, mojo_node_idx=3245, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3276, c_parent_idx=1720, mojo_node_idx=3246, mojo_parent_idx=1690) 
		# user data                                (ntendon x nuser_tendon) 
		WhitespaceNode(c_node_idx=3277, c_parent_idx=1720, mojo_node_idx=3247, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3278, c_parent_idx=1720, mojo_node_idx=3248, mojo_parent_idx=1690) 
		float*    tendon_rgba ; 
		WhitespaceNode(c_node_idx=3279, c_parent_idx=1720, mojo_node_idx=3249, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3280, c_parent_idx=1720, mojo_node_idx=3250, mojo_parent_idx=1690) 
		# rgba when material is omitted            (ntendon x 4) 
		WhitespaceNode(c_node_idx=3281, c_parent_idx=1720, mojo_node_idx=3251, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3282, c_parent_idx=1720, mojo_node_idx=3252, mojo_parent_idx=1690) 
		# list of all wrap objects in tendon paths 
		WhitespaceNode(c_node_idx=3283, c_parent_idx=1720, mojo_node_idx=3253, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3284, c_parent_idx=1720, mojo_node_idx=3254, mojo_parent_idx=1690) 
		int*      wrap_type ; 
		WhitespaceNode(c_node_idx=3285, c_parent_idx=1720, mojo_node_idx=3255, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3286, c_parent_idx=1720, mojo_node_idx=3256, mojo_parent_idx=1690) 
		# wrap object type (mjtWrap)               (nwrap x 1) 
		WhitespaceNode(c_node_idx=3287, c_parent_idx=1720, mojo_node_idx=3257, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3288, c_parent_idx=1720, mojo_node_idx=3258, mojo_parent_idx=1690) 
		int*      wrap_objid ; 
		WhitespaceNode(c_node_idx=3289, c_parent_idx=1720, mojo_node_idx=3259, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3290, c_parent_idx=1720, mojo_node_idx=3260, mojo_parent_idx=1690) 
		# object id: geom ,  site ,  joint             (nwrap x 1) 
		WhitespaceNode(c_node_idx=3291, c_parent_idx=1720, mojo_node_idx=3261, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3292, c_parent_idx=1720, mojo_node_idx=3262, mojo_parent_idx=1690) 
		mjtNum*   wrap_prm ; 
		WhitespaceNode(c_node_idx=3293, c_parent_idx=1720, mojo_node_idx=3263, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3294, c_parent_idx=1720, mojo_node_idx=3264, mojo_parent_idx=1690) 
		# divisor ,  joint coef ,  or site id          (nwrap x 1) 
		WhitespaceNode(c_node_idx=3295, c_parent_idx=1720, mojo_node_idx=3265, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3296, c_parent_idx=1720, mojo_node_idx=3266, mojo_parent_idx=1690) 
		# actuators 
		WhitespaceNode(c_node_idx=3297, c_parent_idx=1720, mojo_node_idx=3267, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3298, c_parent_idx=1720, mojo_node_idx=3268, mojo_parent_idx=1690) 
		int*      actuator_trntype ; 
		WhitespaceNode(c_node_idx=3299, c_parent_idx=1720, mojo_node_idx=3269, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=3300, c_parent_idx=1720, mojo_node_idx=3270, mojo_parent_idx=1690) 
		# transmission type (mjtTrn)               (nu x 1) 
		WhitespaceNode(c_node_idx=3301, c_parent_idx=1720, mojo_node_idx=3271, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3302, c_parent_idx=1720, mojo_node_idx=3272, mojo_parent_idx=1690) 
		int*      actuator_dyntype ; 
		WhitespaceNode(c_node_idx=3303, c_parent_idx=1720, mojo_node_idx=3273, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=3304, c_parent_idx=1720, mojo_node_idx=3274, mojo_parent_idx=1690) 
		# dynamics type (mjtDyn)                   (nu x 1) 
		WhitespaceNode(c_node_idx=3305, c_parent_idx=1720, mojo_node_idx=3275, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3306, c_parent_idx=1720, mojo_node_idx=3276, mojo_parent_idx=1690) 
		int*      actuator_gaintype ; 
		WhitespaceNode(c_node_idx=3307, c_parent_idx=1720, mojo_node_idx=3277, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3308, c_parent_idx=1720, mojo_node_idx=3278, mojo_parent_idx=1690) 
		# gain type (mjtGain)                      (nu x 1) 
		WhitespaceNode(c_node_idx=3309, c_parent_idx=1720, mojo_node_idx=3279, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3310, c_parent_idx=1720, mojo_node_idx=3280, mojo_parent_idx=1690) 
		int*      actuator_biastype ; 
		WhitespaceNode(c_node_idx=3311, c_parent_idx=1720, mojo_node_idx=3281, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3312, c_parent_idx=1720, mojo_node_idx=3282, mojo_parent_idx=1690) 
		# bias type (mjtBias)                      (nu x 1) 
		WhitespaceNode(c_node_idx=3313, c_parent_idx=1720, mojo_node_idx=3283, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3314, c_parent_idx=1720, mojo_node_idx=3284, mojo_parent_idx=1690) 
		int*      actuator_trnid ; 
		WhitespaceNode(c_node_idx=3315, c_parent_idx=1720, mojo_node_idx=3285, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3316, c_parent_idx=1720, mojo_node_idx=3286, mojo_parent_idx=1690) 
		# transmission id: joint ,  tendon ,  site     (nu x 2) 
		WhitespaceNode(c_node_idx=3317, c_parent_idx=1720, mojo_node_idx=3287, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3318, c_parent_idx=1720, mojo_node_idx=3288, mojo_parent_idx=1690) 
		int*      actuator_actadr ; 
		WhitespaceNode(c_node_idx=3319, c_parent_idx=1720, mojo_node_idx=3289, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3320, c_parent_idx=1720, mojo_node_idx=3290, mojo_parent_idx=1690) 
		# first activation address ;  -1: stateless  (nu x 1) 
		WhitespaceNode(c_node_idx=3321, c_parent_idx=1720, mojo_node_idx=3291, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3322, c_parent_idx=1720, mojo_node_idx=3292, mojo_parent_idx=1690) 
		int*      actuator_actnum ; 
		WhitespaceNode(c_node_idx=3323, c_parent_idx=1720, mojo_node_idx=3293, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3324, c_parent_idx=1720, mojo_node_idx=3294, mojo_parent_idx=1690) 
		# number of activation variables           (nu x 1) 
		WhitespaceNode(c_node_idx=3325, c_parent_idx=1720, mojo_node_idx=3295, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3326, c_parent_idx=1720, mojo_node_idx=3296, mojo_parent_idx=1690) 
		int*      actuator_group ; 
		WhitespaceNode(c_node_idx=3327, c_parent_idx=1720, mojo_node_idx=3297, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3328, c_parent_idx=1720, mojo_node_idx=3298, mojo_parent_idx=1690) 
		# group for visibility                     (nu x 1) 
		WhitespaceNode(c_node_idx=3329, c_parent_idx=1720, mojo_node_idx=3299, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3330, c_parent_idx=1720, mojo_node_idx=3300, mojo_parent_idx=1690) 
		mjtByte*  actuator_ctrllimited ; 
		WhitespaceNode(c_node_idx=3331, c_parent_idx=1720, mojo_node_idx=3301, mojo_parent_idx=1690) 
		 
		SingleLineCommentNode(c_node_idx=3332, c_parent_idx=1720, mojo_node_idx=3302, mojo_parent_idx=1690) 
		# is control limited                       (nu x 1) 
		WhitespaceNode(c_node_idx=3333, c_parent_idx=1720, mojo_node_idx=3303, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3334, c_parent_idx=1720, mojo_node_idx=3304, mojo_parent_idx=1690) 
		mjtByte*  actuator_forcelimited ; 
		SingleLineCommentNode(c_node_idx=3335, c_parent_idx=1720, mojo_node_idx=3305, mojo_parent_idx=1690) 
		# is force limited                         (nu x 1) 
		WhitespaceNode(c_node_idx=3336, c_parent_idx=1720, mojo_node_idx=3306, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3337, c_parent_idx=1720, mojo_node_idx=3307, mojo_parent_idx=1690) 
		mjtByte*  actuator_actlimited ; 
		WhitespaceNode(c_node_idx=3338, c_parent_idx=1720, mojo_node_idx=3308, mojo_parent_idx=1690) 
		  
		SingleLineCommentNode(c_node_idx=3339, c_parent_idx=1720, mojo_node_idx=3309, mojo_parent_idx=1690) 
		# is activation limited                    (nu x 1) 
		WhitespaceNode(c_node_idx=3340, c_parent_idx=1720, mojo_node_idx=3310, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3341, c_parent_idx=1720, mojo_node_idx=3311, mojo_parent_idx=1690) 
		mjtNum*   actuator_dynprm ; 
		WhitespaceNode(c_node_idx=3342, c_parent_idx=1720, mojo_node_idx=3312, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3343, c_parent_idx=1720, mojo_node_idx=3313, mojo_parent_idx=1690) 
		# dynamics parameters                      (nu x mjNDYN) 
		WhitespaceNode(c_node_idx=3344, c_parent_idx=1720, mojo_node_idx=3314, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3345, c_parent_idx=1720, mojo_node_idx=3315, mojo_parent_idx=1690) 
		mjtNum*   actuator_gainprm ; 
		WhitespaceNode(c_node_idx=3346, c_parent_idx=1720, mojo_node_idx=3316, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=3347, c_parent_idx=1720, mojo_node_idx=3317, mojo_parent_idx=1690) 
		# gain parameters                          (nu x mjNGAIN) 
		WhitespaceNode(c_node_idx=3348, c_parent_idx=1720, mojo_node_idx=3318, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3349, c_parent_idx=1720, mojo_node_idx=3319, mojo_parent_idx=1690) 
		mjtNum*   actuator_biasprm ; 
		WhitespaceNode(c_node_idx=3350, c_parent_idx=1720, mojo_node_idx=3320, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=3351, c_parent_idx=1720, mojo_node_idx=3321, mojo_parent_idx=1690) 
		# bias parameters                          (nu x mjNBIAS) 
		WhitespaceNode(c_node_idx=3352, c_parent_idx=1720, mojo_node_idx=3322, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3353, c_parent_idx=1720, mojo_node_idx=3323, mojo_parent_idx=1690) 
		mjtByte*  actuator_actearly ; 
		WhitespaceNode(c_node_idx=3354, c_parent_idx=1720, mojo_node_idx=3324, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3355, c_parent_idx=1720, mojo_node_idx=3325, mojo_parent_idx=1690) 
		# step activation before force             (nu x 1) 
		WhitespaceNode(c_node_idx=3356, c_parent_idx=1720, mojo_node_idx=3326, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3357, c_parent_idx=1720, mojo_node_idx=3327, mojo_parent_idx=1690) 
		mjtNum*   actuator_ctrlrange ; 
		WhitespaceNode(c_node_idx=3358, c_parent_idx=1720, mojo_node_idx=3328, mojo_parent_idx=1690) 
		   
		SingleLineCommentNode(c_node_idx=3359, c_parent_idx=1720, mojo_node_idx=3329, mojo_parent_idx=1690) 
		# range of controls                        (nu x 2) 
		WhitespaceNode(c_node_idx=3360, c_parent_idx=1720, mojo_node_idx=3330, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3361, c_parent_idx=1720, mojo_node_idx=3331, mojo_parent_idx=1690) 
		mjtNum*   actuator_forcerange ; 
		WhitespaceNode(c_node_idx=3362, c_parent_idx=1720, mojo_node_idx=3332, mojo_parent_idx=1690) 
		  
		SingleLineCommentNode(c_node_idx=3363, c_parent_idx=1720, mojo_node_idx=3333, mojo_parent_idx=1690) 
		# range of forces                          (nu x 2) 
		WhitespaceNode(c_node_idx=3364, c_parent_idx=1720, mojo_node_idx=3334, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3365, c_parent_idx=1720, mojo_node_idx=3335, mojo_parent_idx=1690) 
		mjtNum*   actuator_actrange ; 
		WhitespaceNode(c_node_idx=3366, c_parent_idx=1720, mojo_node_idx=3336, mojo_parent_idx=1690) 
		    
		SingleLineCommentNode(c_node_idx=3367, c_parent_idx=1720, mojo_node_idx=3337, mojo_parent_idx=1690) 
		# range of activations                     (nu x 2) 
		WhitespaceNode(c_node_idx=3368, c_parent_idx=1720, mojo_node_idx=3338, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3369, c_parent_idx=1720, mojo_node_idx=3339, mojo_parent_idx=1690) 
		mjtNum*   actuator_gear ; 
		WhitespaceNode(c_node_idx=3370, c_parent_idx=1720, mojo_node_idx=3340, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3371, c_parent_idx=1720, mojo_node_idx=3341, mojo_parent_idx=1690) 
		# scale length and transmitted force       (nu x 6) 
		WhitespaceNode(c_node_idx=3372, c_parent_idx=1720, mojo_node_idx=3342, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3373, c_parent_idx=1720, mojo_node_idx=3343, mojo_parent_idx=1690) 
		mjtNum*   actuator_cranklength ; 
		WhitespaceNode(c_node_idx=3374, c_parent_idx=1720, mojo_node_idx=3344, mojo_parent_idx=1690) 
		 
		SingleLineCommentNode(c_node_idx=3375, c_parent_idx=1720, mojo_node_idx=3345, mojo_parent_idx=1690) 
		# crank length for slider-crank            (nu x 1) 
		WhitespaceNode(c_node_idx=3376, c_parent_idx=1720, mojo_node_idx=3346, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3377, c_parent_idx=1720, mojo_node_idx=3347, mojo_parent_idx=1690) 
		mjtNum*   actuator_acc0 ; 
		WhitespaceNode(c_node_idx=3378, c_parent_idx=1720, mojo_node_idx=3348, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3379, c_parent_idx=1720, mojo_node_idx=3349, mojo_parent_idx=1690) 
		# acceleration from unit force in qpos0    (nu x 1) 
		WhitespaceNode(c_node_idx=3380, c_parent_idx=1720, mojo_node_idx=3350, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3381, c_parent_idx=1720, mojo_node_idx=3351, mojo_parent_idx=1690) 
		mjtNum*   actuator_length0 ; 
		WhitespaceNode(c_node_idx=3382, c_parent_idx=1720, mojo_node_idx=3352, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=3383, c_parent_idx=1720, mojo_node_idx=3353, mojo_parent_idx=1690) 
		# actuator length in qpos0                 (nu x 1) 
		WhitespaceNode(c_node_idx=3384, c_parent_idx=1720, mojo_node_idx=3354, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3385, c_parent_idx=1720, mojo_node_idx=3355, mojo_parent_idx=1690) 
		mjtNum*   actuator_lengthrange ; 
		WhitespaceNode(c_node_idx=3386, c_parent_idx=1720, mojo_node_idx=3356, mojo_parent_idx=1690) 
		 
		SingleLineCommentNode(c_node_idx=3387, c_parent_idx=1720, mojo_node_idx=3357, mojo_parent_idx=1690) 
		# feasible actuator length range           (nu x 2) 
		WhitespaceNode(c_node_idx=3388, c_parent_idx=1720, mojo_node_idx=3358, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3389, c_parent_idx=1720, mojo_node_idx=3359, mojo_parent_idx=1690) 
		mjtNum*   actuator_user ; 
		WhitespaceNode(c_node_idx=3390, c_parent_idx=1720, mojo_node_idx=3360, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3391, c_parent_idx=1720, mojo_node_idx=3361, mojo_parent_idx=1690) 
		# user data                                (nu x nuser_actuator) 
		WhitespaceNode(c_node_idx=3392, c_parent_idx=1720, mojo_node_idx=3362, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3393, c_parent_idx=1720, mojo_node_idx=3363, mojo_parent_idx=1690) 
		int*      actuator_plugin ; 
		WhitespaceNode(c_node_idx=3394, c_parent_idx=1720, mojo_node_idx=3364, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3395, c_parent_idx=1720, mojo_node_idx=3365, mojo_parent_idx=1690) 
		# plugin instance id ;  -1: not a plugin     (nu x 1) 
		WhitespaceNode(c_node_idx=3396, c_parent_idx=1720, mojo_node_idx=3366, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3397, c_parent_idx=1720, mojo_node_idx=3367, mojo_parent_idx=1690) 
		# sensors 
		WhitespaceNode(c_node_idx=3398, c_parent_idx=1720, mojo_node_idx=3368, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3399, c_parent_idx=1720, mojo_node_idx=3369, mojo_parent_idx=1690) 
		int*      sensor_type ; 
		WhitespaceNode(c_node_idx=3400, c_parent_idx=1720, mojo_node_idx=3370, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3401, c_parent_idx=1720, mojo_node_idx=3371, mojo_parent_idx=1690) 
		# sensor type (mjtSensor)                  (nsensor x 1) 
		WhitespaceNode(c_node_idx=3402, c_parent_idx=1720, mojo_node_idx=3372, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3403, c_parent_idx=1720, mojo_node_idx=3373, mojo_parent_idx=1690) 
		int*      sensor_datatype ; 
		WhitespaceNode(c_node_idx=3404, c_parent_idx=1720, mojo_node_idx=3374, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3405, c_parent_idx=1720, mojo_node_idx=3375, mojo_parent_idx=1690) 
		# numeric data type (mjtDataType)          (nsensor x 1) 
		WhitespaceNode(c_node_idx=3406, c_parent_idx=1720, mojo_node_idx=3376, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3407, c_parent_idx=1720, mojo_node_idx=3377, mojo_parent_idx=1690) 
		int*      sensor_needstage ; 
		WhitespaceNode(c_node_idx=3408, c_parent_idx=1720, mojo_node_idx=3378, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=3409, c_parent_idx=1720, mojo_node_idx=3379, mojo_parent_idx=1690) 
		# required compute stage (mjtStage)        (nsensor x 1) 
		WhitespaceNode(c_node_idx=3410, c_parent_idx=1720, mojo_node_idx=3380, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3411, c_parent_idx=1720, mojo_node_idx=3381, mojo_parent_idx=1690) 
		int*      sensor_objtype ; 
		WhitespaceNode(c_node_idx=3412, c_parent_idx=1720, mojo_node_idx=3382, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3413, c_parent_idx=1720, mojo_node_idx=3383, mojo_parent_idx=1690) 
		# type of sensorized object (mjtObj)       (nsensor x 1) 
		WhitespaceNode(c_node_idx=3414, c_parent_idx=1720, mojo_node_idx=3384, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3415, c_parent_idx=1720, mojo_node_idx=3385, mojo_parent_idx=1690) 
		int*      sensor_objid ; 
		WhitespaceNode(c_node_idx=3416, c_parent_idx=1720, mojo_node_idx=3386, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3417, c_parent_idx=1720, mojo_node_idx=3387, mojo_parent_idx=1690) 
		# id of sensorized object                  (nsensor x 1) 
		WhitespaceNode(c_node_idx=3418, c_parent_idx=1720, mojo_node_idx=3388, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3419, c_parent_idx=1720, mojo_node_idx=3389, mojo_parent_idx=1690) 
		int*      sensor_reftype ; 
		WhitespaceNode(c_node_idx=3420, c_parent_idx=1720, mojo_node_idx=3390, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3421, c_parent_idx=1720, mojo_node_idx=3391, mojo_parent_idx=1690) 
		# type of reference frame (mjtObj)         (nsensor x 1) 
		WhitespaceNode(c_node_idx=3422, c_parent_idx=1720, mojo_node_idx=3392, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3423, c_parent_idx=1720, mojo_node_idx=3393, mojo_parent_idx=1690) 
		int*      sensor_refid ; 
		WhitespaceNode(c_node_idx=3424, c_parent_idx=1720, mojo_node_idx=3394, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3425, c_parent_idx=1720, mojo_node_idx=3395, mojo_parent_idx=1690) 
		# id of reference frame ;  -1: global frame  (nsensor x 1) 
		WhitespaceNode(c_node_idx=3426, c_parent_idx=1720, mojo_node_idx=3396, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3427, c_parent_idx=1720, mojo_node_idx=3397, mojo_parent_idx=1690) 
		int*      sensor_dim ; 
		WhitespaceNode(c_node_idx=3428, c_parent_idx=1720, mojo_node_idx=3398, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3429, c_parent_idx=1720, mojo_node_idx=3399, mojo_parent_idx=1690) 
		# number of scalar outputs                 (nsensor x 1) 
		WhitespaceNode(c_node_idx=3430, c_parent_idx=1720, mojo_node_idx=3400, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3431, c_parent_idx=1720, mojo_node_idx=3401, mojo_parent_idx=1690) 
		int*      sensor_adr ; 
		WhitespaceNode(c_node_idx=3432, c_parent_idx=1720, mojo_node_idx=3402, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3433, c_parent_idx=1720, mojo_node_idx=3403, mojo_parent_idx=1690) 
		# address in sensor array                  (nsensor x 1) 
		WhitespaceNode(c_node_idx=3434, c_parent_idx=1720, mojo_node_idx=3404, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3435, c_parent_idx=1720, mojo_node_idx=3405, mojo_parent_idx=1690) 
		mjtNum*   sensor_cutoff ; 
		WhitespaceNode(c_node_idx=3436, c_parent_idx=1720, mojo_node_idx=3406, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3437, c_parent_idx=1720, mojo_node_idx=3407, mojo_parent_idx=1690) 
		# cutoff for real and positive ;  0: ignore  (nsensor x 1) 
		WhitespaceNode(c_node_idx=3438, c_parent_idx=1720, mojo_node_idx=3408, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3439, c_parent_idx=1720, mojo_node_idx=3409, mojo_parent_idx=1690) 
		mjtNum*   sensor_noise ; 
		WhitespaceNode(c_node_idx=3440, c_parent_idx=1720, mojo_node_idx=3410, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3441, c_parent_idx=1720, mojo_node_idx=3411, mojo_parent_idx=1690) 
		# noise standard deviation                 (nsensor x 1) 
		WhitespaceNode(c_node_idx=3442, c_parent_idx=1720, mojo_node_idx=3412, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3443, c_parent_idx=1720, mojo_node_idx=3413, mojo_parent_idx=1690) 
		mjtNum*   sensor_user ; 
		WhitespaceNode(c_node_idx=3444, c_parent_idx=1720, mojo_node_idx=3414, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3445, c_parent_idx=1720, mojo_node_idx=3415, mojo_parent_idx=1690) 
		# user data                                (nsensor x nuser_sensor) 
		WhitespaceNode(c_node_idx=3446, c_parent_idx=1720, mojo_node_idx=3416, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3447, c_parent_idx=1720, mojo_node_idx=3417, mojo_parent_idx=1690) 
		int*      sensor_plugin ; 
		WhitespaceNode(c_node_idx=3448, c_parent_idx=1720, mojo_node_idx=3418, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3449, c_parent_idx=1720, mojo_node_idx=3419, mojo_parent_idx=1690) 
		# plugin instance id ;  -1: not a plugin     (nsensor x 1) 
		WhitespaceNode(c_node_idx=3450, c_parent_idx=1720, mojo_node_idx=3420, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3451, c_parent_idx=1720, mojo_node_idx=3421, mojo_parent_idx=1690) 
		# plugin instances 
		WhitespaceNode(c_node_idx=3452, c_parent_idx=1720, mojo_node_idx=3422, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3453, c_parent_idx=1720, mojo_node_idx=3423, mojo_parent_idx=1690) 
		int*      plugin ; 
		WhitespaceNode(c_node_idx=3454, c_parent_idx=1720, mojo_node_idx=3424, mojo_parent_idx=1690) 
		               
		SingleLineCommentNode(c_node_idx=3455, c_parent_idx=1720, mojo_node_idx=3425, mojo_parent_idx=1690) 
		# globally registered plugin slot number   (nplugin x 1) 
		WhitespaceNode(c_node_idx=3456, c_parent_idx=1720, mojo_node_idx=3426, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3457, c_parent_idx=1720, mojo_node_idx=3427, mojo_parent_idx=1690) 
		int*      plugin_stateadr ; 
		WhitespaceNode(c_node_idx=3458, c_parent_idx=1720, mojo_node_idx=3428, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3459, c_parent_idx=1720, mojo_node_idx=3429, mojo_parent_idx=1690) 
		# address in the plugin state array        (nplugin x 1) 
		WhitespaceNode(c_node_idx=3460, c_parent_idx=1720, mojo_node_idx=3430, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3461, c_parent_idx=1720, mojo_node_idx=3431, mojo_parent_idx=1690) 
		int*      plugin_statenum ; 
		WhitespaceNode(c_node_idx=3462, c_parent_idx=1720, mojo_node_idx=3432, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3463, c_parent_idx=1720, mojo_node_idx=3433, mojo_parent_idx=1690) 
		# number of states in the plugin instance  (nplugin x 1) 
		WhitespaceNode(c_node_idx=3464, c_parent_idx=1720, mojo_node_idx=3434, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3465, c_parent_idx=1720, mojo_node_idx=3435, mojo_parent_idx=1690) 
		char*     plugin_attr ; 
		WhitespaceNode(c_node_idx=3466, c_parent_idx=1720, mojo_node_idx=3436, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3467, c_parent_idx=1720, mojo_node_idx=3437, mojo_parent_idx=1690) 
		# config attributes of plugin instances    (npluginattr x 1) 
		WhitespaceNode(c_node_idx=3468, c_parent_idx=1720, mojo_node_idx=3438, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3469, c_parent_idx=1720, mojo_node_idx=3439, mojo_parent_idx=1690) 
		int*      plugin_attradr ; 
		WhitespaceNode(c_node_idx=3470, c_parent_idx=1720, mojo_node_idx=3440, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3471, c_parent_idx=1720, mojo_node_idx=3441, mojo_parent_idx=1690) 
		# address to each instance's config attrib (nplugin x 1) 
		WhitespaceNode(c_node_idx=3472, c_parent_idx=1720, mojo_node_idx=3442, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3473, c_parent_idx=1720, mojo_node_idx=3443, mojo_parent_idx=1690) 
		# custom numeric fields 
		WhitespaceNode(c_node_idx=3474, c_parent_idx=1720, mojo_node_idx=3444, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3475, c_parent_idx=1720, mojo_node_idx=3445, mojo_parent_idx=1690) 
		int*      numeric_adr ; 
		WhitespaceNode(c_node_idx=3476, c_parent_idx=1720, mojo_node_idx=3446, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3477, c_parent_idx=1720, mojo_node_idx=3447, mojo_parent_idx=1690) 
		# address of field in numeric_data         (nnumeric x 1) 
		WhitespaceNode(c_node_idx=3478, c_parent_idx=1720, mojo_node_idx=3448, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3479, c_parent_idx=1720, mojo_node_idx=3449, mojo_parent_idx=1690) 
		int*      numeric_size ; 
		WhitespaceNode(c_node_idx=3480, c_parent_idx=1720, mojo_node_idx=3450, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3481, c_parent_idx=1720, mojo_node_idx=3451, mojo_parent_idx=1690) 
		# size of numeric field                    (nnumeric x 1) 
		WhitespaceNode(c_node_idx=3482, c_parent_idx=1720, mojo_node_idx=3452, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3483, c_parent_idx=1720, mojo_node_idx=3453, mojo_parent_idx=1690) 
		mjtNum*   numeric_data ; 
		WhitespaceNode(c_node_idx=3484, c_parent_idx=1720, mojo_node_idx=3454, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3485, c_parent_idx=1720, mojo_node_idx=3455, mojo_parent_idx=1690) 
		# array of all numeric fields              (nnumericdata x 1) 
		WhitespaceNode(c_node_idx=3486, c_parent_idx=1720, mojo_node_idx=3456, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3487, c_parent_idx=1720, mojo_node_idx=3457, mojo_parent_idx=1690) 
		# custom text fields 
		WhitespaceNode(c_node_idx=3488, c_parent_idx=1720, mojo_node_idx=3458, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3489, c_parent_idx=1720, mojo_node_idx=3459, mojo_parent_idx=1690) 
		int*      text_adr ; 
		WhitespaceNode(c_node_idx=3490, c_parent_idx=1720, mojo_node_idx=3460, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3491, c_parent_idx=1720, mojo_node_idx=3461, mojo_parent_idx=1690) 
		# address of text in text_data             (ntext x 1) 
		WhitespaceNode(c_node_idx=3492, c_parent_idx=1720, mojo_node_idx=3462, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3493, c_parent_idx=1720, mojo_node_idx=3463, mojo_parent_idx=1690) 
		int*      text_size ; 
		WhitespaceNode(c_node_idx=3494, c_parent_idx=1720, mojo_node_idx=3464, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3495, c_parent_idx=1720, mojo_node_idx=3465, mojo_parent_idx=1690) 
		# size of text field (strlen+1)            (ntext x 1) 
		WhitespaceNode(c_node_idx=3496, c_parent_idx=1720, mojo_node_idx=3466, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3497, c_parent_idx=1720, mojo_node_idx=3467, mojo_parent_idx=1690) 
		char*     text_data ; 
		WhitespaceNode(c_node_idx=3498, c_parent_idx=1720, mojo_node_idx=3468, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3499, c_parent_idx=1720, mojo_node_idx=3469, mojo_parent_idx=1690) 
		# array of all text fields (0-terminated)  (ntextdata x 1) 
		WhitespaceNode(c_node_idx=3500, c_parent_idx=1720, mojo_node_idx=3470, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3501, c_parent_idx=1720, mojo_node_idx=3471, mojo_parent_idx=1690) 
		# custom tuple fields 
		WhitespaceNode(c_node_idx=3502, c_parent_idx=1720, mojo_node_idx=3472, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3503, c_parent_idx=1720, mojo_node_idx=3473, mojo_parent_idx=1690) 
		int*      tuple_adr ; 
		WhitespaceNode(c_node_idx=3504, c_parent_idx=1720, mojo_node_idx=3474, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3505, c_parent_idx=1720, mojo_node_idx=3475, mojo_parent_idx=1690) 
		# address of text in text_data             (ntuple x 1) 
		WhitespaceNode(c_node_idx=3506, c_parent_idx=1720, mojo_node_idx=3476, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3507, c_parent_idx=1720, mojo_node_idx=3477, mojo_parent_idx=1690) 
		int*      tuple_size ; 
		WhitespaceNode(c_node_idx=3508, c_parent_idx=1720, mojo_node_idx=3478, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3509, c_parent_idx=1720, mojo_node_idx=3479, mojo_parent_idx=1690) 
		# number of objects in tuple               (ntuple x 1) 
		WhitespaceNode(c_node_idx=3510, c_parent_idx=1720, mojo_node_idx=3480, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3511, c_parent_idx=1720, mojo_node_idx=3481, mojo_parent_idx=1690) 
		int*      tuple_objtype ; 
		WhitespaceNode(c_node_idx=3512, c_parent_idx=1720, mojo_node_idx=3482, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3513, c_parent_idx=1720, mojo_node_idx=3483, mojo_parent_idx=1690) 
		# array of object types in all tuples      (ntupledata x 1) 
		WhitespaceNode(c_node_idx=3514, c_parent_idx=1720, mojo_node_idx=3484, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3515, c_parent_idx=1720, mojo_node_idx=3485, mojo_parent_idx=1690) 
		int*      tuple_objid ; 
		WhitespaceNode(c_node_idx=3516, c_parent_idx=1720, mojo_node_idx=3486, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3517, c_parent_idx=1720, mojo_node_idx=3487, mojo_parent_idx=1690) 
		# array of object ids in all tuples        (ntupledata x 1) 
		WhitespaceNode(c_node_idx=3518, c_parent_idx=1720, mojo_node_idx=3488, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3519, c_parent_idx=1720, mojo_node_idx=3489, mojo_parent_idx=1690) 
		mjtNum*   tuple_objprm ; 
		WhitespaceNode(c_node_idx=3520, c_parent_idx=1720, mojo_node_idx=3490, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3521, c_parent_idx=1720, mojo_node_idx=3491, mojo_parent_idx=1690) 
		# array of object params in all tuples     (ntupledata x 1) 
		WhitespaceNode(c_node_idx=3522, c_parent_idx=1720, mojo_node_idx=3492, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3523, c_parent_idx=1720, mojo_node_idx=3493, mojo_parent_idx=1690) 
		# keyframes 
		WhitespaceNode(c_node_idx=3524, c_parent_idx=1720, mojo_node_idx=3494, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3525, c_parent_idx=1720, mojo_node_idx=3495, mojo_parent_idx=1690) 
		mjtNum*   key_time ; 
		WhitespaceNode(c_node_idx=3526, c_parent_idx=1720, mojo_node_idx=3496, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3527, c_parent_idx=1720, mojo_node_idx=3497, mojo_parent_idx=1690) 
		# key time                                 (nkey x 1) 
		WhitespaceNode(c_node_idx=3528, c_parent_idx=1720, mojo_node_idx=3498, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3529, c_parent_idx=1720, mojo_node_idx=3499, mojo_parent_idx=1690) 
		mjtNum*   key_qpos ; 
		WhitespaceNode(c_node_idx=3530, c_parent_idx=1720, mojo_node_idx=3500, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3531, c_parent_idx=1720, mojo_node_idx=3501, mojo_parent_idx=1690) 
		# key position                             (nkey x nq) 
		WhitespaceNode(c_node_idx=3532, c_parent_idx=1720, mojo_node_idx=3502, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3533, c_parent_idx=1720, mojo_node_idx=3503, mojo_parent_idx=1690) 
		mjtNum*   key_qvel ; 
		WhitespaceNode(c_node_idx=3534, c_parent_idx=1720, mojo_node_idx=3504, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3535, c_parent_idx=1720, mojo_node_idx=3505, mojo_parent_idx=1690) 
		# key velocity                             (nkey x nv) 
		WhitespaceNode(c_node_idx=3536, c_parent_idx=1720, mojo_node_idx=3506, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3537, c_parent_idx=1720, mojo_node_idx=3507, mojo_parent_idx=1690) 
		mjtNum*   key_act ; 
		WhitespaceNode(c_node_idx=3538, c_parent_idx=1720, mojo_node_idx=3508, mojo_parent_idx=1690) 
		              
		SingleLineCommentNode(c_node_idx=3539, c_parent_idx=1720, mojo_node_idx=3509, mojo_parent_idx=1690) 
		# key activation                           (nkey x na) 
		WhitespaceNode(c_node_idx=3540, c_parent_idx=1720, mojo_node_idx=3510, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3541, c_parent_idx=1720, mojo_node_idx=3511, mojo_parent_idx=1690) 
		mjtNum*   key_mpos ; 
		WhitespaceNode(c_node_idx=3542, c_parent_idx=1720, mojo_node_idx=3512, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3543, c_parent_idx=1720, mojo_node_idx=3513, mojo_parent_idx=1690) 
		# key mocap position                       (nkey x nmocap*3) 
		WhitespaceNode(c_node_idx=3544, c_parent_idx=1720, mojo_node_idx=3514, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3545, c_parent_idx=1720, mojo_node_idx=3515, mojo_parent_idx=1690) 
		mjtNum*   key_mquat ; 
		WhitespaceNode(c_node_idx=3546, c_parent_idx=1720, mojo_node_idx=3516, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3547, c_parent_idx=1720, mojo_node_idx=3517, mojo_parent_idx=1690) 
		# key mocap quaternion                     (nkey x nmocap*4) 
		WhitespaceNode(c_node_idx=3548, c_parent_idx=1720, mojo_node_idx=3518, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3549, c_parent_idx=1720, mojo_node_idx=3519, mojo_parent_idx=1690) 
		mjtNum*   key_ctrl ; 
		WhitespaceNode(c_node_idx=3550, c_parent_idx=1720, mojo_node_idx=3520, mojo_parent_idx=1690) 
		             
		SingleLineCommentNode(c_node_idx=3551, c_parent_idx=1720, mojo_node_idx=3521, mojo_parent_idx=1690) 
		# key control                              (nkey x nu) 
		WhitespaceNode(c_node_idx=3552, c_parent_idx=1720, mojo_node_idx=3522, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3553, c_parent_idx=1720, mojo_node_idx=3523, mojo_parent_idx=1690) 
		# names 
		WhitespaceNode(c_node_idx=3554, c_parent_idx=1720, mojo_node_idx=3524, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3555, c_parent_idx=1720, mojo_node_idx=3525, mojo_parent_idx=1690) 
		int*      name_bodyadr ; 
		WhitespaceNode(c_node_idx=3556, c_parent_idx=1720, mojo_node_idx=3526, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3557, c_parent_idx=1720, mojo_node_idx=3527, mojo_parent_idx=1690) 
		# body name pointers                       (nbody x 1) 
		WhitespaceNode(c_node_idx=3558, c_parent_idx=1720, mojo_node_idx=3528, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3559, c_parent_idx=1720, mojo_node_idx=3529, mojo_parent_idx=1690) 
		int*      name_jntadr ; 
		WhitespaceNode(c_node_idx=3560, c_parent_idx=1720, mojo_node_idx=3530, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3561, c_parent_idx=1720, mojo_node_idx=3531, mojo_parent_idx=1690) 
		# joint name pointers                      (njnt x 1) 
		WhitespaceNode(c_node_idx=3562, c_parent_idx=1720, mojo_node_idx=3532, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3563, c_parent_idx=1720, mojo_node_idx=3533, mojo_parent_idx=1690) 
		int*      name_geomadr ; 
		WhitespaceNode(c_node_idx=3564, c_parent_idx=1720, mojo_node_idx=3534, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3565, c_parent_idx=1720, mojo_node_idx=3535, mojo_parent_idx=1690) 
		# geom name pointers                       (ngeom x 1) 
		WhitespaceNode(c_node_idx=3566, c_parent_idx=1720, mojo_node_idx=3536, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3567, c_parent_idx=1720, mojo_node_idx=3537, mojo_parent_idx=1690) 
		int*      name_siteadr ; 
		WhitespaceNode(c_node_idx=3568, c_parent_idx=1720, mojo_node_idx=3538, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3569, c_parent_idx=1720, mojo_node_idx=3539, mojo_parent_idx=1690) 
		# site name pointers                       (nsite x 1) 
		WhitespaceNode(c_node_idx=3570, c_parent_idx=1720, mojo_node_idx=3540, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3571, c_parent_idx=1720, mojo_node_idx=3541, mojo_parent_idx=1690) 
		int*      name_camadr ; 
		WhitespaceNode(c_node_idx=3572, c_parent_idx=1720, mojo_node_idx=3542, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3573, c_parent_idx=1720, mojo_node_idx=3543, mojo_parent_idx=1690) 
		# camera name pointers                     (ncam x 1) 
		WhitespaceNode(c_node_idx=3574, c_parent_idx=1720, mojo_node_idx=3544, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3575, c_parent_idx=1720, mojo_node_idx=3545, mojo_parent_idx=1690) 
		int*      name_lightadr ; 
		WhitespaceNode(c_node_idx=3576, c_parent_idx=1720, mojo_node_idx=3546, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3577, c_parent_idx=1720, mojo_node_idx=3547, mojo_parent_idx=1690) 
		# light name pointers                      (nlight x 1) 
		WhitespaceNode(c_node_idx=3578, c_parent_idx=1720, mojo_node_idx=3548, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3579, c_parent_idx=1720, mojo_node_idx=3549, mojo_parent_idx=1690) 
		int*      name_flexadr ; 
		WhitespaceNode(c_node_idx=3580, c_parent_idx=1720, mojo_node_idx=3550, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3581, c_parent_idx=1720, mojo_node_idx=3551, mojo_parent_idx=1690) 
		# flex name pointers                       (nflex x 1) 
		WhitespaceNode(c_node_idx=3582, c_parent_idx=1720, mojo_node_idx=3552, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3583, c_parent_idx=1720, mojo_node_idx=3553, mojo_parent_idx=1690) 
		int*      name_meshadr ; 
		WhitespaceNode(c_node_idx=3584, c_parent_idx=1720, mojo_node_idx=3554, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3585, c_parent_idx=1720, mojo_node_idx=3555, mojo_parent_idx=1690) 
		# mesh name pointers                       (nmesh x 1) 
		WhitespaceNode(c_node_idx=3586, c_parent_idx=1720, mojo_node_idx=3556, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3587, c_parent_idx=1720, mojo_node_idx=3557, mojo_parent_idx=1690) 
		int*      name_skinadr ; 
		WhitespaceNode(c_node_idx=3588, c_parent_idx=1720, mojo_node_idx=3558, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3589, c_parent_idx=1720, mojo_node_idx=3559, mojo_parent_idx=1690) 
		# skin name pointers                       (nskin x 1) 
		WhitespaceNode(c_node_idx=3590, c_parent_idx=1720, mojo_node_idx=3560, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3591, c_parent_idx=1720, mojo_node_idx=3561, mojo_parent_idx=1690) 
		int*      name_hfieldadr ; 
		WhitespaceNode(c_node_idx=3592, c_parent_idx=1720, mojo_node_idx=3562, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3593, c_parent_idx=1720, mojo_node_idx=3563, mojo_parent_idx=1690) 
		# hfield name pointers                     (nhfield x 1) 
		WhitespaceNode(c_node_idx=3594, c_parent_idx=1720, mojo_node_idx=3564, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3595, c_parent_idx=1720, mojo_node_idx=3565, mojo_parent_idx=1690) 
		int*      name_texadr ; 
		WhitespaceNode(c_node_idx=3596, c_parent_idx=1720, mojo_node_idx=3566, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3597, c_parent_idx=1720, mojo_node_idx=3567, mojo_parent_idx=1690) 
		# texture name pointers                    (ntex x 1) 
		WhitespaceNode(c_node_idx=3598, c_parent_idx=1720, mojo_node_idx=3568, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3599, c_parent_idx=1720, mojo_node_idx=3569, mojo_parent_idx=1690) 
		int*      name_matadr ; 
		WhitespaceNode(c_node_idx=3600, c_parent_idx=1720, mojo_node_idx=3570, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3601, c_parent_idx=1720, mojo_node_idx=3571, mojo_parent_idx=1690) 
		# material name pointers                   (nmat x 1) 
		WhitespaceNode(c_node_idx=3602, c_parent_idx=1720, mojo_node_idx=3572, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3603, c_parent_idx=1720, mojo_node_idx=3573, mojo_parent_idx=1690) 
		int*      name_pairadr ; 
		WhitespaceNode(c_node_idx=3604, c_parent_idx=1720, mojo_node_idx=3574, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3605, c_parent_idx=1720, mojo_node_idx=3575, mojo_parent_idx=1690) 
		# geom pair name pointers                  (npair x 1) 
		WhitespaceNode(c_node_idx=3606, c_parent_idx=1720, mojo_node_idx=3576, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3607, c_parent_idx=1720, mojo_node_idx=3577, mojo_parent_idx=1690) 
		int*      name_excludeadr ; 
		WhitespaceNode(c_node_idx=3608, c_parent_idx=1720, mojo_node_idx=3578, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3609, c_parent_idx=1720, mojo_node_idx=3579, mojo_parent_idx=1690) 
		# exclude name pointers                    (nexclude x 1) 
		WhitespaceNode(c_node_idx=3610, c_parent_idx=1720, mojo_node_idx=3580, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3611, c_parent_idx=1720, mojo_node_idx=3581, mojo_parent_idx=1690) 
		int*      name_eqadr ; 
		WhitespaceNode(c_node_idx=3612, c_parent_idx=1720, mojo_node_idx=3582, mojo_parent_idx=1690) 
		           
		SingleLineCommentNode(c_node_idx=3613, c_parent_idx=1720, mojo_node_idx=3583, mojo_parent_idx=1690) 
		# equality constraint name pointers        (neq x 1) 
		WhitespaceNode(c_node_idx=3614, c_parent_idx=1720, mojo_node_idx=3584, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3615, c_parent_idx=1720, mojo_node_idx=3585, mojo_parent_idx=1690) 
		int*      name_tendonadr ; 
		WhitespaceNode(c_node_idx=3616, c_parent_idx=1720, mojo_node_idx=3586, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3617, c_parent_idx=1720, mojo_node_idx=3587, mojo_parent_idx=1690) 
		# tendon name pointers                     (ntendon x 1) 
		WhitespaceNode(c_node_idx=3618, c_parent_idx=1720, mojo_node_idx=3588, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3619, c_parent_idx=1720, mojo_node_idx=3589, mojo_parent_idx=1690) 
		int*      name_actuatoradr ; 
		WhitespaceNode(c_node_idx=3620, c_parent_idx=1720, mojo_node_idx=3590, mojo_parent_idx=1690) 
		     
		SingleLineCommentNode(c_node_idx=3621, c_parent_idx=1720, mojo_node_idx=3591, mojo_parent_idx=1690) 
		# actuator name pointers                   (nu x 1) 
		WhitespaceNode(c_node_idx=3622, c_parent_idx=1720, mojo_node_idx=3592, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3623, c_parent_idx=1720, mojo_node_idx=3593, mojo_parent_idx=1690) 
		int*      name_sensoradr ; 
		WhitespaceNode(c_node_idx=3624, c_parent_idx=1720, mojo_node_idx=3594, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3625, c_parent_idx=1720, mojo_node_idx=3595, mojo_parent_idx=1690) 
		# sensor name pointers                     (nsensor x 1) 
		WhitespaceNode(c_node_idx=3626, c_parent_idx=1720, mojo_node_idx=3596, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3627, c_parent_idx=1720, mojo_node_idx=3597, mojo_parent_idx=1690) 
		int*      name_numericadr ; 
		WhitespaceNode(c_node_idx=3628, c_parent_idx=1720, mojo_node_idx=3598, mojo_parent_idx=1690) 
		      
		SingleLineCommentNode(c_node_idx=3629, c_parent_idx=1720, mojo_node_idx=3599, mojo_parent_idx=1690) 
		# numeric name pointers                    (nnumeric x 1) 
		WhitespaceNode(c_node_idx=3630, c_parent_idx=1720, mojo_node_idx=3600, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3631, c_parent_idx=1720, mojo_node_idx=3601, mojo_parent_idx=1690) 
		int*      name_textadr ; 
		WhitespaceNode(c_node_idx=3632, c_parent_idx=1720, mojo_node_idx=3602, mojo_parent_idx=1690) 
		         
		SingleLineCommentNode(c_node_idx=3633, c_parent_idx=1720, mojo_node_idx=3603, mojo_parent_idx=1690) 
		# text name pointers                       (ntext x 1) 
		WhitespaceNode(c_node_idx=3634, c_parent_idx=1720, mojo_node_idx=3604, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3635, c_parent_idx=1720, mojo_node_idx=3605, mojo_parent_idx=1690) 
		int*      name_tupleadr ; 
		WhitespaceNode(c_node_idx=3636, c_parent_idx=1720, mojo_node_idx=3606, mojo_parent_idx=1690) 
		        
		SingleLineCommentNode(c_node_idx=3637, c_parent_idx=1720, mojo_node_idx=3607, mojo_parent_idx=1690) 
		# tuple name pointers                      (ntuple x 1) 
		WhitespaceNode(c_node_idx=3638, c_parent_idx=1720, mojo_node_idx=3608, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3639, c_parent_idx=1720, mojo_node_idx=3609, mojo_parent_idx=1690) 
		int*      name_keyadr ; 
		WhitespaceNode(c_node_idx=3640, c_parent_idx=1720, mojo_node_idx=3610, mojo_parent_idx=1690) 
		          
		SingleLineCommentNode(c_node_idx=3641, c_parent_idx=1720, mojo_node_idx=3611, mojo_parent_idx=1690) 
		# keyframe name pointers                   (nkey x 1) 
		WhitespaceNode(c_node_idx=3642, c_parent_idx=1720, mojo_node_idx=3612, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3643, c_parent_idx=1720, mojo_node_idx=3613, mojo_parent_idx=1690) 
		int*      name_pluginadr ; 
		WhitespaceNode(c_node_idx=3644, c_parent_idx=1720, mojo_node_idx=3614, mojo_parent_idx=1690) 
		       
		SingleLineCommentNode(c_node_idx=3645, c_parent_idx=1720, mojo_node_idx=3615, mojo_parent_idx=1690) 
		# plugin instance name pointers            (nplugin x 1) 
		WhitespaceNode(c_node_idx=3646, c_parent_idx=1720, mojo_node_idx=3616, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3647, c_parent_idx=1720, mojo_node_idx=3617, mojo_parent_idx=1690) 
		char*     names ; 
		WhitespaceNode(c_node_idx=3648, c_parent_idx=1720, mojo_node_idx=3618, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=3649, c_parent_idx=1720, mojo_node_idx=3619, mojo_parent_idx=1690) 
		# names of all objects ,  0-terminated       (nnames x 1) 
		WhitespaceNode(c_node_idx=3650, c_parent_idx=1720, mojo_node_idx=3620, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3651, c_parent_idx=1720, mojo_node_idx=3621, mojo_parent_idx=1690) 
		int*      names_map ; 
		WhitespaceNode(c_node_idx=3652, c_parent_idx=1720, mojo_node_idx=3622, mojo_parent_idx=1690) 
		            
		SingleLineCommentNode(c_node_idx=3653, c_parent_idx=1720, mojo_node_idx=3623, mojo_parent_idx=1690) 
		# internal hash map of names               (nnames_map x 1) 
		WhitespaceNode(c_node_idx=3654, c_parent_idx=1720, mojo_node_idx=3624, mojo_parent_idx=1690) 
		 
		  
		SingleLineCommentNode(c_node_idx=3655, c_parent_idx=1720, mojo_node_idx=3625, mojo_parent_idx=1690) 
		# paths 
		WhitespaceNode(c_node_idx=3656, c_parent_idx=1720, mojo_node_idx=3626, mojo_parent_idx=1690) 
		  
		PlaceHolderNode(c_node_idx=3657, c_parent_idx=1720, mojo_node_idx=3627, mojo_parent_idx=1690) 
		char*     paths ; 
		WhitespaceNode(c_node_idx=3658, c_parent_idx=1720, mojo_node_idx=3628, mojo_parent_idx=1690) 
		                
		SingleLineCommentNode(c_node_idx=3659, c_parent_idx=1720, mojo_node_idx=3629, mojo_parent_idx=1690) 
		# paths to assets ,  0-terminated            (npaths x 1) 
		} 
		; 
		WhitespaceNode(c_node_idx=3660, c_parent_idx=15, mojo_node_idx=3630, mojo_parent_idx=15) 
		 
		TypedefNode(alias=mjModel, c_node_idx=3661, c_parent_idx=15, mojo_node_idx=3631, mojo_parent_idx=15, c_children_idxs=3662, 3663, mojo_children_idxs=3632) 
		# Complex typedef not supported yet: typedef <children> mjModel ;  
		PlaceHolderNode(c_node_idx=3662, c_parent_idx=3661, mojo_node_idx=3632, mojo_parent_idx=3631) 
		struct mjModel_ 
		WhitespaceNode(c_node_idx=3664, c_parent_idx=15, mojo_node_idx=3633, mojo_parent_idx=15) 
		 
		 
	WhitespaceNode(c_node_idx=3665, c_parent_idx=0, mojo_node_idx=3634, mojo_parent_idx=0) 
	 
	SingleLineCommentNode(c_node_idx=3666, c_parent_idx=0, mojo_node_idx=3635, mojo_parent_idx=0) 
	# MUJOCO_MJMODEL_H_ 
	WhitespaceNode(c_node_idx=3667, c_parent_idx=0, mojo_node_idx=3636, mojo_parent_idx=0) 
	 