RootNode(c_node_idx=0, c_parent_idx=0, mojo_node_idx=0, mojo_parent_idx=-1, mojo_children_idxs=(1, 2, 8, 23, 37, 38, ...) len=7) 
	WhitespaceNode(c_node_idx=1, c_parent_idx=0, mojo_node_idx=1, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	StructNode(name=mjVisual_, c_node_idx=2, c_parent_idx=0, mojo_node_idx=2, mojo_parent_idx=0, c_children_idxs=(3), mojo_children_idxs=(3)) 
	StructNode >>> struct mjVisual_: 
		ScopeNode(c_node_idx=3, c_parent_idx=2, mojo_node_idx=3, mojo_parent_idx=2, c_children_idxs=(4, 5, 6, 7, 21, 22, ...) len=7, mojo_children_idxs=(4, 5, 6, 7, 21, 22, ...) len=7) 
		WhitespaceNode(c_node_idx=4, c_parent_idx=3, mojo_node_idx=4, mojo_parent_idx=3) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=5, c_parent_idx=3, mojo_node_idx=5, mojo_parent_idx=3) 
		SingleLineCommentNode >>> # visualization options 
		WhitespaceNode(c_node_idx=6, c_parent_idx=3, mojo_node_idx=6, mojo_parent_idx=3) 
		WhitespaceNode >>>   
		StructFieldNode(name=global, type=mjVisual__global, c_node_idx=7, c_parent_idx=3, mojo_node_idx=7, mojo_parent_idx=3, c_children_idxs=(8)) 
		StructFieldNode >>> var global: mjVisual__global 
		WhitespaceNode(c_node_idx=21, c_parent_idx=3, mojo_node_idx=21, mojo_parent_idx=3) 
		WhitespaceNode >>>  
		WhitespaceNode >>>  
		WhitespaceNode >>>   
		StructFieldNode(name=quality, type=mjVisual__quality, c_node_idx=22, c_parent_idx=3, mojo_node_idx=22, mojo_parent_idx=3, c_children_idxs=(23)) 
		StructFieldNode >>> var quality: mjVisual__quality 
		WhitespaceNode(c_node_idx=36, c_parent_idx=3, mojo_node_idx=36, mojo_parent_idx=3) 
		WhitespaceNode >>>  
	StructNode(name=mjVisual__global, c_node_idx=8, c_parent_idx=7, mojo_node_idx=8, mojo_parent_idx=0, c_children_idxs=(9), mojo_children_idxs=(9)) 
	StructNode >>> struct mjVisual__global: 
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
	StructNode(name=mjVisual__quality, c_node_idx=23, c_parent_idx=22, mojo_node_idx=23, mojo_parent_idx=0, c_children_idxs=(24), mojo_children_idxs=(24)) 
	StructNode >>> struct mjVisual__quality: 
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
	WhitespaceNode(c_node_idx=37, c_parent_idx=0, mojo_node_idx=37, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	TypedefNode(alias=mjVisual, c_node_idx=38, c_parent_idx=0, mojo_node_idx=38, mojo_parent_idx=0, c_children_idxs=(39, 40), mojo_children_idxs=(39)) 
	TypedefNode >>> # Complex typedef not supported yet: typedef <children> mjVisual ;  
	StructNode(name=mjVisual_, c_node_idx=39, c_parent_idx=38, mojo_node_idx=39, mojo_parent_idx=38) 
	StructNode >>> struct mjVisual_: 

	WhitespaceNode(c_node_idx=41, c_parent_idx=0, mojo_node_idx=40, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>  