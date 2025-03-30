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

// ifdef with complex expressions
#ifdef __cplusplus
    extern "C" {
#endif

// ifdef with multiple defines
#ifdef MULTIPLE_DEFINES
    #define A 1
    #define B 2
    #define C 3
#endif 