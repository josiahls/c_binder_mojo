#include "variadic_args_node.h"
#include <stdarg.h>

int count_variadic_args(int n, ...) {
    va_list args;
    va_start(args, n);  
    int variadic_sum = 0;
    for (int i = 0; i < n; i++) {
        printf("arg %d: %d\n", i, va_arg(args, int));
        variadic_sum += va_arg(args, int);
    }
    va_end(args);
    return variadic_sum;
}
