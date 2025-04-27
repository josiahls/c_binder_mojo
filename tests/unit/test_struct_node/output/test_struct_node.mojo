# Basic struct declarations <C_BINDER_MOJO_NEWLINE> 
@value 
struct Point : 
	 	
var x : Int 
var y : Int 
@value 
struct Person : 
	 	
	var name : String 
	var age : Int 
# Empty struct 
<C_BINDER_MOJO_NEWLINE> 
@value 
struct Empty : 
	 
	pass 
# Multi-line struct with comments 
<C_BINDER_MOJO_NEWLINE> 
@value 
struct Complex : 
	 	
# Basic types 
var id : Int 
var value : Float32 
""" Nested struct """ 
var nested : Inner 
	@value 
	struct Inner : 	
		 		
	var data : Float64 
# Anonymous struct in typedef 
<C_BINDER_MOJO_NEWLINE> 
alias Flags = 
@value 
struct : 
	 	
var flags : UInt 
 <C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
# Struct with bit fields 
<C_BINDER_MOJO_NEWLINE> 
@value 
struct BitFields : 
	 	
var a : UInt 
var b : UInt 
var c : UInt 
fn main():
    pass