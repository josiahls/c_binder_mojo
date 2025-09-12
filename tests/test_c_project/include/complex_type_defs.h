#pragma once

// InlineArray[UnsafePointer[Int32], 10]
typedef const int *complex_typedef_1[10];
// fn (read UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int32]
typedef const int *(*complex_typedef_2)(const int *, int *);
// fn (read *UnsafePointer[Int8]) -> NoneType
typedef void (*complex_typedef_3)(const char *, ...);


// Simplest possible definitions - just empty macros
#define __THROW
#define __nonnull(params)

extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __THROW __nonnull ((1));