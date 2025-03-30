#ifndef MUJOCO_MJMODEL_H_
#define MUJOCO_MJMODEL_H_

struct mjLROpt_ {
  int mode;
};
typedef struct mjLROpt_ mjLROpt;

struct mjVFS_ {
  void* impl_;
};
typedef struct mjVFS_ mjVFS;

struct mjOption_ {
  int sdf_iterations;
};
typedef struct mjOption_ mjOption;

struct mjVisual_ {
  struct {
    int orthographic;
  } global;
};
typedef struct mjVisual_ mjVisual;

struct mjStatistic_ {
  mjtNum meaninertia;
};
typedef struct mjStatistic_ mjStatistic;

struct mjModel_ {
  int nq;
};
typedef struct mjModel_ mjModel;

#endif
