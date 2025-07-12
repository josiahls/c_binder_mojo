# Native Mojo Modules

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.typing import TypeMapper

fn test_type_mapping() raises:
    var logger = Logger.get_default_logger("test_type_mapping")
    logger.info("Testing type mapping")

    test_numerics:Dict[String, String] = {
        # Basic types
        "char": "Int8",
        "short": "Int16",
        "int": "Int32",
        "long": "Int64",
        "long long": "Int64",
        "float": "Float32",
        "double": "Float64",
        "long double": "Float64",
        # Unsigned types
        "unsigned char": "UInt8",
        "unsigned short": "UInt16",
        "unsigned int": "UInt32",
        "unsigned long": "UInt64",
        "unsigned long long": "UInt64",
        # Signed types
        "signed char": "Int8",
        "signed short": "Int16",
        "signed int": "Int32",
        "signed long": "Int64",
        "signed long long": "Int64",
        # Strictly defined types
        "int8_t": "Int8",
        "int16_t": "Int16",
        "int32_t": "Int32",
        "int64_t": "Int64",
        "__int128": "Int128",
        "uint8_t": "UInt8",
        "uint16_t": "UInt16",
        "uint32_t": "UInt32",
        "uint64_t": "UInt64",
        "float16_t": "Float16",
        "float32_t": "Float32",
        "float64_t": "Float64",
        # SIMD types
        "__SVInt8_t": "Int8",
        "__SVInt16_t": "Int16",
        "__SVInt32_t": "Int32",
        "__SVInt64_t": "Int64",
        "__SVInt128_t": "Int128",
        "__SVUInt8_t": "UInt8",
        "__SVUInt16_t": "UInt16",
        "__SVUInt32_t": "UInt32",
        "__SVUInt64_t": "UInt64",
        "__SVFloat16_t": "Float16",
        "__SVFloat32_t": "Float32",
        "__SVFloat64_t": "Float64",
    }

    for item in test_numerics.copy().items():
        var c_type = item.key
        var mojo_type = item.value
        var array_type = c_type + "[20]"
        var grid_array_type = c_type + "[20][20]"
        var pointer_type = c_type + "*"
        var double_pointer_type = pointer_type + "*"

        test_numerics[pointer_type] = 'UnsafePointer[' + mojo_type + ']'
        test_numerics[double_pointer_type] = 'UnsafePointer[UnsafePointer[' + mojo_type + ']]'
        test_numerics[array_type] = 'UnsafePointer[' + mojo_type + ']'
        test_numerics[grid_array_type] = 'UnsafePointer[' + mojo_type + ']'

    test_non_numerics:Dict[String, String] = {
        "bool": "Bool",
        "void": "NoneType",
        "__SVBool_t": "Bool",
        "__NSConstantString_tag": "StaticString",
    }

    for item in test_non_numerics.copy().items():
        var c_type = item.key
        var mojo_type = item.value
        var pointer_type = c_type + "*"
        var double_pointer_type = pointer_type + "*"
        test_non_numerics[pointer_type] = 'UnsafePointer[' + mojo_type + ']'
        if mojo_type == "NoneType":
            test_non_numerics[pointer_type] = 'OpaquePointer'
            test_non_numerics[double_pointer_type] = 'UnsafePointer[OpaquePointer]'
        else:
            test_non_numerics[double_pointer_type] = 'UnsafePointer[UnsafePointer[' + mojo_type + ']]'

    test_structs:Dict[String, String] = {
        "mjSolverStat": "mjSolverStat",
        "mjWarningStat": "mjWarningStat",
        "mjTimerStat": "mjTimerStat",
        "mjrRect": "mjrRect",
        "mjvLight": "mjvLight",
        "mjvGLCamera": "mjvGLCamera",
        "mjuiItem": "mjuiItem",
    }

    for item in test_structs.copy().items():
        var c_type = item.key
        var mojo_type = item.value
        var pointer_type = c_type + "*"
        var double_pointer_type = pointer_type + "*"
        var array_type = c_type + "[20]"
        var grid_array_type = c_type + "[20][20]"
        test_structs[pointer_type] = 'UnsafePointer[' + mojo_type + ']'
        test_structs[array_type] = 'UnsafePointer[' + mojo_type + ']'
        test_structs[grid_array_type] = 'UnsafePointer[' + mojo_type + ']'
        test_structs[double_pointer_type] = 'UnsafePointer[UnsafePointer[' + mojo_type + ']]'

    test_enums:Dict[String, String] = {
        "mjtCatBit": "mjtCatBit",
        "mjtMouse": "mjtMouse",
        "mjtCamera": "mjtCamera",
    }

    test_functions:Dict[String, String] = {
        # === MuJoCo Function Types (TypedefDecl) ===
        "mjfCollision": "mjfCollision",
        "mjfGeneric": "mjfGeneric", 
        "mjfConFilt": "mjfConFilt",
        "mjfSensor": "mjfSensor",
        "mjfTime": "mjfTime",
        "mjfAct": "mjfAct",
        "mjfOpenResource": "mjfOpenResource",
        "mjfReadResource": "mjfReadResource", 
        "mjfCloseResource": "mjfCloseResource",
        "mjfGetResourceDir": "mjfGetResourceDir",
        "mjfResourceModified": "mjfResourceModified",
        "mjfPluginLibraryLoadCallback": "mjfPluginLibraryLoadCallback",
        "mjfItemEnable": "mjfItemEnable",
        
        # === Raw Function Pointer Syntax (FieldDecl/VarDecl) ===
        # Plugin system function pointers
        "int (*)(const mjModel *, int)": "fn(read UnsafePointer[mjModel], Int32) -> Int32",           # nstate
        "int (*)(const mjModel *, int, int)": "fn(read UnsafePointer[mjModel], Int32, Int32) -> Int32",      # nsensordata  
        "int (*)(const mjModel *, mjData *, int)": "fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> Int32", # init
        "void (*)(mjData *, int)": "fn(UnsafePointer[mjData], Int32) -> NoneType",                 # destroy
        "void (*)(mjData *, const mjModel *, const mjData *, int)": "fn(UnsafePointer[mjData], read UnsafePointer[mjModel], read UnsafePointer[mjData], Int32) -> NoneType", # copy
        "void (*)(const mjModel *, mjtNum *, void *, int)": "fn(read UnsafePointer[mjModel], UnsafePointer[mjtNum], OpaquePointer, Int32) -> NoneType", # reset
        "void (*)(const mjModel *, mjData *, int, int)": "fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32, Int32) -> NoneType", # compute
        "void (*)(const mjModel *, mjData *, int)": "fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType", # advance
        "void (*)(const mjModel *, mjData *, const mjvOption *, mjvScene *, int)": "fn(read UnsafePointer[mjModel], UnsafePointer[mjData], read UnsafePointer[mjvOption], UnsafePointer[mjvScene], Int32) -> NoneType", # visualize
        "mjtNum (*)(const mjtNum *, const mjData *, int)": "fn(read UnsafePointer[mjtNum], read UnsafePointer[mjData], Int32) -> mjtNum", # sdf_distance
        "void (*)(mjtNum *, const mjtNum *, const mjData *, int)": "fn(UnsafePointer[mjtNum], read UnsafePointer[mjtNum], read UnsafePointer[mjData], Int32) -> NoneType", # sdf_gradient
        "mjtNum (*)(const mjtNum *, const mjtNum *)": "fn(read UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> mjtNum", # sdf_staticdistance
        "void (*)(mjtNum *, const char **, const char **)": "fn(UnsafePointer[mjtNum], read UnsafePointer[UnsafePointer[Int8]], read UnsafePointer[UnsafePointer[Int8]]) -> NoneType", # sdf_attribute
        "void (*)(mjtNum *, const mjtNum *)": "fn(UnsafePointer[mjtNum], read UnsafePointer[mjtNum]) -> NoneType", # sdf_aabb
        
        # === Standard Library Function Pointers ===
        "void (*)(void)": "fn() -> NoneType",                          # atexit, at_quick_exit
        "void (*)(int, void *)": "fn(Int32, OpaquePointer) -> NoneType",                   # on_exit
        "int (*)(const void *, const void *)": "fn(read OpaquePointer, read OpaquePointer) -> Int32",     # qsort comparison
        "void *(*)(void *)": "fn(OpaquePointer) -> OpaquePointer",                       # thread function
        "void *(*)(size_t)": "fn(size_t) -> OpaquePointer",                       # malloc
        "void (*)(void *)": "fn(OpaquePointer) -> NoneType",                        # free
        
        # === User Callback Functions ===
        "void (*)(const char *)": "fn(read UnsafePointer[Int8]) -> NoneType",                  # mju_user_error, mju_user_warning
        "void (*)(const char *, int, int)": "fn(read UnsafePointer[Int8], Int32, Int32) -> NoneType",        # plugin library load callback
        "int (*)(int, void *)": "fn(Int32, OpaquePointer) -> Int32",                    # item enable predicate
        
        # === Complex Function Pointer Arrays ===
        # "mjfCollision[9][9]": "fn (read UnsafePointer[mjfCollision], Int32, Int32) -> mjfCollision", 
        # Arrays are just goint to be pointers for now.
        "mjfCollision[9][9]": "UnsafePointer[mjfCollision]",                      # collision function table
    }

    test_typedefs:Dict[String, String] = {
        "mjString": "mjString",
        "mjIntVec": "mjIntVec",
        "mjFloatVec": "mjFloatVec",
    }

    for item in test_typedefs.copy().items():
        var c_type = item.key
        var mojo_type = item.value
        var pointer_type = c_type + "*"
        var array_type = c_type + "[20]"
        var grid_array_type = c_type + "[20][20]"
        test_typedefs[pointer_type] = 'UnsafePointer[' + mojo_type + ']'
        test_typedefs[array_type] = 'UnsafePointer[' + mojo_type + ']'
        test_typedefs[grid_array_type] = 'UnsafePointer[' + mojo_type + ']'

    for item in test_numerics.items():
        var mojo_type:String = TypeMapper.convert_c_type_to_mojo_type(item.key)
        if mojo_type != item.value:
            var msg = String("Failed conversion: Numeric: {0} -> Mojo: {1} expected: {2}").format(item.key, mojo_type, item.value)
            logger.info(msg)
    for item in test_non_numerics.items():
        var mojo_type:String = TypeMapper.convert_c_type_to_mojo_type(item.key)
        if mojo_type != item.value:
            var msg = String("Failed conversion: Non-Numeric: {0} -> Mojo: {1} expected: {2}").format(item.key, mojo_type, item.value)
            logger.info(msg)
    for item in test_structs.items():
        var mojo_type:String = TypeMapper.convert_c_type_to_mojo_type(item.key)
        if mojo_type != item.value:
            var msg = String("Failed conversion: Struct: {0} -> Mojo: {1} expected: {2}").format(item.key, mojo_type, item.value)
            logger.info(msg)
    for item in test_enums.items():
        var mojo_type:String = TypeMapper.convert_c_type_to_mojo_type(item.key)
        if mojo_type != item.value:
            var msg = String("Enum: {0} -> Mojo: {1} expected: {2}").format(item.key, mojo_type, item.value)
            logger.info(msg)
    for item in test_functions.items():
        var mojo_type:String = TypeMapper.convert_c_type_to_mojo_type(item.key)
        if mojo_type != item.value:
            var msg = String("Function: {0} -> Mojo: {1} expected: {2}").format(item.key, mojo_type, item.value)
            logger.info(msg)
    for item in test_typedefs.items():
        var mojo_type:String = TypeMapper.convert_c_type_to_mojo_type(item.key)
        if mojo_type != item.value:
            var msg = String("Typedef: {0} -> Mojo: {1} expected: {2}").format(item.key, mojo_type, item.value)
            logger.info(msg)

fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    test_type_mapping()
    print("All type mapping tests passed!") 