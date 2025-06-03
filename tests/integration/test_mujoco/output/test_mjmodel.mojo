from sys.ffi import _Global, UnsafePointer, OpaquePointer

# (placeholder) TranslationUnitDecl 0xd476358 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __SVInt8_t = Int8

alias __SVInt16_t = Int16

alias __SVInt32_t = Int32

alias __SVInt64_t = Int64

alias __SVUint8_t = UInt8

alias __SVUint16_t = UInt16

alias __SVUint32_t = UInt32

alias __SVUint64_t = UInt64

alias __SVFloat16_t = Float16

alias __SVFloat32_t = Float32

alias __SVFloat64_t = Float64

alias __SVBFloat16_t = Float16

alias __clang_svint8x2_t = Int8

alias __clang_svint16x2_t = Int16

alias __clang_svint32x2_t = Int32

alias __clang_svint64x2_t = Int64

alias __clang_svuint8x2_t = UInt8

alias __clang_svuint16x2_t = UInt16

alias __clang_svuint32x2_t = UInt32

alias __clang_svuint64x2_t = UInt64

alias __clang_svfloat16x2_t = Float16

alias __clang_svfloat32x2_t = Float32

alias __clang_svfloat64x2_t = Float64

alias __clang_svbfloat16x2_t = Float16

alias __clang_svint8x3_t = Int8

alias __clang_svint16x3_t = Int16

alias __clang_svint32x3_t = Int32

alias __clang_svint64x3_t = Int64

alias __clang_svuint8x3_t = UInt8

alias __clang_svuint16x3_t = UInt16

alias __clang_svuint32x3_t = UInt32

alias __clang_svuint64x3_t = UInt64

alias __clang_svfloat16x3_t = Float16

alias __clang_svfloat32x3_t = Float32

alias __clang_svfloat64x3_t = Float64

alias __clang_svbfloat16x3_t = Float16

alias __clang_svint8x4_t = Int8

alias __clang_svint16x4_t = Int16

alias __clang_svint32x4_t = Int32

alias __clang_svint64x4_t = Int64

alias __clang_svuint8x4_t = UInt8

alias __clang_svuint16x4_t = UInt16

alias __clang_svuint32x4_t = UInt32

alias __clang_svuint64x4_t = UInt64

alias __clang_svfloat16x4_t = Float16

alias __clang_svfloat32x4_t = Float32

alias __clang_svfloat64x4_t = Float64

alias __clang_svbfloat16x4_t = Float16

alias __SVBool_t = Bool

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = std::__va_list

alias ptrdiff_t = Int64

alias size_t = UInt64

alias wchar_t = UInt32
struct _Anonymous_line_19_9:
	alias __clang_max_align_nonce1: Int64 = 8

	alias __clang_max_align_nonce2: Float64 = 16


alias max_align_t = _Anonymous_line_19_9

alias __u_char = UInt8

alias __u_short = UInt16

alias __u_int = UInt32

alias __u_long = UInt64

alias __int8_t = Int8

alias __uint8_t = UInt8

alias __int16_t = Int16

alias __uint16_t = UInt16

alias __int32_t = Int32

alias __uint32_t = UInt32

alias __int64_t = Int64

alias __uint64_t = UInt64

alias __int_least8_t = Int8

alias __uint_least8_t = Int8

alias __int_least16_t = Int16

alias __uint_least16_t = Int16

alias __int_least32_t = Int32

alias __uint_least32_t = Int32

alias __int_least64_t = Int64

alias __uint_least64_t = Int64

alias __quad_t = Int64

alias __u_quad_t = UInt64

alias __intmax_t = Int64

alias __uintmax_t = UInt64

alias __dev_t = UInt64

alias __uid_t = UInt32

alias __gid_t = UInt32

alias __ino_t = UInt64

alias __ino64_t = UInt64

alias __mode_t = UInt32

alias __nlink_t = UInt32

alias __off_t = Int64

alias __off64_t = Int64

alias __pid_t = Int32
struct _Anonymous_col_24:
	var __val: int[2]


alias __fsid_t = _Anonymous_col_24

alias __clock_t = Int64

alias __rlim_t = UInt64

alias __rlim64_t = UInt64

alias __id_t = UInt32

alias __time_t = Int64

alias __useconds_t = UInt32

alias __suseconds_t = Int64

alias __suseconds64_t = Int64

alias __daddr_t = Int32

alias __key_t = Int32

alias __clockid_t = Int32

alias __timer_t = UnsafePointer[NoneType]

alias __blksize_t = Int32

alias __blkcnt_t = Int64

alias __blkcnt64_t = Int64

alias __fsblkcnt_t = UInt64

alias __fsblkcnt64_t = UInt64

alias __fsfilcnt_t = UInt64

alias __fsfilcnt64_t = UInt64

alias __fsword_t = Int64

alias __ssize_t = Int64

alias __syscall_slong_t = Int64

alias __syscall_ulong_t = UInt64

alias __loff_t = __off64_t

alias __caddr_t = UnsafePointer[Int8]

alias __intptr_t = Int64

alias __socklen_t = UInt32

alias __sig_atomic_t = Int32

alias int8_t = Int8

alias int16_t = Int16

alias int32_t = Int32

alias int64_t = Int64

alias uint8_t = Int8

alias uint16_t = Int16

alias uint32_t = Int32

alias uint64_t = Int64

alias int_least8_t = __int_least8_t

alias int_least16_t = __int_least16_t

alias int_least32_t = __int_least32_t

alias int_least64_t = __int_least64_t

alias uint_least8_t = __uint_least8_t

alias uint_least16_t = __uint_least16_t

alias uint_least32_t = __uint_least32_t

alias uint_least64_t = __uint_least64_t

alias int_fast8_t = Int8

alias int_fast16_t = Int64

alias int_fast32_t = Int64

alias int_fast64_t = Int64

alias uint_fast8_t = UInt8

alias uint_fast16_t = UInt64

alias uint_fast32_t = UInt64

alias uint_fast64_t = UInt64

alias intptr_t = Int64

alias uintptr_t = UInt64

alias intmax_t = __intmax_t

alias uintmax_t = __uintmax_t

alias mjtNum = Float64

