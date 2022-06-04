
# Shell commands
SHELL := /bin/bash 
RM := /bin/rm
CD := /bin/cd
LS := /bin/ls
PWD := /bin/pwd
MKDIR := /bin/mkdir
MV := /bin/mv
CAT := /bin/cat
ECHO  := /bin/echo
CP := /bin/cp
SCP := /usr/bin/scp
DOS2UNIX := /usr/bin/dos2unix
SED := /bin/sed
AWK := /bin/awk
GAWK := /bin/gawk

# Xilinx Environment
ARCH := $(shell /usr/bin/getconf LONG_BIT)
ifeq ($(ARCH),64)
	XILINX_SETUP=/home/adm/xilinx_13.2_64bit.setup
else
	XILINX_SETUP=/home/adm/xilinx_13.2_32bit.setup
endif


# Application Settings, Directories
STACK_START_FPGA := "0x0017EFFC" # BRAM Hardware
STACK_START_SIM := "0xFFFFC" # dlxsim


SIM_DIR := BUILD_SIM


# Application name for dlxsim and bitstream
PWD := $(shell pwd)
APPLICATION_NAME := $(lastword $(subst /, ,$(PWD)) )
MEM_FILE := $(SIM_DIR)/$(APPLICATION_NAME).mem
BLOCKRAM_FILE := ${ISE_DIR}/blockram_bd.bmm
BITSTREAM_IN := ${ISE_DIR}/dlx_toplevel.bit
BITSTREAM_OUT := $(SIM_DIR)/$(APPLICATION_NAME).bit


# All of the sources participating in the build are defined here

SIM_C_OBJS  := $(patsubst %,$(SIM_DIR)/%,$(patsubst %.c,%.asm,$(wildcard *.c)))
SIM_S_OBJS  := $(patsubst %,$(SIM_DIR)/%,$(patsubst %.s,%.asm,$(wildcard *.s)))

# Parameters that are passed to the tools/scripts that are called by this Makefile
DLXSIM_PARAM=-da0 -pf1
GCC_PARAM=-O0


#################################################
# Main compile function for SIM and FPGA
#################################################
# $(1) = Filename
# parameters for compile.sh
compile = \
		echo -----------------------------------------------; \
		echo Compiling file \"$(1)\" for target $(TARGET):; \
		echo -----------------------------------------------; \
		${RM} -f $(3)/$(patsubst %.c,%,$<).*; \
		echo -----------------------------------------------; \
		echo TARGET = $(TARGET); \
			APPLICATION_NAME=$(APPLICATION_NAME) \
			COMPILER_DIR=$(COMPILER_DIR) \
			MKIMG_DIR=$(MKIMG_DIR) \
			COMPILER_TEMP_DIR=$(BUILD_DIR) \
			GCC_PARAM=$(GCC_PARAM) \
			${MKIMG_DIR}/compile.sh "$<"; \
		echo -----------------------------------------------; \
		echo -----------------------------------------------; \
		echo FINISHED COMPILING file \"$<\" for target $(TARGET).; \
		echo -----------------------------------------------; \
		echo;


#################################################
# Main assemble function for SIM and FPGA
#################################################
assemble = \
		echo -----------------------------------------------; \
		echo Assembling/Linking for target $(TARGET):2;\
		echo -----------------------------------------------; \
		COMPILER_TEMP_DIR=$(BUILD_DIR) \
			APPLICATION_NAME=$(APPLICATION_NAME) \
			STACK_START=$(STACK_START) \
			FULL_ASSEMBLE=1 \
			${MKIMG_DIR}/assemble.sh "$<" \
		echo -----------------------------------------------; \
		echo FINISHED ASSEMBLING/LINKING for target $(TARGET).2; \
		echo -----------------------------------------------; \
		echo;


#################################################
.PHONY: sim
sim:  $(SIM_DIR)/TestData.IM  $(SIM_DIR)/TestData.DM  $(SIM_DIR)/$(APPLICATION_NAME).dlxsim


#################################################
.PHONY: dlxsim
dlxsim:  $(SIM_DIR)/$(APPLICATION_NAME).dlxsim
	@echo '-----------------------------------------------'
	@echo 'Starting dlxsim:'
	@echo '-----------------------------------------------'
	$(DLXSIM_DIR)/dlxsim -f$(SIM_DIR)/$(APPLICATION_NAME).dlxsim $(DLXSIM_PARAM)


#################################################
.PHONY: all
all:	sim fpga


#################################################
.PHONY: clean
clean:
	$(RM) -rf $(SIM_DIR)




