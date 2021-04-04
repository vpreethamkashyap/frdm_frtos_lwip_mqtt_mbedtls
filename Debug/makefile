################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include source/subdir.mk
-include mmcau_common/subdir.mk
-include mbedtls/port/ksdk/subdir.mk
-include mbedtls/library/subdir.mk
-include lwip/src/netif/ppp/subdir.mk
-include lwip/src/netif/subdir.mk
-include lwip/src/core/ipv6/subdir.mk
-include lwip/src/core/ipv4/subdir.mk
-include lwip/src/core/subdir.mk
-include lwip/src/api/subdir.mk
-include lwip/port/subdir.mk
-include lwip/contrib/apps/ping/subdir.mk
-include drivers/subdir.mk
-include board/subdir.mk
-include Generated_Code/subdir.mk
-include CMSIS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: frdm_frtos_lwip_mqtt_mbedtls.axf

# Tool invocations
frdm_frtos_lwip_mqtt_mbedtls.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L../libs --coverage -Xlinker -Map="frdm_frtos_lwip_mqtt_mbedtls.map" -Xlinker --gc-sections -Xlinker -print-memory-usage -Xlinker --defsym=__ram_vector_table__=1 -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -T "FRDM-K64F_lwip_lwip_mqtt_bm_Debug.ld" -o "frdm_frtos_lwip_mqtt_mbedtls.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) frdm_frtos_lwip_mqtt_mbedtls.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "frdm_frtos_lwip_mqtt_mbedtls.axf"; # arm-none-eabi-objcopy -v -O binary "frdm_frtos_lwip_mqtt_mbedtls.axf" "frdm_frtos_lwip_mqtt_mbedtls.bin" ; # checksum -p MK64FN1M0xxx12 -d "frdm_frtos_lwip_mqtt_mbedtls.bin";
	-@echo ' '

.PHONY: all clean dependents post-build

-include ../makefile.targets
