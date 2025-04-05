# Basic enum with values 
struct 
Color  : 
 
 
    
	alias RED = 0 
 
    
	alias GREEN = 1 
 
    
	alias BLUE = 2 
# Enum with auto-incrementing values 
struct 
Direction  : 
 
 
    
	alias NORTH 
  
	# 0 
    
	alias SOUTH 
  
	# 1 
    
	alias EAST 
   
	# 2 
    
	alias WEST 
	# 3 
 
# Enum with mixed explicit and implicit values 
struct 
Status  : 
 
 
    
	alias OK = 200 
 
    
	alias NOT_FOUND = 404 
 
    
	alias SERVER_ERROR = 500 
 
    
	alias UNAVAILABLE 
  
	# 501 
    
	alias TIMEOUT 
	# 502 
 
# Enum with name but no values  ( empty enum )  
struct 
Empty  : 
 
 
 
# Enum with hex values and comments 
struct 
Flags  : 
 
 
    
	alias READ = 0x01 
  
	# Read permission 
    
	alias WRITE = 0x02 
  
	# Write permission 
    
	alias EXECUTE = 0x04 
	# Execute permission 
 
# Enum with byte values 
 
    
	alias BYTE_0 = 0 << 0 
 
    
	alias BYTE_1 = 0 << 1 
 
    
	alias BYTE_2 = 0 << 2 
 
    
fn main():
    pass