#################################################
$(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM:  TARGET=FPGA
$(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM:  BUILD_DIR=$(SIM_DIR)
$(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM:  STACK_START=$(STACK_START_FPGA)
$(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM:  $(SIM_C_OBJS)  $(SIM_S_OBJS)  ${MEISTER_DIR}/${CPU_NAME}.des
	@$(call assemble)




#################################################
$(SIM_DIR)/$(APPLICATION_NAME).dlxsim:  TARGET=SIMULATION
$(SIM_DIR)/$(APPLICATION_NAME).dlxsim:  BUILD_DIR=$(SIM_DIR)
$(SIM_DIR)/$(APPLICATION_NAME).dlxsim:  STACK_START=$(STACK_START_SIM)
$(SIM_DIR)/$(APPLICATION_NAME).dlxsim:  $(SIM_C_OBJS)  $(SIM_S_OBJS)
	@echo '-----------------------------------------------'
	@echo 'Assembling/Linking for target $(TARGET): 1'
	@echo '-----------------------------------------------'
	@COMPILER_TEMP_DIR=$(BUILD_DIR) \
		APPLICATION_NAME=$(APPLICATION_NAME) \
		STACK_START=$(STACK_START) \
		FULL_ASSEMBLE=0 \
		${MKIMG_DIR}/assemble.sh "$<"
	@echo '-----------------------------------------------'
	@echo 'FINISHED ASSEMBLING/LINKING for target $(TARGET). 1'
	@echo '-----------------------------------------------'
	@echo ' '
	@echo ' '



#################################################
# Creating all .asm files from C-source files for target: SIM
$(SIM_C_OBJS): $(SIM_DIR)/%.asm:  %.c  $(wildcard *.h)  ../../env_settings  ${PROJECT_DIR}/${COMPILER_NAME}  |  $(SIM_DIR)
	@$(call compile,$<)


#################################################
# Creating all .asm files from S-source files for target: SIM
$(SIM_S_OBJS): $(SIM_DIR)/%.asm:  %.s  ../../env_settings  |  $(SIM_DIR) 
	@echo -----------------------------------------------
	@echo Transforming file \"$<\" for target $(TARGET).
	@echo -----------------------------------------------
	@$(RM) -f $(SIM_DIR)/$(patsubst %.s,%,$<).*
	@ # Rename the local labels (e.g. L1, L2, ...), which appear in the assembly-file to something unique
	@${MKIMG_DIR}/renameLabels.pl $< $(patsubst %.s,%,$<) > $@ || { \
		echo; \
		echo "ERROR: ABORTING BECAUSE \"renameLabels.pl\" RETURNED AN ERROR !!"; \
		echo; \
		exit 1; \
	}
	$(DOS2UNIX) -q $@



#################################################
# Creating BUILD directories for SIM and FPGA
$(SIM_DIR):
	@$(MKDIR) $(SIM_DIR)



#################################################
# These are dummy rules that allows us to depend on the actuality of these files
# (for assembling/linking) without actually specifying how to create them
${MEISTER_DIR}/${CPU_NAME}.des:
${PROJECT_DIR}/${COMPILER_NAME}:
${BLOCKRAM_FILE}:
${BITSTREAM_IN}:


#################################################
.PHONY: fpga
fpga:  $(SIM_DIR)/$(APPLICATION_NAME).bit


#################################################
$(SIM_DIR)/$(APPLICATION_NAME).bit:  $(MEM_FILE)  $(BLOCKRAM_FILE)  $(BITSTREAM_IN)
#$(SIM_DIR)/$(APPLICATION_NAME).bit: 
	@$(RM) -f $(BITSTREAM_OUT)
	@echo -----------------------------------------------
	@echo Updating BIT file \"$(BITSTREAM_OUT)\" for target FPGA:
	@echo -----------------------------------------------
	@if ! test -r $(BLOCKRAM_FILE); then \
		echo; \
		echo ERROR: File \"$(BLOCKRAM_FILE)\" not readable!; \
		echo        You need to synthesize/implement the ISE project before updating the bit file. Or something is wrong in the env_settings; \
		echo; \
		exit 1; \
	fi;
	@if ! test -r $(BITSTREAM_IN); then \
		echo; \
		echo ERROR: File \"$(BITSTREAM_IN)\" not readable!; \
		echo        You need to synthesize/implement the ISE project before updating the bit file. Or something is wrong in the env_settings; \
		echo; \
		exit 1; \
	fi;
	@. $(XILINX_SETUP) && data2mem -bm ${BLOCKRAM_FILE} -bd ${MEM_FILE} -bt ${BITSTREAM_IN} -o b ${BITSTREAM_OUT}
	@if ! test -r $(BITSTREAM_OUT); then \
		echo; \
		echo ERROR: 'data2mem' returned an error!; \
		echo; \
		exit 1; \
	fi;
	@echo DONE
	@echo



#################################################
$(MEM_FILE):  $(SIM_DIR)/TestData.IM  $(SIM_DIR)/TestData.DM
	@$(RM) -f $(MEM_FILE)
	@echo
	@echo -----------------------------------------------
	@echo Creating MEM file \"${MEM_FILE}\" for target FPGA:
	@echo -----------------------------------------------
	@${MKIMG_DIR}/image2mem4.pl $(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM > ${MEM_FILE} ||{ \
		echo; \
		echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE IMAGE2MEM RETURNED AN ERROR !!"; \
		echo; \
		exit 1; \
	}
	@echo "Generating COE files..."
	@${MKIMG_DIR}/image2coe.pl $(SIM_DIR)/TestData.IM $(SIM_DIR)/TestData.DM $(SIM_DIR)/IM.coe $(SIM_DIR)/DM.coe ||{ \
		echo; \
		echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE IMAGE2COE RETURNED AN  ERROR !!"; \
		echo; \
		exit 1; \
	}
	@echo "Generating MIF files..."
	@${MKIMG_DIR}/image2mif.pl $(SIM_DIR)/IM.coe $(SIM_DIR)/DM.coe $(SIM_DIR)/IM.mif $(SIM_DIR)/DM.mif ||{ \
		echo; \
		echo "ERROR: ABORTING \"compile.sh\", BECAUSE THE IMAGE2MIF RETURNED AN ERROR !!"; \
		echo; \
		exit 1; \
	}
	@echo DONE
	@echo


#################################################
.PHONY: upload
upload:	 |  $(SIM_DIR)
	@echo '-----------------------------------------------'
	@echo 'Uploading Bitstream "$(SIM_DIR)/$(APPLICATION_NAME).bit" to FPGA:'
	@echo '-----------------------------------------------'
	@if ! test -r $(SIM_DIR)/$(APPLICATION_NAME).bit; then \
		echo; \
		echo ERROR: File \"$(SIM_DIR)/$(APPLICATION_NAME).bit\" not readable!; \
		echo        You need to run \"make fpga\" first to get a bitstream; \
		echo; \
		exit 1; \
	fi;
	@echo 'setMode -bs' > $(SIM_DIR)/impact.cmd
	@echo 'setCable -port auto' >> $(SIM_DIR)/impact.cmd
	@echo 'Identify -inferir' >> $(SIM_DIR)/impact.cmd
	@echo 'identifyMPM' >> $(SIM_DIR)/impact.cmd
	@echo 'assignFile -p 5 -file "$(APPLICATION_NAME).bit"' >> $(SIM_DIR)/impact.cmd
	@echo 'Program -p 5' >> $(SIM_DIR)/impact.cmd
	@echo 'quit' >> $(SIM_DIR)/impact.cmd
	@. $(XILINX_SETUP) && cd $(SIM_DIR) && impact -batch impact.cmd


#################################################
.PHONY: help
help:
	@echo "/--------"
	@echo "| USAGE:"
	@echo "\--------"
	@echo "'make sim':    compile for dlxsim/Modelsim"
	@echo "'make dlxsim': compile for dlxsim and directly start simulation"
	@echo "'make fpga':   compile for FPGA and update bitstream"
	@echo "'make upload': upload the existing bitstream to the FPGA (note: this command does not generate a new bitstream)"
	@echo "'make all':    compile for dlxsim/Modelsim and for FPGA"
	@echo "'make clean':  delete the BUILD directories"
	@echo
	@echo "/---------------------"
	@echo "| PASSING PARAMETERS:"
	@echo "\---------------------"
	@echo "'DLXSIM_PARAM=...'"
	@echo "  Example: 'make dlxsim DLXSIM_PARAM=\"-da0 -pf1\"'"
	@echo "  Note:    These are the default parameters. Don't forget the double high-commas (i.e.: \") when passing multiple parameters."
	@echo "'GCC_PARAM=...'"
	@echo "  Example: 'make sim GCC_PARAM=-O3'"
	@echo "  Example: 'make dlxsim GCC_PARAM=-O3 DLXSIM_PARAM=\"-da0 -pf4\"'"
	@echo "  Note:    If you want to enfore re-compilation with different parameters then you have to 'make clean' to make sure that all files are re-compiled"


