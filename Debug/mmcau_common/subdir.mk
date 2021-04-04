################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mmcau_common/fsl_mmcau.c 

OBJS += \
./mmcau_common/fsl_mmcau.o 

C_DEPS += \
./mmcau_common/fsl_mmcau.d 


# Each subdirectory must supply rules for building sources it contributes
mmcau_common/%.o: ../mmcau_common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DDEBUG -DPRINTF_ADVANCED_ENABLE=1 -DLWIP_RAW=1 -DFRDM_K64F -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DMBEDTLS_CONFIG_FILE='"ksdk_mbedtls_config.h"' -D__NEWLIB__ -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/source" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/contrib/apps/ping" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/drivers" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/port" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/port/arch" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/lwip" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/lwip/priv" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/lwip/prot" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/netif" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/netif/ppp" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/netif/ppp/polarssl" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/posix" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/posix/sys" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/CMSIS" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/utilities" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/board" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/startup" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/contrib/apps" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/mbedtls/port/ksdk" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/mbedtls/include/mbedtls" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/mbedtls/include" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/mmcau_common" -I../Generated_Code -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


