 
struct mjVisual_: 

	               
	# visualization options 
	  
	var global: mjVisual__global 
	 
	 
	  
	var quality: mjVisual__quality 
	 
struct mjVisual__global: 

	                       
	# global parameters 
	    
	var orthographic: int 
	             
	# is the free camera orthographic (0: no ,  1: yes) 
	    
	var fovy: float 
	                   
	# y field-of-view of free camera (orthographic ? length : degree) 
	  
struct mjVisual__quality: 

	                       
	# rendering quality 
	    
	var shadowsize: int 
	             
	# size of shadowmap texture 
	    
	var offsamples: int 
	             
	# number of multisamples for offscreen rendering 
	  
 
# Complex typedef not supported yet: typedef <children> mjVisual ;  
struct mjVisual_: 

 
 
 