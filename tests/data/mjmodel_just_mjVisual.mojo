RootNode(c_node_idx=0, c_parent_idx=0, mojo_node_idx=0, mojo_parent_idx=-1, mojo_children_idxs=(1, 2, 8, 61, 62, 63, ...) len=22) 
	WhitespaceNode(c_node_idx=1, c_parent_idx=0, mojo_node_idx=1, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	StructNode(name=mjVisual_, c_node_idx=2, c_parent_idx=0, mojo_node_idx=2, mojo_parent_idx=0, c_children_idxs=(3), mojo_children_idxs=(3)) 
	StructNode >>> struct mjVisual_: 
		ScopeNode(c_node_idx=3, c_parent_idx=2, mojo_node_idx=3, mojo_parent_idx=2, c_children_idxs=(4, 5, 6, 7, 61, 62, ...) len=15, mojo_children_idxs=(4, 5, 6, 7)) 
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
		ScopeNode(c_node_idx=9, c_parent_idx=8, mojo_node_idx=9, mojo_parent_idx=8, c_children_idxs=(10, 11, 12, 13, 14, 15, ...) len=51, mojo_children_idxs=(10, 11, 12, 13, 14, 15, ...) len=51) 
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
		StructFieldNode(name=ipd, type=float, c_node_idx=21, c_parent_idx=9, mojo_node_idx=21, mojo_parent_idx=9) 
		StructFieldNode >>> var ipd: float 
		WhitespaceNode(c_node_idx=22, c_parent_idx=9, mojo_node_idx=22, mojo_parent_idx=9) 
		WhitespaceNode >>>                     
		SingleLineCommentNode(c_node_idx=23, c_parent_idx=9, mojo_node_idx=23, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # inter-pupilary distance for free camera 
		WhitespaceNode(c_node_idx=24, c_parent_idx=9, mojo_node_idx=24, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=azimuth, type=float, c_node_idx=25, c_parent_idx=9, mojo_node_idx=25, mojo_parent_idx=9) 
		StructFieldNode >>> var azimuth: float 
		WhitespaceNode(c_node_idx=26, c_parent_idx=9, mojo_node_idx=26, mojo_parent_idx=9) 
		WhitespaceNode >>>                 
		SingleLineCommentNode(c_node_idx=27, c_parent_idx=9, mojo_node_idx=27, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # initial azimuth of free camera (degrees) 
		WhitespaceNode(c_node_idx=28, c_parent_idx=9, mojo_node_idx=28, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=elevation, type=float, c_node_idx=29, c_parent_idx=9, mojo_node_idx=29, mojo_parent_idx=9) 
		StructFieldNode >>> var elevation: float 
		WhitespaceNode(c_node_idx=30, c_parent_idx=9, mojo_node_idx=30, mojo_parent_idx=9) 
		WhitespaceNode >>>               
		SingleLineCommentNode(c_node_idx=31, c_parent_idx=9, mojo_node_idx=31, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # initial elevation of free camera (degrees) 
		WhitespaceNode(c_node_idx=32, c_parent_idx=9, mojo_node_idx=32, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=linewidth, type=float, c_node_idx=33, c_parent_idx=9, mojo_node_idx=33, mojo_parent_idx=9) 
		StructFieldNode >>> var linewidth: float 
		WhitespaceNode(c_node_idx=34, c_parent_idx=9, mojo_node_idx=34, mojo_parent_idx=9) 
		WhitespaceNode >>>               
		SingleLineCommentNode(c_node_idx=35, c_parent_idx=9, mojo_node_idx=35, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # line width for wireframe and ray rendering 
		WhitespaceNode(c_node_idx=36, c_parent_idx=9, mojo_node_idx=36, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=glow, type=float, c_node_idx=37, c_parent_idx=9, mojo_node_idx=37, mojo_parent_idx=9) 
		StructFieldNode >>> var glow: float 
		WhitespaceNode(c_node_idx=38, c_parent_idx=9, mojo_node_idx=38, mojo_parent_idx=9) 
		WhitespaceNode >>>                    
		SingleLineCommentNode(c_node_idx=39, c_parent_idx=9, mojo_node_idx=39, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # glow coefficient for selected body 
		WhitespaceNode(c_node_idx=40, c_parent_idx=9, mojo_node_idx=40, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=realtime, type=float, c_node_idx=41, c_parent_idx=9, mojo_node_idx=41, mojo_parent_idx=9) 
		StructFieldNode >>> var realtime: float 
		WhitespaceNode(c_node_idx=42, c_parent_idx=9, mojo_node_idx=42, mojo_parent_idx=9) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=43, c_parent_idx=9, mojo_node_idx=43, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # initial real-time factor (1: real time) 
		WhitespaceNode(c_node_idx=44, c_parent_idx=9, mojo_node_idx=44, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=offwidth, type=int, c_node_idx=45, c_parent_idx=9, mojo_node_idx=45, mojo_parent_idx=9) 
		StructFieldNode >>> var offwidth: int 
		WhitespaceNode(c_node_idx=46, c_parent_idx=9, mojo_node_idx=46, mojo_parent_idx=9) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=47, c_parent_idx=9, mojo_node_idx=47, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # width of offscreen buffer 
		WhitespaceNode(c_node_idx=48, c_parent_idx=9, mojo_node_idx=48, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=offheight, type=int, c_node_idx=49, c_parent_idx=9, mojo_node_idx=49, mojo_parent_idx=9) 
		StructFieldNode >>> var offheight: int 
		WhitespaceNode(c_node_idx=50, c_parent_idx=9, mojo_node_idx=50, mojo_parent_idx=9) 
		WhitespaceNode >>>               
		SingleLineCommentNode(c_node_idx=51, c_parent_idx=9, mojo_node_idx=51, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # height of offscreen buffer 
		WhitespaceNode(c_node_idx=52, c_parent_idx=9, mojo_node_idx=52, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=ellipsoidinertia, type=int, c_node_idx=53, c_parent_idx=9, mojo_node_idx=53, mojo_parent_idx=9) 
		StructFieldNode >>> var ellipsoidinertia: int 
		WhitespaceNode(c_node_idx=54, c_parent_idx=9, mojo_node_idx=54, mojo_parent_idx=9) 
		WhitespaceNode >>>        
		SingleLineCommentNode(c_node_idx=55, c_parent_idx=9, mojo_node_idx=55, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # geom for inertia visualization (0: box ,  1: ellipsoid) 
		WhitespaceNode(c_node_idx=56, c_parent_idx=9, mojo_node_idx=56, mojo_parent_idx=9) 
		WhitespaceNode >>>     
		StructFieldNode(name=bvactive, type=int, c_node_idx=57, c_parent_idx=9, mojo_node_idx=57, mojo_parent_idx=9) 
		StructFieldNode >>> var bvactive: int 
		WhitespaceNode(c_node_idx=58, c_parent_idx=9, mojo_node_idx=58, mojo_parent_idx=9) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=59, c_parent_idx=9, mojo_node_idx=59, mojo_parent_idx=9) 
		SingleLineCommentNode >>> # visualize active bounding volumes (0: no ,  1: yes) 
		WhitespaceNode(c_node_idx=60, c_parent_idx=9, mojo_node_idx=60, mojo_parent_idx=9) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=61, c_parent_idx=3, mojo_node_idx=61, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	StructFieldNode(name=quality, type=AnonymousStruct_quality, c_node_idx=62, c_parent_idx=3, mojo_node_idx=62, mojo_parent_idx=0) 
	StructFieldNode >>> var quality: AnonymousStruct_quality 
	StructNode(name=AnonymousStruct, c_node_idx=63, c_parent_idx=62, mojo_node_idx=63, mojo_parent_idx=0, c_children_idxs=(64), mojo_children_idxs=(64)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=64, c_parent_idx=63, mojo_node_idx=64, mojo_parent_idx=63, c_children_idxs=(65, 66, 67, 68, 69, 70, ...) len=23, mojo_children_idxs=(65, 66, 67, 68, 69, 70, ...) len=23) 
		WhitespaceNode(c_node_idx=65, c_parent_idx=64, mojo_node_idx=65, mojo_parent_idx=64) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=66, c_parent_idx=64, mojo_node_idx=66, mojo_parent_idx=64) 
		SingleLineCommentNode >>> # rendering quality 
		WhitespaceNode(c_node_idx=67, c_parent_idx=64, mojo_node_idx=67, mojo_parent_idx=64) 
		WhitespaceNode >>>     
		StructFieldNode(name=shadowsize, type=int, c_node_idx=68, c_parent_idx=64, mojo_node_idx=68, mojo_parent_idx=64) 
		StructFieldNode >>> var shadowsize: int 
		WhitespaceNode(c_node_idx=69, c_parent_idx=64, mojo_node_idx=69, mojo_parent_idx=64) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=70, c_parent_idx=64, mojo_node_idx=70, mojo_parent_idx=64) 
		SingleLineCommentNode >>> # size of shadowmap texture 
		WhitespaceNode(c_node_idx=71, c_parent_idx=64, mojo_node_idx=71, mojo_parent_idx=64) 
		WhitespaceNode >>>     
		StructFieldNode(name=offsamples, type=int, c_node_idx=72, c_parent_idx=64, mojo_node_idx=72, mojo_parent_idx=64) 
		StructFieldNode >>> var offsamples: int 
		WhitespaceNode(c_node_idx=73, c_parent_idx=64, mojo_node_idx=73, mojo_parent_idx=64) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=74, c_parent_idx=64, mojo_node_idx=74, mojo_parent_idx=64) 
		SingleLineCommentNode >>> # number of multisamples for offscreen rendering 
		WhitespaceNode(c_node_idx=75, c_parent_idx=64, mojo_node_idx=75, mojo_parent_idx=64) 
		WhitespaceNode >>>     
		StructFieldNode(name=numslices, type=int, c_node_idx=76, c_parent_idx=64, mojo_node_idx=76, mojo_parent_idx=64) 
		StructFieldNode >>> var numslices: int 
		WhitespaceNode(c_node_idx=77, c_parent_idx=64, mojo_node_idx=77, mojo_parent_idx=64) 
		WhitespaceNode >>>               
		SingleLineCommentNode(c_node_idx=78, c_parent_idx=64, mojo_node_idx=78, mojo_parent_idx=64) 
		SingleLineCommentNode >>> # number of slices for builtin geom drawing 
		WhitespaceNode(c_node_idx=79, c_parent_idx=64, mojo_node_idx=79, mojo_parent_idx=64) 
		WhitespaceNode >>>     
		StructFieldNode(name=numstacks, type=int, c_node_idx=80, c_parent_idx=64, mojo_node_idx=80, mojo_parent_idx=64) 
		StructFieldNode >>> var numstacks: int 
		WhitespaceNode(c_node_idx=81, c_parent_idx=64, mojo_node_idx=81, mojo_parent_idx=64) 
		WhitespaceNode >>>               
		SingleLineCommentNode(c_node_idx=82, c_parent_idx=64, mojo_node_idx=82, mojo_parent_idx=64) 
		SingleLineCommentNode >>> # number of stacks for builtin geom drawing 
		WhitespaceNode(c_node_idx=83, c_parent_idx=64, mojo_node_idx=83, mojo_parent_idx=64) 
		WhitespaceNode >>>     
		StructFieldNode(name=numquads, type=int, c_node_idx=84, c_parent_idx=64, mojo_node_idx=84, mojo_parent_idx=64) 
		StructFieldNode >>> var numquads: int 
		WhitespaceNode(c_node_idx=85, c_parent_idx=64, mojo_node_idx=85, mojo_parent_idx=64) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=86, c_parent_idx=64, mojo_node_idx=86, mojo_parent_idx=64) 
		SingleLineCommentNode >>> # number of quads for box rendering 
		WhitespaceNode(c_node_idx=87, c_parent_idx=64, mojo_node_idx=87, mojo_parent_idx=64) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=88, c_parent_idx=3, mojo_node_idx=88, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	StructFieldNode(name=headlight, type=AnonymousStruct_headlight, c_node_idx=89, c_parent_idx=3, mojo_node_idx=89, mojo_parent_idx=0) 
	StructFieldNode >>> var headlight: AnonymousStruct_headlight 
	StructNode(name=AnonymousStruct, c_node_idx=90, c_parent_idx=89, mojo_node_idx=90, mojo_parent_idx=0, c_children_idxs=(91), mojo_children_idxs=(91)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=91, c_parent_idx=90, mojo_node_idx=91, mojo_parent_idx=90, c_children_idxs=(92, 93, 94, 95, 96, 97, ...) len=19, mojo_children_idxs=(92, 93, 94, 95, 96, 97, ...) len=19) 
		WhitespaceNode(c_node_idx=92, c_parent_idx=91, mojo_node_idx=92, mojo_parent_idx=91) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=93, c_parent_idx=91, mojo_node_idx=93, mojo_parent_idx=91) 
		SingleLineCommentNode >>> # head light 
		WhitespaceNode(c_node_idx=94, c_parent_idx=91, mojo_node_idx=94, mojo_parent_idx=91) 
		WhitespaceNode >>>     
		StructFieldNode(name=ambient[3], type=float, c_node_idx=95, c_parent_idx=91, mojo_node_idx=95, mojo_parent_idx=91) 
		StructFieldNode >>> var ambient[3]: float 
		WhitespaceNode(c_node_idx=96, c_parent_idx=91, mojo_node_idx=96, mojo_parent_idx=91) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=97, c_parent_idx=91, mojo_node_idx=97, mojo_parent_idx=91) 
		SingleLineCommentNode >>> # ambient rgb (alpha=1) 
		WhitespaceNode(c_node_idx=98, c_parent_idx=91, mojo_node_idx=98, mojo_parent_idx=91) 
		WhitespaceNode >>>     
		StructFieldNode(name=diffuse[3], type=float, c_node_idx=99, c_parent_idx=91, mojo_node_idx=99, mojo_parent_idx=91) 
		StructFieldNode >>> var diffuse[3]: float 
		WhitespaceNode(c_node_idx=100, c_parent_idx=91, mojo_node_idx=100, mojo_parent_idx=91) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=101, c_parent_idx=91, mojo_node_idx=101, mojo_parent_idx=91) 
		SingleLineCommentNode >>> # diffuse rgb (alpha=1) 
		WhitespaceNode(c_node_idx=102, c_parent_idx=91, mojo_node_idx=102, mojo_parent_idx=91) 
		WhitespaceNode >>>     
		StructFieldNode(name=specular[3], type=float, c_node_idx=103, c_parent_idx=91, mojo_node_idx=103, mojo_parent_idx=91) 
		StructFieldNode >>> var specular[3]: float 
		WhitespaceNode(c_node_idx=104, c_parent_idx=91, mojo_node_idx=104, mojo_parent_idx=91) 
		WhitespaceNode >>>             
		SingleLineCommentNode(c_node_idx=105, c_parent_idx=91, mojo_node_idx=105, mojo_parent_idx=91) 
		SingleLineCommentNode >>> # specular rgb (alpha=1) 
		WhitespaceNode(c_node_idx=106, c_parent_idx=91, mojo_node_idx=106, mojo_parent_idx=91) 
		WhitespaceNode >>>     
		StructFieldNode(name=active, type=int, c_node_idx=107, c_parent_idx=91, mojo_node_idx=107, mojo_parent_idx=91) 
		StructFieldNode >>> var active: int 
		WhitespaceNode(c_node_idx=108, c_parent_idx=91, mojo_node_idx=108, mojo_parent_idx=91) 
		WhitespaceNode >>>                  
		SingleLineCommentNode(c_node_idx=109, c_parent_idx=91, mojo_node_idx=109, mojo_parent_idx=91) 
		SingleLineCommentNode >>> # is headlight active 
		WhitespaceNode(c_node_idx=110, c_parent_idx=91, mojo_node_idx=110, mojo_parent_idx=91) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=111, c_parent_idx=3, mojo_node_idx=111, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	StructFieldNode(name=map, type=AnonymousStruct_map, c_node_idx=112, c_parent_idx=3, mojo_node_idx=112, mojo_parent_idx=0) 
	StructFieldNode >>> var map: AnonymousStruct_map 
	StructNode(name=AnonymousStruct, c_node_idx=113, c_parent_idx=112, mojo_node_idx=113, mojo_parent_idx=0, c_children_idxs=(114), mojo_children_idxs=(114)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=114, c_parent_idx=113, mojo_node_idx=114, mojo_parent_idx=113, c_children_idxs=(115, 116, 117, 118, 119, 120, ...) len=55, mojo_children_idxs=(115, 116, 117, 118, 119, 120, ...) len=55) 
		WhitespaceNode(c_node_idx=115, c_parent_idx=114, mojo_node_idx=115, mojo_parent_idx=114) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=116, c_parent_idx=114, mojo_node_idx=116, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # mapping 
		WhitespaceNode(c_node_idx=117, c_parent_idx=114, mojo_node_idx=117, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=stiffness, type=float, c_node_idx=118, c_parent_idx=114, mojo_node_idx=118, mojo_parent_idx=114) 
		StructFieldNode >>> var stiffness: float 
		WhitespaceNode(c_node_idx=119, c_parent_idx=114, mojo_node_idx=119, mojo_parent_idx=114) 
		WhitespaceNode >>>               
		SingleLineCommentNode(c_node_idx=120, c_parent_idx=114, mojo_node_idx=120, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # mouse perturbation stiffness (space->force) 
		WhitespaceNode(c_node_idx=121, c_parent_idx=114, mojo_node_idx=121, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=stiffnessrot, type=float, c_node_idx=122, c_parent_idx=114, mojo_node_idx=122, mojo_parent_idx=114) 
		StructFieldNode >>> var stiffnessrot: float 
		WhitespaceNode(c_node_idx=123, c_parent_idx=114, mojo_node_idx=123, mojo_parent_idx=114) 
		WhitespaceNode >>>            
		SingleLineCommentNode(c_node_idx=124, c_parent_idx=114, mojo_node_idx=124, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # mouse perturbation stiffness (space->torque) 
		WhitespaceNode(c_node_idx=125, c_parent_idx=114, mojo_node_idx=125, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=force, type=float, c_node_idx=126, c_parent_idx=114, mojo_node_idx=126, mojo_parent_idx=114) 
		StructFieldNode >>> var force: float 
		WhitespaceNode(c_node_idx=127, c_parent_idx=114, mojo_node_idx=127, mojo_parent_idx=114) 
		WhitespaceNode >>>                   
		SingleLineCommentNode(c_node_idx=128, c_parent_idx=114, mojo_node_idx=128, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # from force units to space units 
		WhitespaceNode(c_node_idx=129, c_parent_idx=114, mojo_node_idx=129, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=torque, type=float, c_node_idx=130, c_parent_idx=114, mojo_node_idx=130, mojo_parent_idx=114) 
		StructFieldNode >>> var torque: float 
		WhitespaceNode(c_node_idx=131, c_parent_idx=114, mojo_node_idx=131, mojo_parent_idx=114) 
		WhitespaceNode >>>                  
		SingleLineCommentNode(c_node_idx=132, c_parent_idx=114, mojo_node_idx=132, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # from torque units to space units 
		WhitespaceNode(c_node_idx=133, c_parent_idx=114, mojo_node_idx=133, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=alpha, type=float, c_node_idx=134, c_parent_idx=114, mojo_node_idx=134, mojo_parent_idx=114) 
		StructFieldNode >>> var alpha: float 
		WhitespaceNode(c_node_idx=135, c_parent_idx=114, mojo_node_idx=135, mojo_parent_idx=114) 
		WhitespaceNode >>>                   
		SingleLineCommentNode(c_node_idx=136, c_parent_idx=114, mojo_node_idx=136, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # scale geom alphas when transparency is enabled 
		WhitespaceNode(c_node_idx=137, c_parent_idx=114, mojo_node_idx=137, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=fogstart, type=float, c_node_idx=138, c_parent_idx=114, mojo_node_idx=138, mojo_parent_idx=114) 
		StructFieldNode >>> var fogstart: float 
		WhitespaceNode(c_node_idx=139, c_parent_idx=114, mojo_node_idx=139, mojo_parent_idx=114) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=140, c_parent_idx=114, mojo_node_idx=140, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # OpenGL fog starts at fogstart * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=141, c_parent_idx=114, mojo_node_idx=141, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=fogend, type=float, c_node_idx=142, c_parent_idx=114, mojo_node_idx=142, mojo_parent_idx=114) 
		StructFieldNode >>> var fogend: float 
		WhitespaceNode(c_node_idx=143, c_parent_idx=114, mojo_node_idx=143, mojo_parent_idx=114) 
		WhitespaceNode >>>                  
		SingleLineCommentNode(c_node_idx=144, c_parent_idx=114, mojo_node_idx=144, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # OpenGL fog ends at fogend * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=145, c_parent_idx=114, mojo_node_idx=145, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=znear, type=float, c_node_idx=146, c_parent_idx=114, mojo_node_idx=146, mojo_parent_idx=114) 
		StructFieldNode >>> var znear: float 
		WhitespaceNode(c_node_idx=147, c_parent_idx=114, mojo_node_idx=147, mojo_parent_idx=114) 
		WhitespaceNode >>>                   
		SingleLineCommentNode(c_node_idx=148, c_parent_idx=114, mojo_node_idx=148, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # near clipping plane = znear * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=149, c_parent_idx=114, mojo_node_idx=149, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=zfar, type=float, c_node_idx=150, c_parent_idx=114, mojo_node_idx=150, mojo_parent_idx=114) 
		StructFieldNode >>> var zfar: float 
		WhitespaceNode(c_node_idx=151, c_parent_idx=114, mojo_node_idx=151, mojo_parent_idx=114) 
		WhitespaceNode >>>                    
		SingleLineCommentNode(c_node_idx=152, c_parent_idx=114, mojo_node_idx=152, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # far clipping plane = zfar * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=153, c_parent_idx=114, mojo_node_idx=153, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=haze, type=float, c_node_idx=154, c_parent_idx=114, mojo_node_idx=154, mojo_parent_idx=114) 
		StructFieldNode >>> var haze: float 
		WhitespaceNode(c_node_idx=155, c_parent_idx=114, mojo_node_idx=155, mojo_parent_idx=114) 
		WhitespaceNode >>>                    
		SingleLineCommentNode(c_node_idx=156, c_parent_idx=114, mojo_node_idx=156, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # haze ratio 
		WhitespaceNode(c_node_idx=157, c_parent_idx=114, mojo_node_idx=157, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=shadowclip, type=float, c_node_idx=158, c_parent_idx=114, mojo_node_idx=158, mojo_parent_idx=114) 
		StructFieldNode >>> var shadowclip: float 
		WhitespaceNode(c_node_idx=159, c_parent_idx=114, mojo_node_idx=159, mojo_parent_idx=114) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=160, c_parent_idx=114, mojo_node_idx=160, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # directional light: shadowclip * mjModel.stat.extent 
		WhitespaceNode(c_node_idx=161, c_parent_idx=114, mojo_node_idx=161, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=shadowscale, type=float, c_node_idx=162, c_parent_idx=114, mojo_node_idx=162, mojo_parent_idx=114) 
		StructFieldNode >>> var shadowscale: float 
		WhitespaceNode(c_node_idx=163, c_parent_idx=114, mojo_node_idx=163, mojo_parent_idx=114) 
		WhitespaceNode >>>             
		SingleLineCommentNode(c_node_idx=164, c_parent_idx=114, mojo_node_idx=164, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # spot light: shadowscale * light.cutoff 
		WhitespaceNode(c_node_idx=165, c_parent_idx=114, mojo_node_idx=165, mojo_parent_idx=114) 
		WhitespaceNode >>>     
		StructFieldNode(name=actuatortendon, type=float, c_node_idx=166, c_parent_idx=114, mojo_node_idx=166, mojo_parent_idx=114) 
		StructFieldNode >>> var actuatortendon: float 
		WhitespaceNode(c_node_idx=167, c_parent_idx=114, mojo_node_idx=167, mojo_parent_idx=114) 
		WhitespaceNode >>>          
		SingleLineCommentNode(c_node_idx=168, c_parent_idx=114, mojo_node_idx=168, mojo_parent_idx=114) 
		SingleLineCommentNode >>> # scale tendon width 
		WhitespaceNode(c_node_idx=169, c_parent_idx=114, mojo_node_idx=169, mojo_parent_idx=114) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=170, c_parent_idx=3, mojo_node_idx=170, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	StructFieldNode(name=scale, type=AnonymousStruct_scale, c_node_idx=171, c_parent_idx=3, mojo_node_idx=171, mojo_parent_idx=0) 
	StructFieldNode >>> var scale: AnonymousStruct_scale 
	StructNode(name=AnonymousStruct, c_node_idx=172, c_parent_idx=171, mojo_node_idx=172, mojo_parent_idx=0, c_children_idxs=(173), mojo_children_idxs=(173)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=173, c_parent_idx=172, mojo_node_idx=173, mojo_parent_idx=172, c_children_idxs=(174, 175, 176, 177, 178, 179, ...) len=71, mojo_children_idxs=(174, 175, 176, 177, 178, 179, ...) len=71) 
		WhitespaceNode(c_node_idx=174, c_parent_idx=173, mojo_node_idx=174, mojo_parent_idx=173) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=175, c_parent_idx=173, mojo_node_idx=175, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # scale of decor elements relative to mean body size 
		WhitespaceNode(c_node_idx=176, c_parent_idx=173, mojo_node_idx=176, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=forcewidth, type=float, c_node_idx=177, c_parent_idx=173, mojo_node_idx=177, mojo_parent_idx=173) 
		StructFieldNode >>> var forcewidth: float 
		WhitespaceNode(c_node_idx=178, c_parent_idx=173, mojo_node_idx=178, mojo_parent_idx=173) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=179, c_parent_idx=173, mojo_node_idx=179, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # width of force arrow 
		WhitespaceNode(c_node_idx=180, c_parent_idx=173, mojo_node_idx=180, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=contactwidth, type=float, c_node_idx=181, c_parent_idx=173, mojo_node_idx=181, mojo_parent_idx=173) 
		StructFieldNode >>> var contactwidth: float 
		WhitespaceNode(c_node_idx=182, c_parent_idx=173, mojo_node_idx=182, mojo_parent_idx=173) 
		WhitespaceNode >>>            
		SingleLineCommentNode(c_node_idx=183, c_parent_idx=173, mojo_node_idx=183, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # contact width 
		WhitespaceNode(c_node_idx=184, c_parent_idx=173, mojo_node_idx=184, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=contactheight, type=float, c_node_idx=185, c_parent_idx=173, mojo_node_idx=185, mojo_parent_idx=173) 
		StructFieldNode >>> var contactheight: float 
		WhitespaceNode(c_node_idx=186, c_parent_idx=173, mojo_node_idx=186, mojo_parent_idx=173) 
		WhitespaceNode >>>           
		SingleLineCommentNode(c_node_idx=187, c_parent_idx=173, mojo_node_idx=187, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # contact height 
		WhitespaceNode(c_node_idx=188, c_parent_idx=173, mojo_node_idx=188, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=connect, type=float, c_node_idx=189, c_parent_idx=173, mojo_node_idx=189, mojo_parent_idx=173) 
		StructFieldNode >>> var connect: float 
		WhitespaceNode(c_node_idx=190, c_parent_idx=173, mojo_node_idx=190, mojo_parent_idx=173) 
		WhitespaceNode >>>                 
		SingleLineCommentNode(c_node_idx=191, c_parent_idx=173, mojo_node_idx=191, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # autoconnect capsule width 
		WhitespaceNode(c_node_idx=192, c_parent_idx=173, mojo_node_idx=192, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=com, type=float, c_node_idx=193, c_parent_idx=173, mojo_node_idx=193, mojo_parent_idx=173) 
		StructFieldNode >>> var com: float 
		WhitespaceNode(c_node_idx=194, c_parent_idx=173, mojo_node_idx=194, mojo_parent_idx=173) 
		WhitespaceNode >>>                     
		SingleLineCommentNode(c_node_idx=195, c_parent_idx=173, mojo_node_idx=195, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # com radius 
		WhitespaceNode(c_node_idx=196, c_parent_idx=173, mojo_node_idx=196, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=camera, type=float, c_node_idx=197, c_parent_idx=173, mojo_node_idx=197, mojo_parent_idx=173) 
		StructFieldNode >>> var camera: float 
		WhitespaceNode(c_node_idx=198, c_parent_idx=173, mojo_node_idx=198, mojo_parent_idx=173) 
		WhitespaceNode >>>                  
		SingleLineCommentNode(c_node_idx=199, c_parent_idx=173, mojo_node_idx=199, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # camera object 
		WhitespaceNode(c_node_idx=200, c_parent_idx=173, mojo_node_idx=200, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=light, type=float, c_node_idx=201, c_parent_idx=173, mojo_node_idx=201, mojo_parent_idx=173) 
		StructFieldNode >>> var light: float 
		WhitespaceNode(c_node_idx=202, c_parent_idx=173, mojo_node_idx=202, mojo_parent_idx=173) 
		WhitespaceNode >>>                   
		SingleLineCommentNode(c_node_idx=203, c_parent_idx=173, mojo_node_idx=203, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # light object 
		WhitespaceNode(c_node_idx=204, c_parent_idx=173, mojo_node_idx=204, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=selectpoint, type=float, c_node_idx=205, c_parent_idx=173, mojo_node_idx=205, mojo_parent_idx=173) 
		StructFieldNode >>> var selectpoint: float 
		WhitespaceNode(c_node_idx=206, c_parent_idx=173, mojo_node_idx=206, mojo_parent_idx=173) 
		WhitespaceNode >>>             
		SingleLineCommentNode(c_node_idx=207, c_parent_idx=173, mojo_node_idx=207, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # selection point 
		WhitespaceNode(c_node_idx=208, c_parent_idx=173, mojo_node_idx=208, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=jointlength, type=float, c_node_idx=209, c_parent_idx=173, mojo_node_idx=209, mojo_parent_idx=173) 
		StructFieldNode >>> var jointlength: float 
		WhitespaceNode(c_node_idx=210, c_parent_idx=173, mojo_node_idx=210, mojo_parent_idx=173) 
		WhitespaceNode >>>             
		SingleLineCommentNode(c_node_idx=211, c_parent_idx=173, mojo_node_idx=211, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # joint length 
		WhitespaceNode(c_node_idx=212, c_parent_idx=173, mojo_node_idx=212, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=jointwidth, type=float, c_node_idx=213, c_parent_idx=173, mojo_node_idx=213, mojo_parent_idx=173) 
		StructFieldNode >>> var jointwidth: float 
		WhitespaceNode(c_node_idx=214, c_parent_idx=173, mojo_node_idx=214, mojo_parent_idx=173) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=215, c_parent_idx=173, mojo_node_idx=215, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # joint width 
		WhitespaceNode(c_node_idx=216, c_parent_idx=173, mojo_node_idx=216, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=actuatorlength, type=float, c_node_idx=217, c_parent_idx=173, mojo_node_idx=217, mojo_parent_idx=173) 
		StructFieldNode >>> var actuatorlength: float 
		WhitespaceNode(c_node_idx=218, c_parent_idx=173, mojo_node_idx=218, mojo_parent_idx=173) 
		WhitespaceNode >>>          
		SingleLineCommentNode(c_node_idx=219, c_parent_idx=173, mojo_node_idx=219, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # actuator length 
		WhitespaceNode(c_node_idx=220, c_parent_idx=173, mojo_node_idx=220, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=actuatorwidth, type=float, c_node_idx=221, c_parent_idx=173, mojo_node_idx=221, mojo_parent_idx=173) 
		StructFieldNode >>> var actuatorwidth: float 
		WhitespaceNode(c_node_idx=222, c_parent_idx=173, mojo_node_idx=222, mojo_parent_idx=173) 
		WhitespaceNode >>>           
		SingleLineCommentNode(c_node_idx=223, c_parent_idx=173, mojo_node_idx=223, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # actuator width 
		WhitespaceNode(c_node_idx=224, c_parent_idx=173, mojo_node_idx=224, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=framelength, type=float, c_node_idx=225, c_parent_idx=173, mojo_node_idx=225, mojo_parent_idx=173) 
		StructFieldNode >>> var framelength: float 
		WhitespaceNode(c_node_idx=226, c_parent_idx=173, mojo_node_idx=226, mojo_parent_idx=173) 
		WhitespaceNode >>>             
		SingleLineCommentNode(c_node_idx=227, c_parent_idx=173, mojo_node_idx=227, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # bodyframe axis length 
		WhitespaceNode(c_node_idx=228, c_parent_idx=173, mojo_node_idx=228, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=framewidth, type=float, c_node_idx=229, c_parent_idx=173, mojo_node_idx=229, mojo_parent_idx=173) 
		StructFieldNode >>> var framewidth: float 
		WhitespaceNode(c_node_idx=230, c_parent_idx=173, mojo_node_idx=230, mojo_parent_idx=173) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=231, c_parent_idx=173, mojo_node_idx=231, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # bodyframe axis width 
		WhitespaceNode(c_node_idx=232, c_parent_idx=173, mojo_node_idx=232, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=constraint, type=float, c_node_idx=233, c_parent_idx=173, mojo_node_idx=233, mojo_parent_idx=173) 
		StructFieldNode >>> var constraint: float 
		WhitespaceNode(c_node_idx=234, c_parent_idx=173, mojo_node_idx=234, mojo_parent_idx=173) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=235, c_parent_idx=173, mojo_node_idx=235, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # constraint width 
		WhitespaceNode(c_node_idx=236, c_parent_idx=173, mojo_node_idx=236, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=slidercrank, type=float, c_node_idx=237, c_parent_idx=173, mojo_node_idx=237, mojo_parent_idx=173) 
		StructFieldNode >>> var slidercrank: float 
		WhitespaceNode(c_node_idx=238, c_parent_idx=173, mojo_node_idx=238, mojo_parent_idx=173) 
		WhitespaceNode >>>             
		SingleLineCommentNode(c_node_idx=239, c_parent_idx=173, mojo_node_idx=239, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # slidercrank width 
		WhitespaceNode(c_node_idx=240, c_parent_idx=173, mojo_node_idx=240, mojo_parent_idx=173) 
		WhitespaceNode >>>     
		StructFieldNode(name=frustum, type=float, c_node_idx=241, c_parent_idx=173, mojo_node_idx=241, mojo_parent_idx=173) 
		StructFieldNode >>> var frustum: float 
		WhitespaceNode(c_node_idx=242, c_parent_idx=173, mojo_node_idx=242, mojo_parent_idx=173) 
		WhitespaceNode >>>                 
		SingleLineCommentNode(c_node_idx=243, c_parent_idx=173, mojo_node_idx=243, mojo_parent_idx=173) 
		SingleLineCommentNode >>> # frustum zfar plane 
		WhitespaceNode(c_node_idx=244, c_parent_idx=173, mojo_node_idx=244, mojo_parent_idx=173) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=245, c_parent_idx=3, mojo_node_idx=245, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>   
	StructFieldNode(name=rgba, type=AnonymousStruct_rgba, c_node_idx=246, c_parent_idx=3, mojo_node_idx=246, mojo_parent_idx=0) 
	StructFieldNode >>> var rgba: AnonymousStruct_rgba 
	StructNode(name=AnonymousStruct, c_node_idx=247, c_parent_idx=246, mojo_node_idx=247, mojo_parent_idx=0, c_children_idxs=(248), mojo_children_idxs=(248)) 
	StructNode >>> struct AnonymousStruct: 
		ScopeNode(c_node_idx=248, c_parent_idx=247, mojo_node_idx=248, mojo_parent_idx=247, c_children_idxs=(249, 250, 251, 252, 253, 254, ...) len=103, mojo_children_idxs=(249, 250, 251, 252, 253, 254, ...) len=103) 
		WhitespaceNode(c_node_idx=249, c_parent_idx=248, mojo_node_idx=249, mojo_parent_idx=248) 
		WhitespaceNode >>>                        
		SingleLineCommentNode(c_node_idx=250, c_parent_idx=248, mojo_node_idx=250, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # color of decor elements 
		WhitespaceNode(c_node_idx=251, c_parent_idx=248, mojo_node_idx=251, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=fog[4], type=float, c_node_idx=252, c_parent_idx=248, mojo_node_idx=252, mojo_parent_idx=248) 
		StructFieldNode >>> var fog[4]: float 
		WhitespaceNode(c_node_idx=253, c_parent_idx=248, mojo_node_idx=253, mojo_parent_idx=248) 
		WhitespaceNode >>>                  
		SingleLineCommentNode(c_node_idx=254, c_parent_idx=248, mojo_node_idx=254, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # fog 
		WhitespaceNode(c_node_idx=255, c_parent_idx=248, mojo_node_idx=255, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=haze[4], type=float, c_node_idx=256, c_parent_idx=248, mojo_node_idx=256, mojo_parent_idx=248) 
		StructFieldNode >>> var haze[4]: float 
		WhitespaceNode(c_node_idx=257, c_parent_idx=248, mojo_node_idx=257, mojo_parent_idx=248) 
		WhitespaceNode >>>                 
		SingleLineCommentNode(c_node_idx=258, c_parent_idx=248, mojo_node_idx=258, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # haze 
		WhitespaceNode(c_node_idx=259, c_parent_idx=248, mojo_node_idx=259, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=force[4], type=float, c_node_idx=260, c_parent_idx=248, mojo_node_idx=260, mojo_parent_idx=248) 
		StructFieldNode >>> var force[4]: float 
		WhitespaceNode(c_node_idx=261, c_parent_idx=248, mojo_node_idx=261, mojo_parent_idx=248) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=262, c_parent_idx=248, mojo_node_idx=262, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # external force 
		WhitespaceNode(c_node_idx=263, c_parent_idx=248, mojo_node_idx=263, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=inertia[4], type=float, c_node_idx=264, c_parent_idx=248, mojo_node_idx=264, mojo_parent_idx=248) 
		StructFieldNode >>> var inertia[4]: float 
		WhitespaceNode(c_node_idx=265, c_parent_idx=248, mojo_node_idx=265, mojo_parent_idx=248) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=266, c_parent_idx=248, mojo_node_idx=266, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # inertia box 
		WhitespaceNode(c_node_idx=267, c_parent_idx=248, mojo_node_idx=267, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=joint[4], type=float, c_node_idx=268, c_parent_idx=248, mojo_node_idx=268, mojo_parent_idx=248) 
		StructFieldNode >>> var joint[4]: float 
		WhitespaceNode(c_node_idx=269, c_parent_idx=248, mojo_node_idx=269, mojo_parent_idx=248) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=270, c_parent_idx=248, mojo_node_idx=270, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # joint 
		WhitespaceNode(c_node_idx=271, c_parent_idx=248, mojo_node_idx=271, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=actuator[4], type=float, c_node_idx=272, c_parent_idx=248, mojo_node_idx=272, mojo_parent_idx=248) 
		StructFieldNode >>> var actuator[4]: float 
		WhitespaceNode(c_node_idx=273, c_parent_idx=248, mojo_node_idx=273, mojo_parent_idx=248) 
		WhitespaceNode >>>             
		SingleLineCommentNode(c_node_idx=274, c_parent_idx=248, mojo_node_idx=274, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # actuator ,  neutral 
		WhitespaceNode(c_node_idx=275, c_parent_idx=248, mojo_node_idx=275, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=actuatornegative[4], type=float, c_node_idx=276, c_parent_idx=248, mojo_node_idx=276, mojo_parent_idx=248) 
		StructFieldNode >>> var actuatornegative[4]: float 
		WhitespaceNode(c_node_idx=277, c_parent_idx=248, mojo_node_idx=277, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		SingleLineCommentNode(c_node_idx=278, c_parent_idx=248, mojo_node_idx=278, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # actuator ,  negative limit 
		WhitespaceNode(c_node_idx=279, c_parent_idx=248, mojo_node_idx=279, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=actuatorpositive[4], type=float, c_node_idx=280, c_parent_idx=248, mojo_node_idx=280, mojo_parent_idx=248) 
		StructFieldNode >>> var actuatorpositive[4]: float 
		WhitespaceNode(c_node_idx=281, c_parent_idx=248, mojo_node_idx=281, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		SingleLineCommentNode(c_node_idx=282, c_parent_idx=248, mojo_node_idx=282, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # actuator ,  positive limit 
		WhitespaceNode(c_node_idx=283, c_parent_idx=248, mojo_node_idx=283, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=com[4], type=float, c_node_idx=284, c_parent_idx=248, mojo_node_idx=284, mojo_parent_idx=248) 
		StructFieldNode >>> var com[4]: float 
		WhitespaceNode(c_node_idx=285, c_parent_idx=248, mojo_node_idx=285, mojo_parent_idx=248) 
		WhitespaceNode >>>                  
		SingleLineCommentNode(c_node_idx=286, c_parent_idx=248, mojo_node_idx=286, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # center of mass 
		WhitespaceNode(c_node_idx=287, c_parent_idx=248, mojo_node_idx=287, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=camera[4], type=float, c_node_idx=288, c_parent_idx=248, mojo_node_idx=288, mojo_parent_idx=248) 
		StructFieldNode >>> var camera[4]: float 
		WhitespaceNode(c_node_idx=289, c_parent_idx=248, mojo_node_idx=289, mojo_parent_idx=248) 
		WhitespaceNode >>>               
		SingleLineCommentNode(c_node_idx=290, c_parent_idx=248, mojo_node_idx=290, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # camera object 
		WhitespaceNode(c_node_idx=291, c_parent_idx=248, mojo_node_idx=291, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=light[4], type=float, c_node_idx=292, c_parent_idx=248, mojo_node_idx=292, mojo_parent_idx=248) 
		StructFieldNode >>> var light[4]: float 
		WhitespaceNode(c_node_idx=293, c_parent_idx=248, mojo_node_idx=293, mojo_parent_idx=248) 
		WhitespaceNode >>>                
		SingleLineCommentNode(c_node_idx=294, c_parent_idx=248, mojo_node_idx=294, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # light object 
		WhitespaceNode(c_node_idx=295, c_parent_idx=248, mojo_node_idx=295, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=selectpoint[4], type=float, c_node_idx=296, c_parent_idx=248, mojo_node_idx=296, mojo_parent_idx=248) 
		StructFieldNode >>> var selectpoint[4]: float 
		WhitespaceNode(c_node_idx=297, c_parent_idx=248, mojo_node_idx=297, mojo_parent_idx=248) 
		WhitespaceNode >>>          
		SingleLineCommentNode(c_node_idx=298, c_parent_idx=248, mojo_node_idx=298, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # selection point 
		WhitespaceNode(c_node_idx=299, c_parent_idx=248, mojo_node_idx=299, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=connect[4], type=float, c_node_idx=300, c_parent_idx=248, mojo_node_idx=300, mojo_parent_idx=248) 
		StructFieldNode >>> var connect[4]: float 
		WhitespaceNode(c_node_idx=301, c_parent_idx=248, mojo_node_idx=301, mojo_parent_idx=248) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=302, c_parent_idx=248, mojo_node_idx=302, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # auto connect 
		WhitespaceNode(c_node_idx=303, c_parent_idx=248, mojo_node_idx=303, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=contactpoint[4], type=float, c_node_idx=304, c_parent_idx=248, mojo_node_idx=304, mojo_parent_idx=248) 
		StructFieldNode >>> var contactpoint[4]: float 
		WhitespaceNode(c_node_idx=305, c_parent_idx=248, mojo_node_idx=305, mojo_parent_idx=248) 
		WhitespaceNode >>>         
		SingleLineCommentNode(c_node_idx=306, c_parent_idx=248, mojo_node_idx=306, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # contact point 
		WhitespaceNode(c_node_idx=307, c_parent_idx=248, mojo_node_idx=307, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=contactforce[4], type=float, c_node_idx=308, c_parent_idx=248, mojo_node_idx=308, mojo_parent_idx=248) 
		StructFieldNode >>> var contactforce[4]: float 
		WhitespaceNode(c_node_idx=309, c_parent_idx=248, mojo_node_idx=309, mojo_parent_idx=248) 
		WhitespaceNode >>>         
		SingleLineCommentNode(c_node_idx=310, c_parent_idx=248, mojo_node_idx=310, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # contact force 
		WhitespaceNode(c_node_idx=311, c_parent_idx=248, mojo_node_idx=311, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=contactfriction[4], type=float, c_node_idx=312, c_parent_idx=248, mojo_node_idx=312, mojo_parent_idx=248) 
		StructFieldNode >>> var contactfriction[4]: float 
		WhitespaceNode(c_node_idx=313, c_parent_idx=248, mojo_node_idx=313, mojo_parent_idx=248) 
		WhitespaceNode >>>      
		SingleLineCommentNode(c_node_idx=314, c_parent_idx=248, mojo_node_idx=314, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # contact friction force 
		WhitespaceNode(c_node_idx=315, c_parent_idx=248, mojo_node_idx=315, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=contacttorque[4], type=float, c_node_idx=316, c_parent_idx=248, mojo_node_idx=316, mojo_parent_idx=248) 
		StructFieldNode >>> var contacttorque[4]: float 
		WhitespaceNode(c_node_idx=317, c_parent_idx=248, mojo_node_idx=317, mojo_parent_idx=248) 
		WhitespaceNode >>>        
		SingleLineCommentNode(c_node_idx=318, c_parent_idx=248, mojo_node_idx=318, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # contact torque 
		WhitespaceNode(c_node_idx=319, c_parent_idx=248, mojo_node_idx=319, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=contactgap[4], type=float, c_node_idx=320, c_parent_idx=248, mojo_node_idx=320, mojo_parent_idx=248) 
		StructFieldNode >>> var contactgap[4]: float 
		WhitespaceNode(c_node_idx=321, c_parent_idx=248, mojo_node_idx=321, mojo_parent_idx=248) 
		WhitespaceNode >>>           
		SingleLineCommentNode(c_node_idx=322, c_parent_idx=248, mojo_node_idx=322, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # contact point in gap 
		WhitespaceNode(c_node_idx=323, c_parent_idx=248, mojo_node_idx=323, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=rangefinder[4], type=float, c_node_idx=324, c_parent_idx=248, mojo_node_idx=324, mojo_parent_idx=248) 
		StructFieldNode >>> var rangefinder[4]: float 
		WhitespaceNode(c_node_idx=325, c_parent_idx=248, mojo_node_idx=325, mojo_parent_idx=248) 
		WhitespaceNode >>>          
		SingleLineCommentNode(c_node_idx=326, c_parent_idx=248, mojo_node_idx=326, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # rangefinder ray 
		WhitespaceNode(c_node_idx=327, c_parent_idx=248, mojo_node_idx=327, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=constraint[4], type=float, c_node_idx=328, c_parent_idx=248, mojo_node_idx=328, mojo_parent_idx=248) 
		StructFieldNode >>> var constraint[4]: float 
		WhitespaceNode(c_node_idx=329, c_parent_idx=248, mojo_node_idx=329, mojo_parent_idx=248) 
		WhitespaceNode >>>           
		SingleLineCommentNode(c_node_idx=330, c_parent_idx=248, mojo_node_idx=330, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # constraint 
		WhitespaceNode(c_node_idx=331, c_parent_idx=248, mojo_node_idx=331, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=slidercrank[4], type=float, c_node_idx=332, c_parent_idx=248, mojo_node_idx=332, mojo_parent_idx=248) 
		StructFieldNode >>> var slidercrank[4]: float 
		WhitespaceNode(c_node_idx=333, c_parent_idx=248, mojo_node_idx=333, mojo_parent_idx=248) 
		WhitespaceNode >>>          
		SingleLineCommentNode(c_node_idx=334, c_parent_idx=248, mojo_node_idx=334, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # slidercrank 
		WhitespaceNode(c_node_idx=335, c_parent_idx=248, mojo_node_idx=335, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=crankbroken[4], type=float, c_node_idx=336, c_parent_idx=248, mojo_node_idx=336, mojo_parent_idx=248) 
		StructFieldNode >>> var crankbroken[4]: float 
		WhitespaceNode(c_node_idx=337, c_parent_idx=248, mojo_node_idx=337, mojo_parent_idx=248) 
		WhitespaceNode >>>          
		SingleLineCommentNode(c_node_idx=338, c_parent_idx=248, mojo_node_idx=338, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # used when crank must be stretched/broken 
		WhitespaceNode(c_node_idx=339, c_parent_idx=248, mojo_node_idx=339, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=frustum[4], type=float, c_node_idx=340, c_parent_idx=248, mojo_node_idx=340, mojo_parent_idx=248) 
		StructFieldNode >>> var frustum[4]: float 
		WhitespaceNode(c_node_idx=341, c_parent_idx=248, mojo_node_idx=341, mojo_parent_idx=248) 
		WhitespaceNode >>>              
		SingleLineCommentNode(c_node_idx=342, c_parent_idx=248, mojo_node_idx=342, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # camera frustum 
		WhitespaceNode(c_node_idx=343, c_parent_idx=248, mojo_node_idx=343, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=bv[4], type=float, c_node_idx=344, c_parent_idx=248, mojo_node_idx=344, mojo_parent_idx=248) 
		StructFieldNode >>> var bv[4]: float 
		WhitespaceNode(c_node_idx=345, c_parent_idx=248, mojo_node_idx=345, mojo_parent_idx=248) 
		WhitespaceNode >>>                   
		SingleLineCommentNode(c_node_idx=346, c_parent_idx=248, mojo_node_idx=346, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # bounding volume 
		WhitespaceNode(c_node_idx=347, c_parent_idx=248, mojo_node_idx=347, mojo_parent_idx=248) 
		WhitespaceNode >>>     
		StructFieldNode(name=bvactive[4], type=float, c_node_idx=348, c_parent_idx=248, mojo_node_idx=348, mojo_parent_idx=248) 
		StructFieldNode >>> var bvactive[4]: float 
		WhitespaceNode(c_node_idx=349, c_parent_idx=248, mojo_node_idx=349, mojo_parent_idx=248) 
		WhitespaceNode >>>             
		SingleLineCommentNode(c_node_idx=350, c_parent_idx=248, mojo_node_idx=350, mojo_parent_idx=248) 
		SingleLineCommentNode >>> # active bounding volume 
		WhitespaceNode(c_node_idx=351, c_parent_idx=248, mojo_node_idx=351, mojo_parent_idx=248) 
		WhitespaceNode >>>   
	WhitespaceNode(c_node_idx=352, c_parent_idx=3, mojo_node_idx=352, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode(c_node_idx=353, c_parent_idx=0, mojo_node_idx=353, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	TypedefNode(alias=mjVisual, c_node_idx=354, c_parent_idx=0, mojo_node_idx=354, mojo_parent_idx=0, c_children_idxs=(355, 356), mojo_children_idxs=(355)) 
	TypedefNode >>> # Complex typedef not supported yet: typedef <children> mjVisual ;  
	StructNode(name=mjVisual_, c_node_idx=355, c_parent_idx=354, mojo_node_idx=355, mojo_parent_idx=354) 
	StructNode >>> struct mjVisual_: 

	WhitespaceNode(c_node_idx=357, c_parent_idx=0, mojo_node_idx=356, mojo_parent_idx=0) 
	WhitespaceNode >>>  
	WhitespaceNode >>>  
	WhitespaceNode >>>  