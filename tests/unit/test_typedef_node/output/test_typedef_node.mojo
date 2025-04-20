# Basic type typedefs 
alias 
 
alias 
 
alias 
 
 
# Enum typedef 
alias NodeState = 
struct NodeState_  : 
 
 
    
alias STATE_NONE = 0 
      
# Initial state 
    
alias STATE_COLLECTING = 1 
    
# Collecting tokens 
    
alias STATE_BUILDING = 2 
      
# Building children 
    
alias STATE_COMPLETE = 3 
# Node is complete 
 
 
 
# Test preprocessor scoping with typedef 
#ifndef MY_TYPEDEF_TEST 
alias MY_TYPEDEF_TEST : Bool = True 
 
# This struct should not collect the typedefs that follow 
@value 
struct TestStruct : 
	 	
 
    
var value : Int 
 
 
alias 
  
# Should be independent node 
alias 
  
# Should be independent node 
 
 
# MY_TYPEDEF_TEST 
 
# Struct typedefs - testing nested typedef handling 
alias Point2D = 
@value 
struct   : 
	 	
 
    
var x : Int 
 
    
var y : Int 
 
 
 
 
# Test typedef and struct interaction 
@value 
struct Rectangle_ : 
	 	
 
    
var top_left : Point2D 
 
    
var bottom_right : Point2D 
 
    
var width : Int 
 
    
var height : Int 
 
 
# This typedef should be independent of the struct above 
alias Rectangle = 
@value 
struct Rectangle_ : 
 
 
# Test preprocessor and typedef interaction 
#ifndef NESTED_TEST 
alias NESTED_TEST : Bool = True 
 
alias NestedStruct = 
@value 
struct   : 
	 	
 
    
var data : Int 
 
 
  
# This typedef should not be affected by the ifdef 
 
alias 
  
# This should be an independent typedef 
 
 
# NESTED_TEST  
fn main():
    pass