alias mjtByte = UInt8
struct mjtDisableBit_:
	#---------------------------------- enum types (mjt) ----------------------------------------------

	alias mjDSBL_CONSTRAINT: Int32 = 1

	alias mjDSBL_EQUALITY: Int32 = 2

	alias mjDSBL_FRICTIONLOSS: Int32 = 4

	alias mjDSBL_LIMIT: Int32 = 8

	alias mjDSBL_CONTACT: Int32 = 16

	alias mjDSBL_PASSIVE: Int32 = 32

	alias mjDSBL_GRAVITY: Int32 = 64

	alias mjDSBL_CLAMPCTRL: Int32 = 128

	alias mjDSBL_WARMSTART: Int32 = 256

	alias mjDSBL_FILTERPARENT: Int32 = 512

	alias mjDSBL_ACTUATION: Int32 = 1024

	alias mjDSBL_REFSAFE: Int32 = 2048

	alias mjDSBL_SENSOR: Int32 = 4096

	alias mjDSBL_MIDPHASE: Int32 = 8192

	alias mjDSBL_EULERDAMP: Int32 = 16384

	alias mjDSBL_AUTORESET: Int32 = 32768

	alias mjNDISABLE: Int32 = 16


alias mjtDisableBit = mjtDisableBit_
struct mjtEnableBit_:
	alias mjENBL_OVERRIDE: Int32 = 1

	alias mjENBL_ENERGY: Int32 = 2

	alias mjENBL_FWDINV: Int32 = 4

	alias mjENBL_INVDISCRETE: Int32 = 8

	alias mjENBL_MULTICCD: Int32 = 16

	alias mjENBL_ISLAND: Int32 = 32

	alias mjENBL_NATIVECCD: Int32 = 64

	alias mjNENABLE: Int32 = 7


alias mjtEnableBit = mjtEnableBit_
struct mjtJoint_:
	alias mjJNT_FREE: Int32 = 0

	alias mjJNT_BALL: Int32 = 1

	alias mjJNT_SLIDE: Int32 = 2

	alias mjJNT_HINGE: Int32 = 3


alias mjtJoint = mjtJoint_
struct mjtGeom_:
	alias mjGEOM_PLANE: Int32 = 0

	alias mjGEOM_HFIELD: Int32 = 1

	alias mjGEOM_SPHERE: Int32 = 2

	alias mjGEOM_CAPSULE: Int32 = 3

	alias mjGEOM_ELLIPSOID: Int32 = 4

	alias mjGEOM_CYLINDER: Int32 = 5

	alias mjGEOM_BOX: Int32 = 6

	alias mjGEOM_MESH: Int32 = 7

	alias mjGEOM_SDF: Int32 = 8

	alias mjNGEOMTYPES: Int32 = 9

	alias mjGEOM_ARROW: Int32 = 100

	alias mjGEOM_ARROW1: Int32 = 101

	alias mjGEOM_ARROW2: Int32 = 102

	alias mjGEOM_LINE: Int32 = 103

	alias mjGEOM_LINEBOX: Int32 = 104

	alias mjGEOM_FLEX: Int32 = 105

	alias mjGEOM_SKIN: Int32 = 106

	alias mjGEOM_LABEL: Int32 = 107

	alias mjGEOM_TRIANGLE: Int32 = 108

	alias mjGEOM_NONE: Int32 = 1001


alias mjtGeom = mjtGeom_
struct mjtCamLight_:
	alias mjCAMLIGHT_FIXED: Int32 = 0

	alias mjCAMLIGHT_TRACK: Int32 = 1

	alias mjCAMLIGHT_TRACKCOM: Int32 = 2

	alias mjCAMLIGHT_TARGETBODY: Int32 = 3

	alias mjCAMLIGHT_TARGETBODYCOM: Int32 = 4


alias mjtCamLight = mjtCamLight_
struct mjtTexture_:
	alias mjTEXTURE_2D: Int32 = 0

	alias mjTEXTURE_CUBE: Int32 = 1

	alias mjTEXTURE_SKYBOX: Int32 = 2


alias mjtTexture = mjtTexture_
struct mjtTextureRole_:
	alias mjTEXROLE_USER: Int32 = 0

	alias mjTEXROLE_RGB: Int32 = 1

	alias mjTEXROLE_OCCLUSION: Int32 = 2

	alias mjTEXROLE_ROUGHNESS: Int32 = 3

	alias mjTEXROLE_METALLIC: Int32 = 4

	alias mjTEXROLE_NORMAL: Int32 = 5

	alias mjTEXROLE_OPACITY: Int32 = 6

	alias mjTEXROLE_EMISSIVE: Int32 = 7

	alias mjTEXROLE_RGBA: Int32 = 8

	alias mjTEXROLE_ORM: Int32 = 9

	alias mjNTEXROLE: Int32 = 10


alias mjtTextureRole = mjtTextureRole_
struct mjtIntegrator_:
	alias mjINT_EULER: Int32 = 0

	alias mjINT_RK4: Int32 = 1

	alias mjINT_IMPLICIT: Int32 = 2

	alias mjINT_IMPLICITFAST: Int32 = 3


alias mjtIntegrator = mjtIntegrator_
struct mjtCone_:
	alias mjCONE_PYRAMIDAL: Int32 = 0

	alias mjCONE_ELLIPTIC: Int32 = 1


alias mjtCone = mjtCone_
struct mjtJacobian_:
	alias mjJAC_DENSE: Int32 = 0

	alias mjJAC_SPARSE: Int32 = 1

	alias mjJAC_AUTO: Int32 = 2


alias mjtJacobian = mjtJacobian_
struct mjtSolver_:
	alias mjSOL_PGS: Int32 = 0

	alias mjSOL_CG: Int32 = 1

	alias mjSOL_NEWTON: Int32 = 2


alias mjtSolver = mjtSolver_
struct mjtEq_:
	alias mjEQ_CONNECT: Int32 = 0

	alias mjEQ_WELD: Int32 = 1

	alias mjEQ_JOINT: Int32 = 2

	alias mjEQ_TENDON: Int32 = 3

	alias mjEQ_FLEX: Int32 = 4

	alias mjEQ_DISTANCE: Int32 = 5


alias mjtEq = mjtEq_
struct mjtWrap_:
	alias mjWRAP_NONE: Int32 = 0

	alias mjWRAP_JOINT: Int32 = 1

	alias mjWRAP_PULLEY: Int32 = 2

	alias mjWRAP_SITE: Int32 = 3

	alias mjWRAP_SPHERE: Int32 = 4

	alias mjWRAP_CYLINDER: Int32 = 5


