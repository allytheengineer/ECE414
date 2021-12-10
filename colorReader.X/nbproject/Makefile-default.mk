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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/colorReader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/colorReader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=COLORFSM.c matching.c audio.c timer1.c rgbsensor.c test.c button.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/COLORFSM.o ${OBJECTDIR}/matching.o ${OBJECTDIR}/audio.o ${OBJECTDIR}/timer1.o ${OBJECTDIR}/rgbsensor.o ${OBJECTDIR}/test.o ${OBJECTDIR}/button.o
POSSIBLE_DEPFILES=${OBJECTDIR}/COLORFSM.o.d ${OBJECTDIR}/matching.o.d ${OBJECTDIR}/audio.o.d ${OBJECTDIR}/timer1.o.d ${OBJECTDIR}/rgbsensor.o.d ${OBJECTDIR}/test.o.d ${OBJECTDIR}/button.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/COLORFSM.o ${OBJECTDIR}/matching.o ${OBJECTDIR}/audio.o ${OBJECTDIR}/timer1.o ${OBJECTDIR}/rgbsensor.o ${OBJECTDIR}/test.o ${OBJECTDIR}/button.o

# Source Files
SOURCEFILES=COLORFSM.c matching.c audio.c timer1.c rgbsensor.c test.c button.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/colorReader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/COLORFSM.o: COLORFSM.c  .generated_files/flags/default/94fbdfcd9d414dcbb6acef1cda14a664f817400b .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/COLORFSM.o.d 
	@${RM} ${OBJECTDIR}/COLORFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/COLORFSM.o.d" -o ${OBJECTDIR}/COLORFSM.o COLORFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/matching.o: matching.c  .generated_files/flags/default/975577fc7ed311e1882705ab841814419013f9b .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/matching.o.d 
	@${RM} ${OBJECTDIR}/matching.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/matching.o.d" -o ${OBJECTDIR}/matching.o matching.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/audio.o: audio.c  .generated_files/flags/default/df9a71ea8edaf6e54f3273e2b0e2ef4f23f3a09e .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/audio.o.d 
	@${RM} ${OBJECTDIR}/audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/audio.o.d" -o ${OBJECTDIR}/audio.o audio.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/timer1.o: timer1.c  .generated_files/flags/default/5f44fffc6cac7327af7ddc45f078434309290b00 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer1.o.d 
	@${RM} ${OBJECTDIR}/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/timer1.o.d" -o ${OBJECTDIR}/timer1.o timer1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/rgbsensor.o: rgbsensor.c  .generated_files/flags/default/6fcc38082d53452314936696f11e8fd439cfec51 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rgbsensor.o.d 
	@${RM} ${OBJECTDIR}/rgbsensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/rgbsensor.o.d" -o ${OBJECTDIR}/rgbsensor.o rgbsensor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/test.o: test.c  .generated_files/flags/default/f8c5afd9db9dbfceabbdf18e1c21f13fcbb97f0f .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/test.o.d 
	@${RM} ${OBJECTDIR}/test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/test.o.d" -o ${OBJECTDIR}/test.o test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/button.o: button.c  .generated_files/flags/default/efed37e706d4b497965fe14cfced73cea074c0e7 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/button.o.d 
	@${RM} ${OBJECTDIR}/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/button.o.d" -o ${OBJECTDIR}/button.o button.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/COLORFSM.o: COLORFSM.c  .generated_files/flags/default/300492a6885a4c5648a84c45991c8544eb1ace71 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/COLORFSM.o.d 
	@${RM} ${OBJECTDIR}/COLORFSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/COLORFSM.o.d" -o ${OBJECTDIR}/COLORFSM.o COLORFSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/matching.o: matching.c  .generated_files/flags/default/c988f417436f20428a19412248ef660cb7b3fd69 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/matching.o.d 
	@${RM} ${OBJECTDIR}/matching.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/matching.o.d" -o ${OBJECTDIR}/matching.o matching.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/audio.o: audio.c  .generated_files/flags/default/2391226a24ae152af19f8562f922dc9f997fb91a .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/audio.o.d 
	@${RM} ${OBJECTDIR}/audio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/audio.o.d" -o ${OBJECTDIR}/audio.o audio.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/timer1.o: timer1.c  .generated_files/flags/default/f7def28027c8b16e87bf06fc5b606b159da1627a .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer1.o.d 
	@${RM} ${OBJECTDIR}/timer1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/timer1.o.d" -o ${OBJECTDIR}/timer1.o timer1.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/rgbsensor.o: rgbsensor.c  .generated_files/flags/default/90737ac93d277701f3bb43875926fcc05695c3ca .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/rgbsensor.o.d 
	@${RM} ${OBJECTDIR}/rgbsensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/rgbsensor.o.d" -o ${OBJECTDIR}/rgbsensor.o rgbsensor.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/test.o: test.c  .generated_files/flags/default/b0f6a80861da4033e34ceac346b94a5f70a4fe .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/test.o.d 
	@${RM} ${OBJECTDIR}/test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/test.o.d" -o ${OBJECTDIR}/test.o test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/button.o: button.c  .generated_files/flags/default/b6dd8674cfba90124038e587d1bedb9419702065 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/button.o.d 
	@${RM} ${OBJECTDIR}/button.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/button.o.d" -o ${OBJECTDIR}/button.o button.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/colorReader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/colorReader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/colorReader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/colorReader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/colorReader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
