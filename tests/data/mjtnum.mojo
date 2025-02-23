RootNode(children=86) 
PlaceHolderNode(// Copyright 2021 DeepMind Technologies Limited ) // Copyright 2021 DeepMind Technologies Limited 
PlaceHolderNode(// ) // 
PlaceHolderNode(// Licensed under the Apache License ,  Version 2.0 (the "License") ;  ) // Licensed under the Apache License ,  Version 2.0 (the "License") ;  
PlaceHolderNode(// you may not use this file except in compliance with the License. ) // you may not use this file except in compliance with the License. 
PlaceHolderNode(// You may obtain a copy of the License at ) // You may obtain a copy of the License at 
PlaceHolderNode(// ) // 
PlaceHolderNode(//     http://www.apache.org/licenses/LICENSE-2.0 ) //     http://www.apache.org/licenses/LICENSE-2.0 
PlaceHolderNode(// ) // 
PlaceHolderNode(// Unless required by applicable law or agreed to in writing ,  software ) // Unless required by applicable law or agreed to in writing ,  software 
PlaceHolderNode(// distributed under the License is distributed on an "AS IS" BASIS ,  ) // distributed under the License is distributed on an "AS IS" BASIS ,  
PlaceHolderNode(// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. ) // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND ,  either express or implied. 
PlaceHolderNode(// See the License for the specific language governing permissions and ) // See the License for the specific language governing permissions and 
PlaceHolderNode(// limitations under the License. ) // limitations under the License. 
PlaceHolderNode( )  
PlaceHolderNode(#ifndef MUJOCO_INCLUDE_MJTNUM_H_ ) #ifndef MUJOCO_INCLUDE_MJTNUM_H_ 
PlaceHolderNode(#define MUJOCO_INCLUDE_MJTNUM_H_ 
 ) #define MUJOCO_INCLUDE_MJTNUM_H_ 
 
PlaceHolderNode(//---------------------------------- floating-point definition ------------------------------------- ) //---------------------------------- floating-point definition ------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(// floating point data type and minval ) // floating point data type and minval 
PlaceHolderNode(#ifndef mjUSESINGLE ) #ifndef mjUSESINGLE 
PlaceHolderNode(  )   
PlaceHolderNode(typedef <children> mjtNum ; ) typedef <children> mjtNum ; 
PlaceHolderNode(double ) double 
PlaceHolderNode(mjtNum ) mjtNum 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(#define mjMINVAL    1E-15       ) #define mjMINVAL    1E-15       
PlaceHolderNode(// minimum value in any denominator ) // minimum value in any denominator 
PlaceHolderNode(#else ) #else 
PlaceHolderNode(  )   
PlaceHolderNode(typedef <children> mjtNum ; ) typedef <children> mjtNum ; 
PlaceHolderNode(float ) float 
PlaceHolderNode(mjtNum ) mjtNum 
PlaceHolderNode( 
  )  
  
PlaceHolderNode(#define mjMINVAL    1E-15f ) #define mjMINVAL    1E-15f 
PlaceHolderNode(/* This does after the float is defined */ ) /* This does after the float is defined */ 
PlaceHolderNode(#endif ) #endif 
PlaceHolderNode( )  
PlaceHolderNode(/* silly comment */ ) /* silly comment */ 
PlaceHolderNode(/** another one??????? **/ ) /** another one??????? **/ 
PlaceHolderNode( )  
PlaceHolderNode(/**  
So  
many  
lines 
 
 
**/ ) /**  
So  
many  
lines 
 
 
**/ 
PlaceHolderNode( 
 )  
 
PlaceHolderNode(//-------------------------------------- byte definition ------------------------------------------- ) //-------------------------------------- byte definition ------------------------------------------- 
PlaceHolderNode( )  
PlaceHolderNode(typedef <children> mjtByte ; ) typedef <children> mjtByte ; 
PlaceHolderNode(unsigned char ) unsigned char 
PlaceHolderNode(mjtByte ) mjtByte 
PlaceHolderNode(    )     
PlaceHolderNode(// used for true/false ) // used for true/false 
PlaceHolderNode( 
 
 )  
 
 
PlaceHolderNode(#endif ) #endif 
PlaceHolderNode( )  
PlaceHolderNode(// MUJOCO_INCLUDE_MJTNUM_H_ ) // MUJOCO_INCLUDE_MJTNUM_H_ 
PlaceHolderNode( )  
