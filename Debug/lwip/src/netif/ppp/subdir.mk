################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lwip/src/netif/ppp/auth.c \
../lwip/src/netif/ppp/ccp.c \
../lwip/src/netif/ppp/chap-md5.c \
../lwip/src/netif/ppp/chap-new.c \
../lwip/src/netif/ppp/chap_ms.c \
../lwip/src/netif/ppp/demand.c \
../lwip/src/netif/ppp/eap.c \
../lwip/src/netif/ppp/eui64.c \
../lwip/src/netif/ppp/fsm.c \
../lwip/src/netif/ppp/ipcp.c \
../lwip/src/netif/ppp/ipv6cp.c \
../lwip/src/netif/ppp/lcp.c \
../lwip/src/netif/ppp/lwip_ecp.c \
../lwip/src/netif/ppp/magic.c \
../lwip/src/netif/ppp/mppe.c \
../lwip/src/netif/ppp/multilink.c \
../lwip/src/netif/ppp/ppp.c \
../lwip/src/netif/ppp/pppapi.c \
../lwip/src/netif/ppp/pppcrypt.c \
../lwip/src/netif/ppp/pppoe.c \
../lwip/src/netif/ppp/pppol2tp.c \
../lwip/src/netif/ppp/pppos.c \
../lwip/src/netif/ppp/upap.c \
../lwip/src/netif/ppp/utils.c \
../lwip/src/netif/ppp/vj.c 

OBJS += \
./lwip/src/netif/ppp/auth.o \
./lwip/src/netif/ppp/ccp.o \
./lwip/src/netif/ppp/chap-md5.o \
./lwip/src/netif/ppp/chap-new.o \
./lwip/src/netif/ppp/chap_ms.o \
./lwip/src/netif/ppp/demand.o \
./lwip/src/netif/ppp/eap.o \
./lwip/src/netif/ppp/eui64.o \
./lwip/src/netif/ppp/fsm.o \
./lwip/src/netif/ppp/ipcp.o \
./lwip/src/netif/ppp/ipv6cp.o \
./lwip/src/netif/ppp/lcp.o \
./lwip/src/netif/ppp/lwip_ecp.o \
./lwip/src/netif/ppp/magic.o \
./lwip/src/netif/ppp/mppe.o \
./lwip/src/netif/ppp/multilink.o \
./lwip/src/netif/ppp/ppp.o \
./lwip/src/netif/ppp/pppapi.o \
./lwip/src/netif/ppp/pppcrypt.o \
./lwip/src/netif/ppp/pppoe.o \
./lwip/src/netif/ppp/pppol2tp.o \
./lwip/src/netif/ppp/pppos.o \
./lwip/src/netif/ppp/upap.o \
./lwip/src/netif/ppp/utils.o \
./lwip/src/netif/ppp/vj.o 

C_DEPS += \
./lwip/src/netif/ppp/auth.d \
./lwip/src/netif/ppp/ccp.d \
./lwip/src/netif/ppp/chap-md5.d \
./lwip/src/netif/ppp/chap-new.d \
./lwip/src/netif/ppp/chap_ms.d \
./lwip/src/netif/ppp/demand.d \
./lwip/src/netif/ppp/eap.d \
./lwip/src/netif/ppp/eui64.d \
./lwip/src/netif/ppp/fsm.d \
./lwip/src/netif/ppp/ipcp.d \
./lwip/src/netif/ppp/ipv6cp.d \
./lwip/src/netif/ppp/lcp.d \
./lwip/src/netif/ppp/lwip_ecp.d \
./lwip/src/netif/ppp/magic.d \
./lwip/src/netif/ppp/mppe.d \
./lwip/src/netif/ppp/multilink.d \
./lwip/src/netif/ppp/ppp.d \
./lwip/src/netif/ppp/pppapi.d \
./lwip/src/netif/ppp/pppcrypt.d \
./lwip/src/netif/ppp/pppoe.d \
./lwip/src/netif/ppp/pppol2tp.d \
./lwip/src/netif/ppp/pppos.d \
./lwip/src/netif/ppp/upap.d \
./lwip/src/netif/ppp/utils.d \
./lwip/src/netif/ppp/vj.d 


# Each subdirectory must supply rules for building sources it contributes
lwip/src/netif/ppp/%.o: ../lwip/src/netif/ppp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DDEBUG -DPRINTF_ADVANCED_ENABLE=1 -DLWIP_RAW=1 -DFRDM_K64F -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DCPU_MK64FN1M0VLL12 -DCPU_MK64FN1M0VLL12_cm4 -DMBEDTLS_CONFIG_FILE='"ksdk_mbedtls_config.h"' -D__NEWLIB__ -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/source" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/contrib/apps/ping" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/drivers" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/port" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/port/arch" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include/lwip" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include/lwip/priv" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include/lwip/prot" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include/netif" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include/netif/ppp" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include/netif/ppp/polarssl" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include/posix" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include/posix/sys" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/CMSIS" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/utilities" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/board" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/startup" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/contrib/apps" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/lwip/src/include" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/mbedtls/port/ksdk" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/mbedtls/include/mbedtls" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/mbedtls/include" -I"/home/preetham/mcuxpressoide_ws/frdm_frtos_lwip_mqtt_mbedtls/mmcau_common" -I../Generated_Code -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


