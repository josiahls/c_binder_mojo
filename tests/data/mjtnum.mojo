RootNode(children=70) 
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
MacroIfNDefNode(current_idx=15,parent_idx=0) #ifndef MUJOCO_INCLUDE_MJTNUM_H_ <children> 
#endif 
	PlaceHolderNode(parent_idx=15,current_idx=16) #define MUJOCO_INCLUDE_MJTNUM_H_ 
	 
	SingleLineCommentNode(current_idx=17,parent_idx=15) # ---------------------------------- floating-point definition ------------------------------------- 
	WhitespaceNode(current_idx=18,parent_idx=15)  
	SingleLineCommentNode(current_idx=19,parent_idx=15) # floating point data type and minval 
	MacroIfNDefNode(current_idx=20,parent_idx=15) #ifndef mjUSESINGLE <children> 
	#endif 
		WhitespaceNode(current_idx=21,parent_idx=20)   
		PlaceHolderNode(parent_idx=20,current_idx=22) typedef <children> mjtNum ; 
		PlaceHolderNode(parent_idx=22,current_idx=23) double 
		PlaceHolderNode(parent_idx=20,current_idx=0) mjtNum 
		WhitespaceNode(current_idx=25,parent_idx=20)  
		  
		PlaceHolderNode(parent_idx=20,current_idx=26) #define mjMINVAL    1E-15       
		SingleLineCommentNode(current_idx=27,parent_idx=20) # minimum value in any denominator 
		PlaceHolderNode(parent_idx=20,current_idx=28) #else 
		WhitespaceNode(current_idx=29,parent_idx=28)   
		PlaceHolderNode(parent_idx=28,current_idx=30) typedef <children> mjtNum ; 
		PlaceHolderNode(parent_idx=30,current_idx=31) float 
		PlaceHolderNode(parent_idx=28,current_idx=0) mjtNum 
		WhitespaceNode(current_idx=33,parent_idx=28)  
		  
		PlaceHolderNode(parent_idx=28,current_idx=34) #define mjMINVAL    1E-15f 
		PlaceHolderNode(parent_idx=28,current_idx=35) /* This does after the float is defined */ 
	WhitespaceNode(current_idx=36,parent_idx=15)  
	PlaceHolderNode(parent_idx=15,current_idx=37) /* silly comment */ 
	PlaceHolderNode(parent_idx=15,current_idx=38) /** another one??????? **/ 
	WhitespaceNode(current_idx=39,parent_idx=15)  
	PlaceHolderNode(parent_idx=15,current_idx=40) /**  
	So  
	many  
	lines 
	 
	 
	**/ 
	WhitespaceNode(current_idx=41,parent_idx=15)  
	 
	SingleLineCommentNode(current_idx=42,parent_idx=15) # -------------------------------------- byte definition ------------------------------------------- 
	WhitespaceNode(current_idx=43,parent_idx=15)  
	PlaceHolderNode(parent_idx=15,current_idx=44) typedef <children> mjtByte ; 
	PlaceHolderNode(parent_idx=44,current_idx=45) unsigned char 
	PlaceHolderNode(parent_idx=15,current_idx=0) mjtByte 
	WhitespaceNode(current_idx=47,parent_idx=15)     
	SingleLineCommentNode(current_idx=48,parent_idx=15) # used for true/false 
	WhitespaceNode(current_idx=49,parent_idx=15)  
	 
	 
WhitespaceNode(current_idx=50,parent_idx=0)  
SingleLineCommentNode(current_idx=51,parent_idx=0) # MUJOCO_INCLUDE_MJTNUM_H_ 
WhitespaceNode(current_idx=52,parent_idx=0)  
