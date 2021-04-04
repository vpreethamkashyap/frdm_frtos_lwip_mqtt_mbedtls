/* ###################################################################
**     This component module is generated by Processor Expert. Do not modify it.
**     Filename    : I2C1.h
**     Project     : FRDM-K64F_lwip_mqtt_bm
**     Processor   : MK64FN1M0VLL12
**     Component   : GenericSWI2C
**     Version     : Component 01.021, Driver 01.00, CPU db: 3.00.000
**     Repository  : Legacy User Components
**     Compiler    : GNU C Compiler
**     Date/Time   : 2017-05-05, 17:36, # CodeGen: 37
**     Abstract    :
**
**     Settings    :
**          Component name                                 : I2C1
**          Delay (ns)                                     : 1250
**          Trials                                         : 256
**          SDA                                            : SDK_BitIO
**          SCL                                            : SDK_BitIO
**          SDK                                            : MCUC1
**          Wait                                           : WAIT1
**          Yield                                          : yes
**     Contents    :
**         ResetBus          - bool I2C1_ResetBus(void);
**         SendChar          - uint8_t I2C1_SendChar(uint8_t Chr);
**         RecvChar          - uint8_t I2C1_RecvChar(uint8_t *Chr);
**         SendBlock         - uint8_t I2C1_SendBlock(void *Ptr, uint16_t Siz, uint16_t *Snt);
**         SendBlockContinue - uint8_t I2C1_SendBlockContinue(void *Ptr, uint16_t Siz, uint16_t *Snt);
**         RecvBlock         - uint8_t I2C1_RecvBlock(void *Ptr, uint16_t Siz, uint16_t *Rcv);
**         RecvBlockCustom   - uint8_t I2C1_RecvBlockCustom(void *Ptr, uint16_t Siz, uint16_t *Rcv,...
**         SendAck           - void I2C1_SendAck(bool Ack);
**         SendStop          - uint8_t I2C1_SendStop(void);
**         SelectSlave       - uint8_t I2C1_SelectSlave(uint8_t Slv);
**         GetSelected       - uint8_t I2C1_GetSelected(uint8_t *Slv);
**         Deinit            - void I2C1_Deinit(void);
**         Init              - void I2C1_Init(void);
**
**     * Copyright (c) 2014-2017, Erich Styger
**      * Web:         https://mcuoneclipse.com
**      * SourceForge: https://sourceforge.net/projects/mcuoneclipse
**      * Git:         https://github.com/ErichStyger/McuOnEclipse_PEx
**      * All rights reserved.
**      *
**      * Redistribution and use in source and binary forms, with or without modification,
**      * are permitted provided that the following conditions are met:
**      *
**      * - Redistributions of source code must retain the above copyright notice, this list
**      *   of conditions and the following disclaimer.
**      *
**      * - Redistributions in binary form must reproduce the above copyright notice, this
**      *   list of conditions and the following disclaimer in the documentation and/or
**      *   other materials provided with the distribution.
**      *
**      * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
**      * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
**      * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
**      * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
**      * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
**      * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
**      * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
**      * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
**      * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
**      * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
** ###################################################################*/
/*!
** @file I2C1.h
** @version 01.00
** @brief
**
*/         
/*!
**  @addtogroup I2C1_module I2C1 module documentation
**  @{
*/         

#ifndef __I2C1_H
#define __I2C1_H

/* MODULE I2C1. */
#include "MCUC1.h" /* SDK and API used */
#include "I2C1config.h" /* configuration */


typedef enum I2C1_EnumStartFlags_ {
  I2C1_SEND_START,        /* Start is sent */
  I2C1_DO_NOT_SEND_START  /* Start is not sent */
} I2C1_EnumStartFlags;

typedef enum I2C1_EnumAckFlags_ {
  I2C1_SEND_LAST_ACK,   /* Nack after last received byte is sent */
  I2C1_DO_NOT_LAST_ACK  /* Nack after last received byte is not sent */
} I2C1_EnumAckFlags;

/* defines to be used for I2C1_SendAck(); */
#define I2C1_ACK         0U
#define I2C1_NOACK       1U

