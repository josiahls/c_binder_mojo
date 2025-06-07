#ifndef TEST_FFI_BASIC_H
#define TEST_FFI_BASIC_H

// Ultra-basic FFI test functions
// These will test if our type mappings actually work

// Test basic integer types
int test_int_identity(int value);
unsigned int test_uint_identity(unsigned int value);
long test_long_identity(long value);

// Test basic floating point types  
float test_float_identity(float value);
double test_double_identity(double value);

// Test basic pointer types
// void* test_void_ptr_identity(void* ptr);
// int* test_int_ptr_identity(int* ptr);

// Test basic return values
// int test_return_42(void);
// float test_return_3_14(void);

// Test basic arithmetic
// int test_add_ints(int a, int b);
// float test_add_floats(float a, float b);

#endif // TEST_FFI_BASIC_H 