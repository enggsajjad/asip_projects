#!/bin/bash

RM='/bin/rm'
LS='/bin/ls'
MKDIR='/bin/mkdir'
MV='/bin/mv'
CAT='/bin/cat'
ECHO='/bin/echo'
CP='/bin/cp'
SCP='/usr/bin/scp'
DOS2UNIX='/usr/bin/dos2unix'
SED='/bin/sed'
AWK='/bin/awk'
GAWK='/bin/gawk'
PWD='/bin/pwd'
GREP='/bin/grep -v'

  $ECHO Starting Assemble.sh
  ######################################################################
  #
  # Syntax:  assemble.sh
  #
  ######################################################################


  ######################################################################
  #
  # Test, whether the needed environments have a value.
  #
  test "_${MKIMG_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MKIMG_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  test "_${STACK_START}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE STACK_START SETTING IS EMPTY!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }
  test "_${COMPILER_TEMP_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE COMPILER_TEMP_DIR SETTING IS EMPTY!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the needed environments have a realistic (!) value.
  #
  test -d ${MKIMG_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MKIMG_DIR \"${MKIMG_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
  test -d ${COMPILER_TEMP_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE COMPILER_TEMP_DIR \"${COMPILER_TEMP_DIR}\" DOES NOT EXIST!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }


  ######################################################################
  #
  # Delete all OLD Assembly Files, i.e. those files that have no corresponding .c or .s file in the application directory
  #
  if [ $FOR_S_FILES -eq 1 ]; then
  cd ${COMPILER_TEMP_DIR}

  ${RM} ${APPLICATION_NAME}.* 2>/dev/null
  for i in *.asm
  do
      if [ ! -r ../${i%.asm}.c ] && [ ! -r ../${i%.asm}.s ]
      then
	  echo "Deleting DEPRECATED FILES: '${COMPILER_TEMP_DIR}/${i%.asm}.*'."
	  rm ${i%.asm}.* 2>/dev/null
      fi
  done
  cd ..
  fi


  ######################################################################
  #
  # Combine all Assembly files to one file.
  #
  if [ $FOR_S_FILES -eq 1 ]; then
  for i in ${COMPILER_TEMP_DIR}/*.asm
  do
    ${CAT} ${i} >> ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s 
  done
  fi  
  echo "STACK_START:			${STACK_START}"


  ######################################################################
  #
  # Add startup code and exit code to assembly code.
  #
  ${SED} s/REPLACE/${STACK_START}/ ${MKIMG_DIR}/startup_dlx.s > ${COMPILER_TEMP_DIR}/startup_dlx.s
  export COMPILER_TEMP_DIR # this is needed in "add_start_end.awk" to use the modified "startup_dlx.s" in compiler temp.
  ${AWK} -f ${MKIMG_DIR}/add_start_end.awk < ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"awk\" RETURNED AN ERROR !!"
      echo
      exit 1
  }


  ######################################################################
  #
  # Replace "GPR" by "r".
  #
  ${SED} 's/GPR/r/g' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s3


  ######################################################################
  #
  # Create simulation file for dlxsim.
  #
  ${MKIMG_DIR}/createDLXsim.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s3 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.dlxsim || {
	echo
	echo ERROR: ABORTING \"assemble.sh\", BECAUSE \"createDLXsim.sh\" RETURNED AN ERROR !!
	echo
	exit 1
  }



  $ECHO   "Testing Variables"
  $ECHO   $FOR_S_FILES
  if [ $FOR_S_FILES -eq 1 ]; then
  ######################################################################
  #
  # If only the dlxsim file is required, we do not need to perform the following steps
  #
#  if [ ${FULL_ASSEMBLE} -ne 1 ]; then
#	exit 0
#  fi

  echo "Testing Assemble 1"
  ######################################################################
  #
  # Test, whether the needed environments have a value.
  #
  test "_${PROJECT_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE PROJECT_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }

  if [ ${FULL_ASSEMBLE} -eq 1 ]; then
  test "_${MEISTER_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MEISTER_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  fi

  test "_${MODELSIM_DIR}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MODELSIM_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  test "_${CPU_NAME}" = "_" && {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE CPU_NAME SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the needed environments have a realistic (!) value.
  #
  test -d ${PROJECT_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE PROJECT_DIR \"${PROJECT_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
#  test -r ${PROJECT_DIR}/AssemblerTypes.inc || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE DESCRIPTION FILE \"${PROJECT_DIR}/AssemblerTypes.inc\" IS NOT READABLE!"
#      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
#      echo
#      exit 1
#  }
#  test -r ${PROJECT_DIR}/AssemblerInstructions.inc || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE DESCRIPTION FILE \"${PROJECT_DIR}/AssemblerInstructions.inc\" IS NOT READABLE!"
#      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
#      echo
#      exit 1
#  }
  test -d ${MEISTER_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MEISTER_DIR \"${MEISTER_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
  test -r ${MEISTER_DIR}/${CPU_NAME}".des" || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE DESCRIPTION FILE \"${MEISTER_DIR}/${CPU_NAME}.des\" IS NOT READABLE!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG. OR THE ASIPMEISTER-FILES IN THE MEISTER DIRECTORY DO NOT EXIST."
      echo
      exit 1
  }
  test -d ${MODELSIM_DIR} || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE MODELSIM_DIR \"${MODELSIM_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
   echo "Testing Assemble 2"
  ######################################################################*
  # Replace "R" by "%GPR".
  ${SED} -e 's/\bR/%GPR/g;s/(R/(%GPR/g' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sa
  ######################################################################*
  echo "Testing Assemble 3"
  ######################################################################*
  # Add Startup code for Modelsim,

  ${SED} s/REPLACE/${STACK_START}/ ${MKIMG_DIR}/startup_vsim.s > ${COMPILER_TEMP_DIR}/startup_vsim.s
#  ${SED} -e '/.section\t.text/{' -e 'r ${COMPILER_TEMP_DIR}/startup_vsim.s' -e  'd' -e '}' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sa > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sb
#   ${AWK} 'function readfile (file) { getline var < file ; return var } BEGIN { RS="^$" }; gsub(/.section\t.text/,readfile("${COMPILER_TEMP_DIR}/startup_vsim.s"))' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sa > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sb

  ${SED} '/.section\t.text/,/Word/ {/.section\t.text/ i \
	.addr_space	32	; address space is 2^32 \
	.addressing	Byte	; byte addressing          (default) \
	.bits_per_byte	8	; 1 byte consists of 8 bit (default) \
	.endian		Big	; Big endian (default) \
	.section	.text \
	.org 0x00000000 
  d}' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sa > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sb

  # Add Startup code for GCC compiling
  ${SED} s/REPLACE/${STACK_START}/ ${MKIMG_DIR}/browtb.x > ${COMPILER_TEMP_DIR}/browtb.x
  ${CP} ${MKIMG_DIR}/startup.s ${COMPILER_TEMP_DIR}/startup.s
  ${CP} ${MKIMG_DIR}/handler.s ${COMPILER_TEMP_DIR}/handler.s

  ######################################################################*
  echo "Testing Assemble 4"
  ######################################################################*
  # Add END code for Modelsim
   ${CP} ${MKIMG_DIR}/end_vsim.s ${COMPILER_TEMP_DIR}/end_vsim.s
#  ${SED} -e '/.section\t.data/{' -e 'r ${COMPILER_TEMP_DIR}/end_vsim.s' -e  'd' -e '}' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sb > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sc
#  ${AWK} 'function readfile (file) { getline var < file ; return var } BEGIN { RS="^$" }; gsub(/.section\t.data/,readfile("${COMPILER_TEMP_DIR}/end_vsim.s"))' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sb > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sc
  ${SED} '/.section\t.data/,/Word/ {/.section\t.data/ i \
	finish: \
		LSOI	%GPR10,	%GPR10,	$(_exit / 0x10000) \
		LSOI	%GPR10,	%GPR10,	$(_exit % 0x10000) \
		JPR	%GPR10 \n \
		.org	0x3000 \
	reset:	; reset interrupt handler \
		; GPR6 is all 1 register \
		LSOI	%GPR4,	%GPR4,	$(0xAAAA) \
		LSOI	%GPR4,	%GPR4,	$(0xAAAA) \n \
		; goto main (interrupt will be permitted) \
		LSOI	%GPR2,	%GPR2,	$(_main / 0x10000) \
		LSOI	%GPR2,	%GPR2,	$(_main % 0x10000) \
		RETI \n \
		.org	0x3F00 \
	_exit: \
		NOP \
		NOP \
		NOP \n \
		.section        .data \
		.align  4 
  d}' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sb  > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sc

  ######################################################################*
  echo "Testing Assemble 5a"
  ######################################################################*
  # comment out unnessary ".addressing Word"
#  ${SED} 's/.addressing\tWord/ /g' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sc > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sd
#  ${SED} 's/.addressing\tWord/ /g' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sc > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sa
  ######################################################################*
  echo "Testing Assemble 5"
  ######################################################################*
  # Modify Brnach/Jump labels, needed for PAS
  ${GAWK} --posix -f ${MKIMG_DIR}/lable.awk ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.sc > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.asm || {
      echo
      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"awk\" RETURNED AN ERROR !!"
      echo
      exit 1
  }
  ######################################################################*
  echo "Testing Assemble 7"

  ######################################################################
  #
  # Convert pseudo instruction, etc.
  #
#  ${MKIMG_DIR}/cosy2meta_asm.py ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s2 ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s4 || {
#	echo
#	echo ERROR: ABORTING \"assemble.sh\", BECAUSE \"cosy2meta_asm\" RETURNED AN ERROR !!
#	echo
#	exit 1
# }


  ######################################################################
  #
  # Replace "GPR" by "r".
  #
#  sed 's/GPR/r/g' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s4 > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.asm


  ######################################################################
  #
  # Create a version from .des file with unnecessary comma removed.
  #
#  sed s/^,// ${MEISTER_DIR}/${CPU_NAME}".des" > ${MEISTER_DIR}/${CPU_NAME}"_noComma.des"


  ######################################################################
  #
  # Create a version from .des file with the user-instructions and types included.
  #
#  ${MKIMG_DIR}/extendAssemblerDescriptionFile.pl ${MEISTER_DIR}/${CPU_NAME}"_noComma.des" ${PROJECT_DIR}/AssemblerTypes.inc ${PROJECT_DIR}/AssemblerInstructions.inc > ${MEISTER_DIR}/${CPU_NAME}"_extended.des" || {
#      echo
#      echo "ERROR: ABORTING \"assemble.sh\", BECAUSE \"extendAssemblerDescriptionFile.pl\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }


  ######################################################################
  #
  # Create a version from .des file with "GPR" replaced by "r".
  #
#  sed 's/GPR/r/g' ${MEISTER_DIR}/${CPU_NAME}"_extended.des" > ${MEISTER_DIR}/${CPU_NAME}"_extended_noGPR.des"


  ######################################################################
  #
  # Assemble.
  #
#  PAS_ERROR=pasError.txt
#  RED_HAT_PC=i80pc06
#  REMOTE_TEMP_DIR=`ssh ${RED_HAT_PC} "mktemp -d mkimgTemp.XXXXXX"`
#  echo "Copying files to '${RED_HAT_PC}' to execute the assembler:"
#  scp ${MKIMG_DIR}/pas ${MEISTER_DIR}/${CPU_NAME}"_extended_noGPR.des" ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.asm ${RED_HAT_PC}:${REMOTE_TEMP_DIR} || {
#	echo
#	echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE ASSEMBLER COULDN'T BE COPIED TO ${RED_HAT_PC} !!"
#	echo
#	exit 1
# }
#  ssh ${RED_HAT_PC} "${REMOTE_TEMP_DIR}/pas -des ${REMOTE_TEMP_DIR}/${CPU_NAME}'_extended_noGPR.des' -src ${REMOTE_TEMP_DIR}/${APPLICATION_NAME}.asm > ${REMOTE_TEMP_DIR}/${APPLICATION_NAME}.out 2> ${REMOTE_TEMP_DIR}/${PAS_ERROR}" || {
#        ssh ${RED_HAT_PC} "grep -v base_integer ${REMOTE_TEMP_DIR}/${PAS_ERROR}"
#	echo
#	echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE REMOTE ASSEMBLER RETURNED AN ERROR !!"
#	echo
#	exit 1
#  }
#  ssh ${RED_HAT_PC} "grep -v base_integer ${REMOTE_TEMP_DIR}/${PAS_ERROR}"
#  scp ${RED_HAT_PC}:${REMOTE_TEMP_DIR}/${APPLICATION_NAME}.out ${RED_HAT_PC}:${REMOTE_TEMP_DIR}/${PAS_ERROR} ${COMPILER_TEMP_DIR} || {
#	echo
#	echo "ERROR: ABORTING \"assemble.sh\", BECAUSE THE ASSEMBLER OUTPUT COULDN'T BE COPIED BACK FORM ${RED_HAT_PC} !!"
#	echo
#	exit 1
#  }
#  ssh ${RED_HAT_PC} "rm -rf ${REMOTE_TEMP_DIR}"

  ######################################################################
  echo "Testing Assemble 8"
  ######################################################################*
  #
  # Assemble.
  #
  PAS_ERROR=pasError.txt

  ${ASIPmeister_HOME}/bin/pas -des ${MEISTER_DIR}/${CPU_NAME}.des  -src ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.asm >  ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.out 2> ${COMPILER_TEMP_DIR}/${PAS_ERROR}
  ${GREP} -v base_integer ${COMPILER_TEMP_DIR}/${PAS_ERROR}


  echo "Testing Assemble 9"
  ######################################################################*


  #
  # Scan the ".out"-file for undefined or multiple-defined symbols
  #
#  ${MKIMG_DIR}/scanForSymbols.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.out || {
#	echo
#	echo ERROR: ABORTING "assemble.sh", BECAUSE "scanForSymbols.sh" RETURNED AN ERROR !!
#	echo
#	exit 1
#  }

  echo "Testing Assemble 10"
  ######################################################################
  #
  # make memory image
  #
   $ECHO Copying TestData.* Files
#  ${MKIMG_DIR}/out2im.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.out > ${COMPILER_TEMP_DIR}/TestData.IM
#  ${MKIMG_DIR}/out2dm.pl ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.out > ${COMPILER_TEMP_DIR}/TestData.DM_temp
#  ${MKIMG_DIR}/extendDMfile.pl ${COMPILER_TEMP_DIR}/TestData.DM_temp > ${COMPILER_TEMP_DIR}/TestData.DM
   cd ${COMPILER_TEMP_DIR}
   ${MKIMG_DIR}/pasout2img ${APPLICATION_NAME}.out
   ${CP} TestData.IM TestData.DM ${MODELSIM_DIR}
   cd ..
#  ${MKIMG_DIR}/convertToUART ${COMPILER_TEMP_DIR}/TestData.IM
#  ${MKIMG_DIR}/convertToUART ${COMPILER_TEMP_DIR}/TestData.DM

  fi

  exit 0