void I2C1_Init(void);
/*
** ===================================================================
**     Method      :  I2C1_Init (component GenericSWI2C)
**     Description :
**         Initializes the associated peripheral(s) and the components
**         internal variables.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/

uint8_t I2C1_SendChar(uint8_t Chr);
/*
** ===================================================================
**     Method      :  I2C1_SendChar (component GenericSWI2C)
**     Description :
**         When working as a MASTER, this method writes 7 bits of slave
**         address plus R/W bit = 0 to the I2C bus and then writes one
**         character (byte) to the bus. The slave address must be
**         specified before by the "SelectSlave" method or in the
**         component initialization section of 'Slave address init'
**         property. When working as the SLAVE, this method writes one
**         character (byte) to the bus. If the ERR_NOTAVAIL error code
**         returned, the char is successfully sent to master but the
**         master device responds by an acknowledgment instead of no
**         acknowledgment at the end of transfer. 'OnError' event is
**         called in this case.
**     Parameters  :
**         NAME            - DESCRIPTION
**         Chr             - Character to send
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
**                           ERR_BUSY - The slave device is busy, it
**                           does not respond by the acknowledgment
**                           (MASTER mode only)
**                           ERR_NOTAVAIL - The master device sends
**                           acknowledgment instead of no acknowledgment
**                           after the last byte transfer (SLAVE mode
**                           only)
**                           ERR_DISABLED - Device is disabled
**                           ERR_BUSOFF - Clock timeout elapsed (SLAVE
**                           mode only)
** ===================================================================
*/

uint8_t I2C1_RecvChar(uint8_t *Chr);
/*
** ===================================================================
**     Method      :  I2C1_RecvChar (component GenericSWI2C)
**     Description :
**         When working as a MASTER, this method writes 7 bits of slave
**         address plus R/W bit = 1 to the I2C bus and then reads one
**         character (byte) from the bus. The slave address must be
**         specified before by the "SelectSlave" method or in the
**         component initialization section of 'Slave address init'
**         property. When working as a SLAVE, this method reads one
**         character (byte) from the bus.
**     Parameters  :
**         NAME            - DESCRIPTION
**       * Chr             - Pointer to received character
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
**                           ERR_BUSY - The slave device is busy, it
**                           does not respond by the acknowledgment
**                           (MASTER mode only)
**                           ERR_DISABLED - Device is disabled
**                           ERR_BUSOFF - Clock timeout elapsed (SLAVE
**                           mode only)
** ===================================================================
*/

uint8_t I2C1_SendBlock(void *Ptr, uint16_t Siz, uint16_t *Snt);
/*
** ===================================================================
**     Method      :  I2C1_SendBlock (component GenericSWI2C)
**     Description :
**         When working as a MASTER, this method writes 7 bits of slave
**         address plus R/W bit = 0 to the I2C bus and then writes the
**         block of characters to the bus. If the component is disabled
**         (by the "Disable" method or initialization), the block is
**         moved to the output buffer if the 'Output buffer size'
**         property is different from zero. The content of the output
**         buffer is sent immediately with the stop condition at the
**         end when the component is enabled by the "Enable" method.
**         After the output buffer transmission, the whole output
**         buffer is cleared. The slave address must be specified
**         before by the "SelectSlave" method or in component
**         initialization section of 'Slave address init' property.
**         When working as a SLAVE, this method writes block of
**         characters to the bus. If the ERR_NOTAVAIL error code is
**         returned, the whole block is successfully sent to a master
**         but the master device responds by an acknowledgment instead
**         of no acknowledgment sent at the end of the last block byte
**         transfer. 'OnError' event is called in this case.
**     Parameters  :
**         NAME            - DESCRIPTION
**       * Ptr             - A pointer to the block of data to send
**         Siz             - The size of the block
**       * Snt             - A pointer to the number of data that are
**                           sent (copied to buffer)
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
**                           ERR_BUSY - The slave device is busy, it
**                           does not respond by the acknowledgment
**                           (MASTER mode only)
**                           ERR_TXFULL - Output buffer is full (MASTER
**                           mode only)
**                           ERR_NOTAVAIL - The master device sends
**                           acknowledgment instead of no acknowledgment
**                           after the last byte transfer (SLAVE mode
**                           only)
**                           ERR_DISABLED - Device is disabled
**                           ERR_BUSOFF - Clock timeout elapsed (SLAVE
**                           mode only)
** ===================================================================
*/

