#include "test_ffi_basic.h"

// Ultra-basic FFI test function implementations
// These will test if our type mappings actually work

// Test basic integer types
int test_int_identity(int value) {
    return value;
}

unsigned int test_uint_identity(unsigned int value) {
    return value;
}

long test_long_identity(long value) {
    return value;
}

// Test basic floating point types  
float test_float_identity(float value) {
    return value;
}

double test_double_identity(double value) {
    return value;
}

// Test basic pointer types
void* test_void_ptr_identity(void* ptr) {
    return ptr;
}

int* test_int_ptr_identity(int* ptr) {
    return ptr;
}

// Test basic return values
int test_return_42(void) {
    return 42;
}

float test_return_3_14(void) {
    return 3.14f;
}

// Test basic arithmetic
int test_add_ints(int a, int b) {
    return a + b;
}

float test_add_floats(float a, float b) {
    return a + b;
} 