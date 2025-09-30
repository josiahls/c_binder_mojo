#pragma once

struct simple_field_struct {
    int a;
};

struct simple_field_struct identity_function(struct simple_field_struct input);

struct simple_field_struct* identity_function_pointer(struct simple_field_struct* input);