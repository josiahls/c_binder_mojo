RootNode(c_node_idx=0, c_parent_idx=0, mojo_node_idx=0, mojo_parent_idx=-1, mojo_children_idxs=(1, 2, 8, 21, 22, 23, ...) len=16) 
	WhitespaceNode(c_node_idx=1, c_parent_idx=0, mojo_node_idx=1, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	StructNode(name=mjVisual_, c_node_idx=2, c_parent_idx=0, mojo_node_idx=2, mojo_parent_idx=0, c_children_idxs=(3), mojo_children_idxs=(3)) 
	StructNode >>> struct mjVisual_: 
		ScopeNode(c_node_idx=3, c_parent_idx=2, mojo_node_idx=3, mojo_parent_idx=2, c_children_idxs=(4, 5, 6, 7, 21, 22, ...) len=11, mojo_children_idxs=(4, 5, 6, 7)) 
		WhitespaceNode(c_node_idx=4, c_parent_idx=3, mojo_node_idx=4, mojo_parent_idx=3) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=5, c_parent_idx=3, mojo_node_idx=5, mojo_parent_idx=3) 
		SingleLineCommentNode >>> # visualization options 
		WhitespaceNode(c_node_idx=6, c_parent_idx=3, mojo_node_idx=6, mojo_parent_idx=3) 
		WhitespaceNode >>>   
		StructFieldNode(name=global, type=mjVisual__global, c_node_idx=7, c_parent_idx=3, mojo_node_idx=7, mojo_parent_idx=3) 
		StructFieldNode >>> var global: mjVisual__global 
	StructNode(name=AnonymousStruct, c_node_idx=8, c_parent_idx=7, mojo_node_idx=8, mojo_parent_idx=0, c_children_idxs=(9), mojo_children_idxs=(9)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=9, c_parent_idx=8, mojo_node_idx=9, mojo_parent_idx=8, c_children_idxs=(10, 11, 12, 13, 14, 15, ...) len=11, mojo_children_idxs=(10, 11, 12, 13, 14, 15, ...) len=11) 
		WhitespaceNode(c_node_idx=10, c_parent_idx=9, mojo_node_idx=10, mojo_parent_idx=9) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=11, c_parent_idx=9, mojo_node_idx=11, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # global parameters 
		WhitespaceNode(c_node_idx=12, c_parent_idx=9, mojo_node_idx=12, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=orthographic, type=int, c_node_idx=13, c_parent_idx=9, mojo_node_idx=13, mojo_parent_idx=9) 
		StructFieldNode >>> var orthographic: int 
		WhitespaceNode(c_node_idx=14, c_parent_idx=9, mojo_node_idx=14, mojo_parent_idx=9) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=15, c_parent_idx=9, mojo_node_idx=15, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # is the free camera orthographic (0: no ,  1: yes) 
		WhitespaceNode(c_node_idx=16, c_parent_idx=9, mojo_node_idx=16, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=fovy, type=float, c_node_idx=17, c_parent_idx=9, mojo_node_idx=17, mojo_parent_idx=9) 
		StructFieldNode >>> var fovy: float 
		WhitespaceNode(c_node_idx=18, c_parent_idx=9, mojo_node_idx=18, mojo_parent_idx=9) 
		WhitespaceNode >>>                    
		SingleLineCommentNode(c_node_idx=19, c_parent_idx=9, mojo_node_idx=19, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # y field-of-view of free camera (orthographic ? length : degree) 
		WhitespaceNode(c_node_idx=20, c_parent_idx=9, mojo_node_idx=20, mojo_parent_idx=9) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=21, c_parent_idx=3, mojo_node_idx=21, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	StructFieldNode(name=quality, type=AnonymousStruct_quality, c_node_idx=22, c_parent_idx=3, mojo_node_idx=22, mojo_parent_idx=0) 
	StructFieldNode >>> var quality: AnonymousStruct_quality 
	StructNode(name=AnonymousStruct, c_node_idx=23, c_parent_idx=22, mojo_node_idx=23, mojo_parent_idx=0, c_children_idxs=(24), mojo_children_idxs=(24)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=24, c_parent_idx=23, mojo_node_idx=24, mojo_parent_idx=23, c_children_idxs=(25, 26, 27, 28, 29, 30, ...) len=11, mojo_children_idxs=(25, 26, 27, 28, 29, 30, ...) len=11) 
		WhitespaceNode(c_node_idx=25, c_parent_idx=24, mojo_node_idx=25, mojo_parent_idx=24) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=26, c_parent_idx=24, mojo_node_idx=26, mojo_parent_idx=24) 
		SingleLineCommentNode >>> # rendering quality 
		WhitespaceNode(c_node_idx=27, c_parent_idx=24, mojo_node_idx=27, mojo_parent_idx=24) 
		WhitespaceNode >>>     
		StructFieldNode(name=shadowsize, type=int, c_node_idx=28, c_parent_idx=24, mojo_node_idx=28, mojo_parent_idx=24) 
		StructFieldNode >>> var shadowsize: int 
		WhitespaceNode(c_node_idx=29, c_parent_idx=24, mojo_node_idx=29, mojo_parent_idx=24) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=30, c_parent_idx=24, mojo_node_idx=30, mojo_parent_idx=24) 
		SingleLineCommentNode >>> # size of shadowmap texture 
		WhitespaceNode(c_node_idx=31, c_parent_idx=24, mojo_node_idx=31, mojo_parent_idx=24) 
		WhitespaceNode >>>     
		StructFieldNode(name=offsamples, type=int, c_node_idx=32, c_parent_idx=24, mojo_node_idx=32, mojo_parent_idx=24) 
		StructFieldNode >>> var offsamples: int 
		WhitespaceNode(c_node_idx=33, c_parent_idx=24, mojo_node_idx=33, mojo_parent_idx=24) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=34, c_parent_idx=24, mojo_node_idx=34, mojo_parent_idx=24) 
		SingleLineCommentNode >>> # number of multisamples for offscreen rendering 
		WhitespaceNode(c_node_idx=35, c_parent_idx=24, mojo_node_idx=35, mojo_parent_idx=24) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=36, c_parent_idx=3, mojo_node_idx=36, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	StructFieldNode(name=headlight, type=AnonymousStruct_headlight, c_node_idx=37, c_parent_idx=3, mojo_node_idx=37, mojo_parent_idx=0) 
	StructFieldNode >>> var headlight: AnonymousStruct_headlight 
	StructNode(name=AnonymousStruct, c_node_idx=38, c_parent_idx=37, mojo_node_idx=38, mojo_parent_idx=0, c_children_idxs=(39), mojo_children_idxs=(39)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=39, c_parent_idx=38, mojo_node_idx=39, mojo_parent_idx=38, c_children_idxs=(40, 41, 42, 43, 44, 45, ...) len=11, mojo_children_idxs=(40, 41, 42, 43, 44, 45, ...) len=11) 
		WhitespaceNode(c_node_idx=40, c_parent_idx=39, mojo_node_idx=40, mojo_parent_idx=39) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=41, c_parent_idx=39, mojo_node_idx=41, mojo_parent_idx=39) 
		SingleLineCommentNode >>> # head light 
		WhitespaceNode(c_node_idx=42, c_parent_idx=39, mojo_node_idx=42, mojo_parent_idx=39) 
		WhitespaceNode >>>     
		StructFieldNode(name=ambient[3], type=float, c_node_idx=43, c_parent_idx=39, mojo_node_idx=43, mojo_parent_idx=39) 
		StructFieldNode >>> var ambient[3]: float 
		WhitespaceNode(c_node_idx=44, c_parent_idx=39, mojo_node_idx=44, mojo_parent_idx=39) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=45, c_parent_idx=39, mojo_node_idx=45, mojo_parent_idx=39) 
		SingleLineCommentNode >>> # ambient rgb (alpha=1) 
		WhitespaceNode(c_node_idx=46, c_parent_idx=39, mojo_node_idx=46, mojo_parent_idx=39) 
		WhitespaceNode >>>     
		StructFieldNode(name=diffuse[3], type=float, c_node_idx=47, c_parent_idx=39, mojo_node_idx=47, mojo_parent_idx=39) 
		StructFieldNode >>> var diffuse[3]: float 
		WhitespaceNode(c_node_idx=48, c_parent_idx=39, mojo_node_idx=48, mojo_parent_idx=39) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=49, c_parent_idx=39, mojo_node_idx=49, mojo_parent_idx=39) 
		SingleLineCommentNode >>> # diffuse rgb (alpha=1) 
		WhitespaceNode(c_node_idx=50, c_parent_idx=39, mojo_node_idx=50, mojo_parent_idx=39) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=51, c_parent_idx=3, mojo_node_idx=51, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	StructFieldNode(name=map, type=AnonymousStruct_map, c_node_idx=52, c_parent_idx=3, mojo_node_idx=52, mojo_parent_idx=0) 
	StructFieldNode >>> var map: AnonymousStruct_map 
	StructNode(name=AnonymousStruct, c_node_idx=53, c_parent_idx=52, mojo_node_idx=53, mojo_parent_idx=0, c_children_idxs=(54), mojo_children_idxs=(54)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=54, c_parent_idx=53, mojo_node_idx=54, mojo_parent_idx=53, c_children_idxs=(55, 56, 57, 58, 59, 60, ...) len=11, mojo_children_idxs=(55, 56, 57, 58, 59, 60, ...) len=11) 
		WhitespaceNode(c_node_idx=55, c_parent_idx=54, mojo_node_idx=55, mojo_parent_idx=54) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=56, c_parent_idx=54, mojo_node_idx=56, mojo_parent_idx=54) 
		SingleLineCommentNode >>> # mapping 
		WhitespaceNode(c_node_idx=57, c_parent_idx=54, mojo_node_idx=57, mojo_parent_idx=54) 
		WhitespaceNode >>>     
		StructFieldNode(name=stiffness, type=float, c_node_idx=58, c_parent_idx=54, mojo_node_idx=58, mojo_parent_idx=54) 
		StructFieldNode >>> var stiffness: float 
		WhitespaceNode(c_node_idx=59, c_parent_idx=54, mojo_node_idx=59, mojo_parent_idx=54) 
		WhitespaceNode >>>               
		SingleLineCommentNode(c_node_idx=60, c_parent_idx=54, mojo_node_idx=60, mojo_parent_idx=54) 
		SingleLineCommentNode >>> # mouse perturbation stiffness (space->force) 
		WhitespaceNode(c_node_idx=61, c_parent_idx=54, mojo_node_idx=61, mojo_parent_idx=54) 
		WhitespaceNode >>>     
		StructFieldNode(name=stiffnessrot, type=float, c_node_idx=62, c_parent_idx=54, mojo_node_idx=62, mojo_parent_idx=54) 
		StructFieldNode >>> var stiffnessrot: float 
		WhitespaceNode(c_node_idx=63, c_parent_idx=54, mojo_node_idx=63, mojo_parent_idx=54) 
		WhitespaceNode >>>            
		SingleLineCommentNode(c_node_idx=64, c_parent_idx=54, mojo_node_idx=64, mojo_parent_idx=54) 
		SingleLineCommentNode >>> # mouse perturbation stiffness (space->torque) 
		WhitespaceNode(c_node_idx=65, c_parent_idx=54, mojo_node_idx=65, mojo_parent_idx=54) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=66, c_parent_idx=3, mojo_node_idx=66, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode(c_node_idx=67, c_parent_idx=0, mojo_node_idx=67, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	TypedefNode(alias=mjVisual, c_node_idx=68, c_parent_idx=0, mojo_node_idx=68, mojo_parent_idx=0, c_children_idxs=(69, 70), mojo_children_idxs=(69)) 
	TypedefNode >>> # Complex typedef not supported yet: typedef <children> mjVisual ;  
	StructNode(name=mjVisual_, c_node_idx=69, c_parent_idx=68, mojo_node_idx=69, mojo_parent_idx=68) 
	StructNode >>> struct mjVisual_: 

	WhitespaceNode(c_node_idx=71, c_parent_idx=0, mojo_node_idx=70, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>  