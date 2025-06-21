// Basic ifdef test
#ifdef BASIC_DEFINE
#define INSIDE_BASIC 1
#endif

// ifdef with else
#ifdef WITH_ELSE
    int a = 1;
#else
    int a = 2;
#endif

// Nested ifdefs
#ifdef OUTER
    #ifdef INNER
        int nested_var = 42;
    #endif
#endif

// ifdef with elif chain
#ifdef _WIN32
    #define OS "Windows"
#elif defined(__APPLE__)
    #define OS "MacOS"
#else
    #define OS "Linux"
#endif

// ifdef with comments
#ifdef COMMENTED /* Multi-line comment after ifdef */
    // Single line comment inside
    #define INSIDE_COMMENT 1
    /* Another multi-line
       comment inside */
#endif

// Empty ifdef (edge case)
#ifdef EMPTY
#endif

// Mixed ifdef/ifndef
#ifdef MIXED
    #ifndef INNER_NOT
        int mixed_var = 1;
    #endif
#endif

// ifdef with multiple defines
#ifdef MULTIPLE_DEFINES
    #define A 1
    #define B 2
    #define C 3
#endif 


#define SPECIAL_TYPE int
#define SPECIAL_DOUBLE_TYPE double
#define SPECIAL_INT_TYPE int
#define SPECIAL_CHAR_TYPE char
#define SPECIAL_FLOAT_TYPE float
#define SPECIAL_BOOL_TYPE int
#define SPECIAL_VOID_TYPE void*
#define SPECIAL_ARRAY_SIZE 10
#define SPECIAL_STRUCT_TYPE struct Config

struct Config {
    SPECIAL_TYPE special_var;
    SPECIAL_DOUBLE_TYPE special_double_var;
    SPECIAL_INT_TYPE special_int_var;
    SPECIAL_CHAR_TYPE special_char_var;
    SPECIAL_FLOAT_TYPE special_float_var;
    SPECIAL_BOOL_TYPE special_bool_var;
    SPECIAL_VOID_TYPE special_void_var;
    SPECIAL_INT_TYPE special_array_var[SPECIAL_ARRAY_SIZE];
    SPECIAL_STRUCT_TYPE* special_struct_var;
};

