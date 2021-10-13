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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/lab5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=ts_lcd.c Touchscreen.c adc_intf.c ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_gfx.c ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_master.c ../../../test_touch_rev.X/test_touch_rev.X/touch_main_example.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ts_lcd.o ${OBJECTDIR}/Touchscreen.o ${OBJECTDIR}/adc_intf.o ${OBJECTDIR}/_ext/2091967020/tft_gfx.o ${OBJECTDIR}/_ext/2091967020/tft_master.o ${OBJECTDIR}/_ext/2003987648/touch_main_example.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/ts_lcd.o.d ${OBJECTDIR}/Touchscreen.o.d ${OBJECTDIR}/adc_intf.o.d ${OBJECTDIR}/_ext/2091967020/tft_gfx.o.d ${OBJECTDIR}/_ext/2091967020/tft_master.o.d ${OBJECTDIR}/_ext/2003987648/touch_main_example.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ts_lcd.o ${OBJECTDIR}/Touchscreen.o ${OBJECTDIR}/adc_intf.o ${OBJECTDIR}/_ext/2091967020/tft_gfx.o ${OBJECTDIR}/_ext/2091967020/tft_master.o ${OBJECTDIR}/_ext/2003987648/touch_main_example.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=ts_lcd.c Touchscreen.c adc_intf.c ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_gfx.c ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_master.c ../../../test_touch_rev.X/test_touch_rev.X/touch_main_example.c main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/lab5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/ts_lcd.o: ts_lcd.c  .generated_files/flags/default/6146bd94e20124b38ee244bb39683067a7e0b740 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ts_lcd.o.d 
	@${RM} ${OBJECTDIR}/ts_lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ts_lcd.o.d" -o ${OBJECTDIR}/ts_lcd.o ts_lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/Touchscreen.o: Touchscreen.c  .generated_files/flags/default/1e133eb3d65938da7c4ea8b82496cd72bc4a0f94 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Touchscreen.o.d 
	@${RM} ${OBJECTDIR}/Touchscreen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Touchscreen.o.d" -o ${OBJECTDIR}/Touchscreen.o Touchscreen.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/adc_intf.o: adc_intf.c  .generated_files/flags/default/aaba34052760345c3e3a5b90f2d46827fa05f918 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_intf.o.d 
	@${RM} ${OBJECTDIR}/adc_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/adc_intf.o.d" -o ${OBJECTDIR}/adc_intf.o adc_intf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/_ext/2091967020/tft_gfx.o: ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_gfx.c  .generated_files/flags/default/871ce04be717e2b185e55a0e85edd3790ed29697 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}/_ext/2091967020" 
	@${RM} ${OBJECTDIR}/_ext/2091967020/tft_gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/2091967020/tft_gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2091967020/tft_gfx.o.d" -o ${OBJECTDIR}/_ext/2091967020/tft_gfx.o ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_gfx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/_ext/2091967020/tft_master.o: ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_master.c  .generated_files/flags/default/aa97635de8d98b4a06e4e7759a405126299477fb .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}/_ext/2091967020" 
	@${RM} ${OBJECTDIR}/_ext/2091967020/tft_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2091967020/tft_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2091967020/tft_master.o.d" -o ${OBJECTDIR}/_ext/2091967020/tft_master.o ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_master.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/_ext/2003987648/touch_main_example.o: ../../../test_touch_rev.X/test_touch_rev.X/touch_main_example.c  .generated_files/flags/default/571d1bba8360e199b025e2961b7dadf2fc899e87 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}/_ext/2003987648" 
	@${RM} ${OBJECTDIR}/_ext/2003987648/touch_main_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003987648/touch_main_example.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2003987648/touch_main_example.o.d" -o ${OBJECTDIR}/_ext/2003987648/touch_main_example.o ../../../test_touch_rev.X/test_touch_rev.X/touch_main_example.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/a7e55115110a7607a9e2b2fee35c8f464d4af032 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
else
${OBJECTDIR}/ts_lcd.o: ts_lcd.c  .generated_files/flags/default/ae095a7cb92a82b08c38e6c9e941aa0535fd5fee .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ts_lcd.o.d 
	@${RM} ${OBJECTDIR}/ts_lcd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/ts_lcd.o.d" -o ${OBJECTDIR}/ts_lcd.o ts_lcd.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/Touchscreen.o: Touchscreen.c  .generated_files/flags/default/3583e55d26ff620c888a90d12117e2ccc4563708 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Touchscreen.o.d 
	@${RM} ${OBJECTDIR}/Touchscreen.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/Touchscreen.o.d" -o ${OBJECTDIR}/Touchscreen.o Touchscreen.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/adc_intf.o: adc_intf.c  .generated_files/flags/default/94b17be9926f96b24dcedf32b64de91c30be42b8 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/adc_intf.o.d 
	@${RM} ${OBJECTDIR}/adc_intf.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/adc_intf.o.d" -o ${OBJECTDIR}/adc_intf.o adc_intf.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/_ext/2091967020/tft_gfx.o: ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_gfx.c  .generated_files/flags/default/b6ec31353c358bb7d1cf30bcacb89d599a21030b .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}/_ext/2091967020" 
	@${RM} ${OBJECTDIR}/_ext/2091967020/tft_gfx.o.d 
	@${RM} ${OBJECTDIR}/_ext/2091967020/tft_gfx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2091967020/tft_gfx.o.d" -o ${OBJECTDIR}/_ext/2091967020/tft_gfx.o ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_gfx.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/_ext/2091967020/tft_master.o: ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_master.c  .generated_files/flags/default/36596cb53e3409830e6b1ff4b3c41443ccaa635a .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}/_ext/2091967020" 
	@${RM} ${OBJECTDIR}/_ext/2091967020/tft_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/2091967020/tft_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2091967020/tft_master.o.d" -o ${OBJECTDIR}/_ext/2091967020/tft_master.o ../../../test_lcd_rev.X/test_lcd_rev.X/Adafruit_2_4_LCD_Serial_Library/tft_master.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/_ext/2003987648/touch_main_example.o: ../../../test_touch_rev.X/test_touch_rev.X/touch_main_example.c  .generated_files/flags/default/9bc3b9b9540b331fe3015ad4d7473ddda60e8dff .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}/_ext/2003987648" 
	@${RM} ${OBJECTDIR}/_ext/2003987648/touch_main_example.o.d 
	@${RM} ${OBJECTDIR}/_ext/2003987648/touch_main_example.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/2003987648/touch_main_example.o.d" -o ${OBJECTDIR}/_ext/2003987648/touch_main_example.o ../../../test_touch_rev.X/test_touch_rev.X/touch_main_example.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/4de2b53b0f79d9a07e11e6eb4dbea19053857768 .generated_files/flags/default/c9ab9a848ec860c15d50c34be9dd107a6274ab00
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -D_SUPPRESS_PLIB_WARNING   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/lab5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  -D_SUPPRESS_PLIB_WARNING $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/lab5.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/lab5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  -D_SUPPRESS_PLIB_WARNING $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/lab5.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
