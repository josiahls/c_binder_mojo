#pragma once

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
// This file only defins simple types, no structs, enums, unions, or function prototypes
// This does simple identity functions for the types

// Simple variable and constant definitions
// Simple MACROS
#define mjPI            3.14159265358979323846
#define mjMAXVAL        1E+10     // maximum value in qpos, qvel, qacc
#define mjMINMU         1E-5      // minimum friction coefficient
#define mjMINIMP        0.0001    // minimum constraint impedance
#define mjMAXIMP        0.9999    // maximum constraint impedance
#define mjMAXCONPAIR    50        // maximum number of contacts per geom pair

// Simple type definitions
typedef int simple_type_int;
simple_type_int get_simple_type_int(simple_type_int a) { return a; }

typedef float simple_type_float;
simple_type_float get_simple_type_float(simple_type_float a) { return a; }

typedef double simple_type_double;
simple_type_double get_simple_type_double(simple_type_double a) { return a; }

typedef unsigned char simple_type_byte; 
simple_type_byte get_simple_type_byte(simple_type_byte a) { return a; }

typedef unsigned short simple_type_short;
simple_type_short get_simple_type_short(simple_type_short a) { return a; }

typedef unsigned int simple_type_uint;
simple_type_uint get_simple_type_uint(simple_type_uint a) { return a; }

typedef unsigned long long simple_type_long_long;
simple_type_long_long get_simple_type_long_long(simple_type_long_long a) { return a; }

typedef unsigned long simple_type_long;
simple_type_long get_simple_type_long(simple_type_long a) { return a; }

typedef unsigned long long simple_type_ulong_long;
simple_type_ulong_long get_simple_type_ulong_long(simple_type_ulong_long a) { return a; }

typedef unsigned long simple_type_ulong;
simple_type_ulong get_simple_type_ulong(simple_type_ulong a) { return a; }



