#include <mujoco/mujoco.h>
#include <iostream>
#include <string>
#include <sstream>

std::string to_string_mjModel(mjModel* m) {
    std::stringstream ss;
    ss << "mjModel Debug Info (from cpp):" << std::endl;
    ss << "  nq: " << m->nq << std::endl;
    ss << "  nv: " << m->nv << std::endl;
    ss << "  nu: " << m->nu << std::endl;
    ss << "  na: " << m->na << std::endl;
    ss << "  nbody: " << m->nbody << std::endl;
    ss << "  nbvh: " << m->nbvh << std::endl;
    ss << "  nbvhstatic: " << m->nbvhstatic << std::endl;
    ss << "  nbvhdynamic: " << m->nbvhdynamic << std::endl;
    ss << "  noct: " << m->noct << std::endl;
    ss << "  njnt: " << m->njnt << std::endl;
    ss << "  ngeom: " << m->ngeom << std::endl;
    ss << "  nsite: " << m->nsite << std::endl;
    ss << "  ncam: " << m->ncam << std::endl;
    ss << "  nlight: " << m->nlight << std::endl;
    ss << "  nflex: " << m->nflex << std::endl;
    ss << "  nflexnode: " << m->nflexnode << std::endl;
    ss << "  nflexvert: " << m->nflexvert << std::endl;
    ss << "  nflexedge: " << m->nflexedge << std::endl;
    ss << "  nflexelem: " << m->nflexelem << std::endl;
    ss << "  nflexelemdata: " << m->nflexelemdata << std::endl;
    ss << "  nflexelemedge: " << m->nflexelemedge << std::endl;
    ss << "  nflexshelldata: " << m->nflexshelldata << std::endl;
    ss << "  nflexevpair: " << m->nflexevpair << std::endl;
    ss << "  nflextexcoord: " << m->nflextexcoord << std::endl;
    ss << "  nmesh: " << m->nmesh << std::endl;
    ss << "  nmeshvert: " << m->nmeshvert << std::endl;
    ss << "  nmeshnormal: " << m->nmeshnormal << std::endl;
    ss << "  nmeshtexcoord: " << m->nmeshtexcoord << std::endl;
    ss << "  nmeshface: " << m->nmeshface << std::endl;
    ss << "  nmeshgraph: " << m->nmeshgraph << std::endl;
    ss << "  nmeshpoly: " << m->nmeshpoly << std::endl;
    ss << "  nmeshpolyvert: " << m->nmeshpolyvert << std::endl;
    ss << "  nmeshpolymap: " << m->nmeshpolymap << std::endl;
    ss << "  nskin: " << m->nskin << std::endl;
    ss << "  nskinvert: " << m->nskinvert << std::endl;
    ss << "  nskintexvert: " << m->nskintexvert << std::endl;
    ss << "  nskinface: " << m->nskinface << std::endl;
    ss << "  nskinbone: " << m->nskinbone << std::endl;
    ss << "  nskinbonevert: " << m->nskinbonevert << std::endl;
    ss << "  nhfield: " << m->nhfield << std::endl;
    ss << "  nhfielddata: " << m->nhfielddata << std::endl;
    ss << "  ntex: " << m->ntex << std::endl;
    ss << "  ntexdata: " << m->ntexdata << std::endl;
    ss << "  nmat: " << m->nmat << std::endl;
    ss << "  npair: " << m->npair << std::endl;
    ss << "  nexclude: " << m->nexclude << std::endl;
    ss << "  neq: " << m->neq << std::endl;
    ss << "  ntendon: " << m->ntendon << std::endl;
    ss << "  nwrap: " << m->nwrap << std::endl;
    ss << "  nsensor: " << m->nsensor << std::endl;
    ss << "  nnumeric: " << m->nnumeric << std::endl;
    ss << "  nnumericdata: " << m->nnumericdata << std::endl;
    ss << "  ntext: " << m->ntext << std::endl;
    ss << "  ntextdata: " << m->ntextdata << std::endl;
    ss << "  ntuple: " << m->ntuple << std::endl;
    ss << "  ntupledata: " << m->ntupledata << std::endl;
    ss << "  nkey: " << m->nkey << std::endl;
    ss << "  nmocap: " << m->nmocap << std::endl;
    ss << "  nplugin: " << m->nplugin << std::endl;
    ss << "  npluginattr: " << m->npluginattr << std::endl;
    ss << "  nuser_body: " << m->nuser_body << std::endl;
    ss << "  nuser_jnt: " << m->nuser_jnt << std::endl;
    ss << "  nuser_geom: " << m->nuser_geom << std::endl;
    ss << "  nuser_site: " << m->nuser_site << std::endl;
    ss << "  nuser_cam: " << m->nuser_cam << std::endl;
    ss << "  nuser_tendon: " << m->nuser_tendon << std::endl;
    ss << "  nuser_actuator: " << m->nuser_actuator << std::endl;
    ss << "  nuser_sensor: " << m->nuser_sensor << std::endl;
    ss << "  nnames: " << m->nnames << std::endl;
    ss << "  npaths: " << m->npaths << std::endl;
    
    ss << "  nnames_map: " << m->nnames_map << std::endl;
    ss << "  nM: " << m->nM << std::endl;
    ss << "  nB: " << m->nB << std::endl;
    ss << "  nC: " << m->nC << std::endl;
    ss << "  nD: " << m->nD << std::endl;
    ss << "  nJmom: " << m->nJmom << std::endl;
    ss << "  ntree: " << m->ntree << std::endl;
    ss << "  ngravcomp: " << m->ngravcomp << std::endl;
    ss << "  nemax: " << m->nemax << std::endl;
    ss << "  njmax: " << m->njmax << std::endl;
    ss << "  nconmax: " << m->nconmax << std::endl;
    ss << "  nuserdata: " << m->nuserdata << std::endl;
    ss << "  nsensordata: " << m->nsensordata << std::endl;
    ss << "  npluginstate: " << m->npluginstate << std::endl;
    ss << "  narena: " << m->narena << std::endl;
    ss << "  nbuffer: " << m->nbuffer << std::endl;

    ss << "\t\topt.timestep: " << m->opt.timestep << std::endl;
    ss << "\t\topt.apirate: " << m->opt.apirate << std::endl;
    ss << "\t\topt.impratio: " << m->opt.impratio << std::endl;
    ss << "\t\topt.tolerance: " << m->opt.tolerance << std::endl;
    ss << "\t\topt.noslip_tolerance: " << m->opt.noslip_tolerance << std::endl;
    ss << "\t\topt.ccd_tolerance: " << m->opt.ccd_tolerance << std::endl;
    ss << "\t\topt.gravity: " << m->opt.gravity << std::endl;
    ss << "\t\topt.wind: " << m->opt.wind << std::endl;
    ss << "\t\topt.magnetic: " << m->opt.magnetic << std::endl;

    ss << "  buffer: " << m->buffer << std::endl;
    ss << "  qpos0: " << m->qpos0 << std::endl;

    return ss.str();
}

