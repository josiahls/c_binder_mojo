# Empty defines  ( no value )  
alias EMPTY_DEFINE_1 : Bool = True 
alias EMPTY_DEFINE_2 : Bool = True 
 
# Simple value defines 
alias SIMPLE_INT = 42 
alias SIMPLE_FLOAT = 3.14 
alias SIMPLE_STRING = "hello" 
 
# Function-like macros 
alias ADD = ( x ,  y )   (  ( x )  +  ( y )  )  
alias MAX = ( a ,  b )   (  ( a )  >  ( b )  ?  ( a )  :  ( b )  )  
alias PRINT_DEBUG = ( msg ,  ... )  printf ( "[DEBUG] " msg "\n" ,  ##__VA_ARGS__ )  
 
# Complex defines with expressions 
alias BUFFER_SIZE = ( 1024 * 2 )  
 
# Define with line continuation 
alias MULTILINE_STRING 