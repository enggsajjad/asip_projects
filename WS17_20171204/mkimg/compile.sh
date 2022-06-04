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

  $ECHO Starting Compile.sh

  ######################################################################
  #
  # Syntax:  compile.sh Application.c {Compiler-Parameters}
  #
  ######################################################################



  ######################################################################
  #
  # Test, whether an input parameter is given.
  #
  test $# -lt 1 && {
      echo
      echo "ERROR1: ABORTING \"compile.sh\", BECAUSE NO INPUT PARAMETER IS GIVEN."
      echo "USAGE: \"compile.sh Application.c {Compiler Parameters}\"."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the input parameter ends with ".c".
  #
  test $1 = ${1%.c}.c || {
      echo
      echo "ERROR2: ABORTING \"compile.sh\", BECAUSE THE INPUT PARAMETER DOES NOT END WITH \".c\"."
      echo "USAGE: \"compile.sh Application.c {Compiler Parameters}\"."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the given input parameter is a readable file.
  #
  test -r $1 || {
      echo
      echo "ERROR3: ABORTING \"compile.sh\", BECAUSE \""$1"\" IS NOT A READABLE FILE."
      echo "USAGE: \"compile.sh Application.c {Compiler Parameters}\"."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the needed environments have a value.
  #
  test "_${PROJECT_DIR}" = "_" && {
      echo
      echo "ERROR4: ABORTING \"compile.sh\", BECAUSE THE PROJECT_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
  test "_${MKIMG_DIR}" = "_" && {
      echo
      echo "ERROR5: ABORTING \"compile.sh\", BECAUSE THE MKIMG_DIR SETTING IS EMPTY!"
      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
      echo
      exit 1
  }
#  test "_${COMPILER_NAME}" = "_" && {
#      echo
#      echo "ERROR6: ABORTING \"compile.sh\", BECAUSE THE COMPILER_NAME SETTING IS EMPTY!"
#      echo "       MAYBE THE \"env_settings\" WAS NOT INCLUDED OR CONTAINS TYPING ERRORS."
#      echo
#      exit 1
#  }
  test "_${COMPILER_TEMP_DIR}" = "_" && {
      echo
      echo "ERROR7: ABORTING \"compile.sh\", BECAUSE THE COMPILER_TEMP_DIR SETTING IS EMPTY!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }


  ######################################################################
  #
  # Test, whether the needed environments have a realistic (!) value.
  #
  test -d ${PROJECT_DIR} || {
      echo
      echo "ERROR8: ABORTING \"compile.sh\", BECAUSE THE PROJECT_DIR \"${PROJECT_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo "       MAKE SURE YOU DON'T USE THE \"~\" SYMBOL FOR \"ASIPMEISTER_PROJECTS_DIR\". REPLACE IT BY \"\${HOME}\"."
      echo
      exit 1
  }
  test -d ${MKIMG_DIR} || {
      echo
      echo "ERROR9: ABORTING \"compile.sh\", BECAUSE THE MKIMG_DIR \"${MKIMG_DIR}\" DOES NOT EXIST!"
      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
      echo
      exit 1
  }
  test -d ${COMPILER_TEMP_DIR} || {
      echo
      echo "ERROR10: ABORTING \"compile.sh\", BECAUSE THE COMPILER_TEMP_DIR \"${COMPILER_TEMP_DIR}\" DOES NOT EXIST!"
      echo "       SOMETHING IS WRONG IN THE MAKEFILE."
      echo
      exit 1
  }
#  test -r ${PROJECT_DIR}/${COMPILER_NAME} || {
#      echo
#      echo "ERROR11: ABORTING \"compile.sh\", BECAUSE THE COMPILER BINARY \"${PROJECT_DIR}/${COMPILER_NAME}\" IS NOT READABLE!"
#      echo "       MAYBE IN THE \"env_settings\" SOMETHING IS WRONG."
#      echo
#      exit 1
#  }



  ######################################################################
  #
  # Create a special version with a "#define COSY" at the beginning".
  #
#  echo "#define COSY" > ${1%.c}.cc
#  cat $1 >> ${1%.c}.cc
#  dos2unix -q ${1%.c}.cc


  ######################################################################
  #
  # Compile.
  #
#  echo "Compiling:                      '${PROJECT_DIR}/${COMPILER_NAME} --*.utinit:WCHARTD:char $COSY_PARAM ${1%.c}.cc'"
#  cd ${COMPILER_TEMP_DIR}
#  # NOTE: The "../" in the next line assumes that the COMPILER_TEMP_DIR is a direct subdirectory of the application dir. Otherwise it wouldn't work.
#  ${PROJECT_DIR}/${COMPILER_NAME} --*.utinit:WCHARTD:char ${COSY_PARAM} ../${1%.c}.cc || {
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE COMPILER RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }
#  cd - > /dev/null
#  mv ${1%.c}.cc ${COMPILER_TEMP_DIR}

#  echo "ADD_NOPS:			${ADD_NOPS}"
#  echo "MAX_ALLOWED_SUCCESSIVE_NOPS:	${MAX_ALLOWED_SUCCESSIVE_NOPS}"




#  echo "Compiling:                      '${PROJECT_DIR}/${COMPILER_NAME} --*.utinit:WCHARTD:char $COSY_PARAM ${1%.c}.cc'"
  echo "Compiling:                      '${PROJECT_DIR}/${COMPILER_NAME} $GCC_PARAM ${1%.c}.c'"
  ${CP} -r *.c ./${COMPILER_TEMP_DIR}/.

  echo "Test Compiling 1"
  echo ${APPLICATION_NAME}
  echo ${APPLICATION_NAME}_gcc
  echo ${APPLICATION_NAME}'_'gcc


  cd ./${COMPILER_TEMP_DIR} 

  ${COMPILER_DIR}/${COMPILER_NAME} ${GCC_PARAM} -S -combine *.c -o ${APPLICATION_NAME}_gcc.s || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE COMPILER RETURNED AN ERROR !!"
      echo
      exit 1
  }
  
#  awk '1;/\tlw\t|\tsw\t|\tlb\t|\tsb\t|\tlh\t|\tsh\t/{print "\tnop";}'  ${APPLICATION_NAME}.sx >  ${APPLICATION_NAME}.sa
  
  ${CP} ${MKIMG_DIR}/startup.s .
  ${CP} ${MKIMG_DIR}/handler.s .
  ${CP} ${MKIMG_DIR}/browtb.x .
  
  ${COMPILER_DIR}/${ASSEMBLER_NAME} -o startup.o startup.s || {
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBER RETURNED AN ERROR !!"
      echo
      exit 1
  }

  ${COMPILER_DIR}/${ASSEMBLER_NAME} -o handler.o handler.s ||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBER RETURNED AN ERROR !!"
      echo
      exit 1
  }

  ${COMPILER_DIR}/${ASSEMBLER_NAME} -o ${APPLICATION_NAME}_gcc.o ${APPLICATION_NAME}_gcc.s ||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE ASSEMBER RETURNED AN ERROR !!"
      echo
      exit 1
  }
  
  ${COMPILER_DIR}/${LINKER_NAME} -o ${APPLICATION_NAME}_gcc -T browtb.x ${APPLICATION_NAME}_gcc.o startup.o handler.o ||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE LINKER RETURNED AN ERROR !!"
      echo
      exit 1
  }

  ${RM} -rf startup.s handler.s 

  echo "Generating TestData files..."

  ${MKIMG_DIR}/gccout2img ${APPLICATION_NAME}_gcc ||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE GCCOUT2IMG RETURNED AN ERROR !!"
      echo
      exit 1
  }

  echo "Generating MEM files..."

  ${MKIMG_DIR}/image2mem4.pl TestData.IM TestData.DM > ${APPLICATION_NAME}.mem||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE IMAGE2MEM RETURNED AN ERROR !!"
      echo
      exit 1
  }

  echo "Generating COE files..."

  ${MKIMG_DIR}/image2coe.pl TestData.IM TestData.DM ||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE IMAGE2COE RETURNED AN ERROR !!"
      echo
      exit 1
  }

  echo "Generating MIF files..."

  ${MKIMG_DIR}/image2mif.pl IM.coe DM.coe ||{
      echo
      echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE IMAGE2MIF RETURNED AN ERROR !!"
      echo
      exit 1
  }
  
  #cd - > /dev/null
  cd ..
  #mv ${1%.c}.cc ${COMPILER_TEMP_DIR}

