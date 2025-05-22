// Copyright 2021 DeepMind Technologies Limited
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef MUJOCO_MJMODEL_H_
#define MUJOCO_MJMODEL_H_

#include <stddef.h>
#include <stdint.h>


#include <mujoco/mjtnum.h>

// global constants
#define mjPI            3.14159265358979323846
#define mjMAXVAL        1E+10     // maximum value in qpos, qvel, qacc
#define mjMINMU         1E-5      // minimum friction coefficient
#define mjMINIMP        0.0001    // minimum constraint impedance
#define mjMAXIMP        0.9999    // maximum constraint impedance
#define mjMAXCONPAIR    50        // maximum number of contacts per geom pair
#define mjMAXTREEDEPTH  50        // maximum bounding volume hierarchy depth

// ... (file truncated for brevity, copy the full file in actual implementation) 