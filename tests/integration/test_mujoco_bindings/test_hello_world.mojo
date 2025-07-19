from tests.integration.test_mujoco_bindings.output.test_mujoco_bindings import LibMuJoCo, mjModel, mjVFS, mjData, mjtNum
from firehose.logging import Logger, set_global_logger_settings
from collections import InlineArray
from sys.ffi import c_char



fn do_something_with_the_model(m: UnsafePointer[mjModel]):
    print('hello')
    _ = m[].nq
    print('String of nq: ' + String( m[].nq))
    print('String: of nlight: ' + String(m[].nlight))


fn do_something_with_the_data(d: UnsafePointer[mjData]):
    print('loading data')
    print('nareana: ' + String(d[].narena))
    print('time: ' + String(d[].time))
    print('try to access a sub pointer...')
    # var energy_pointer = d[].energy
    # _ = energy_pointer
    # print('len bytes: energy_pointer: ' + String(energy_pointer))
    # var energy = energy_pointer.bitcast[InlineArray[mjtNum, 2]]()  
    # print('energy 0: ' + String(energy[][0]))
    # print('energy 1: ' + String(energy[][1]))
    # energy.bitcast(energy_pointer)
    # _  = energy
    # print('energy: ' + String([0]))



fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        mujoco = LibMuJoCo()

        var s = "/home/c_binder_mojo_user/c_binder_mojo/mujoco/model/car/car.xml"
        var vfs = UnsafePointer[mjVFS]()
        var errors = UnsafePointer[Int8]()

        var model = mujoco.mj_loadXML(s.unsafe_cstr_ptr(), vfs, errors, 4)
        print('loaded the model')
        do_something_with_the_model(model)
        print('did something with the model')
        var data = mujoco.mj_makeData(model)
        print('loaded_data')
        do_something_with_the_data(data)

        while data[].time < 10:
            print('stepping lolololo where time is: ' + String(data[].time))
            mujoco.mj_step(model, data)

        print("Test succeeded")
        mujoco.mj_deleteModel(model)
        mujoco.mj_deleteData(data)
    except e:
        print("Test failed: " + String(e)) 