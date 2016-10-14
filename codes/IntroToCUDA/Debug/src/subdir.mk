################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../src/cuMatlab.cu 

CU_DEPS += \
./src/cuMatlab.d 

OBJS += \
./src/cuMatlab.o 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I../../common/inc -I/opt/intel/mkl/include -G -g -O0 -optf /home/pbrubeck/ParallelUniverse/cuMatlab/options -ccbin /usr/bin/g++-4.9 -std=c++11 -gencode arch=compute_52,code=sm_52  -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I../../common/inc -I/opt/intel/mkl/include -G -g -O0 -optf /home/pbrubeck/ParallelUniverse/cuMatlab/options -ccbin /usr/bin/g++-4.9 -std=c++11 --compile --relocatable-device-code=false -gencode arch=compute_52,code=compute_52 -gencode arch=compute_52,code=sm_52  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