#  echo "ADD_NOPS:			${ADD_NOPS}"
#  echo "MAX_ALLOWED_SUCCESSIVE_NOPS:	${MAX_ALLOWED_SUCCESSIVE_NOPS}"


  ######################################################################
  #
  # Detect Load/Store-Byte-Commands. They aren't supported in some versions of the hardware prototype
  #
#  if [ $ENABLE_FIND_BYTE_ACCESS -eq 1 ]; then
#    ${MKIMG_DIR}/findByteAccess.pl ${COMPILER_TEMP_DIR}/${1%.c}.s || {
#        echo
#        echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"findByteAccess.pl\" RETURNED AN ERROR !!"
#        echo
#        exit 1
#    }
#  else
#      echo "findByteAccess:                 DISABLED"
#  fi      


  ######################################################################
  #
  # Detect (and fix) the Load/Store-Problem.
  #
#  if [ $ENABLE_FIX_LOAD_STORE_INSTRUCTIONS -eq 1 ]; then
#    ${MKIMG_DIR}/findLoadStoreProblem.pl ${COMPILER_TEMP_DIR}/${1%.c}.s > ${COMPILER_TEMP_DIR}/${1%.c}.s2 || {
#        echo
#        echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"findLoadStoreProblem.pl\" RETURNED AN ERROR !!"
#        echo
#        exit 1
#    }
#  else
#      echo "findLoadStoreProblem:           DISABLED"
#      cp ${COMPILER_TEMP_DIR}/${1%.c}.s ${COMPILER_TEMP_DIR}/${1%.c}.s2
#  fi      


  ######################################################################
  #
  # Detect (and fix) unresolved data-dependency at compare-branch-commands.
  #
