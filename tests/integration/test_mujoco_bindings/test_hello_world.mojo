# Native Mojo Modules
from tests.integration.test_mujoco_bindings.output.test_mujoco_bindings import LibMuJoCo, mjModel, mjVFS, mjData, mjtNum
from collections import InlineArray
from sys.ffi import c_char


fn to_string(data: UnsafePointer[mjData]) -> String:
    """Print mjData details for debugging."""
    var result:String = "mjData Debug Info (from mojo):\n"
    result += "  time: " + String(data[].time) + "\n"
    result += "  narena: " + String(data[].narena) + "\n"
    result += "  nbuffer: " + String(data[].nbuffer) + "\n"
    result += "  nplugin: " + String(data[].nplugin) + "\n"
    result += "  pstack: " + String(data[].pstack) + "\n"
    result += "  pbase: " + String(data[].pbase) + "\n"
    result += "  parena: " + String(data[].parena) + "\n"
    result += "  maxuse_stack: " + String(data[].maxuse_stack) + "\n"
    result += "  maxuse_threadstack: " + String(data[].maxuse_threadstack) + "\n"
    result += "  maxuse_arena: " + String(data[].maxuse_arena) + "\n"
    result += "  maxuse_con: " + String(data[].maxuse_con) + "\n"
    result += "  maxuse_efc: " + String(data[].maxuse_efc) + "\n"
    result += "  solver: " + String(data[].solver) + "\n"
    result += "  solver_niter: " + String(data[].solver_niter) + "\n"
    result += "  solver_nnz: " + String(data[].solver_nnz) + "\n"
    result += "  solver_fwdinv: " + String(data[].solver_fwdinv) + "\n"
    result += "  warning: " + String(data[].warning) + "\n"
    result += "  timer: " + String(data[].timer) + "\n"
    result += "  ncon: " + String(data[].ncon) + "\n"
    result += "  ne: " + String(data[].ne) + "\n"
    result += "  nf: " + String(data[].nf) + "\n"
    result += "  nl: " + String(data[].nl) + "\n"
    result += "  nefc: " + String(data[].nefc) + "\n"
    result += "  nJ: " + String(data[].nJ) + "\n"
    result += "  nA: " + String(data[].nA) + "\n"
    result += "  nisland: " + String(data[].nisland) + "\n"
    result += "  nidof: " + String(data[].nidof) + "\n"
    return result


fn main() raises:
    try:
        mujoco = LibMuJoCo()

        var s = "/home/c_binder_mojo_user/c_binder_mojo/mujoco/model/car/car.xml"
        var vfs = UnsafePointer[mjVFS]()
        var errors = UnsafePointer[Int8]()

        var model = mujoco.mj_loadXML(s.unsafe_cstr_ptr(), vfs, errors, 4)
        print('loaded the model: ' + String(model))
        
        # Debug: Print initial time and step info
        print("Initial qpos size: " + String(model[].nq))
        print("Initial qvel size: " + String(model[].nv))
        
        var data = mujoco.mj_makeData(model)
        print('loaded_data: ' + String(data))
        # data[].time = 1
        
        # Debug: Print initial time and step info
        print("Initial time: " + String(data[].time))
        
        # Check if we need to initialize the simulation
        if data[].time == 0.0:
            print("Time is 0, checking if we need to initialize...")
            print("Initial time: " + String(data[].time))

        print("narena: " + String(data[].narena))
        print("nbuffer: " + String(data[].nbuffer))
        print("nplugin: " + String(data[].nplugin))
        print("pstack: " + String(data[].pstack))
        print("pbase: " + String(data[].pbase))
        print("parena: " + String(data[].parena))
        print("maxuse_stack: " + String(data[].maxuse_stack))
        print("maxuse_arena: " + String(data[].maxuse_arena))
        print("maxuse_con: " + String(data[].maxuse_con))
        print("maxuse_efc: " + String(data[].maxuse_efc))
        # Some pointers in between
        print("ncon: " + String(data[].ncon))
        print("ne: " + String(data[].ne))
        print("nf: " + String(data[].nf))
        print("nl: " + String(data[].nl))
        print("nefc: " + String(data[].nefc))
        print("nJ: " + String(data[].nJ))
        print("nA: " + String(data[].nA))
        print("nisland: " + String(data[].nisland))
        print("nidof: " + String(data[].nidof))
        print("time: " + String(data[].time))

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