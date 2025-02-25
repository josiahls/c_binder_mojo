"""
#ifndef mjUSESINGLE
  typedef double mjtNum;
  #define mjMINVAL    1E-15       // minimum value in any denominator
#else
  typedef float mjtNum;
  #define mjMINVAL    1E-15f /* This does after the float is defined */
#endif


"""

from utils import Variant


alias mjUSESINGLE:Bool = False

alias mjtNum = SIMD[DType.float32 if not mjUSESINGLE else DType.float64, 1]


# alias mjtNum = Float64 if not mjUSESINGLE else Float32

fn some_func(some_alias:mjtNum) -> mjtNum:
    return some_alias

fn main():
    v = some_func(1)
    print(String(v))

# fn example[use_float32: Bool]():
#     alias NumType = SIMD[DType.float32 if use_float32 else DType.float64, 1]
#     var x: NumType = 3.14
#     print(x)

# fn main():
#     example[True]()  # Uses Float32
#     example[False]() # Uses Float64