#  if [ $ENABLE_FIND_DATA_DEPENDENCY -eq 1 ]; then
#  ${MKIMG_DIR}/findDataDependency.pl ${COMPILER_TEMP_DIR}/${1%.c}.s2 > ${COMPILER_TEMP_DIR}/${1%.c}.s3 || {
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"findDataDependency.pl\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }
#  else
#      echo "findDataDependecy:              DISABLED"
#      cp ${COMPILER_TEMP_DIR}/${1%.c}.s2 ${COMPILER_TEMP_DIR}/${1%.c}.s3
#  fi      


  ######################################################################
  #
  # Detect (and fix) compare-branch-problem.
  #
#  if [ ${ENABLE_FIND_COMPARE_BRANCH_PROBLEM} == 1 ]; then
#    ${MKIMG_DIR}/findCompareBranchProblem.pl ${COMPILER_TEMP_DIR}/${1%.c}.s3 > ${COMPILER_TEMP_DIR}/${1%.c}.s4 || {
#        echo
#        echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"findCompareBranchProblem.pl\" RETURNED AN ERROR !!"
#        echo
#        exit 1
#    }
#  else
#      echo "findCompareBranchProblem:       DISABLED"
#      cp ${COMPILER_TEMP_DIR}/${1%.c}.s3 ${COMPILER_TEMP_DIR}/${1%.c}.s4
#  fi


  ######################################################################
  #
  # Convert pseudo instruction, etc.
  #
#  ${MKIMG_DIR}/cosy2meta_asm.py ${COMPILER_TEMP_DIR}/${1%.c}.s4 ${COMPILER_TEMP_DIR}/${1%.c}.s5 || {
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"cosy2meta_asm.py\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }


  ######################################################################
  #
  # Fix stall instructions (add nops if stalling instuctions (e.g. mult) are too close to each other)
  #
#  if [ ${ENABLE_FIX_STALL_INSTRUCTIONS} == 1 ]; then
#      ${MKIMG_DIR}/fix-stall-insns.pl ${COMPILER_TEMP_DIR}/${1%.c}.s5 > ${COMPILER_TEMP_DIR}/${1%.c}.s6 || {
#	  echo
#	  echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"fix-stall-insns.pl\" RETURNED AN ERROR !!"
#	  echo
#	  exit 1
#      }
#  else
#      echo "fix-stall-insns:                DISABLED"
#      cp ${COMPILER_TEMP_DIR}/${1%.c}.s5 ${COMPILER_TEMP_DIR}/${1%.c}.s6
#  fi



  ######################################################################
  #
  # Add a NOP after each label in the text-section (in HW a jump sometimes skipps the first instruction after the label)
  #
#  if [ ${ENABLE_ADD_NOPS_AFTER_LABLES} == 1 ]; then
#      ${MKIMG_DIR}/addNopAfterLabels.pl ${COMPILER_TEMP_DIR}/${1%.c}.s6 > ${COMPILER_TEMP_DIR}/${1%.c}.s7 || {
#	  echo
#	  echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"addNopAfterLabels.pl\" RETURNED AN ERROR !!"
#	  echo
#	  exit 1
#      }
#  else
#      echo "addNopAfterLabels:              DISABLED"
#      cp ${COMPILER_TEMP_DIR}/${1%.c}.s6 ${COMPILER_TEMP_DIR}/${1%.c}.s7
#  fi


  ######################################################################
  #
  # Add NOP instructions (only needed for Hardware).
  #