alias mjtWrap = mjtWrap_
struct mjtTrn_:
	alias mjTRN_JOINT: Int32 = 0

	alias mjTRN_JOINTINPARENT: Int32 = 1

	alias mjTRN_SLIDERCRANK: Int32 = 2

	alias mjTRN_TENDON: Int32 = 3

	alias mjTRN_SITE: Int32 = 4

	alias mjTRN_BODY: Int32 = 5

	alias mjTRN_UNDEFINED: Int32 = 1000


alias mjtTrn = mjtTrn_
struct mjtDyn_:
	alias mjDYN_NONE: Int32 = 0

	alias mjDYN_INTEGRATOR: Int32 = 1

	alias mjDYN_FILTER: Int32 = 2

	alias mjDYN_FILTEREXACT: Int32 = 3

	alias mjDYN_MUSCLE: Int32 = 4

	alias mjDYN_USER: Int32 = 5


alias mjtDyn = mjtDyn_
struct mjtGain_:
	alias mjGAIN_FIXED: Int32 = 0

	alias mjGAIN_AFFINE: Int32 = 1

	alias mjGAIN_MUSCLE: Int32 = 2

	alias mjGAIN_USER: Int32 = 3


alias mjtGain = mjtGain_
struct mjtBias_:
	alias mjBIAS_NONE: Int32 = 0

	alias mjBIAS_AFFINE: Int32 = 1

	alias mjBIAS_MUSCLE: Int32 = 2

	alias mjBIAS_USER: Int32 = 3


alias mjtBias = mjtBias_
struct mjtObj_:
	alias mjOBJ_UNKNOWN: Int32 = 0

	alias mjOBJ_BODY: Int32 = 1

	alias mjOBJ_XBODY: Int32 = 2

	alias mjOBJ_JOINT: Int32 = 3

	alias mjOBJ_DOF: Int32 = 4

	alias mjOBJ_GEOM: Int32 = 5

	alias mjOBJ_SITE: Int32 = 6

	alias mjOBJ_CAMERA: Int32 = 7

	alias mjOBJ_LIGHT: Int32 = 8

	alias mjOBJ_FLEX: Int32 = 9

	alias mjOBJ_MESH: Int32 = 10

	alias mjOBJ_SKIN: Int32 = 11

	alias mjOBJ_HFIELD: Int32 = 12

	alias mjOBJ_TEXTURE: Int32 = 13

	alias mjOBJ_MATERIAL: Int32 = 14

	alias mjOBJ_PAIR: Int32 = 15

	alias mjOBJ_EXCLUDE: Int32 = 16

	alias mjOBJ_EQUALITY: Int32 = 17

	alias mjOBJ_TENDON: Int32 = 18

	alias mjOBJ_ACTUATOR: Int32 = 19

	alias mjOBJ_SENSOR: Int32 = 20

	alias mjOBJ_NUMERIC: Int32 = 21

	alias mjOBJ_TEXT: Int32 = 22

	alias mjOBJ_TUPLE: Int32 = 23

	alias mjOBJ_KEY: Int32 = 24

	alias mjOBJ_PLUGIN: Int32 = 25

	alias mjNOBJECT: Int32 = 26

	alias mjOBJ_FRAME: Int32 = 100


alias mjtObj = mjtObj_
struct mjtConstraint_:
	alias mjCNSTR_EQUALITY: Int32 = 0

	alias mjCNSTR_FRICTION_DOF: Int32 = 1

	alias mjCNSTR_FRICTION_TENDON: Int32 = 2

	alias mjCNSTR_LIMIT_JOINT: Int32 = 3

	alias mjCNSTR_LIMIT_TENDON: Int32 = 4

	alias mjCNSTR_CONTACT_FRICTIONLESS: Int32 = 5

	alias mjCNSTR_CONTACT_PYRAMIDAL: Int32 = 6

	alias mjCNSTR_CONTACT_ELLIPTIC: Int32 = 7


alias mjtConstraint = mjtConstraint_
struct mjtConstraintState_:
	alias mjCNSTRSTATE_SATISFIED: Int32 = 0

	alias mjCNSTRSTATE_QUADRATIC: Int32 = 1

	alias mjCNSTRSTATE_LINEARNEG: Int32 = 2

	alias mjCNSTRSTATE_LINEARPOS: Int32 = 3

	alias mjCNSTRSTATE_CONE: Int32 = 4


alias mjtConstraintState = mjtConstraintState_
struct mjtSensor_:
	alias mjSENS_TOUCH: Int32 = 0

	alias mjSENS_ACCELEROMETER: Int32 = 1

	alias mjSENS_VELOCIMETER: Int32 = 2

	alias mjSENS_GYRO: Int32 = 3

	alias mjSENS_FORCE: Int32 = 4

	alias mjSENS_TORQUE: Int32 = 5

	alias mjSENS_MAGNETOMETER: Int32 = 6

	alias mjSENS_RANGEFINDER: Int32 = 7

	alias mjSENS_CAMPROJECTION: Int32 = 8

	alias mjSENS_JOINTPOS: Int32 = 9

	alias mjSENS_JOINTVEL: Int32 = 10

	alias mjSENS_TENDONPOS: Int32 = 11

	alias mjSENS_TENDONVEL: Int32 = 12

	alias mjSENS_ACTUATORPOS: Int32 = 13

	alias mjSENS_ACTUATORVEL: Int32 = 14

	alias mjSENS_ACTUATORFRC: Int32 = 15

	alias mjSENS_JOINTACTFRC: Int32 = 16

	alias mjSENS_BALLQUAT: Int32 = 17

	alias mjSENS_BALLANGVEL: Int32 = 18

	alias mjSENS_JOINTLIMITPOS: Int32 = 19

	alias mjSENS_JOINTLIMITVEL: Int32 = 20

	alias mjSENS_JOINTLIMITFRC: Int32 = 21

	alias mjSENS_TENDONLIMITPOS: Int32 = 22

	alias mjSENS_TENDONLIMITVEL: Int32 = 23

	alias mjSENS_TENDONLIMITFRC: Int32 = 24

	alias mjSENS_FRAMEPOS: Int32 = 25

	alias mjSENS_FRAMEQUAT: Int32 = 26

	alias mjSENS_FRAMEXAXIS: Int32 = 27

	alias mjSENS_FRAMEYAXIS: Int32 = 28

	alias mjSENS_FRAMEZAXIS: Int32 = 29

	alias mjSENS_FRAMELINVEL: Int32 = 30

	alias mjSENS_FRAMEANGVEL: Int32 = 31

	alias mjSENS_FRAMELINACC: Int32 = 32

	alias mjSENS_FRAMEANGACC: Int32 = 33

	alias mjSENS_SUBTREECOM: Int32 = 34

	alias mjSENS_SUBTREELINVEL: Int32 = 35

	alias mjSENS_SUBTREEANGMOM: Int32 = 36

	alias mjSENS_GEOMDIST: Int32 = 37

	alias mjSENS_GEOMNORMAL: Int32 = 38

	alias mjSENS_GEOMFROMTO: Int32 = 39

	alias mjSENS_CLOCK: Int32 = 40

	alias mjSENS_PLUGIN: Int32 = 41

	alias mjSENS_USER: Int32 = 42


