#include "field_decl_node.h"
#include <stdio.h>

struct simple_field_struct identity_function(struct simple_field_struct input) {
    return input;
}

struct simple_field_struct* identity_function_pointer(struct simple_field_struct* input) {
    return input;
}