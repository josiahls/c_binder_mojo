# Test our unnamed union handling
from c_binder_mojo.mojo_ast_nodes.field_decl_node import Grammar
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry, AstEntries
from c_binder_mojo.type_mapper import TypeMapper

fn test_unnamed_union_handling() raises:
    print("Testing unnamed union type handling...")
    
    # Create a mock AstEntries for the problematic __value field
    var entries = AstEntries()
    var entry = AstEntry()
    entry.ast_name = "FieldDecl"
    # This is the actual format from the AST output - the type is in one token
    entry.tokens = [
        "__value",
        "'union (unnamed union at /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h:16:3)':'union __mbstate_t::(unnamed at /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h:16:3)'"
    ]
    entries.append(entry)
    
    # Test the Grammar parsing
    var grammar = Grammar(entries)
    print("Field name: " + grammar._field_name)
    print("Field type: " + grammar._field_type) 
    
    # Test the type mapping
    var mojo_type = TypeMapper.get_mojo_type(grammar._field_type)
    print("Mojo type: " + mojo_type)
    
    print("✅ Test completed!")

fn main() raises:
    test_unnamed_union_handling() 