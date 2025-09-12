#pragma once

// InlineArray[UnsafePointer[Int32], 10]
typedef const int *complex_typedef_1[10];
// fn (read UnsafePointer[Int32], UnsafePointer[Int32]) -> UnsafePointer[Int32]
typedef const int *(*complex_typedef_2)(const int *, int *);
// fn (read *UnsafePointer[Int8]) -> NoneType
typedef void (*complex_typedef_3)(const char *, ...);