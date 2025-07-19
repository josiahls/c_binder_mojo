# Native Mojo Modules

# First Party Modules
from c_binder_mojo.typing import TypeMapper

fn main():
    print("Testing const char *const * mapping:")
    var result = TypeMapper.convert_c_type_to_mojo_type("const char *const *")
    print("Result: " + result)
    
    print("\nTesting char *const * mapping:")
    var result2 = TypeMapper.convert_c_type_to_mojo_type("char *const *")
    print("Result: " + result2)
    
    print("\nTesting char *const mapping:")
    var result3 = TypeMapper.convert_c_type_to_mojo_type("char *const")
    print("Result: " + result3)
    
    print("\nTesting char * mapping:")
    var result4 = TypeMapper.convert_c_type_to_mojo_type("char *")
    print("Result: " + result4)
    
    print("\nTesting const char * mapping:")
    var result5 = TypeMapper.convert_c_type_to_mojo_type("const char *")
    print("Result: " + result5) 