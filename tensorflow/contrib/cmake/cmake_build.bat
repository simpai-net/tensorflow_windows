
set PATH=%PATH%;"D:\dev_programs\cmake-3.9.2-win64-x64\bin"

REM -Dtensorflow_ENABLE_GPU=ON ^
REM -DCUDNN_HOME="D:\dev_programs\cuda\tookit\8.0" ^

cmake .. -A x64 -DCMAKE_BUILD_TYPE=RelWithDebInfo ^
-DSWIG_EXECUTABLE=D:\dev_programs\swigwin-3.0.12\swig.exe ^
-DPYTHON_EXECUTABLE="D:\dev_programs\anaconda3\envs\tensorflow\python.exe" ^
-DPYTHON_LIBRARIES="D:\dev_programs\anaconda3\envs\tensorflow\libs\python35.lib" ^
-Dtensorflow_BUILD_SHARED_LIB=ON ^
-Dtensorflow_BUILD_ALL_KERNELS=ON ^
-Dtensorflow_ENABLE_GPU=OFF ^
-Dtensorflow_BUILD_CC_EXAMPLE=OFF ^
-Dtensorflow_ENABLE_GRPC_SUPPORT=OFF 

cmd.exe /k ""D:\dev_programs\vs2015\VC\vcvarsall.bat"" amd64
MSBuild /m /fl1 /verbosity:diag /p:Configuration=RelWithDebInfo ALL_BUILD.vcxproj