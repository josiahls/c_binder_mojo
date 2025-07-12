# Native Mojo Modules

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.typing import _GlobalTypeRegistry

fn test_type_mapping() raises:
    var logger = Logger.get_default_logger("test_type_mapping")
    logger.info("Testing type mapping")

    test_numerics:List[String] = [
        # Basic types
        "char",
        "short",
        "int",
        "long",
        "long long",
        "float",
        "double",
        "long double",
        # Unsigned types
        "unsigned char",
        "unsigned short",
        "unsigned int",
        "unsigned long",
        "unsigned long long",
        # Signed types
        "signed char",
        "signed short",
        "signed int",
        "signed long",
        "signed long long",
        # Strictly defined types
        "int8_t",
        "int16_t",
        "int32_t",
        "int64_t",
        "__int128",
        "uint8_t",
        "uint16_t",
        "uint32_t",
        "uint64_t",
        "float16_t",
        "float32_t",
        "float64_t",
        # Vector types
        "int8_t[20]",
        "int16_t[20]",
        "int32_t[20]",
        "int64_t[20]",
        "__int128[20]",
        "uint8_t[20]",
        "uint16_t[20]",
        "uint32_t[20]",
        "uint64_t[20]",
        "float16_t[20]",
        "float32_t[20]",
        "float64_t[20]",
        "long double[20]",
        # SIMD types
        "__SVInt8_t",
        "__SVInt16_t",
        "__SVInt32_t",
        "__SVInt64_t",
        "__SVInt128_t",
        "__SVUInt8_t",
        "__SVUInt16_t",
        "__SVUInt32_t",
        "__SVUInt64_t",
        "__SVFloat16_t",
        "__SVFloat32_t",
        "__SVFloat64_t",
    ]

    for i in range(len(test_numerics)):
        var c_type = test_numerics[i]
        var pointer_type = c_type + "*"
        var double_pointer_type = pointer_type + "*"
        test_numerics.append(pointer_type)
        test_numerics.append(double_pointer_type)


    test_non_numerics:List[String] = [
        "bool",
        "void",
        "__SVBool_t",
        "__NSConstantString_tag",
    ]

    for i in range(len(test_non_numerics)):
        var c_type = test_non_numerics[i]
        var pointer_type = c_type + "*"
        var double_pointer_type = pointer_type + "*"
        test_non_numerics.append(pointer_type)
        test_non_numerics.append(double_pointer_type)

    test_structs:List[String] = [
        "mjSolverStat",
        "mjWarningStat",
        "mjTimerStat",
        "mjrRect",
        "mjvLight",
        "mjvGLCamera",
        "mjuiItem",
    ]

    for i in range(len(test_structs)):
        var c_type = test_structs[i]
        var pointer_type = c_type + "*"
        var double_pointer_type = pointer_type + "*"
        test_structs.append(pointer_type)
        test_structs.append(double_pointer_type)

    test_enums:List[String] = [
        "mjtCatBit",
        "mjtMouse",
        "mjtCamera",
    ]

    test_functions = [
        # === MuJoCo Function Types (TypedefDecl) ===
        "mjfCollision",
        "mjfGeneric", 
        "mjfConFilt",
        "mjfSensor",
        "mjfTime",
        "mjfAct",
        "mjfOpenResource",
        "mjfReadResource", 
        "mjfCloseResource",
        "mjfGetResourceDir",
        "mjfResourceModified",
        "mjfPluginLibraryLoadCallback",
        "mjfItemEnable",
        
        # === Raw Function Pointer Syntax (FieldDecl/VarDecl) ===
        # Plugin system function pointers
        "int (*)(const mjModel *, int)",           # nstate
        "int (*)(const mjModel *, int, int)",      # nsensordata  
        "int (*)(const mjModel *, mjData *, int)", # init
        "void (*)(mjData *, int)",                 # destroy
        "void (*)(mjData *, const mjModel *, const mjData *, int)", # copy
        "void (*)(const mjModel *, mjtNum *, void *, int)", # reset
        "void (*)(const mjModel *, mjData *, int, int)", # compute
        "void (*)(const mjModel *, mjData *, int)", # advance
        "void (*)(const mjModel *, mjData *, const mjvOption *, mjvScene *, int)", # visualize
        "void (*)(const mjModel *, mjData *, int)", # actuator_act_dot
        "mjtNum (*)(const mjtNum *, const mjData *, int)", # sdf_distance
        "void (*)(mjtNum *, const mjtNum *, const mjData *, int)", # sdf_gradient
        "mjtNum (*)(const mjtNum *, const mjtNum *)", # sdf_staticdistance
        "void (*)(mjtNum *, const char **, const char **)", # sdf_attribute
        "void (*)(mjtNum *, const mjtNum *)", # sdf_aabb
        
        # === Standard Library Function Pointers ===
        "void (*)(void)",                          # atexit, at_quick_exit
        "void (*)(int, void *)",                   # on_exit
        "int (*)(const void *, const void *)",     # qsort comparison
        "void *(*)(void *)",                       # thread function
        "void *(*)(size_t)",                       # malloc
        "void (*)(void *)",                        # free
        
        # === User Callback Functions ===
        "void (*)(const char *)",                  # mju_user_error, mju_user_warning
        "void (*)(const char *, int, int)",        # plugin library load callback
        "int (*)(int, void *)",                    # item enable predicate
        
        # === Complex Function Pointer Arrays ===
        "mjfCollision[9][9]",                      # collision function table
    ]

    test_typedefs = [
        "mjString",
        "mjIntVec",
        "mjFloatVec",
    ]

fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    test_type_mapping()
    print("All type mapping tests passed!") 