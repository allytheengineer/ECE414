#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab5.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab5.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=adc_intf.c glcdfont.c main.c screen.c tft_gfx.c tft_master.c Touchscreen.c ts_ldc.c calcfsm.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/adc_intf.o ${OBJECTDIR}/glcdfont.o ${OBJECTDIR}/main.o ${OBJECTDIR}/screen.o ${OBJECTDIR}/tft_gfx.o ${OBJECTDIR}/tft_master.o ${OBJECTDIR}/Touchscreen.o ${OBJECTDIR}/ts_ldc.o ${OBJECTDIR}/calcfsm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/adc_intf.o.d ${OBJECTDIR}/glcdfont.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/screen.o.d ${OBJECTDIR}/tft_gfx.o.d ${OBJECTDIR}/tft_master.o.d ${OBJECTDIR}/Touchscreen.o.d ${OBJECTDIR}/ts_ldc.o.d ${OBJECTDIR}/calcfsm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/adc_intf.o ${OBJECTDIR}/glcdfont.o ${OBJECTDIR}/main.o ${OBJECTDIR}/screen.o ${OBJECTDIR}/tft_gfx.o ${OBJECTDIR}/tft_master.o ${OBJECTDIR}/Touchscreen.o ${OBJECTDIR}/ts_ldc.o ${OBJECTDIR}/calcfsm.o

# Source Files
SOURCEFILES=adc_intf.c glcdfont.c main.c screen.c tft_gfx.c tft_master.c Touchscreen.c ts_ldc.c calcfsm.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/lab5.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX250F128B
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/adc_intf.o: adc_intf.c  .generated_files/flags/default/d066dd786095c0be5c9274d723d9480530d7fce6 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_intf.o.d 
	@${RM} ${OBJECTDIR}/adc_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/adc_intf.o.d" -o ${OBJECTDIR}/adc_intf.o adc_intf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/glcdfont.o: glcdfont.c  .generated_files/flags/default/676ac528a05e63d6f56c25709f0cd0b70498ea46 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/glcdfont.o.d 
	@${RM} ${OBJECTDIR}/glcdfont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/glcdfont.o.d" -o ${OBJECTDIR}/glcdfont.o glcdfont.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/ea363c3258916f89683cbbc3f23a011d55fe2410 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/screen.o: screen.c  .generated_files/flags/default/e04fc71c0d70d6ba716d8add7a13299c8d37b97d .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/screen.o.d 
	@${RM} ${OBJECTDIR}/screen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/screen.o.d" -o ${OBJECTDIR}/screen.o screen.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/tft_gfx.o: tft_gfx.c  .generated_files/flags/default/8f333b124163dac74c9949f3745e1efd0150de09 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tft_gfx.o.d 
	@${RM} ${OBJECTDIR}/tft_gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/tft_gfx.o.d" -o ${OBJECTDIR}/tft_gfx.o tft_gfx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/tft_master.o: tft_master.c  .generated_files/flags/default/a45bce9771062ce0bc94280065845cfcc52f0665 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tft_master.o.d 
	@${RM} ${OBJECTDIR}/tft_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/tft_master.o.d" -o ${OBJECTDIR}/tft_master.o tft_master.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/Touchscreen.o: Touchscreen.c  .generated_files/flags/default/8b2937d3530a41cffa2939fe072ab25298331197 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Touchscreen.o.d 
	@${RM} ${OBJECTDIR}/Touchscreen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Touchscreen.o.d" -o ${OBJECTDIR}/Touchscreen.o Touchscreen.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/ts_ldc.o: ts_ldc.c  .generated_files/flags/default/cd0ee264a114677c63ce0d848dd25f87dcc8c68d .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ts_ldc.o.d 
	@${RM} ${OBJECTDIR}/ts_ldc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ts_ldc.o.d" -o ${OBJECTDIR}/ts_ldc.o ts_ldc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/calcfsm.o: calcfsm.c  .generated_files/flags/default/c95160329d84e4ef22688ccda43c257b85190b50 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/calcfsm.o.d 
	@${RM} ${OBJECTDIR}/calcfsm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/calcfsm.o.d" -o ${OBJECTDIR}/calcfsm.o calcfsm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/adc_intf.o: adc_intf.c  .generated_files/flags/default/f1d2a36d78ac6a892ae60b27c241709122aa2a88 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_intf.o.d 
	@${RM} ${OBJECTDIR}/adc_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/adc_intf.o.d" -o ${OBJECTDIR}/adc_intf.o adc_intf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/glcdfont.o: glcdfont.c  .generated_files/flags/default/5c12e41b5cde11bb10737a7c38fe4f058110d54c .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/glcdfont.o.d 
	@${RM} ${OBJECTDIR}/glcdfont.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/glcdfont.o.d" -o ${OBJECTDIR}/glcdfont.o glcdfont.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/913bd11c57d6df3732e8976f82f301c8f1d85dce .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/screen.o: screen.c  .generated_files/flags/default/423edb39d6083bab38eff527bbb09514b37244f5 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/screen.o.d 
	@${RM} ${OBJECTDIR}/screen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/screen.o.d" -o ${OBJECTDIR}/screen.o screen.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/tft_gfx.o: tft_gfx.c  .generated_files/flags/default/c6422ed98ff746d2dd2e8fd621135aa8a2afbdca .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tft_gfx.o.d 
	@${RM} ${OBJECTDIR}/tft_gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/tft_gfx.o.d" -o ${OBJECTDIR}/tft_gfx.o tft_gfx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/tft_master.o: tft_master.c  .generated_files/flags/default/c38bd978edd3dc9bcb04378d64eaac867fefc16b .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tft_master.o.d 
	@${RM} ${OBJECTDIR}/tft_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/tft_master.o.d" -o ${OBJECTDIR}/tft_master.o tft_master.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/Touchscreen.o: Touchscreen.c  .generated_files/flags/default/544174bb7944f5d5f13f7ff01a8139c2b4d98ace .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Touchscreen.o.d 
	@${RM} ${OBJECTDIR}/Touchscreen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Touchscreen.o.d" -o ${OBJECTDIR}/Touchscreen.o Touchscreen.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/ts_ldc.o: ts_ldc.c  .generated_files/flags/default/987f171ff76b2debefb9ffdae39fcff3fcc26636 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ts_ldc.o.d 
	@${RM} ${OBJECTDIR}/ts_ldc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ts_ldc.o.d" -o ${OBJECTDIR}/ts_ldc.o ts_ldc.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/calcfsm.o: calcfsm.c  .generated_files/flags/default/8c9679ec2fad6239f3be33f916bebb6b452e4b4e .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/calcfsm.o.d 
	@${RM} ${OBJECTDIR}/calcfsm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/calcfsm.o.d" -o ${OBJECTDIR}/calcfsm.o calcfsm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/lab5.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab5.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/lab5.1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab5.1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/lab5.1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
