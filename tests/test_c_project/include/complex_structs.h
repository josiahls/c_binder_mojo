

struct mjVisual_1_ {
    struct {
      int   cameraid;
    } global;
  
    struct { 
      int   shadowsize;
    } quality;
  
    struct {
      float ambient[3];
    } headlight;

};
typedef struct mjVisual_1_ mjVisual_1;

struct mjVisual_2_ {
    struct {
        float stiffness;
    } map;

    struct {
        float forcewidth;
    } scale;

    struct {
        float fog[4]; 
    } rgba;
};
typedef struct mjVisual_2_ mjVisual_2;