alias mjtSensor = mjtSensor_
struct mjtStage_:
	alias mjSTAGE_NONE: Int32 = 0

	alias mjSTAGE_POS: Int32 = 1

	alias mjSTAGE_VEL: Int32 = 2

	alias mjSTAGE_ACC: Int32 = 3


alias mjtStage = mjtStage_
struct mjtDataType_:
	alias mjDATATYPE_REAL: Int32 = 0

	alias mjDATATYPE_POSITIVE: Int32 = 1

	alias mjDATATYPE_AXIS: Int32 = 2

	alias mjDATATYPE_QUATERNION: Int32 = 3


alias mjtDataType = mjtDataType_
struct mjtSameFrame_:
	alias mjSAMEFRAME_NONE: Int32 = 0

	alias mjSAMEFRAME_BODY: Int32 = 1

	alias mjSAMEFRAME_INERTIA: Int32 = 2

	alias mjSAMEFRAME_BODYROT: Int32 = 3

	alias mjSAMEFRAME_INERTIAROT: Int32 = 4


alias mjtSameFrame = mjtSameFrame_
struct mjtLRMode_:
	alias mjLRMODE_NONE: Int32 = 0

	alias mjLRMODE_MUSCLE: Int32 = 1

	alias mjLRMODE_MUSCLEUSER: Int32 = 2

	alias mjLRMODE_ALL: Int32 = 3


alias mjtLRMode = mjtLRMode_
struct mjtFlexSelf_:
	alias mjFLEXSELF_NONE: Int32 = 0

	alias mjFLEXSELF_NARROW: Int32 = 1

	alias mjFLEXSELF_BVH: Int32 = 2

	alias mjFLEXSELF_SAP: Int32 = 3

	alias mjFLEXSELF_AUTO: Int32 = 4


alias mjtFlexSelf = mjtFlexSelf_
struct mjLROpt_:
	#---------------------------------- mjLROpt -------------------------------------------------------

	var mode: Int32

	var useexisting: Int32

	var uselimit: Int32

	var accel: mjtNum

	var maxforce: mjtNum

	var timeconst: mjtNum

	var timestep: mjtNum

	var inttotal: mjtNum

	var interval: mjtNum

	var tolrange: mjtNum


alias mjLROpt = mjLROpt_
struct mjVFS_:
	#---------------------------------- mjVFS ---------------------------------------------------------

	var impl_: UnsafePointer[NoneType]


alias mjVFS = mjVFS_
struct mjOption_:
	#---------------------------------- mjOption ------------------------------------------------------

	var timestep: mjtNum

	var apirate: mjtNum

	var impratio: mjtNum

	var tolerance: mjtNum

	var ls_tolerance: mjtNum

	var noslip_tolerance: mjtNum

	var ccd_tolerance: mjtNum

	var gravity: mjtNum[3]

	var wind: mjtNum[3]

	var magnetic: mjtNum[3]

	var density: mjtNum

	var viscosity: mjtNum

	var o_margin: mjtNum

	var o_solref: mjtNum[2]

	var o_solimp: mjtNum[5]

	var o_friction: mjtNum[5]

	var integrator: Int32

	var cone: Int32

	var jacobian: Int32

	var solver: Int32

	var iterations: Int32

	var ls_iterations: Int32

	var noslip_iterations: Int32

	var ccd_iterations: Int32

	var disableflags: Int32

	var enableflags: Int32

	var disableactuator: Int32

	var sdf_initpoints: Int32

	var sdf_iterations: Int32


alias mjOption = mjOption_
struct _mjVisual___Anonymous_line_545_3:
	var fog: float[4]

	var haze: float[4]

	var force: float[4]

	var inertia: float[4]

	var joint: float[4]

	var actuator: float[4]

	var actuatornegative: float[4]

	var actuatorpositive: float[4]

	var com: float[4]

	var camera: float[4]

	var light: float[4]

	var selectpoint: float[4]

	var connect: float[4]

	var contactpoint: float[4]

	var contactforce: float[4]

	var contactfriction: float[4]

	var contacttorque: float[4]

	var contactgap: float[4]

	var rangefinder: float[4]

	var constraint: float[4]

	var slidercrank: float[4]

	var crankbroken: float[4]

	var frustum: float[4]

	var bv: float[4]

	var bvactive: float[4]


struct _mjVisual___Anonymous_line_525_3:
	var forcewidth: Float32

	var contactwidth: Float32

	var contactheight: Float32

	var connect: Float32

	var com: Float32

	var camera: Float32

	var light: Float32

	var selectpoint: Float32

	var jointlength: Float32

	var jointwidth: Float32

	var actuatorlength: Float32

	var actuatorwidth: Float32

	var framelength: Float32

	var framewidth: Float32

	var constraint: Float32

	var slidercrank: Float32

	var frustum: Float32


struct _mjVisual___Anonymous_line_509_3:
	var stiffness: Float32

	var stiffnessrot: Float32

	var force: Float32

	var torque: Float32

	var alpha: Float32

	var fogstart: Float32

	var fogend: Float32

	var znear: Float32

	var zfar: Float32

	var haze: Float32

	var shadowclip: Float32

	var shadowscale: Float32

	var actuatortendon: Float32


struct _mjVisual___Anonymous_line_502_3:
	var ambient: float[3]

	var diffuse: float[3]

	var specular: float[3]

	var active: Int32


struct _mjVisual___Anonymous_line_494_3:
	var shadowsize: Int32

	var offsamples: Int32

	var numslices: Int32

	var numstacks: Int32

	var numquads: Int32


