
# Copyright 2021 DeepMind Technologies Limited 
# 
# Licensed under the Apache License, Version 2.0 (the "License") ;  
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at 
# 
#     http://www.apache.org/licenses/LICENSE-2.0 
# 
# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, 
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
# See the License for the specific language governing permissions and 
# limitations under the License. 
# PlaceHolder (not a comment): BlankSpace(line_num=14)
# Skip() unsupported in mojo: #ifndef MUJOCO_INCLUDE_MJTNUM_H_ 
# PlaceHolder (not a comment): Define(line_num=16) #define MUJOCO_INCLUDE_MJTNUM_H_ 
	# PlaceHolder (not a comment): BlankSpace(line_num=17)
	#---------------------------------- floating-point definition ------------------------------------- 
	# PlaceHolder (not a comment): BlankSpace(line_num=19)
	# floating point data type and minval 
	# Skip() unsupported in mojo: #ifndef mjUSESINGLE 
	# PlaceHolder (not a comment): BlankSpace(line_num=22)
		# PlaceHolder (not a comment): TypeDef(line_num=22) typedef double mjtNum ; 
		# PlaceHolder (not a comment): BlankSpace(line_num=22)
		# PlaceHolder (not a comment): BlankSpace(line_num=23)
		# PlaceHolder (not a comment): Define(line_num=23) #define mjMINVAL    1E-15       
		# minimum value in any denominator 
# PlaceHolder (not a comment): MacroElse(line_num=24) #else 
	# PlaceHolder (not a comment): BlankSpace(line_num=25)
	# PlaceHolder (not a comment): TypeDef(line_num=25) typedef float mjtNum ; 
	# PlaceHolder (not a comment): BlankSpace(line_num=25)
	# PlaceHolder (not a comment): BlankSpace(line_num=26)
	# PlaceHolder (not a comment): Define(line_num=26) #define mjMINVAL    1E-15f 
# PlaceHolder (not a comment): EndIf(line_num=27) #endif
# PlaceHolder (not a comment): BlankSpace(line_num=28)
# PlaceHolder (not a comment): MultiLineComment(comment_type=COMMENT_MULTI_LINE_INLINE, line_num=29,) \ 
	/* silly comment */ 
# PlaceHolder (not a comment): MultiLineComment(comment_type=COMMENT_MULTI_LINE, line_num=29,) \ 
	/** another one??????? **/ 
# PlaceHolder (not a comment): BlankSpace(line_num=30)
# PlaceHolder (not a comment): MultiLineComment(comment_type=COMMENT_MULTI_LINE, line_num=31,32,33,34,35,36,37,) \ 
	/**  
	So  
	many  
	lines 
	 
	 
	**/ 
# PlaceHolder (not a comment): BlankSpace(line_num=38)
# PlaceHolder (not a comment): BlankSpace(line_num=39)
#-------------------------------------- byte definition ------------------------------------------- 
# PlaceHolder (not a comment): BlankSpace(line_num=41)
# PlaceHolder (not a comment): TypeDef(line_num=42) typedef unsigned char mjtByte ; 
# PlaceHolder (not a comment): BlankSpace(line_num=42)
# used for true/false 
# PlaceHolder (not a comment): BlankSpace(line_num=43)
# PlaceHolder (not a comment): BlankSpace(line_num=44)
# PlaceHolder (not a comment): BlankSpace(line_num=45)
# PlaceHolder (not a comment): EndIf(line_num=46) #endif
# PlaceHolder (not a comment): BlankSpace(line_num=46)
# MUJOCO_INCLUDE_MJTNUM_H_ 
# PlaceHolder (not a comment): BlankSpace(line_num=47)