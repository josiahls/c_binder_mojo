# Basic header guards 
 
#ifndef TEST_IFNDEF_NODE_H 

 
alias TEST_IFNDEF_NODE_H : Bool = True 
# Simple define inside an ifndef 
 
#ifndef SIMPLE_DEFINE 

 
alias SIMPLE_DEFINE = 1 
 

 
 
 
# Nested ifndefs 
 
#ifndef OUTER_GUARD 

 
alias OUTER_GUARD : Bool = True 
#ifndef INNER_GUARD 

 
    
alias INNER_GUARD : Bool = True 
alias inner_guard_variable : Int = 42 
 
 
    
# INNER_GUARD 
 
 
 
    
alias outer_guard_variable : Int = 100 
 
 
 
 
# OUTER_GUARD 
 
 
 
# Ifdef with code blocks 
 
#ifndef CODE_BLOCK_TEST 

 
alias CODE_BLOCK_TEST : Bool = True 
alias test_function : None = (){
intx10 
 
 
        
if 
 
( 
x 
> 
5 
) 
  
 
 
 
            
x 
 
= 
 
5 
; 
 
 
         
 
 
     
} 
 
 
# CODE_BLOCK_TEST 
 
 
 
# Complex guards with comments 
 
#ifndef COMPLEX_GUARD 
# This is a comment after ifndef 
 
alias COMPLEX_GUARD 
""" This is a comment after define """ 
# A single line comment inside the guard 
 
    
""" A multi-line comment  
 
       inside the guard """ 

 
    
alias complex_variable : Int = 200 
 
 
 
 
""" End of complex guard """ 

 
 
 
# Conditional compilation 
 
#ifndef PLATFORM_SPECIFIC 

 
    
#ifdef _WIN32 

 
        
alias PLATFORM_SPECIFIC = "Windows" 
 
    
#elif 
defined ( __APPLE__ ) 
 
 
        
alias PLATFORM_SPECIFIC = "MacOS" 
 
    
#else 

 
        
alias PLATFORM_SPECIFIC = "Linux" 
 
    

 

 
 
 
# Include with ifndef guard 
 
#ifndef INCLUDED_STDIO 

 
alias INCLUDED_STDIO : Bool = True 
#include <stdio.h> 

 

 
 
 
 
 
# Totally Empty ifndef  ( edge case )  
 
#ifndef EMPTY_GUARD 

 

 
 
 
# Empty ifndef  ( edge case )  
 
#ifndef EMPTY_GUARD 

 
alias EMPTY_GUARD : Bool = True 

 
 
 
# Typedef inside ifndef 
 
#ifndef MY_TYPE_GUARD 

 
alias MY_TYPE_GUARD : Bool = True 
alias 
 
 

 
 
 
# TEST_IFNDEF_NODE_H  
 
fn main():
    pass