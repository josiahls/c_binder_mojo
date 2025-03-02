RootNode(c_node_idx=0, c_parent_idx=0, mojo_node_idx=0, mojo_parent_idx=-1, mojo_children_idxs=1, 2, 3, 4, 5, 6, ... len=18) 
	SingleLineCommentNode(c_node_idx=1, c_parent_idx=0, mojo_node_idx=1, mojo_parent_idx=0) # Copyright 2021 DeepMind Technologies Limited 
	SingleLineCommentNode(c_node_idx=2, c_parent_idx=0, mojo_node_idx=2, mojo_parent_idx=0) # 
	SingleLineCommentNode(c_node_idx=3, c_parent_idx=0, mojo_node_idx=3, mojo_parent_idx=0) # Licensed under the Apache License ,  Version 2.0 (the "License") ;  
	SingleLineCommentNode(c_node_idx=4, c_parent_idx=0, mojo_node_idx=4, mojo_parent_idx=0) # you may not use this file except in compliance with the License. 
	SingleLineCommentNode(c_node_idx=5, c_parent_idx=0, mojo_node_idx=5, mojo_parent_idx=0) # You may obtain a copy of the License at 
	SingleLineCommentNode(c_node_idx=6, c_parent_idx=0, mojo_node_idx=6, mojo_parent_idx=0) # 
	SingleLineCommentNode(c_node_idx=7, c_parent_idx=0, mojo_node_idx=7, mojo_parent_idx=0) #     http://www.apache.org/licenses/LICENSE-2.0 
	SingleLineCommentNode(c_node_idx=8, c_parent_idx=0, mojo_node_idx=8, mojo_parent_idx=0) # 
	SingleLineCommentNode(c_node_idx=9, c_parent_idx=0, mojo_node_idx=9, mojo_parent_idx=0) # Unless required by applicable law or agreed to in writing ,  software 
	SingleLineCommentNode(c_node_idx=10, c_parent_idx=0, mojo_node_idx=10, mojo_parent_idx=0) # distributed under the License is distributed on an "AS IS" BASIS ,  
	SingleLineCommentNode(c_node_idx=11, c_parent_idx=0, mojo_node_idx=11, mojo_parent_idx=0) # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. 
	SingleLineCommentNode(c_node_idx=12, c_parent_idx=0, mojo_node_idx=12, mojo_parent_idx=0) # See the License for the specific language governing permissions and 
	SingleLineCommentNode(c_node_idx=13, c_parent_idx=0, mojo_node_idx=13, mojo_parent_idx=0) # limitations under the License. 
	WhitespaceNode(c_node_idx=14, c_parent_idx=0, mojo_node_idx=14, mojo_parent_idx=0)  
	MacroIfNDefNode(c_node_idx=15, c_parent_idx=0, mojo_node_idx=15, mojo_parent_idx=0, c_children_idxs=16, 17, 18, 19, 20, 21, ... len=18, mojo_children_idxs=16, 17, 18, 19, 20, 21, ... len=18) #ifndef MUJOCO_INCLUDE_MJTNUM_H_ <children> 
		MacroDefineNode(header_guard=MUJOCO_INCLUDE_MJTNUM_H_, c_node_idx=16, c_parent_idx=15, mojo_node_idx=16, mojo_parent_idx=15) alias MUJOCO_INCLUDE_MJTNUM_H_ =  
		WhitespaceNode(c_node_idx=17, c_parent_idx=15, mojo_node_idx=17, mojo_parent_idx=15)  
		SingleLineCommentNode(c_node_idx=18, c_parent_idx=15, mojo_node_idx=18, mojo_parent_idx=15) # ---------------------------------- floating-point definition ------------------------------------- 
		WhitespaceNode(c_node_idx=19, c_parent_idx=15, mojo_node_idx=19, mojo_parent_idx=15)  
		SingleLineCommentNode(c_node_idx=20, c_parent_idx=15, mojo_node_idx=20, mojo_parent_idx=15) # floating point data type and minval 
		MacroIfNDefNode(c_node_idx=21, c_parent_idx=15, mojo_node_idx=21, mojo_parent_idx=15, c_children_idxs=22, 23, 26, 27, 28, 29... len=6, mojo_children_idxs=22, 23, 25, 26, 27, 28... len=6) #ifndef mjUSESINGLE <children> 
			DeletedNode(c_node_idx=22, c_parent_idx=21, mojo_node_idx=22, mojo_parent_idx=21)   
			# WhitespaceNode(c_node_idx=22, c_parent_idx=21, mojo_node_idx=22, mojo_parent_idx=21) Deleted because mjUSESINGLE was not defined
			DeletedNode(c_node_idx=23, c_parent_idx=21, mojo_node_idx=23, mojo_parent_idx=21, c_children_idxs=24, 25, mojo_children_idxs=24) alias mjtNum = double 
			# TypedefNode(alias=mjtNum, c_node_idx=23, c_parent_idx=21, mojo_node_idx=23, mojo_parent_idx=21, c_children_idxs=24, 25, mojo_children_idxs=24) Deleted because mjUSESINGLE was not defined
			DeletedNode(c_node_idx=24, c_parent_idx=23, mojo_node_idx=24, mojo_parent_idx=23) double 
			# DeletedNode(c_node_idx=24, c_parent_idx=23, mojo_node_idx=24, mojo_parent_idx=23) Deleted because mjUSESINGLE was not defined
			DeletedNode(c_node_idx=26, c_parent_idx=21, mojo_node_idx=25, mojo_parent_idx=21)  
			  
			# WhitespaceNode(c_node_idx=26, c_parent_idx=21, mojo_node_idx=25, mojo_parent_idx=21) Deleted because mjUSESINGLE was not defined
			DeletedNode(c_node_idx=27, c_parent_idx=21, mojo_node_idx=26, mojo_parent_idx=21) alias mjMINVAL = 1E-15 
			# MacroDefineNode(macro=mjMINVAL, value=1E-15, c_node_idx=27, c_parent_idx=21, mojo_node_idx=26, mojo_parent_idx=21) Deleted because mjUSESINGLE was not defined
			DeletedNode(c_node_idx=28, c_parent_idx=21, mojo_node_idx=27, mojo_parent_idx=21) # minimum value in any denominator 
			# SingleLineCommentNode(c_node_idx=28, c_parent_idx=21, mojo_node_idx=27, mojo_parent_idx=21) Deleted because mjUSESINGLE was not defined
			MacroElseNode(c_node_idx=29, c_parent_idx=21, mojo_node_idx=28, mojo_parent_idx=21, c_children_idxs=30, 31, 34, 35, 36, mojo_children_idxs=29, 30, 32, 33, 34) #else 
				WhitespaceNode(c_node_idx=30, c_parent_idx=29, mojo_node_idx=29, mojo_parent_idx=28)   
				TypedefNode(alias=mjtNum, c_node_idx=31, c_parent_idx=29, mojo_node_idx=30, mojo_parent_idx=28, c_children_idxs=32, 33, mojo_children_idxs=31) alias mjtNum = float 
				DeletedNode(c_node_idx=32, c_parent_idx=31, mojo_node_idx=31, mojo_parent_idx=30) float 
				# PlaceHolderNode(c_node_idx=32, c_parent_idx=31, mojo_node_idx=31, mojo_parent_idx=30) Deleted because typedef node is being converted to a mojo alias
				WhitespaceNode(c_node_idx=34, c_parent_idx=29, mojo_node_idx=32, mojo_parent_idx=28)  
				  
				MacroDefineNode(macro=mjMINVAL, value=1E-15f, c_node_idx=35, c_parent_idx=29, mojo_node_idx=33, mojo_parent_idx=28) alias mjMINVAL = 1E-15f 
				MultiLineCommentNode(c_node_idx=36, c_parent_idx=29, mojo_node_idx=34, mojo_parent_idx=28) #   This does after the float is defined 
		WhitespaceNode(c_node_idx=37, c_parent_idx=15, mojo_node_idx=35, mojo_parent_idx=15)  
		MultiLineCommentNode(c_node_idx=38, c_parent_idx=15, mojo_node_idx=36, mojo_parent_idx=15) #   silly comment 
		MultiLineCommentNode(c_node_idx=39, c_parent_idx=15, mojo_node_idx=37, mojo_parent_idx=15) #   /** another one??????? **/ 
		WhitespaceNode(c_node_idx=40, c_parent_idx=15, mojo_node_idx=38, mojo_parent_idx=15)  
		MultiLineCommentNode(c_node_idx=41, c_parent_idx=15, mojo_node_idx=39, mojo_parent_idx=15) #   /**  So  many  lines   **/ 
		WhitespaceNode(c_node_idx=42, c_parent_idx=15, mojo_node_idx=40, mojo_parent_idx=15)  
		 
		SingleLineCommentNode(c_node_idx=43, c_parent_idx=15, mojo_node_idx=41, mojo_parent_idx=15) # -------------------------------------- byte definition ------------------------------------------- 
		WhitespaceNode(c_node_idx=44, c_parent_idx=15, mojo_node_idx=42, mojo_parent_idx=15)  
		TypedefNode(alias=mjtByte, c_node_idx=45, c_parent_idx=15, mojo_node_idx=43, mojo_parent_idx=15, c_children_idxs=46, 47, mojo_children_idxs=44) alias mjtByte = unsigned 
		DeletedNode(c_node_idx=46, c_parent_idx=45, mojo_node_idx=44, mojo_parent_idx=43) unsigned char 
		# PlaceHolderNode(c_node_idx=46, c_parent_idx=45, mojo_node_idx=44, mojo_parent_idx=43) Deleted because typedef node is being converted to a mojo alias
		WhitespaceNode(c_node_idx=48, c_parent_idx=15, mojo_node_idx=45, mojo_parent_idx=15)     
		SingleLineCommentNode(c_node_idx=49, c_parent_idx=15, mojo_node_idx=46, mojo_parent_idx=15) # used for true/false 
		WhitespaceNode(c_node_idx=50, c_parent_idx=15, mojo_node_idx=47, mojo_parent_idx=15)  
		 
		 
	WhitespaceNode(c_node_idx=51, c_parent_idx=0, mojo_node_idx=48, mojo_parent_idx=0)  
	SingleLineCommentNode(c_node_idx=52, c_parent_idx=0, mojo_node_idx=49, mojo_parent_idx=0) # MUJOCO_INCLUDE_MJTNUM_H_ 
	WhitespaceNode(c_node_idx=53, c_parent_idx=0, mojo_node_idx=50, mojo_parent_idx=0)  
