#include <mujoco/mujoco.h>
#include <iostream>
#include <string>
#include <sstream>

std::string to_string(mjData* d) {
    std::stringstream ss;
    ss << "mjData Debug Info (from cpp):" << std::endl;
    ss << "  time: " << d->time << std::endl;
    ss << "  narena: " << d->narena << std::endl;
    ss << "  nbuffer: " << d->nbuffer << std::endl;
    ss << "  nplugin: " << d->nplugin << std::endl;
    ss << "  pstack: " << d->pstack << std::endl;
    ss << "  pbase: " << d->pbase << std::endl;
    ss << "  parena: " << d->parena << std::endl;
    ss << "  maxuse_stack: " << d->maxuse_stack << std::endl;
    ss << "  maxuse_threadstack: " << d->maxuse_threadstack << std::endl;
    ss << "  maxuse_arena: " << d->maxuse_arena << std::endl;
    ss << "  maxuse_con: " << d->maxuse_con << std::endl;
    ss << "  maxuse_efc: " << d->maxuse_efc << std::endl;
    ss << "  solver: " << d->solver << std::endl;
    ss << "  solver_niter: " << d->solver_niter << std::endl;
    ss << "  solver_nnz: " << d->solver_nnz << std::endl;
    ss << "  solver_fwdinv: " << d->solver_fwdinv << std::endl;
    ss << "  warning: " << d->warning << std::endl;
    ss << "  timer: " << d->timer << std::endl;
    ss << "  ncon: " << d->ncon << std::endl;
    ss << "  ne: " << d->ne << std::endl;
    ss << "  nf: " << d->nf << std::endl;
    ss << "  nl: " << d->nl << std::endl;
    ss << "  nefc: " << d->nefc << std::endl;
    ss << "  nJ: " << d->nJ << std::endl;
    ss << "  nA: " << d->nA << std::endl;
    ss << "  nisland: " << d->nisland << std::endl;
    ss << "  nidof: " << d->nidof << std::endl;
    return ss.str();
}

void do_something_with_the_model(mjModel* m) {
    std::cout << "hello" << std::endl;
    std::cout << "String of nq: " << m->nq << std::endl;
    std::cout << "String of nlight: " << m->nlight << std::endl;
}

int main() {
    try {
        // Load MuJoCo model
        std::string model_path = "/home/c_binder_mojo_user/c_binder_mojo/mujoco/model/car/car.xml";
        char error[1000];
        
        mjModel* model = mj_loadXML(model_path.c_str(), nullptr, error, 1000);
        if (!model) {
            std::cerr << "Failed to load model: " << error << std::endl;
            return 1;
        }
        
        std::cout << "loaded the model" << std::endl;
        do_something_with_the_model(model);
        std::cout << "did something with the model" << std::endl;
        
        mjData* data = mj_makeData(model);
        std::cout << "=== BEFORE STEPPING ===" << std::endl;
        std::cout << to_string(data);
        if (!data) {
            std::cerr << "Failed to create data" << std::endl;
            mj_deleteModel(model);
            return 1;
        }
    
        
        // Debug: Print initial time and step info
        std::cout << "Initial time: " << data->time << std::endl;
        std::cout << "Initial qpos size: " << model->nq << std::endl;
        std::cout << "Initial qvel size: " << model->nv << std::endl;
        
        // Check if we need to initialize the simulation
        if (data->time == 0.0) {
            std::cout << "Time is 0, checking if we need to initialize..." << std::endl;
            // Try calling mj_forward to initialize the simulation
            // mj_forward(model, data);
            std::cout << "After mj_forward, time: " << data->time << std::endl;
        }
        

        
        while (data->time < 10.0) {
            // std::cout << "stepping lolololo where time is: " << data->time << std::endl;
            mj_step(model, data);
            // std::cout << "after step time is: " << data->time << std::endl;
            
            // Add a small delay to see what's happening
            if (data->time < 0.001) {
                std::cout << "WARNING: Time is still 0 after step!" << std::endl;
                std::cout << "Model timestep: " << model->opt.timestep << std::endl;
                std::cout << "Data timestep: " << data->time << std::endl;
                std::cout << "=== AFTER FIRST STEP ===" << std::endl;
                std::cout << to_string(data);
                break; // Exit to avoid infinite loop
            }
        }
        std::cout << "=== AFTER STEPPING ===" << std::endl;
        std::cout << to_string(data);
        
        std::cout << "Test succeeded" << std::endl;
        mj_deleteData(data);
        mj_deleteModel(model);
        
    } catch (const std::exception& e) {
        std::cerr << "Test failed: " << e.what() << std::endl;
        return 1;
    }
    
    return 0;
}
