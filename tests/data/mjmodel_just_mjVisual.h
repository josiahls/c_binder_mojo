
struct mjVisual_ {                // visualization options
  struct {                        // global parameters
    int orthographic;             // is the free camera orthographic (0: no, 1: yes)
    float fovy;                   // y field-of-view of free camera (orthographic ? length : degree)
  } global;

  struct {                        // rendering quality
    int   shadowsize;             // size of shadowmap texture
    int   offsamples;             // number of multisamples for offscreen rendering
  } quality;
};
typedef struct mjVisual_ mjVisual;