struct _mjVisual___Anonymous_line_479_3:
	var orthographic: Int32

	var fovy: Float32

	var ipd: Float32

	var azimuth: Float32

	var elevation: Float32

	var linewidth: Float32

	var glow: Float32

	var realtime: Float32

	var offwidth: Int32

	var offheight: Int32

	var ellipsoidinertia: Int32

	var bvactive: Int32


struct mjVisual_:
	#---------------------------------- mjVisual ------------------------------------------------------

	var global: _mjVisual___Anonymous_line_479_3

	var quality: _mjVisual___Anonymous_line_494_3

	var headlight: _mjVisual___Anonymous_line_502_3

	var map: _mjVisual___Anonymous_line_509_3

	var scale: _mjVisual___Anonymous_line_525_3

	var rgba: _mjVisual___Anonymous_line_545_3


alias mjVisual = mjVisual_
struct mjStatistic_:
	#---------------------------------- mjStatistic ---------------------------------------------------

	var meaninertia: mjtNum

	var meanmass: mjtNum

	var meansize: mjtNum

	var extent: mjtNum

	var center: mjtNum[3]


alias mjStatistic = mjStatistic_
struct mjModel_:
	#---------------------------------- mjModel -------------------------------------------------------

	var nq: Int32

	var nv: Int32

	var nu: Int32

	var na: Int32

	var nbody: Int32

	var nbvh: Int32

	var nbvhstatic: Int32

	var nbvhdynamic: Int32

	var njnt: Int32

	var ngeom: Int32

	var nsite: Int32

	var ncam: Int32

	var nlight: Int32

	var nflex: Int32

	var nflexvert: Int32

	var nflexedge: Int32

	var nflexelem: Int32

	var nflexelemdata: Int32

	var nflexelemedge: Int32

	var nflexshelldata: Int32

	var nflexevpair: Int32

	var nflextexcoord: Int32

	var nmesh: Int32

	var nmeshvert: Int32

	var nmeshnormal: Int32

	var nmeshtexcoord: Int32

	var nmeshface: Int32

	var nmeshgraph: Int32

	var nskin: Int32

	var nskinvert: Int32

	var nskintexvert: Int32

	var nskinface: Int32

	var nskinbone: Int32

	var nskinbonevert: Int32

	var nhfield: Int32

	var nhfielddata: Int32

	var ntex: Int32

	var ntexdata: Int32

	var nmat: Int32

	var npair: Int32

	var nexclude: Int32

	var neq: Int32

	var ntendon: Int32

	var nwrap: Int32

	var nsensor: Int32

	var nnumeric: Int32

	var nnumericdata: Int32

	var ntext: Int32

	var ntextdata: Int32

	var ntuple: Int32

	var ntupledata: Int32

	var nkey: Int32

	var nmocap: Int32

	var nplugin: Int32

	var npluginattr: Int32

	var nuser_body: Int32

	var nuser_jnt: Int32

	var nuser_geom: Int32

	var nuser_site: Int32

	var nuser_cam: Int32

	var nuser_tendon: Int32

	var nuser_actuator: Int32

	var nuser_sensor: Int32

	var nnames: Int32

	var nnames_map: Int32

	var npaths: Int32

	var nM: Int32

	var nB: Int32

	var nC: Int32

	var nD: Int32

	var ntree: Int32

	var ngravcomp: Int32

	var nemax: Int32

	var njmax: Int32

	var nconmax: Int32

	var nuserdata: Int32

	var nsensordata: Int32

	var npluginstate: Int32

	var narena: size_t

	var nbuffer: size_t

	var opt: mjOption

	var vis: mjVisual

	var stat: mjStatistic

	var buffer: UnsafePointer[NoneType]

	var qpos0: UnsafePointer[mjtNum]

	var qpos_spring: UnsafePointer[mjtNum]

	var body_parentid: UnsafePointer[Int32]

	var body_rootid: UnsafePointer[Int32]

	var body_weldid: UnsafePointer[Int32]

	var body_mocapid: UnsafePointer[Int32]

	var body_jntnum: UnsafePointer[Int32]

	var body_jntadr: UnsafePointer[Int32]

	var body_dofnum: UnsafePointer[Int32]

	var body_dofadr: UnsafePointer[Int32]

	var body_treeid: UnsafePointer[Int32]

	var body_geomnum: UnsafePointer[Int32]

	var body_geomadr: UnsafePointer[Int32]

	var body_simple: UnsafePointer[mjtByte]

	var body_sameframe: UnsafePointer[mjtByte]

	var body_pos: UnsafePointer[mjtNum]

	var body_quat: UnsafePointer[mjtNum]

	var body_ipos: UnsafePointer[mjtNum]

	var body_iquat: UnsafePointer[mjtNum]

	var body_mass: UnsafePointer[mjtNum]

	var body_subtreemass: UnsafePointer[mjtNum]

	var body_inertia: UnsafePointer[mjtNum]

	var body_invweight0: UnsafePointer[mjtNum]

	var body_gravcomp: UnsafePointer[mjtNum]

	var body_margin: UnsafePointer[mjtNum]

	var body_user: UnsafePointer[mjtNum]

	var body_plugin: UnsafePointer[Int32]

	var body_contype: UnsafePointer[Int32]

	var body_conaffinity: UnsafePointer[Int32]

	var body_bvhadr: UnsafePointer[Int32]

	var body_bvhnum: UnsafePointer[Int32]

	var bvh_depth: UnsafePointer[Int32]

	var bvh_child: UnsafePointer[Int32]

	var bvh_nodeid: UnsafePointer[Int32]

	var bvh_aabb: UnsafePointer[mjtNum]

	var jnt_type: UnsafePointer[Int32]

	var jnt_qposadr: UnsafePointer[Int32]

	var jnt_dofadr: UnsafePointer[Int32]

	var jnt_bodyid: UnsafePointer[Int32]

	var jnt_group: UnsafePointer[Int32]

	var jnt_limited: UnsafePointer[mjtByte]

	var jnt_actfrclimited: UnsafePointer[mjtByte]

	var jnt_actgravcomp: UnsafePointer[mjtByte]

	var jnt_solref: UnsafePointer[mjtNum]

	var jnt_solimp: UnsafePointer[mjtNum]

	var jnt_pos: UnsafePointer[mjtNum]

	var jnt_axis: UnsafePointer[mjtNum]

	var jnt_stiffness: UnsafePointer[mjtNum]

	var jnt_range: UnsafePointer[mjtNum]

	var jnt_actfrcrange: UnsafePointer[mjtNum]

	var jnt_margin: UnsafePointer[mjtNum]

	var jnt_user: UnsafePointer[mjtNum]

	var dof_bodyid: UnsafePointer[Int32]

	var dof_jntid: UnsafePointer[Int32]

	var dof_parentid: UnsafePointer[Int32]

	var dof_treeid: UnsafePointer[Int32]

	var dof_Madr: UnsafePointer[Int32]

	var dof_simplenum: UnsafePointer[Int32]

	var dof_solref: UnsafePointer[mjtNum]

	var dof_solimp: UnsafePointer[mjtNum]

	var dof_frictionloss: UnsafePointer[mjtNum]

	var dof_armature: UnsafePointer[mjtNum]

	var dof_damping: UnsafePointer[mjtNum]

	var dof_invweight0: UnsafePointer[mjtNum]

	var dof_M0: UnsafePointer[mjtNum]

	var geom_type: UnsafePointer[Int32]

	var geom_contype: UnsafePointer[Int32]

	var geom_conaffinity: UnsafePointer[Int32]

	var geom_condim: UnsafePointer[Int32]

	var geom_bodyid: UnsafePointer[Int32]

	var geom_dataid: UnsafePointer[Int32]

	var geom_matid: UnsafePointer[Int32]

	var geom_group: UnsafePointer[Int32]

	var geom_priority: UnsafePointer[Int32]

	var geom_plugin: UnsafePointer[Int32]

	var geom_sameframe: UnsafePointer[mjtByte]

	var geom_solmix: UnsafePointer[mjtNum]

	var geom_solref: UnsafePointer[mjtNum]

	var geom_solimp: UnsafePointer[mjtNum]

	var geom_size: UnsafePointer[mjtNum]

	var geom_aabb: UnsafePointer[mjtNum]

	var geom_rbound: UnsafePointer[mjtNum]

	var geom_pos: UnsafePointer[mjtNum]

	var geom_quat: UnsafePointer[mjtNum]

	var geom_friction: UnsafePointer[mjtNum]

	var geom_margin: UnsafePointer[mjtNum]

	var geom_gap: UnsafePointer[mjtNum]

	var geom_fluid: UnsafePointer[mjtNum]

	var geom_user: UnsafePointer[mjtNum]

	var geom_rgba: UnsafePointer[Float32]

	var site_type: UnsafePointer[Int32]

	var site_bodyid: UnsafePointer[Int32]

	var site_matid: UnsafePointer[Int32]

	var site_group: UnsafePointer[Int32]

	var site_sameframe: UnsafePointer[mjtByte]

	var site_size: UnsafePointer[mjtNum]

	var site_pos: UnsafePointer[mjtNum]

	var site_quat: UnsafePointer[mjtNum]

	var site_user: UnsafePointer[mjtNum]

	var site_rgba: UnsafePointer[Float32]

	var cam_mode: UnsafePointer[Int32]

	var cam_bodyid: UnsafePointer[Int32]

	var cam_targetbodyid: UnsafePointer[Int32]

	var cam_pos: UnsafePointer[mjtNum]

	var cam_quat: UnsafePointer[mjtNum]

	var cam_poscom0: UnsafePointer[mjtNum]

	var cam_pos0: UnsafePointer[mjtNum]

	var cam_mat0: UnsafePointer[mjtNum]

	var cam_orthographic: UnsafePointer[Int32]

	var cam_fovy: UnsafePointer[mjtNum]

	var cam_ipd: UnsafePointer[mjtNum]

	var cam_resolution: UnsafePointer[Int32]

	var cam_sensorsize: UnsafePointer[Float32]

	var cam_intrinsic: UnsafePointer[Float32]

	var cam_user: UnsafePointer[mjtNum]

	var light_mode: UnsafePointer[Int32]

	var light_bodyid: UnsafePointer[Int32]

	var light_targetbodyid: UnsafePointer[Int32]

	var light_directional: UnsafePointer[mjtByte]

	var light_castshadow: UnsafePointer[mjtByte]

	var light_bulbradius: UnsafePointer[Float32]

	var light_active: UnsafePointer[mjtByte]

	var light_pos: UnsafePointer[mjtNum]

	var light_dir: UnsafePointer[mjtNum]

	var light_poscom0: UnsafePointer[mjtNum]

	var light_pos0: UnsafePointer[mjtNum]

	var light_dir0: UnsafePointer[mjtNum]

	var light_attenuation: UnsafePointer[Float32]

	var light_cutoff: UnsafePointer[Float32]

	var light_exponent: UnsafePointer[Float32]

	var light_ambient: UnsafePointer[Float32]

	var light_diffuse: UnsafePointer[Float32]

	var light_specular: UnsafePointer[Float32]

	var flex_contype: UnsafePointer[Int32]

	var flex_conaffinity: UnsafePointer[Int32]

	var flex_condim: UnsafePointer[Int32]

	var flex_priority: UnsafePointer[Int32]

	var flex_solmix: UnsafePointer[mjtNum]

	var flex_solref: UnsafePointer[mjtNum]

	var flex_solimp: UnsafePointer[mjtNum]

	var flex_friction: UnsafePointer[mjtNum]

	var flex_margin: UnsafePointer[mjtNum]

	var flex_gap: UnsafePointer[mjtNum]

	var flex_internal: UnsafePointer[mjtByte]

	var flex_selfcollide: UnsafePointer[Int32]

	var flex_activelayers: UnsafePointer[Int32]

	var flex_dim: UnsafePointer[Int32]

	var flex_matid: UnsafePointer[Int32]

	var flex_group: UnsafePointer[Int32]

	var flex_vertadr: UnsafePointer[Int32]

	var flex_vertnum: UnsafePointer[Int32]

	var flex_edgeadr: UnsafePointer[Int32]

	var flex_edgenum: UnsafePointer[Int32]

	var flex_elemadr: UnsafePointer[Int32]

	var flex_elemnum: UnsafePointer[Int32]

	var flex_elemdataadr: UnsafePointer[Int32]

	var flex_elemedgeadr: UnsafePointer[Int32]

	var flex_shellnum: UnsafePointer[Int32]

	var flex_shelldataadr: UnsafePointer[Int32]

	var flex_evpairadr: UnsafePointer[Int32]

	var flex_evpairnum: UnsafePointer[Int32]

	var flex_texcoordadr: UnsafePointer[Int32]

	var flex_vertbodyid: UnsafePointer[Int32]

	var flex_edge: UnsafePointer[Int32]

	var flex_elem: UnsafePointer[Int32]

	var flex_elemedge: UnsafePointer[Int32]

	var flex_elemlayer: UnsafePointer[Int32]

	var flex_shell: UnsafePointer[Int32]

	var flex_evpair: UnsafePointer[Int32]

	var flex_vert: UnsafePointer[mjtNum]

	var flex_xvert0: UnsafePointer[mjtNum]

	var flexedge_length0: UnsafePointer[mjtNum]

	var flexedge_invweight0: UnsafePointer[mjtNum]

	var flex_radius: UnsafePointer[mjtNum]

	var flex_stiffness: UnsafePointer[mjtNum]

	var flex_damping: UnsafePointer[mjtNum]

	var flex_edgestiffness: UnsafePointer[mjtNum]

	var flex_edgedamping: UnsafePointer[mjtNum]

	var flex_edgeequality: UnsafePointer[mjtByte]

	var flex_rigid: UnsafePointer[mjtByte]

	var flexedge_rigid: UnsafePointer[mjtByte]

	var flex_centered: UnsafePointer[mjtByte]

	var flex_flatskin: UnsafePointer[mjtByte]

	var flex_bvhadr: UnsafePointer[Int32]

	var flex_bvhnum: UnsafePointer[Int32]

	var flex_rgba: UnsafePointer[Float32]

	var flex_texcoord: UnsafePointer[Float32]

	var mesh_vertadr: UnsafePointer[Int32]

	var mesh_vertnum: UnsafePointer[Int32]

	var mesh_faceadr: UnsafePointer[Int32]

	var mesh_facenum: UnsafePointer[Int32]

	var mesh_bvhadr: UnsafePointer[Int32]

	var mesh_bvhnum: UnsafePointer[Int32]

	var mesh_normaladr: UnsafePointer[Int32]

	var mesh_normalnum: UnsafePointer[Int32]

	var mesh_texcoordadr: UnsafePointer[Int32]

	var mesh_texcoordnum: UnsafePointer[Int32]

	var mesh_graphadr: UnsafePointer[Int32]

	var mesh_vert: UnsafePointer[Float32]

	var mesh_normal: UnsafePointer[Float32]

	var mesh_texcoord: UnsafePointer[Float32]

	var mesh_face: UnsafePointer[Int32]

	var mesh_facenormal: UnsafePointer[Int32]

	var mesh_facetexcoord: UnsafePointer[Int32]

	var mesh_graph: UnsafePointer[Int32]

	var mesh_scale: UnsafePointer[mjtNum]

	var mesh_pos: UnsafePointer[mjtNum]

	var mesh_quat: UnsafePointer[mjtNum]

	var mesh_pathadr: UnsafePointer[Int32]

	var skin_matid: UnsafePointer[Int32]

	var skin_group: UnsafePointer[Int32]

	var skin_rgba: UnsafePointer[Float32]

	var skin_inflate: UnsafePointer[Float32]

	var skin_vertadr: UnsafePointer[Int32]

	var skin_vertnum: UnsafePointer[Int32]

	var skin_texcoordadr: UnsafePointer[Int32]

	var skin_faceadr: UnsafePointer[Int32]

	var skin_facenum: UnsafePointer[Int32]

	var skin_boneadr: UnsafePointer[Int32]

	var skin_bonenum: UnsafePointer[Int32]

	var skin_vert: UnsafePointer[Float32]

	var skin_texcoord: UnsafePointer[Float32]

	var skin_face: UnsafePointer[Int32]

	var skin_bonevertadr: UnsafePointer[Int32]

	var skin_bonevertnum: UnsafePointer[Int32]

	var skin_bonebindpos: UnsafePointer[Float32]

	var skin_bonebindquat: UnsafePointer[Float32]

	var skin_bonebodyid: UnsafePointer[Int32]

	var skin_bonevertid: UnsafePointer[Int32]

	var skin_bonevertweight: UnsafePointer[Float32]

	var skin_pathadr: UnsafePointer[Int32]

	var hfield_size: UnsafePointer[mjtNum]

	var hfield_nrow: UnsafePointer[Int32]

	var hfield_ncol: UnsafePointer[Int32]

	var hfield_adr: UnsafePointer[Int32]

	var hfield_data: UnsafePointer[Float32]

	var hfield_pathadr: UnsafePointer[Int32]

	var tex_type: UnsafePointer[Int32]

	var tex_height: UnsafePointer[Int32]

	var tex_width: UnsafePointer[Int32]

	var tex_nchannel: UnsafePointer[Int32]

	var tex_adr: UnsafePointer[Int32]

	var tex_data: UnsafePointer[mjtByte]

	var tex_pathadr: UnsafePointer[Int32]

	var mat_texid: UnsafePointer[Int32]

	var mat_texuniform: UnsafePointer[mjtByte]

	var mat_texrepeat: UnsafePointer[Float32]

	var mat_emission: UnsafePointer[Float32]

	var mat_specular: UnsafePointer[Float32]

	var mat_shininess: UnsafePointer[Float32]

	var mat_reflectance: UnsafePointer[Float32]

	var mat_metallic: UnsafePointer[Float32]

	var mat_roughness: UnsafePointer[Float32]

	var mat_rgba: UnsafePointer[Float32]

	var pair_dim: UnsafePointer[Int32]

	var pair_geom1: UnsafePointer[Int32]

	var pair_geom2: UnsafePointer[Int32]

	var pair_signature: UnsafePointer[Int32]

	var pair_solref: UnsafePointer[mjtNum]

	var pair_solreffriction: UnsafePointer[mjtNum]

	var pair_solimp: UnsafePointer[mjtNum]

	var pair_margin: UnsafePointer[mjtNum]

	var pair_gap: UnsafePointer[mjtNum]

	var pair_friction: UnsafePointer[mjtNum]

	var exclude_signature: UnsafePointer[Int32]

	var eq_type: UnsafePointer[Int32]

	var eq_obj1id: UnsafePointer[Int32]

	var eq_obj2id: UnsafePointer[Int32]

	var eq_objtype: UnsafePointer[Int32]

	var eq_active0: UnsafePointer[mjtByte]

	var eq_solref: UnsafePointer[mjtNum]

	var eq_solimp: UnsafePointer[mjtNum]

	var eq_data: UnsafePointer[mjtNum]

	var tendon_adr: UnsafePointer[Int32]

	var tendon_num: UnsafePointer[Int32]

	var tendon_matid: UnsafePointer[Int32]

	var tendon_group: UnsafePointer[Int32]

	var tendon_limited: UnsafePointer[mjtByte]

	var tendon_width: UnsafePointer[mjtNum]

	var tendon_solref_lim: UnsafePointer[mjtNum]

	var tendon_solimp_lim: UnsafePointer[mjtNum]

	var tendon_solref_fri: UnsafePointer[mjtNum]

	var tendon_solimp_fri: UnsafePointer[mjtNum]

	var tendon_range: UnsafePointer[mjtNum]

	var tendon_margin: UnsafePointer[mjtNum]

	var tendon_stiffness: UnsafePointer[mjtNum]

	var tendon_damping: UnsafePointer[mjtNum]

	var tendon_frictionloss: UnsafePointer[mjtNum]

	var tendon_lengthspring: UnsafePointer[mjtNum]

	var tendon_length0: UnsafePointer[mjtNum]

	var tendon_invweight0: UnsafePointer[mjtNum]

	var tendon_user: UnsafePointer[mjtNum]

	var tendon_rgba: UnsafePointer[Float32]

	var wrap_type: UnsafePointer[Int32]

	var wrap_objid: UnsafePointer[Int32]

	var wrap_prm: UnsafePointer[mjtNum]

	var actuator_trntype: UnsafePointer[Int32]

	var actuator_dyntype: UnsafePointer[Int32]

	var actuator_gaintype: UnsafePointer[Int32]

	var actuator_biastype: UnsafePointer[Int32]

	var actuator_trnid: UnsafePointer[Int32]

	var actuator_actadr: UnsafePointer[Int32]

	var actuator_actnum: UnsafePointer[Int32]

	var actuator_group: UnsafePointer[Int32]

	var actuator_ctrllimited: UnsafePointer[mjtByte]

	var actuator_forcelimited: UnsafePointer[mjtByte]

	var actuator_actlimited: UnsafePointer[mjtByte]

	var actuator_dynprm: UnsafePointer[mjtNum]

	var actuator_gainprm: UnsafePointer[mjtNum]

	var actuator_biasprm: UnsafePointer[mjtNum]

	var actuator_actearly: UnsafePointer[mjtByte]

	var actuator_ctrlrange: UnsafePointer[mjtNum]

	var actuator_forcerange: UnsafePointer[mjtNum]

	var actuator_actrange: UnsafePointer[mjtNum]

	var actuator_gear: UnsafePointer[mjtNum]

	var actuator_cranklength: UnsafePointer[mjtNum]

	var actuator_acc0: UnsafePointer[mjtNum]

	var actuator_length0: UnsafePointer[mjtNum]

	var actuator_lengthrange: UnsafePointer[mjtNum]

	var actuator_user: UnsafePointer[mjtNum]

	var actuator_plugin: UnsafePointer[Int32]

	var sensor_type: UnsafePointer[Int32]

	var sensor_datatype: UnsafePointer[Int32]

	var sensor_needstage: UnsafePointer[Int32]

	var sensor_objtype: UnsafePointer[Int32]

	var sensor_objid: UnsafePointer[Int32]

	var sensor_reftype: UnsafePointer[Int32]

	var sensor_refid: UnsafePointer[Int32]

	var sensor_dim: UnsafePointer[Int32]

	var sensor_adr: UnsafePointer[Int32]

	var sensor_cutoff: UnsafePointer[mjtNum]

	var sensor_noise: UnsafePointer[mjtNum]

	var sensor_user: UnsafePointer[mjtNum]

	var sensor_plugin: UnsafePointer[Int32]

	var plugin: UnsafePointer[Int32]

	var plugin_stateadr: UnsafePointer[Int32]

	var plugin_statenum: UnsafePointer[Int32]

	var plugin_attr: UnsafePointer[Int8]

	var plugin_attradr: UnsafePointer[Int32]

	var numeric_adr: UnsafePointer[Int32]

	var numeric_size: UnsafePointer[Int32]

	var numeric_data: UnsafePointer[mjtNum]

	var text_adr: UnsafePointer[Int32]

	var text_size: UnsafePointer[Int32]

	var text_data: UnsafePointer[Int8]

	var tuple_adr: UnsafePointer[Int32]

	var tuple_size: UnsafePointer[Int32]

	var tuple_objtype: UnsafePointer[Int32]

	var tuple_objid: UnsafePointer[Int32]

	var tuple_objprm: UnsafePointer[mjtNum]

	var key_time: UnsafePointer[mjtNum]

	var key_qpos: UnsafePointer[mjtNum]

	var key_qvel: UnsafePointer[mjtNum]

	var key_act: UnsafePointer[mjtNum]

	var key_mpos: UnsafePointer[mjtNum]

	var key_mquat: UnsafePointer[mjtNum]

	var key_ctrl: UnsafePointer[mjtNum]

	var name_bodyadr: UnsafePointer[Int32]

	var name_jntadr: UnsafePointer[Int32]

	var name_geomadr: UnsafePointer[Int32]

	var name_siteadr: UnsafePointer[Int32]

	var name_camadr: UnsafePointer[Int32]

	var name_lightadr: UnsafePointer[Int32]

	var name_flexadr: UnsafePointer[Int32]

	var name_meshadr: UnsafePointer[Int32]

	var name_skinadr: UnsafePointer[Int32]

	var name_hfieldadr: UnsafePointer[Int32]

	var name_texadr: UnsafePointer[Int32]

	var name_matadr: UnsafePointer[Int32]

	var name_pairadr: UnsafePointer[Int32]

	var name_excludeadr: UnsafePointer[Int32]

	var name_eqadr: UnsafePointer[Int32]

	var name_tendonadr: UnsafePointer[Int32]

	var name_actuatoradr: UnsafePointer[Int32]

	var name_sensoradr: UnsafePointer[Int32]

	var name_numericadr: UnsafePointer[Int32]

	var name_textadr: UnsafePointer[Int32]

	var name_tupleadr: UnsafePointer[Int32]

	var name_keyadr: UnsafePointer[Int32]

	var name_pluginadr: UnsafePointer[Int32]

	var names: UnsafePointer[Int8]

	var names_map: UnsafePointer[Int32]

	var paths: UnsafePointer[Int8]


alias mjModel = mjModel_