uint8_t I2C1_RecvBlock(void *Ptr, uint16_t Siz, uint16_t *Rcv);
/*
** ===================================================================
**     Method      :  I2C1_RecvBlock (component GenericSWI2C)
**     Description :
**         When working as a MASTER, this method writes 7 bits of slave
**         address plus R/W bit = 1 to the I2C bus and then reads the
**         block of characters from the bus. The slave address must be
**         specified before by the "SelectSlave" method or in component
**         initialization section of 'Slave address init' property.
**         When working as a SLAVE, this method reads the block of
**         characters from the bus.
**     Parameters  :
**         NAME            - DESCRIPTION
**       * Ptr             - A pointer to the block space for received
**                           data
**         Siz             - The size of the block
**       * Rcv             - A pointer to the number of actually
**                           received data
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
**                           ERR_BUSY - The slave device is busy, it
**                           does not respond by the acknowledgment
**                           (MASTER mode only)
**                           ERR_DISABLED - Device is disabled
**                           ERR_BUSOFF - Clock timeout elapsed (SLAVE
**                           mode only)
** ===================================================================
*/

uint8_t I2C1_SendStop(void);
/*
** ===================================================================
**     Method      :  I2C1_SendStop (component GenericSWI2C)
**     Description :
**         When working as a MASTER, if the 'Automatic stop condition'
**         property value is 'no', this method sends a valid stop
**         condition to the serial data line of the I2C bus to
**         terminate the communication on the bus after using send
**         methods. This method is enabled only if the component is in
**         MASTER mode and 'Automatic stop condition' property value is
**         'no'
**     Parameters  : None
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
**                           ERR_DISABLED - Device is disabled
** ===================================================================
*/

uint8_t I2C1_SelectSlave(uint8_t Slv);
/*
** ===================================================================
**     Method      :  I2C1_SelectSlave (component GenericSWI2C)
**     Description :
**         When working as a MASTER, this method selects a new slave
**         for communication by its slave address value. Any send or
**         receive method are directed to or from the selected device,
**         until a new slave device is selected by this method. If the
**         selected slave uses 10-bit slave addressing, as the
**         parameter 7 bits must be passed, which involves 10-bit
**         addressing (11110XX), including two MSBs of slave address
**         (XX). The second byte of the 10-bit slave address must be
**         sent to the slave as a general character of send methods.
**         This method is available only if the component is in MASTER
**         mode.
**     Parameters  :
**         NAME            - DESCRIPTION
**         Slv             - Slave address value
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
**                           ERR_DISABLED -  Device is disabled
** ===================================================================
*/

uint8_t I2C1_GetSelected(uint8_t *Slv);
/*
** ===================================================================
**     Method      :  I2C1_GetSelected (component GenericSWI2C)
**     Description :
**         When working as a MASTER, this method returns the
**         identification address value of the slave, which is
**         currently selected for communication with the master. If the
**         current slave uses 10-bit slave addressing, the method
**         returns the first 7 bits only, which involves 10-bit
**         addressing (11110XX), including two MSBs of the slave
**         address (XX). This method is not able to return the rest
**         value of 10-bit slave address. This method is available only
**         if the component is in MASTER mode.
**     Parameters  :
**         NAME            - DESCRIPTION
**       * Slv             - A pointer to the current selected slave
**                           address value
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
** ===================================================================
*/

bool I2C1_ResetBus(void);
/*
** ===================================================================
**     Method      :  I2C1_ResetBus (component GenericSWI2C)
**     Description :
**         Reset bus if needed.
**     Parameters  : None
**     Returns     :
**         ---             - TRUE if bus is idle, FALSE if bus is
**                           busy/hung
** ===================================================================
*/