#  if [ $ADD_NOPS -gt 0 ]; then
#      ${MKIMG_DIR}/addNops.pl ${COMPILER_TEMP_DIR}/${1%.c}.s7 $ADD_NOPS > ${COMPILER_TEMP_DIR}/${1%.c}.s8 || {
#	  echo
#	  echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"addNops.pl\" RETURNED AN ERROR !!"
#	  echo
#	  exit 1
#      }
#  else
#      echo "addNops:                        DISABLED"
#     cp ${COMPILER_TEMP_DIR}/${1%.c}.s7 ${COMPILER_TEMP_DIR}/${1%.c}.s8
#  fi



  ######################################################################
  #
  # Remove superfluous NOP instructions.
  #
#  if [ $MAX_ALLOWED_SUCCESSIVE_NOPS -gt 0 ]; then
#      ${MKIMG_DIR}/reduceNOPs.pl ${COMPILER_TEMP_DIR}/${1%.c}.s8 $MAX_ALLOWED_SUCCESSIVE_NOPS > ${COMPILER_TEMP_DIR}/${1%.c}.s9 || {
#	  echo
#	  echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"reduceNOPs.pl\" RETURNED AN ERROR !!"
#	  echo
#	  exit 1
#     }
#  elif [ $MAX_ALLOWED_SUCCESSIVE_NOPS -eq 0 ]; then
#      ${MKIMG_DIR}/convert2PD1.pl ${COMPILER_TEMP_DIR}/${1%.c}.s8 > ${COMPILER_TEMP_DIR}/${1%.c}.s9 || {
#	  echo
#	  echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"reduceNOPs.pl\" RETURNED AN ERROR !!"
#	  echo
#	  exit 1
#      }
#      echo "reduceNOPs:                     ONLY NOPS AFTER BRANCHES"
#  else
#      echo "reduceNOPs:                     DISABLED"
#      cp ${COMPILER_TEMP_DIR}/${1%.c}.s8 ${COMPILER_TEMP_DIR}/${1%.c}.s9
#  fi      


  ######################################################################
  #
  # rename the labels, which appear in the assembly-file to something unique
  #
#  ${MKIMG_DIR}/renameLabels.pl ${COMPILER_TEMP_DIR}/${1%.c}.s9 ${1%.c} > ${COMPILER_TEMP_DIR}/${1%.c}.s10 || {
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"renameLabels.pl\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }    


  ######################################################################
  #
  # Search for Compare Unsigned Problem.
  #
#  ${MKIMG_DIR}/findCompareUnsigned.pl ${COMPILER_TEMP_DIR}/${1%.c}.s10 || {
#      echo
#      echo "ERROR: ABORTING \"compile.sh\", BECAUSE \"findCompareUnsigned.pl\" RETURNED AN ERROR !!"
#      echo
#      exit 1
#  }

#
#  mv ${COMPILER_TEMP_DIR}/${1%.c}.s10 ${COMPILER_TEMP_DIR}/${1%.c}.asm
#   ${CP} ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}_gcc.s  ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}_gcc.asm
  ######################################################################
  #
  # Comment out the lines with .globl, .type, .size, .ident, .zero
  # replace .long with .data.32
  # replace .long with .data.32
  # replace .data with .section		.data
  #		       .addressing 	.Word
  # replace .text with .section		.text
  #		       .addressing 	.Word
  # replace %hi(xxxx) with (xxxx/0x10000)
  # replace %lo(xxxx) with (xxxx%0x10000)


    ${SED} '/.glob/s/^/;/; /.align/s/^/;/; /.type/s/^/;/; /.size/s/^/;/; /.ident/s/^/;/; /.zero/s/^/;/; /.long/s/.long/.data.32/; /^.data/ s/.data/\t.section\t.data\n\t.addressing\t.Word/; /^.text/ s/.text/\t.section\t.text\n\t.addressing\t.Word/; /%hi(/ s/)/\/0x10000)/; /%lo(/ s/)/\%0x10000)/; /%hi(/ s/%hi(/(/;/%lo(/ s/%lo(/(/' ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}_gcc.s > ${COMPILER_TEMP_DIR}/${APPLICATION_NAME}.s


