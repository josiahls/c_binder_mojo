# Native Mojo Modules
from tests.integration.test_mujoco_bindings.output.test_mujoco_bindings import LibMuJoCo, mjModel, mjVFS, mjData, mjtNum
from collections import InlineArray
from sys.ffi import c_char


fn to_string(data: UnsafePointer[mjData]) -> String:
    """Print mjData details for debugging."""
    var result:String = "mjData Debug Info (from mojo):\n"
    result += "  narena: " + String(data[].narena) + "\n"
    result += "  nbuffer: " + String(data[].nbuffer) + "\n"
    result += "  nplugin: " + String(data[].nplugin) + "\n"
    result += "  pstack: " + String(data[].pstack) + "\n"
    result += "  pbase: " + String(data[].pbase) + "\n"
    result += "  parena: " + String(data[].parena) + "\n"
    result += "  maxuse_stack: " + String(data[].maxuse_stack) + "\n"
    result += "  maxuse_threadstack: " + String(data[].maxuse_threadstack[0]) + "\n"
    result += "  maxuse_arena: " + String(data[].maxuse_arena) + "\n"
    result += "  maxuse_con: " + String(data[].maxuse_con) + "\n"
    result += "  maxuse_efc: " + String(data[].maxuse_efc) + "\n"
    # result += "  solver: " + String(data[].solver) + "\n"
    # result += "  solver_niter: " + String(data[].solver_niter) + "\n"
    # result += "  solver_nnz: " + String(data[].solver_nnz) + "\n"
    # result += "  solver_fwdinv: " + String(data[].solver_fwdinv) + "\n"
    # result += "  warning: " + String(data[].warning) + "\n"
    # result += "  timer: " + String(data[].timer) + "\n"
    result += "  ncon: " + String(data[].ncon) + "\n"
    result += "  ne: " + String(data[].ne) + "\n"
    result += "  nf: " + String(data[].nf) + "\n"
    result += "  nl: " + String(data[].nl) + "\n"
    result += "  nefc: " + String(data[].nefc) + "\n"
    result += "  nJ: " + String(data[].nJ) + "\n"
    result += "  nA: " + String(data[].nA) + "\n"
    result += "  nisland: " + String(data[].nisland) + "\n"
    result += "  nidof: " + String(data[].nidof) + "\n"
    result += "  time: " + String(data[].time) + "\n"
    return result


fn to_string_mjModel(model: UnsafePointer[mjModel]) -> String:
    var result:String = "mjModel Debug Info (from mojo):\n"
    result += "  nq: " + String(model[].nq) + "\n"
    result += "  nv: " + String(model[].nv) + "\n"
    result += "  nu: " + String(model[].nu) + "\n"
    # result += "  nbuffer: " + String(model[].nbuffer) + "\n"
    result += "  opt.timestep: " + String(model[].opt.timestep) + "\n"
    result += "  opt.apirate: " + String(model[].opt.apirate) + "\n"
    result += "  opt.impratio: " + String(model[].opt.impratio) + "\n"
    result += "  opt.tolerance: " + String(model[].opt.tolerance) + "\n"
    result += "  opt.noslip_tolerance: " + String(model[].opt.noslip_tolerance) + "\n"
    result += "  opt.ccd_tolerance: " + String(model[].opt.ccd_tolerance) + "\n"
    result += "  opt.gravity: " + String(model[].opt.gravity[0]) + "\n"
    result += "  buffer: " + String(model[].buffer) + "\n"
    result += "  qpos0: " + String(model[].qpos0) + "\n"
    return result


fn main() raises:
    try:
        mujoco = LibMuJoCo()

        var s = "/home/c_binder_mojo_user/c_binder_mojo/mujoco/model/car/car.xml"
        var vfs = UnsafePointer[mjVFS]()
        var errors = UnsafePointer[Int8]()
        print('Loading model...')
        var model = mujoco.mj_loadXML(s.unsafe_cstr_ptr(), vfs, errors, 4)
        print('loaded the model: ' + String(model))
        print(to_string_mjModel(model))
        
        # Debug: Print initial time and step info
        
        var data = mujoco.mj_makeData(model)
        print('loaded_data: ' + String(data))
        # data[].time = 1
        

        # # Check if we need to initialize the simulation
        # if data[].time == 0.0:
        #     print("Time is 0, checking if we need to initialize...")
        #     print("Initial time: " + String(data[].time))

        print("=== BEFORE STEPPING ===")
        print(to_string(data))


        counter = 0
        while data[].time < 10.0:
            print('stepping where time is: ' + String(data[].time))
            mujoco.mj_step(model, data)
            print('after step time is: ' + String(data[].time))
            counter += 1
            
            # Remove the early break condition to match C++ version
            if counter > 10 and data[].time < 0.001:
                print("WARNING: Time is still 0 after step!")
                print("Model timestep: " + String(model[].opt.timestep))
                print("Data timestep: " + String(data[].time))
                print("=== AFTER FIRST STEP ===")
                print(to_string(data))
                break # Exit to avoid infinite loop

        print("=== AFTER STEPPING ===")
        print(to_string(data))

        print("Test completed")
        mujoco.mj_deleteModel(model)
        mujoco.mj_deleteData(data)
    except e:
        print("Test failed: " + String(e)) 


fn main_no_comments() raises:
    try:
        mujoco = LibMuJoCo()

        var s = "/home/c_binder_mojo_user/c_binder_mojo/mujoco/model/car/car.xml"
        var vfs = UnsafePointer[mjVFS]()
        var errors = UnsafePointer[Int8]()
        var model = mujoco.mj_loadXML(s.unsafe_cstr_ptr(), vfs, errors, 4)

        var data = mujoco.mj_makeData(model)

        counter = 0
        while data[].time < 10.0:
            mujoco.mj_step(model, data)
            counter += 1

        mujoco.mj_deleteModel(model)
        mujoco.mj_deleteData(data)
    except e:
        print("Test failed: " + String(e)) 