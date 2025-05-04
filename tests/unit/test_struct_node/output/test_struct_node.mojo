# Multi-line struct with comments <C_BINDER_MOJO_NEWLINE> 
@value 
struct Complex : 
	 	
# Basic types 
var id : Int 
""" Nested struct """ 
var nested : Inner 
	@value 
	struct Inner : 	
		 		
	var data : Float64 
fn main():
    pass