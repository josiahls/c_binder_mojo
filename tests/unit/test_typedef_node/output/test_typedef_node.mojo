# Basic type typedefs C_BINDER_MOJO_NEWLINE 
alias 
 C_BINDER_MOJO_NEWLINE 
alias 
 C_BINDER_MOJO_NEWLINE 
alias 
 C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
# Enum typedef 
C_BINDER_MOJO_NEWLINE 
alias NodeState = 
struct NodeState_ : 
 
alias STATE_NONE = 0 
# Initial state 
alias STATE_COLLECTING = 1 
# Collecting tokens 
alias STATE_BUILDING = 2 
# Building children 
alias STATE_COMPLETE = 3 
# Node is complete 
 C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
# Test preprocessor scoping with typedef 
C_BINDER_MOJO_NEWLINE 
#ifndef MY_TYPEDEF_TEST 
C_BINDER_MOJO_NEWLINE 
alias MY_TYPEDEF_TEST : Bool = True 
C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
# This struct should not collect the typedefs that follow 
C_BINDER_MOJO_NEWLINE 
@value 
struct TestStruct : 
	 	
var value : Int 
alias 
  
# Should be independent node 
C_BINDER_MOJO_NEWLINE 
alias 
  
# Should be independent node 
C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
 
# MY_TYPEDEF_TEST 
C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
# Struct typedefs - testing nested typedef handling 
C_BINDER_MOJO_NEWLINE 
alias Point2D = 
@value 
struct : 
	 	
var x : Int 
var y : Int 
 C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
# Test typedef and struct interaction 
C_BINDER_MOJO_NEWLINE 
@value 
struct Rectangle_ : 
	 	
var top_left : Point2D 
var bottom_right : Point2D 
var width : Int 
var height : Int 
# This typedef should be independent of the struct above 
C_BINDER_MOJO_NEWLINE 
alias Rectangle = 
@value 
struct Rectangle_ : 
 C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
# Test preprocessor and typedef interaction 
C_BINDER_MOJO_NEWLINE 
#ifndef NESTED_TEST 
C_BINDER_MOJO_NEWLINE 
alias NESTED_TEST : Bool = True 
C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
alias NestedStruct = 
@value 
struct : 
	 	
var data : Int 
  
# This typedef should not be affected by the ifdef 
C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
alias 
  
# This should be an independent typedef 
C_BINDER_MOJO_NEWLINE 
 C_BINDER_MOJO_NEWLINE 
 
# NESTED_TEST  
C_BINDER_MOJO_NEWLINE 
fn main():
    pass