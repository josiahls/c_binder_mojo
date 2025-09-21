#pragma once

// InlineArray[UnsafePointer[Int32], 10]
typedef const int *complex_typedef_1[10];
// fn (read UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int32]
typedef const int *(*complex_typedef_2)(const int *, int *);
// fn (read *UnsafePointer[Int8]) -> NoneType
typedef void (*complex_typedef_3)(const char *, ...);
// UnsafePointer[Int8, mut=False]
typedef const char *restrict complex_typedef_4;
// fn (read UnsafePointer[Int8, mut=False]) -> NoneType
typedef void (*complex_typedef_5)(const char *restrict);

extern double complex_typedef_6 (const char *__restrict __nptr,
     char **__restrict __endptr);

// Simplest possible definitions - just empty macros
#define __THROW
#define __nonnull(params)

extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg);
