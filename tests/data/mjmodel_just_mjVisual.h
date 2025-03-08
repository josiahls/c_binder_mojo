
struct mjVisual_ {                // visualization options
  struct {                        // global parameters
    int orthographic;             // is the free camera orthographic (0: no, 1: yes)
    float fovy;                   // y field-of-view of free camera (orthographic ? length : degree)
    float ipd;                    // inter-pupilary distance for free camera
    float azimuth;                // initial azimuth of free camera (degrees)
    float elevation;              // initial elevation of free camera (degrees)
    float linewidth;              // line width for wireframe and ray rendering
    float glow;                   // glow coefficient for selected body
    float realtime;               // initial real-time factor (1: real time)
    int   offwidth;               // width of offscreen buffer
    int   offheight;              // height of offscreen buffer
    int   ellipsoidinertia;       // geom for inertia visualization (0: box, 1: ellipsoid)
    int   bvactive;               // visualize active bounding volumes (0: no, 1: yes)
  } global;

  struct {                        // rendering quality
    int   shadowsize;             // size of shadowmap texture
    int   offsamples;             // number of multisamples for offscreen rendering
    int   numslices;              // number of slices for builtin geom drawing
    int   numstacks;              // number of stacks for builtin geom drawing
    int   numquads;               // number of quads for box rendering
  } quality;

  struct {                        // head light
    float ambient[3];             // ambient rgb (alpha=1)
    float diffuse[3];             // diffuse rgb (alpha=1)
    float specular[3];            // specular rgb (alpha=1)
    int   active;                 // is headlight active
  } headlight;

  struct {                        // mapping
    float stiffness;              // mouse perturbation stiffness (space->force)
    float stiffnessrot;           // mouse perturbation stiffness (space->torque)
    float force;                  // from force units to space units
    float torque;                 // from torque units to space units
    float alpha;                  // scale geom alphas when transparency is enabled
    float fogstart;               // OpenGL fog starts at fogstart * mjModel.stat.extent
    float fogend;                 // OpenGL fog ends at fogend * mjModel.stat.extent
    float znear;                  // near clipping plane = znear * mjModel.stat.extent
    float zfar;                   // far clipping plane = zfar * mjModel.stat.extent
    float haze;                   // haze ratio
    float shadowclip;             // directional light: shadowclip * mjModel.stat.extent
    float shadowscale;            // spot light: shadowscale * light.cutoff
    float actuatortendon;         // scale tendon width
  } map;

  struct {                        // scale of decor elements relative to mean body size
    float forcewidth;             // width of force arrow
    float contactwidth;           // contact width
    float contactheight;          // contact height
    float connect;                // autoconnect capsule width
    float com;                    // com radius
    float camera;                 // camera object
    float light;                  // light object
    float selectpoint;            // selection point
    float jointlength;            // joint length
    float jointwidth;             // joint width
    float actuatorlength;         // actuator length
    float actuatorwidth;          // actuator width
    float framelength;            // bodyframe axis length
    float framewidth;             // bodyframe axis width
    float constraint;             // constraint width
    float slidercrank;            // slidercrank width
    float frustum;                // frustum zfar plane
  } scale;

  struct {                        // color of decor elements
    float fog[4];                 // fog
    float haze[4];                // haze
    float force[4];               // external force
    float inertia[4];             // inertia box
    float joint[4];               // joint
    float actuator[4];            // actuator, neutral
    float actuatornegative[4];    // actuator, negative limit
    float actuatorpositive[4];    // actuator, positive limit
    float com[4];                 // center of mass
    float camera[4];              // camera object
    float light[4];               // light object
    float selectpoint[4];         // selection point
    float connect[4];             // auto connect
    float contactpoint[4];        // contact point
    float contactforce[4];        // contact force
    float contactfriction[4];     // contact friction force
    float contacttorque[4];       // contact torque
    float contactgap[4];          // contact point in gap
    float rangefinder[4];         // rangefinder ray
    float constraint[4];          // constraint
    float slidercrank[4];         // slidercrank
    float crankbroken[4];         // used when crank must be stretched/broken
    float frustum[4];             // camera frustum
    float bv[4];                  // bounding volume
    float bvactive[4];            // active bounding volume
  } rgba;
};
typedef struct mjVisual_ mjVisual;

