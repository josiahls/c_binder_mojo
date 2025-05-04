#include <stdio.h> <C_BINDER_MOJO_NEWLINE> 
#include <stdlib.h> 
<C_BINDER_MOJO_NEWLINE> 
#include "my_header.h" 
<C_BINDER_MOJO_NEWLINE> 
#include "../relative/path.h" 
<C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
# Comment between includes 
<C_BINDER_MOJO_NEWLINE> 
#include <string.h> 
<C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
""" Multi-line comment <C_BINDER_MOJO_NEWLINE> 
   between includes """ 
<C_BINDER_MOJO_NEWLINE> 
#include "local/header.h" 
<C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
# Include with extra whitespace 
<C_BINDER_MOJO_NEWLINE> 
#include    <math.h> 
<C_BINDER_MOJO_NEWLINE> 
 <C_BINDER_MOJO_NEWLINE> 
# Include with trailing comment 
<C_BINDER_MOJO_NEWLINE> 
#include <time.h> 
# Time functions  
<C_BINDER_MOJO_NEWLINE> 
fn main():
    pass