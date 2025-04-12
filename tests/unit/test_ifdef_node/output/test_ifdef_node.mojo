# Basic ifdef test 
#ifdef BASIC_DEFINE 
alias INSIDE_BASIC = 1 
 
# ifdef with else 
#ifdef WITH_ELSE 
    
int 
a 
= 
1 
; 
 
#else 
    
int 
a 
= 
2 
; 
 
 
# Nested ifdefs 
#ifdef OUTER 
    
#ifdef INNER 
        
int 
nested_var 
= 
42 
; 
 
    
 
# ifdef with elif chain 
#ifdef _WIN32 
    
alias OS = "Windows" 
#elif 
defined ( __APPLE__ ) 
 
    
alias OS = "MacOS" 
#else 
    
alias OS = "Linux" 
 
# ifdef with comments 
#ifdef COMMENTED 
""" Multi-line comment after ifdef """ 
    
# Single line comment inside 
    
alias INSIDE_COMMENT = 1 
    
""" Another multi-line 
       comment inside """ 
 
# Empty ifdef  ( edge case )  
#ifdef EMPTY 
 
# Mixed ifdef/ifndef 
#ifdef MIXED 
    
#ifndef INNER_NOT 
        
int 
mixed_var 
= 
1 
; 
 
    
 
# ifdef with multiple defines 
#ifdef MULTIPLE_DEFINES 
    
alias A = 1 
    
alias B = 2 
    
alias C = 3 
 
fn main():
    pass