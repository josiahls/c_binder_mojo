// Basic type typedefs
typedef unsigned int uint_t;
typedef long long int64_t;
typedef unsigned char byte_t;

// Enum typedef
typedef enum NodeState_ {
    STATE_NONE = 0,      // Initial state
    STATE_COLLECTING,    // Collecting tokens
    STATE_BUILDING,      // Building children
    STATE_COMPLETE       // Node is complete
} NodeState;

// Struct typedefs
typedef struct {
    int x;
    int y;
} Point2D;

// Separate struct definition and typedef
struct Rectangle_ {
    Point2D top_left;
    Point2D bottom_right;
    int width;
    int height;
};
typedef struct Rectangle_ Rectangle; 