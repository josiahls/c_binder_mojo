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

struct complex_field_struct* complex_field_struct_identity_function(struct complex_field_struct* input);

struct padded_field_struct {
  int a;
  int :32;
  int b;
};

struct padded_field_struct* padded_field_struct_identity_function(struct padded_field_struct* input);

struct union_field_struct {
  int a;

  union {
    int b;
    int c;
  };

  int d;
};
typedef struct union_field_struct union_field_struct;

struct union_field_struct* union_field_struct_identity_function(struct union_field_struct* input);