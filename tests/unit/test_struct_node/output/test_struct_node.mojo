# Basic struct declarations 
@value 
struct Point : 
 
 
    
	int x ; 
 
    
	int y ; 
 
 
@value 
struct Person : 
 
 
    
	char* name ; 
 
    
	int age ; 
 
 
# Empty struct 
@value 
struct Empty : 
 
 
 
# Multi-line struct with comments 
@value 
struct Complex : 
 
 
    
	# Basic types 
    
	int id ; 
 
    
	float value ; 
 
     
    
	""" Nested struct """ 
    
	@value 
	struct Inner : 	
 
 
        
	double data ; 
 
     
	nested ; 
 
 
# Anonymous struct in typedef 
typedef 
@value 
struct   : 
 
 
    
	unsigned char flags ; 
 
 
 
 
# Struct with bit fields 
@value 
struct BitFields : 
 
 
    
	unsigned int a : 1 ; 
 
    
	unsigned int b : 2 ; 
 
    
	unsigned int c : 3 ; 
 
 
fn main():
    pass