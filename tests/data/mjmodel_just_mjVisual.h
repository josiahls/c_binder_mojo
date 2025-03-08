
struct mjVisual_ {                // visualization options
  struct {                        // global parameters
    int orthographic;             // is the free camera orthographic (0: no, 1: yes)
    float fovy;                   // y field-of-view of free camera (orthographic ? length : degree)
  } global;

  struct {                        // rendering quality
    int   shadowsize;             // size of shadowmap texture
    int   offsamples;             // number of multisamples for offscreen rendering
  } quality;

  struct {                        // head light
    float ambient[3];             // ambient rgb (alpha=1)
    float diffuse[3];             // diffuse rgb (alpha=1)
  } headlight;

  struct {                        // mapping
    float stiffness;              // mouse perturbation stiffness (space->force)
    float stiffnessrot;           // mouse perturbation stiffness (space->torque)
  } map;
};
typedef struct mjVisual_ mjVisual;

