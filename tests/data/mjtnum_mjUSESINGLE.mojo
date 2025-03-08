	RootNode(c_node_idx=0, c_parent_idx=0, mojo_node_idx=0, mojo_parent_idx=-1, mojo_children_idxs=(1, 2, 3, 4, 5, 6, ...) len=18) 
	SingleLineCommentNode(c_node_idx=1, c_parent_idx=0, mojo_node_idx=1, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # Copyright 2021 DeepMind Technologies Limited 
	SingleLineCommentNode(c_node_idx=2, c_parent_idx=0, mojo_node_idx=2, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # 
	SingleLineCommentNode(c_node_idx=3, c_parent_idx=0, mojo_node_idx=3, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # Licensed under the Apache License ,  Version 2.0 (the "License") ;  
	SingleLineCommentNode(c_node_idx=4, c_parent_idx=0, mojo_node_idx=4, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # you may not use this file except in compliance with the License. 
	SingleLineCommentNode(c_node_idx=5, c_parent_idx=0, mojo_node_idx=5, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # You may obtain a copy of the License at 
	SingleLineCommentNode(c_node_idx=6, c_parent_idx=0, mojo_node_idx=6, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # 
	SingleLineCommentNode(c_node_idx=7, c_parent_idx=0, mojo_node_idx=7, mojo_parent_idx=0) 
	SingleLineCommentNode >>> #     http://www.apache.org/licenses/LICENSE-2.0 
	SingleLineCommentNode(c_node_idx=8, c_parent_idx=0, mojo_node_idx=8, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # 
	SingleLineCommentNode(c_node_idx=9, c_parent_idx=0, mojo_node_idx=9, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # Unless required by applicable law or agreed to in writing ,  software 
	SingleLineCommentNode(c_node_idx=10, c_parent_idx=0, mojo_node_idx=10, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # distributed under the License is distributed on an "AS IS" BASIS ,  
	SingleLineCommentNode(c_node_idx=11, c_parent_idx=0, mojo_node_idx=11, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. 
	SingleLineCommentNode(c_node_idx=12, c_parent_idx=0, mojo_node_idx=12, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # See the License for the specific language governing permissions and 
	SingleLineCommentNode(c_node_idx=13, c_parent_idx=0, mojo_node_idx=13, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # limitations under the License. 
	WhitespaceNode(c_node_idx=14, c_parent_idx=0, mojo_node_idx=14, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	MacroIfNDefNode(c_node_idx=15, c_parent_idx=0, mojo_node_idx=15, mojo_parent_idx=0, c_children_idxs=(16, 17, 18, 19, 20, 21, ...) len=18, mojo_children_idxs=(16, 17, 18, 19, 20, 21, ...) len=18) 
	MacroIfNDefNode >>> #ifndef MUJOCO_INCLUDE_MJTNUM_H_ 
MacroDefineNode(header_guard=MUJOCO_INCLUDE_MJTNUM_H_, c_node_idx=16, c_parent_idx=15, mojo_node_idx=16, mojo_parent_idx=15) 
MacroDefineNode >>> alias MUJOCO_INCLUDE_MJTNUM_H_ =  
WhitespaceNode(c_node_idx=17, c_parent_idx=15, mojo_node_idx=17, mojo_parent_idx=15) 
WhitespaceNode >>>  
SingleLineCommentNode(c_node_idx=18, c_parent_idx=15, mojo_node_idx=18, mojo_parent_idx=15) 
SingleLineCommentNode >>> # ---------------------------------- floating-point definition ------------------------------------- 
WhitespaceNode(c_node_idx=19, c_parent_idx=15, mojo_node_idx=19, mojo_parent_idx=15) 
WhitespaceNode >>>  
SingleLineCommentNode(c_node_idx=20, c_parent_idx=15, mojo_node_idx=20, mojo_parent_idx=15) 
SingleLineCommentNode >>> # floating point data type and minval 
MacroIfNDefNode(c_node_idx=21, c_parent_idx=15, mojo_node_idx=21, mojo_parent_idx=15, c_children_idxs=(22, 23, 26, 27, 28, 29...) len=6, mojo_children_idxs=(22, 23, 25, 26, 27, 28...) len=6) 
MacroIfNDefNode >>> #ifndef mjUSESINGLE 
	WhitespaceNode(c_node_idx=22, c_parent_idx=21, mojo_node_idx=22, mojo_parent_idx=21) 
	WhitespaceNode >>>   
	TypedefNode(alias=mjtNum, c_node_idx=23, c_parent_idx=21, mojo_node_idx=23, mojo_parent_idx=21, c_children_idxs=(24, 25), mojo_children_idxs=(24)) 
	TypedefNode >>> alias mjtNum = Float64 
	DeletedNode(c_node_idx=24, c_parent_idx=23, mojo_node_idx=24, mojo_parent_idx=23) 
	DeletedNode >>> Float64 
	WhitespaceNode(c_node_idx=26, c_parent_idx=21, mojo_node_idx=25, mojo_parent_idx=21) 
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	MacroDefineNode(macro=mjMINVAL, value=1E-15, c_node_idx=27, c_parent_idx=21, mojo_node_idx=26, mojo_parent_idx=21) 
	MacroDefineNode >>> alias mjMINVAL = 1E-15 
	SingleLineCommentNode(c_node_idx=28, c_parent_idx=21, mojo_node_idx=27, mojo_parent_idx=21) 
	SingleLineCommentNode >>> # minimum value in any denominator 
	MacroElseNode(c_node_idx=29, c_parent_idx=21, mojo_node_idx=28, mojo_parent_idx=21, c_children_idxs=(30, 31, 34, 35, 36, mojo_children_idxs=(29, 30, 32, 33, 34) 
	MacroElseNode >>> #else 
		DeletedNode(c_node_idx=30, c_parent_idx=29, mojo_node_idx=29, mojo_parent_idx=28) 
		DeletedNode >>>   
		DeletedNode(c_node_idx=31, c_parent_idx=29, mojo_node_idx=30, mojo_parent_idx=28, c_children_idxs=(32, 33), mojo_children_idxs=(31)) 
		DeletedNode >>> alias mjtNum = Float32 
		DeletedNode(c_node_idx=32, c_parent_idx=31, mojo_node_idx=31, mojo_parent_idx=30) 
		DeletedNode >>> Float32 
		DeletedNode(c_node_idx=34, c_parent_idx=29, mojo_node_idx=32, mojo_parent_idx=28) 
		DeletedNode >>>  
		DeletedNode >>>   
		DeletedNode(c_node_idx=35, c_parent_idx=29, mojo_node_idx=33, mojo_parent_idx=28) 
		DeletedNode >>> alias mjMINVAL = 1E-15f 
		DeletedNode(c_node_idx=36, c_parent_idx=29, mojo_node_idx=34, mojo_parent_idx=28) 
		DeletedNode >>> #   This does after the float is defined 
WhitespaceNode(c_node_idx=37, c_parent_idx=15, mojo_node_idx=35, mojo_parent_idx=15) 
WhitespaceNode >>>  
MultiLineCommentNode(c_node_idx=38, c_parent_idx=15, mojo_node_idx=36, mojo_parent_idx=15) 
MultiLineCommentNode >>> #   silly comment 
MultiLineCommentNode(c_node_idx=39, c_parent_idx=15, mojo_node_idx=37, mojo_parent_idx=15) 
MultiLineCommentNode >>> #   /** another one??????? **/ 
WhitespaceNode(c_node_idx=40, c_parent_idx=15, mojo_node_idx=38, mojo_parent_idx=15) 
WhitespaceNode >>>  
MultiLineCommentNode(c_node_idx=41, c_parent_idx=15, mojo_node_idx=39, mojo_parent_idx=15) 
MultiLineCommentNode >>> #   /**  So  many  lines   **/ 
WhitespaceNode(c_node_idx=42, c_parent_idx=15, mojo_node_idx=40, mojo_parent_idx=15) 
WhitespaceNode >>>  
WhitespaceNode >>>  
SingleLineCommentNode(c_node_idx=43, c_parent_idx=15, mojo_node_idx=41, mojo_parent_idx=15) 
SingleLineCommentNode >>> # -------------------------------------- byte definition ------------------------------------------- 
WhitespaceNode(c_node_idx=44, c_parent_idx=15, mojo_node_idx=42, mojo_parent_idx=15) 
WhitespaceNode >>>  
TypedefNode(alias=mjtByte, c_node_idx=45, c_parent_idx=15, mojo_node_idx=43, mojo_parent_idx=15, c_children_idxs=(46, 47), mojo_children_idxs=(44)) 
TypedefNode >>> alias mjtByte = unsigned 
DeletedNode(c_node_idx=46, c_parent_idx=45, mojo_node_idx=44, mojo_parent_idx=43) 
DeletedNode >>> unsigned char 
WhitespaceNode(c_node_idx=48, c_parent_idx=15, mojo_node_idx=45, mojo_parent_idx=15) 
WhitespaceNode >>>     
SingleLineCommentNode(c_node_idx=49, c_parent_idx=15, mojo_node_idx=46, mojo_parent_idx=15) 
SingleLineCommentNode >>> # used for true/false 
WhitespaceNode(c_node_idx=50, c_parent_idx=15, mojo_node_idx=47, mojo_parent_idx=15) 
WhitespaceNode >>>  
WhitespaceNode >>>  
WhitespaceNode >>>  
	WhitespaceNode(c_node_idx=51, c_parent_idx=0, mojo_node_idx=48, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	SingleLineCommentNode(c_node_idx=52, c_parent_idx=0, mojo_node_idx=49, mojo_parent_idx=0) 
	SingleLineCommentNode >>> # MUJOCO_INCLUDE_MJTNUM_H_ 
	WhitespaceNode(c_node_idx=53, c_parent_idx=0, mojo_node_idx=50, mojo_parent_idx=0) 
	WhitespaceNode >>>  