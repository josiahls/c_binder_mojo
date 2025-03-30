#ifndef MUJOCO_MJMODEL_H_
#define MUJOCO_MJMODEL_H_


struct mjLROpt_ {                 // options for mj_setLengthRange()
  // flags
  int mode;                       // which actuators to process (mjtLRMode)
};
typedef struct mjLROpt_ mjLROpt;


//---------------------------------- mjVFS ---------------------------------------------------------

struct mjVFS_ {                               // virtual file system for loading from memory
  void* impl_;                                // internal pointer to VFS memory
};
typedef struct mjVFS_ mjVFS;

//---------------------------------- mjOption ------------------------------------------------------

struct mjOption_ {                // physics options

  int sdf_iterations;             // max number of iterations for gradient descent
};
typedef struct mjOption_ mjOption;


//---------------------------------- mjVisual ------------------------------------------------------

struct mjVisual_ {                // visualization options
  struct {                        // global parameters
    int orthographic;             // is the free camera orthographic (0: no, 1: yes)
  } global;

  struct {                        // rendering quality
    int   shadowsize;             // size of shadowmap texture
  } quality;

  struct {                        // head light
    float ambient[3];             // ambient rgb (alpha=1)
  } headlight;

  struct {                        // mapping
    float stiffness;              // mouse perturbation stiffness (space->force)
  } map;

  struct {                        // scale of decor elements relative to mean body size
    float forcewidth;             // width of force arrow
  } scale;

  struct {                        // color of decor elements
    float bvactive[4];            // active bounding volume
  } rgba;
};
typedef struct mjVisual_ mjVisual;


//---------------------------------- mjStatistic ---------------------------------------------------

struct mjStatistic_ {             // model statistics (in qpos0)
  mjtNum meaninertia;             // mean diagonal inertia

};
typedef struct mjStatistic_ mjStatistic;


//---------------------------------- mjModel -------------------------------------------------------

struct mjModel_ {
  // ------------------------------- sizes
  // sizes needed at mjModel construction
  int nq;                         // number of generalized coordinates = dim(qpos)
};
typedef struct mjModel_ mjModel;

#endif  // MUJOCO_MJMODEL_H_
