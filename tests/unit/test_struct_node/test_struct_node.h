// Basic struct declarations
struct Point {
    int x;
    int y;
};

struct Person {
    char* name;
    int age;
};

// Empty struct
struct Empty {
};


// An even more empty struct
struct SuperEmpty;

// Multi-line struct with comments
struct Complex {
    // Basic types
    int id;
    float value;
    
    /* Nested struct */
    struct Inner {
        double data;
    } nested;

    /* Nested anonymous struct */
    struct {
        int x;
        int y;
    } nested_anonymous;
};

// Anonymous struct in typedef
typedef struct {
    unsigned char flags;
} Flags;

// Struct with bit fields
struct BitFields {
    unsigned int a : 1;
    unsigned int b : 2;
    unsigned int c : 3;
}; 