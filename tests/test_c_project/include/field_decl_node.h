#pragma once

struct simple_field_struct {
    int a;
};

struct simple_field_struct identity_function(struct simple_field_struct input);

struct simple_field_struct* identity_function_pointer(struct simple_field_struct* input);

struct {
  unsigned long long int __value64;
  struct
  {
    unsigned int __low;
  } __value32;
} complex_field_struct;
