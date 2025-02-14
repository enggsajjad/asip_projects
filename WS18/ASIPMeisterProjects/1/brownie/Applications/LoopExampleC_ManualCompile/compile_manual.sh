#!/bin/bash

RM='/bin/rm'
AWK='/bin/awk'
CP='/bin/cp'
PWD='/bin/pwd'
ECHO='/bin/echo'

export PROJECT_NAME=brownie


export CPU_NAME=browstd32
export DLXSIM_DIR=${HOME}/WS18/dlxsimbr
export ISE_NAME=ISE_Framework
export ASIPMEISTER_PROJECTS_DIR=${HOME}/WS18/ASIPMeisterProjects/1
export PROJECT_DIR=${ASIPMEISTER_PROJECTS_DIR}/${PROJECT_NAME}
export MEISTER_DIR=${PROJECT_DIR}/meister
export MODELSIM_DIR=${PROJECT_DIR}/ModelSim
export ISE_DIR=${PROJECT_DIR}/${ISE_NAME}
export MKIMG_DIR=${HOME}/WS18/mkimg
export COMPILER_NAME=brownie32-elf-gcc
export ASSEMBLER_NAME=brownie32-elf-as
export LINKER_NAME=brownie32-elf-ld
export COMPILER_DIR=${MEISTER_DIR}/${CPU_NAME}.swgen/bin
export PATH=${MEISTER_DIR}/${CPU_NAME}.swgen/bin:$PATH


#Compile C
#${COMPILER_DIR}/brownie32-elf-gcc -S -O0 app.c -o app.s || {
#      echo
#      echo "ERROR in Compilation"
#      echo
#      exit 1
#  }

#Compile C++
${COMPILER_DIR}/brownie32-elf-g++ -S -O0 app.cpp -o app.s || {
      echo
      echo "ERROR in Compilation"
      echo
      exit 1
  }

${COMPILER_DIR}/brownie32-elf-as -o startup.o ${MKIMG_DIR}/startup.s;
${COMPILER_DIR}/brownie32-elf-as -o handler.o ${MKIMG_DIR}/handler.s;
${COMPILER_DIR}/brownie32-elf-as -o app.o app.s;


${COMPILER_DIR}/brownie32-elf-ld -o app -T ${MKIMG_DIR}/browtb.x app.o startup.o handler.o  || {
      echo
      echo "ERROR in linking"
      echo
      exit 1
  }

#${COMPILER_DIR}/brownie32-elf-objdump -s app

${MKIMG_DIR}/gccout2img app || {
      echo
      echo "ERROR in Generating TestData.*"
      echo
      exit 1
  }


${CP} -r TestData.* ${MODELSIM_DIR}/.

${RM} -f ./BUILD_FPGA/*.bit
${RM} -f ./BUILD_FPGA/*.mem

${MKIMG_DIR}/image2mem4.pl TestData.IM TestData.DM > loop_c.mem
${MKIMG_DIR}/image2coe.pl TestData.IM TestData.DM
${MKIMG_DIR}/image2mif.pl IM.coe DM.coe

${CP} -r *.mif *.coe *.DM ${ISE_DIR}/.

${CP} -r loop_c.mem ./BUILD_FPGA/.

