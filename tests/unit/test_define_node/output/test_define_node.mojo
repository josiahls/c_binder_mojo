# Empty defines  ( no value )  
alias EMPTY_DEFINE_1 
alias EMPTY_DEFINE_2 
 
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
alias MULTILINE_STRING = "This is a long string that \     continues on the next line"  