uint8_t I2C1_SendBlockContinue(void *Ptr, uint16_t Siz, uint16_t *Snt);
/*
** ===================================================================
**     Method      :  I2C1_SendBlockContinue (component GenericSWI2C)
**     Description :
**         Same is SendBlock() but does not send start condition. When
**         working as a MASTER, this method writes 7 bits of slave
**         address plus R/W bit = 0 to the I2C bus and then writes the
**         block of characters to the bus. If the component is disabled
**         (by the "Disable" method or initialization), the block is
**         moved to the output buffer if the 'Output buffer size'
**         property is different from zero. The content of the output
**         buffer is sent immediately with the stop condition at the
**         end when the component is enabled by the "Enable" method.
**         After the output buffer transmission, the whole output
**         buffer is cleared. The slave address must be specified
**         before by the "SelectSlave" method or in component
**         initialization section of 'Slave address init' property.
**         When working as a SLAVE, this method writes block of
**         characters to the bus. If the ERR_NOTAVAIL error code is
**         returned, the whole block is successfully sent to a master
**         but the master device responds by an acknowledgment instead
**         of no acknowledgment sent at the end of the last block byte
**         transfer. 'OnError' event is called in this case.
**     Parameters  :
**         NAME            - DESCRIPTION
**       * Ptr             - A pointer to the block of data to send
**         Siz             - The size of the block
**       * Snt             - A pointer to the number of data that are
**                           sent (copied to buffer)
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
**                           ERR_BUSY - The slave device is busy, it
**                           does not respond by the acknowledgment
**                           (MASTER mode only)
**                           ERR_TXFULL - Output buffer is full (MASTER
**                           mode only)
**                           ERR_NOTAVAIL - The master device sends
**                           acknowledgment instead of no acknowledgment
**                           after the last byte transfer (SLAVE mode
**                           only)
**                           ERR_DISABLED - Device is disabled
**                           ERR_BUSOFF - Clock timeout elapsed (SLAVE
**                           mode only)
** ===================================================================
*/

uint8_t I2C1_RecvBlockCustom(void *Ptr, uint16_t Siz, uint16_t *Rcv, I2C1_EnumStartFlags flagsStart, I2C1_EnumAckFlags flagsAck);
/*
** ===================================================================
**     Method      :  I2C1_RecvBlockCustom (component GenericSWI2C)
**     Description :
**         Same as RecvBlock(), but with additional flags to control
**         the bus transfer.
**     Parameters  :
**         NAME            - DESCRIPTION
**       * Ptr             - A pointer to the block space for received
**                           data
**         Siz             - The size of the block
**       * Rcv             - A pointer to the number of actually
**                           received data
**         flagsStart      - Flags for start condition
**         flagsAck        - Flags for Ack after last byte
**     Returns     :
**         ---             - Error code, possible codes:
**                           ERR_OK - OK
**                           ERR_SPEED - This device does not work in
**                           the active speed mode
**                           ERR_BUSY - The slave device is busy, it
**                           does not respond by the acknowledgment
**                           (MASTER mode only)
**                           ERR_DISABLED - Device is disabled
**                           ERR_BUSOFF - Clock timeout elapsed (SLAVE
**                           mode only)
** ===================================================================
*/

void I2C1_SendAck(bool Ack);
/*
** ===================================================================
**     Method      :  I2C1_SendAck (component GenericSWI2C)
**     Description :
**         The method sends ACK to the bus.
**     Parameters  :
**         NAME            - DESCRIPTION
**         Ack             - If acknowledge is high or low
**     Returns     : Nothing
** ===================================================================
*/

void I2C1_Deinit(void);
/*
** ===================================================================
**     Method      :  I2C1_Deinit (component GenericSWI2C)
**     Description :
**         Driver de-initialization method.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/

/* END I2C1. */

#endif
/* ifndef __I2C1_H */
/*!
** @}
*/
/*
** ###################################################################
**
**     This file was created by Processor Expert 10.5 [05.21]
**     for the Freescale Kinetis series of microcontrollers.
**
** ###################################################################
*/
