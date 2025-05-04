# Empty defines  ( no value )  <C_BINDER_MOJO_NEWLINE> 
alias EMPTY_DEFINE_1 : Bool = True 
<C_BINDER_MOJO_NEWLINE> 
alias EMPTY_DEFINE_2 : Bool = True 
<C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
# Simple value defines 
<C_BINDER_MOJO_NEWLINE> 
alias SIMPLE_INT = 42 
<C_BINDER_MOJO_NEWLINE> 
alias SIMPLE_FLOAT = 3.14 
<C_BINDER_MOJO_NEWLINE> 
alias SIMPLE_STRING = "hello" 
<C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
# Function-like macros 
<C_BINDER_MOJO_NEWLINE> 
# Function macros are not supported
# alias ADD = ( x ,  y )   (  ( x )  +  ( y )  )  
<C_BINDER_MOJO_NEWLINE> 
# Function macros are not supported
# alias MAX = ( a ,  b )   (  ( a )  >  ( b )  ?  ( a )  :  ( b )  )  
<C_BINDER_MOJO_NEWLINE> 
# Function macros are not supported
# alias PRINT_DEBUG = ( msg ,  ... )  printf ( "[DEBUG] " msg "\n" ,  ##__VA_ARGS__ )  
<C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
# Complex defines with expressions 
<C_BINDER_MOJO_NEWLINE> 
alias BUFFER_SIZE = ( 1024 * 2 )  
<C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
# Define with line continuation 
<C_BINDER_MOJO_NEWLINE> 
alias MULTILINE_STRING = "This is a long string that \ 
<C_BINDER_MOJO_NEWLINE> 
    
continues 
on 
the 
next 
line" 
 <C_BINDER_MOJO_NEWLINE> 
fn main():
    pass