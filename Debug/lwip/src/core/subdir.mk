################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/core/def.c \
../lwip/src/core/dns.c \
../lwip/src/core/inet_chksum.c \
../lwip/src/core/init.c \
../lwip/src/core/ip.c \
../lwip/src/core/mem.c \
../lwip/src/core/memp.c \
../lwip/src/core/netif.c \
../lwip/src/core/pbuf.c \
../lwip/src/core/raw.c \
../lwip/src/core/stats.c \
../lwip/src/core/sys.c \
../lwip/src/core/tcp.c \
../lwip/src/core/tcp_in.c \
../lwip/src/core/tcp_out.c \
../lwip/src/core/timeouts.c \
../lwip/src/core/udp.c 

OBJS += \
./lwip/src/core/def.o \
./lwip/src/core/dns.o \
./lwip/src/core/inet_chksum.o \
./lwip/src/core/init.o \
./lwip/src/core/ip.o \
./lwip/src/core/mem.o \
./lwip/src/core/memp.o \
./lwip/src/core/netif.o \
./lwip/src/core/pbuf.o \
./lwip/src/core/raw.o \
./lwip/src/core/stats.o \
./lwip/src/core/sys.o \
./lwip/src/core/tcp.o \
./lwip/src/core/tcp_in.o \
./lwip/src/core/tcp_out.o \
./lwip/src/core/timeouts.o \
./lwip/src/core/udp.o 

C_DEPS += \
./lwip/src/core/def.d \
./lwip/src/core/dns.d \
./lwip/src/core/inet_chksum.d \
./lwip/src/core/init.d \
./lwip/src/core/ip.d \
./lwip/src/core/mem.d \
./lwip/src/core/memp.d \
./lwip/src/core/netif.d \
./lwip/src/core/pbuf.d \
./lwip/src/core/raw.d \
./lwip/src/core/stats.d \
./lwip/src/core/sys.d \
./lwip/src/core/tcp.d \
./lwip/src/core/tcp_in.d \
./lwip/src/core/tcp_out.d \
./lwip/src/core/timeouts.d \
./lwip/src/core/udp.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/core/%.o: ../lwip/src/core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DDEBUG -DPRINTF_ADVANCED_ENABLE=1 -DLWIP_RAW=1 -DFRDM_K64F -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DMBEDTLS_CONFIG_FILE='"ksdk_mbedtls_config.h"' -D__NEWLIB__ -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/source" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/contrib/apps/ping" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/drivers" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/port" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/port/arch" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/lwip" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/lwip/priv" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/lwip/prot" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/netif" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/netif/ppp" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/netif/ppp/polarssl" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/posix" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include/posix/sys" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/CMSIS" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/utilities" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/board" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/startup" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/contrib/apps" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/lwip/src/include" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/mbedtls/port/ksdk" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/mbedtls/include/mbedtls" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/mbedtls/include" -I"/home/preetham/mcuxpressoide_ws/FRDM-K64F_lwip_lwip_mqtt_bm/mmcau_common" -I../Generated_Code -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


