#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_exti.h"

#ifndef DEF_GUARD_MAIN
#define DEF_GUARD_MAIN

void SystemClock_Config(void);
void SysTick_Handler(void);
void gpio_config(void);
#include "buttons.h"


uint8_t segment[10] = {0b0111111, 0b0000110, 0b1011011, 0b1001111, 0b1100110, 0b1101101, 0b1111101, 0b0000111, 0b1111111, 0b1101111};


uint16_t number[4] = {0b011100000000, 0b011010000000, 0b010110000000, 0b001110000000};

uint8_t digit[4];

uint16_t bell_pin = 0b1000000000000;

uint16_t sound[26] = {1000,7,1000,4,1000,2,1000,4,1000,4,1000,1,1000,2,1000,7,1000,4,1000,1,1000,2,1000,4,1000,7};


void gpio_config(void)
{
    /* Setting ticking to GPIOC*/
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);

    /* Activating and configurating Pins*/

    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT); // segment a
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT); // segment b
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT); // segment c
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT); // segment d
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_4, LL_GPIO_MODE_OUTPUT); // segment e
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_5, LL_GPIO_MODE_OUTPUT); // segment f
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_6, LL_GPIO_MODE_OUTPUT); // segment g

    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_7, LL_GPIO_MODE_OUTPUT);   // 1st number in clocks
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);   // 2nd number in clocks
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);   // 3rd number in clocks
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_10, LL_GPIO_MODE_OUTPUT);  // 4th number in clocks

      LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_11, LL_GPIO_MODE_OUTPUT);  //dot

    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_12, LL_GPIO_MODE_OUTPUT);   // bell
}


int
main(void) {

        SystemClock_Config();
        gpio_config();
        UserButton_Init();
        FirstButton_Init();
        SecondButton_Init();

        while (1) {
          LL_GPIO_WriteOutputPort(GPIOC, number[0] | segment[digit[3]]);
          LL_GPIO_WriteOutputPort(GPIOC, number[1] | segment[digit[2]]);
          LL_GPIO_WriteOutputPort(GPIOC, number[2] | segment[digit[1]]);
          LL_GPIO_WriteOutputPort(GPIOC, number[3] | segment[digit[0]]);
        }
}

//#include "buttons.c"


void
SystemClock_Config() {
        /* Set FLASH latency */
        LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

        /* Enable HSI and wait for activation*/
        LL_RCC_HSI_Enable();
        while (LL_RCC_HSI_IsReady() != 1);

        /* Main PLL configuration and activation */
        LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                    LL_RCC_PLL_MUL_12);

        LL_RCC_PLL_Enable();
        while (LL_RCC_PLL_IsReady() != 1);

        /* Sysclk activation on the main PLL */
        LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
        LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
        while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

        /* Set APB1 prescaler */
        LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

        /* Set systick to 1ms */
        SysTick_Config(48000000/1000);

        /* Update CMSIS variable (which can be updated also
         * through SystemCoreClockUpdate function) */
        SystemCoreClock = 168000000;
}

/* time, which will be displayed */
uint64_t display_time = 0;



//==============================================================================================
//
//  @descr System Timer Handler
//
//
//  @note here we make ringing during ALARM mode
//        and updating numders at our display
//==============================================================================================
void
SysTick_Handler(void)
 {
      TIME++;
      /* to display time while adjusting*/
      if (global_alarm_state == TUNE)
        {
            display_time = TIME_X;
        }
      else
        {
            display_time = TIME;
        }

      if ((TIME == TIME_X) && (global_alarm_state == CLOCK)) {
          global_alarm_state  = ALARM;
      }


      if ((display_time % sound[(display_time%125)%26] == 0) && (global_alarm_state == ALARM))
        {
          //LL_GPIO_WriteOutputPort(GPIOC, bell_pin);
          LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_12); //<-proper
        }

      if (display_time % 500 == 0) {
          number[1] = number[1]^0b100000000000;   //dot blinking
        }
      if (display_time % 10 == 0) {
        digit[0] = ((display_time / (60*1000)) % 60) % 10;
        digit[1] = ((display_time / (60*1000)) % 60) / 10;
        digit[2] = ((display_time / (60*60*1000)) % 24) % 10;
        digit[3] = ((display_time / (60*60*1000)) % 24) / 10;
      }


}
#endif //DEF_GUARD_MAIN