std::string to_string_mjData(mjData* d) {
    std::stringstream ss;
    ss << "mjData Debug Info (from cpp):" << std::endl;
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
    ss << "  solver (ptr): " << d->solver << std::endl;
    ss << "  solver_niter (ptr): " << d->solver_niter << std::endl;
    ss << "  solver_nnz (ptr): " << d->solver_nnz << std::endl;
    ss << "  solver_fwdinv (ptr): " << d->solver_fwdinv << std::endl;
    ss << "  warning (ptr): " << d->warning << std::endl;
    ss << "  timer (ptr): " << d->timer << std::endl;
    ss << "  ncon: " << d->ncon << std::endl;
    ss << "  ne: " << d->ne << std::endl;
    ss << "  nf: " << d->nf << std::endl;
    ss << "  nl: " << d->nl << std::endl;
    ss << "  nefc: " << d->nefc << std::endl;
    ss << "  nJ: " << d->nJ << std::endl;
    ss << "  nA: " << d->nA << std::endl;
    ss << "  nisland: " << d->nisland << std::endl;
    ss << "  nidof: " << d->nidof << std::endl;

    ss << "  time: " << d->time << std::endl;
    ss << "  energy: " << d->energy << std::endl;

    ss << "  buffer: " << d->buffer << std::endl;
    ss << "  arena: " << d->arena << std::endl;
    
    // Print some important array pointers
    ss << "  qpos (ptr): " << d->qpos << std::endl;
    ss << "  qvel (ptr): " << d->qvel << std::endl;
    ss << "  act (ptr): " << d->act << std::endl;
    ss << "  qacc_warmstart (ptr): " << d->qacc_warmstart << std::endl;
    ss << "  plugin_state (ptr): " << d->plugin_state << std::endl;

    // Print control-related arrays
    ss << "  ctrl (ptr): " << d->ctrl << std::endl;
    ss << "  qfrc_applied (ptr): " << d->qfrc_applied << std::endl;
    ss << "  xfrc_applied (ptr): " << d->xfrc_applied << std::endl;
    ss << "  eq_active (ptr): " << d->eq_active << std::endl;

    // Print mocap data arrays
    ss << "  mocap_pos (ptr): " << d->mocap_pos << std::endl;
    ss << "  mocap_quat (ptr): " << d->mocap_quat << std::endl;

    // Print dynamics arrays
    ss << "  qacc (ptr): " << d->qacc << std::endl;
    ss << "  act_dot (ptr): " << d->act_dot << std::endl;

    // Print user data and sensor arrays
    ss << "  userdata (ptr): " << d->userdata << std::endl;
    ss << "  sensordata (ptr): " << d->sensordata << std::endl;

    // Print plugin arrays
    ss << "  plugin (ptr): " << d->plugin << std::endl;
    ss << "  plugin_data (ptr): " << d->plugin_data << std::endl;

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
        std::cout << "=== MODEL DETAILS ===" << std::endl;
        std::cout << to_string_mjModel(model);
        
        do_something_with_the_model(model);
        std::cout << "did something with the model" << std::endl;
        
        mjData* data = mj_makeData(model);
        std::cout << "=== BEFORE STEPPING ===" << std::endl;
        std::cout << to_string_mjData(data);
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
                std::cout << to_string_mjData(data);
                break; // Exit to avoid infinite loop
            }
        }
        std::cout << "=== AFTER STEPPING ===" << std::endl;
        std::cout << to_string_mjData(data);
        
        std::cout << "Test succeeded" << std::endl;
        mj_deleteData(data);
        mj_deleteModel(model);
        
    } catch (const std::exception& e) {
        std::cerr << "Test failed: " << e.what() << std::endl;
        return 1;
    }
    
    return 0;
}
