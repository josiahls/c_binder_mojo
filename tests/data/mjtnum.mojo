RootNode(children=86) 
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
PlaceHolderNode(#ifndef MUJOCO_INCLUDE_MJTNUM_H_ ) #ifndef MUJOCO_INCLUDE_MJTNUM_H_ 
PlaceHolderNode(#define MUJOCO_INCLUDE_MJTNUM_H_ 
 ) #define MUJOCO_INCLUDE_MJTNUM_H_ 
 
SingleLineCommentNode(current_idx=17,parent_idx=15) # floating-point definition ------------------------------------- 
WhitespaceNode(current_idx=18,parent_idx=15)  
SingleLineCommentNode(current_idx=19,parent_idx=15) # floating point data type and minval 
PlaceHolderNode(#ifndef mjUSESINGLE ) #ifndef mjUSESINGLE 
WhitespaceNode(current_idx=21,parent_idx=20)   
PlaceHolderNode(typedef <children> mjtNum ; ) typedef <children> mjtNum ; 
PlaceHolderNode(double ) double 
PlaceHolderNode(mjtNum ) mjtNum 
WhitespaceNode(current_idx=25,parent_idx=20)  
  
PlaceHolderNode(#define mjMINVAL    1E-15       ) #define mjMINVAL    1E-15       
SingleLineCommentNode(current_idx=27,parent_idx=20) # minimum value in any denominator 
PlaceHolderNode(#else ) #else 
WhitespaceNode(current_idx=29,parent_idx=15)   
PlaceHolderNode(typedef <children> mjtNum ; ) typedef <children> mjtNum ; 
PlaceHolderNode(float ) float 
PlaceHolderNode(mjtNum ) mjtNum 
WhitespaceNode(current_idx=33,parent_idx=15)  
  
PlaceHolderNode(#define mjMINVAL    1E-15f ) #define mjMINVAL    1E-15f 
PlaceHolderNode(/* This does after the float is defined */ ) /* This does after the float is defined */ 
PlaceHolderNode(#endif ) #endif 
WhitespaceNode(current_idx=37,parent_idx=0)  
PlaceHolderNode(/* silly comment */ ) /* silly comment */ 
PlaceHolderNode(/** another one??????? **/ ) /** another one??????? **/ 
WhitespaceNode(current_idx=40,parent_idx=0)  
PlaceHolderNode(/**  
So  
many  
lines 
 
 
**/ ) /**  
So  
many  
lines 
 
 
**/ 
WhitespaceNode(current_idx=42,parent_idx=0)  
 
SingleLineCommentNode(current_idx=43,parent_idx=0) # byte definition ------------------------------------------- 
WhitespaceNode(current_idx=44,parent_idx=0)  
PlaceHolderNode(typedef <children> mjtByte ; ) typedef <children> mjtByte ; 
PlaceHolderNode(unsigned char ) unsigned char 
PlaceHolderNode(mjtByte ) mjtByte 
WhitespaceNode(current_idx=48,parent_idx=0)     
SingleLineCommentNode(current_idx=49,parent_idx=0) # used for true/false 
WhitespaceNode(current_idx=50,parent_idx=0)  
 
 
PlaceHolderNode(#endif ) #endif 
WhitespaceNode(current_idx=52,parent_idx=0)  
SingleLineCommentNode(current_idx=53,parent_idx=0) # MUJOCO_INCLUDE_MJTNUM_H_ 
WhitespaceNode(current_idx=54,parent_idx=0)  
