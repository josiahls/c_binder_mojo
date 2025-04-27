# Basic enum with values <C_BINDER_MOJO_NEWLINE> 
struct Color : 
 
alias RED = 0 
alias GREEN = 1 
alias BLUE = -1 
# Enum with auto-incrementing values 
<C_BINDER_MOJO_NEWLINE> 
struct Direction : 
 
alias NORTH = 0 
# 0 
alias SOUTH = 1 
# 1 
alias EAST = 2 
# 2 
alias WEST = 3 
# 3 
# Enum with mixed explicit and implicit values 
<C_BINDER_MOJO_NEWLINE> 
struct Status : 
 
alias OK = 200 
alias NOT_FOUND = 404 
alias SERVER_ERROR = 500 
alias UNAVAILABLE = 501 
# 501 
alias TIMEOUT = 502 
# 502 
# Enum with name but no values  ( empty enum )  
<C_BINDER_MOJO_NEWLINE> 
struct Empty : pass 
 
pass 
# Enum with hex values and comments 
<C_BINDER_MOJO_NEWLINE> 
struct Flags : 
 
alias READ = 1 
# Read permission 
alias WRITE = 2 
# Write permission 
alias EXECUTE = 4 
# Execute permission 
# Enum with byte values 
<C_BINDER_MOJO_NEWLINE> 
struct ByteValues : 
 
alias BYTE_0 = 1 
alias BYTE_1 = 2 
alias BYTE_2 = 4 
alias BYTE_3 = -1 
fn main():
    pass