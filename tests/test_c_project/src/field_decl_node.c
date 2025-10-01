#include "field_decl_node.h"
#include <stdio.h>

struct simple_field_struct identity_function(struct simple_field_struct input) {
    return input;
}

struct simple_field_struct* identity_function_pointer(struct simple_field_struct* input) {
    return input;
}

struct complex_field_struct* complex_field_struct_identity_function(struct complex_field_struct* input) {
    return input;
}

struct padded_field_struct* padded_field_struct_identity_function(struct padded_field_struct* input) {
    return input;
}

struct union_field_struct* union_field_struct_identity_function(struct union_field_struct* input) {
    return input;
}