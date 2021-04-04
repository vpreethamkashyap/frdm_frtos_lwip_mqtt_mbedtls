/**
 * \file
 * \brief Configuration header file for SDK_BitIO
 *
 * This header file is used to configure settings of the SDK Bit I/O module.
 */
#ifndef __LEDpin3_CONFIG_H
#define __LEDpin3_CONFIG_H

#ifndef LEDpin3_CONFIG_PORT_NAME
  #define LEDpin3_CONFIG_PORT_NAME       PORTB
    /*!< name of PORT, is pointer to PORT_Type */
#endif

#ifndef LEDpin3_CONFIG_GPIO_NAME
  #define LEDpin3_CONFIG_GPIO_NAME       GPIOB
    /*!< name of GPIO, is pointer to GPIO_Type */
#endif

#ifndef LEDpin3_CONFIG_PIN_NUMBER
  #define LEDpin3_CONFIG_PIN_NUMBER      21u
    /*!< number of pin, type unsigned integer */
#endif

#ifndef LEDpin3_CONFIG_INIT_PIN_VALUE
  #define LEDpin3_CONFIG_INIT_PIN_VALUE  0
  /*!< 0: Pin data is initialized with 0 (low); 1: pin value is initialized with 1 (high) */
#endif

/* different types of pin direction settings */
#define LEDpin3_CONFIG_INIT_PIN_DIRECTION_NONE    (0)
#define LEDpin3_CONFIG_INIT_PIN_DIRECTION_INPUT   (1)
#define LEDpin3_CONFIG_INIT_PIN_DIRECTION_OUTPUT  (2)

#ifndef LEDpin3_CONFIG_INIT_PIN_DIRECTION
  #define LEDpin3_CONFIG_INIT_PIN_DIRECTION  LEDpin3_CONFIG_INIT_PIN_DIRECTION_OUTPUT
#endif

#ifndef LEDpin3_CONFIG_DO_PIN_MUXING
  #define LEDpin3_CONFIG_DO_PIN_MUXING  1
  /*!< 1: perform pin muxing in Init(), 0: do not do pin muxing */
#endif

#endif /* __LEDpin3_CONFIG_H */
