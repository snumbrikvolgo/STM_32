/*
 * This example demonstrates using timers to capture input
 * signal
 */

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_tim.h"

static uint32_t old = 0;
uint32_t output = 0;

/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
static void rcc_config()
{
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

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

/*
 * Clock on GPIOC and set two led pins
 */
static void gpio_config(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_2, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_3, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6, LL_GPIO_MODE_OUTPUT);
    //LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_10, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_13, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_14, LL_GPIO_MODE_OUTPUT);
     //Init port for USER button

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);

    return;
}

/*
 * Configure timer to input capture mode
 */
static void timers_config(void)
{
    /*
     * Configure input channel
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_5, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_5, LL_GPIO_AF_2);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_5, LL_GPIO_PULL_UP);

    /*
     * Setup timer to capture input mode
     */
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
    LL_TIM_SetPrescaler(TIM2, 47999);
    LL_TIM_IC_SetFilter(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_IC_FILTER_FDIV16_N5);
    LL_TIM_IC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1,
                          LL_TIM_IC_POLARITY_FALLING);
    LL_TIM_IC_SetActiveInput(TIM2, LL_TIM_CHANNEL_CH1,
                             LL_TIM_ACTIVEINPUT_DIRECTTI);
    LL_TIM_IC_SetPrescaler(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_ICPSC_DIV1);
    LL_TIM_CC_EnableChannel(TIM2, LL_TIM_CHANNEL_CH1);

    LL_TIM_EnableIT_CC1(TIM2);

    LL_TIM_EnableCounter(TIM2);
    LL_TIM_GenerateEvent_UPDATE(TIM2);

    /*
     * Setup NVIC
     */
    NVIC_EnableIRQ(TIM2_IRQn);
    NVIC_SetPriority(TIM2_IRQn, 1);
    return;
}

void TIM2_IRQHandler(void)
{

    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
    //LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_9);
    output = LL_TIM_IC_GetCaptureCH1(TIM2) - old;
    old = LL_TIM_IC_GetCaptureCH1(TIM2);
    //output = 1234;


    LL_TIM_ClearFlag_CC1(TIM2);
}


__attribute__((naked)) static void delay_10ms(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay_10ms+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0xea60"); //60000
}

static void set_indicator(uint8_t number)
{
    /*
     * Put all pins for indicator together (for segments only)
     */
    static uint32_t mask = LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | \
                           LL_GPIO_PIN_14 | LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | \
                           LL_GPIO_PIN_6 ;
    /*
     * For simplicity there are only decoded values for the first 4 numbers
     */
     uint32_t decoder[16] = {
     LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
     LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_14, // 0
     LL_GPIO_PIN_1 | LL_GPIO_PIN_2, // 1
     LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_4 | \
     LL_GPIO_PIN_14, // 2
     LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | \
     LL_GPIO_PIN_14, // 3
     LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2, // 4

     LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_0 | LL_GPIO_PIN_2 |
     LL_GPIO_PIN_14, //5
     LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_0 | LL_GPIO_PIN_2 |
     LL_GPIO_PIN_14 | LL_GPIO_PIN_4, //6
     LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2,//7
     LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_14 |
     LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6,//8
     LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_6 |
     LL_GPIO_PIN_5 | LL_GPIO_PIN_14,//9
     LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 |
     LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6,//A
     LL_GPIO_PIN_2 | LL_GPIO_PIN_14 | LL_GPIO_PIN_4 | LL_GPIO_PIN_5 |
     LL_GPIO_PIN_6,//B
     LL_GPIO_PIN_6 | LL_GPIO_PIN_4 | LL_GPIO_PIN_14,//c:
     LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_14 | LL_GPIO_PIN_4 |
     LL_GPIO_PIN_6,//D
     LL_GPIO_PIN_0 | LL_GPIO_PIN_14 |
     LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6,//E
     LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_0 | LL_GPIO_PIN_4 //F
 };
    const uint8_t max_num = sizeof(decoder) / sizeof(uint32_t);
    uint32_t port_state = 0;

    /*
     * Read current state and do not change pins that are not related to
     * indicator (that is done by using masking)
     */
    port_state = LL_GPIO_ReadOutputPort(GPIOB);
    /*
     * Example:
     * 01100101 <= Input
     * mask = 111 (pins allowed to be changed)
     * ~mask = 11111000 (inverted mask sets remaing bits to one)
     * result = result & ~mask (zero only first three bits)
     * result = result | 001 (modify first three bits)
     * result -> 01100001
     */
    port_state = (port_state & ~mask) | decoder[number % max_num];
    LL_GPIO_WriteOutputPort(GPIOB, port_state);
    return;
}

void show_digit(digit)
{
    uint32_t decoder[16] = {
    LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_6 | \
    LL_GPIO_PIN_4 | LL_GPIO_PIN_5, // 0
    LL_GPIO_PIN_1 | LL_GPIO_PIN_2, // 1
    LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_4 | \
    LL_GPIO_PIN_14, // 2
    LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | \
    LL_GPIO_PIN_14, // 3
    LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2, // 4

    LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_0 | LL_GPIO_PIN_2 |
    LL_GPIO_PIN_14, //5
    LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_0 | LL_GPIO_PIN_2 |
    LL_GPIO_PIN_14 | LL_GPIO_PIN_4, //6
    LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2,//7
    LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_14 |
    LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6,//8
    LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_6 |
    LL_GPIO_PIN_5 | LL_GPIO_PIN_14,//9
    LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 |
    LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6,//A
    LL_GPIO_PIN_2 | LL_GPIO_PIN_14 | LL_GPIO_PIN_4 | LL_GPIO_PIN_5 |
    LL_GPIO_PIN_6,//B
    LL_GPIO_PIN_6 | LL_GPIO_PIN_4 | LL_GPIO_PIN_14,//c:
    LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_14 | LL_GPIO_PIN_4 |
    LL_GPIO_PIN_6,//D
    LL_GPIO_PIN_0 | LL_GPIO_PIN_14 |
    LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6,//E
    LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_0 | LL_GPIO_PIN_4 //F
};
uint16_t out = decoder[digit];
 LL_GPIO_WriteOutputPort(GPIOB, out);
 return;

}

static void dyn_ind (uint32_t value) {

		LL_GPIO_WriteOutputPort(GPIOB, ~LL_GPIO_PIN_13);
		set_indicator((value/1000)%10);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, ~LL_GPIO_PIN_8);
		set_indicator((value/100) % 10);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, ~LL_GPIO_PIN_9);
		set_indicator((value / 10) %10);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, ~LL_GPIO_PIN_10);
		set_indicator(value%10);

		delay_10ms();
}


int main(void)
{
    rcc_config();
    gpio_config();
    timers_config();

    while (1)
    {
        dyn_ind(output);

    }
    return 0;
}
