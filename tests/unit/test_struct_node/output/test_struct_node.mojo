# Basic struct declarations 
@value 
struct Point : 
 
 
    
	var x : Int 
 
    
	var y : Int 
 
 
@value 
struct Person : 
 
 
    
	var name : String 
 
    
	var age : Int 
 
 
# Empty struct 
@value 
struct Empty : 
 
 
 
# Multi-line struct with comments 
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
typedef 
@value 
struct   : 
 
 
    
	var flags : UInt 
 
 
 
 
# Struct with bit fields 
@value 
struct BitFields : 
 
 
    
	var a : UInt 
 
    
	var b : UInt 
 
    
	var c : UInt 
 
 
fn main():
    pass