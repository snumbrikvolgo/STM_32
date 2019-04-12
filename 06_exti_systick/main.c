/*
 * This example demonstrates how to use EXTI and System Timer
 */

static int digit = 0;

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_exti.h"
#include "stm32f0xx_ll_utils.h"
#include "stm32f0xx_ll_cortex.h"

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
 * Configure GPIO
 */
static void gpio_config(void)
{
    /*
     * Configure LEDs
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    /*
     * Turn on pull down resistors for external interrupt channels
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_0, LL_GPIO_PULL_DOWN);

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

    return;
}

/*
 * Configure external interrupts
 */
static void exti_config(void)
{
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);

    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE1);
    LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);

    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_1);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_1);

    LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
    LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
    /*
     * Setting interrupts
     */
    NVIC_EnableIRQ(EXTI0_1_IRQn);
    NVIC_SetPriority(EXTI0_1_IRQn, 0);
}


static int counter_top = 1000;
/*
 * Handler for encoder
 */
void EXTI0_1_IRQHandler(void)
{
    /*
     * +1 implies forward state
     * -1 implies backward state
     *  0 implies transitional state
     */
    static int8_t states[] = {0,-1,1,0,1,0,0,-1,-1,0,0,1,0,1,-1,0};
    /*
     * Saves two last states
     */
    static uint8_t enc_trans = 0;
    /*
     * Stores sum of states giving direction
     */
    static int8_t enc_dir = 0;
    /*
     * To display current state
     */
    uint8_t enc_state = 0x00;

    enc_state = 0x0003 & LL_GPIO_ReadInputPort(GPIOA);
    enc_trans = ((0x03 & enc_trans) << 2) | enc_state;
    enc_dir += states[enc_trans];

    /*
     * If we got quite positive number it means there were more "+1"
     * hence it is forward direction
     */
    if (enc_dir == 4) {
        if (counter_top < 3000)
            counter_top += counter_top / 10;
        LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_9);
        digit--;
        enc_dir = 0;
    }

    /*
     * If we got quite negative number it means there were more "-1"
     * hence it is backward direction
     */
    if (enc_dir == -4) {
        if (counter_top > 10)
            counter_top -= counter_top / 10;
        LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_9);
        digit++;
        enc_dir = 0;
    }

    /*
     * don't forget to reset flags
     */
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
}

/*
 * Configure system timer to time 1 ms
 */
static void systick_config(void)
{
    LL_InitTick(48000000, 1000);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}

/*
 * Handler for system timer
 * Count up to counter_top then switch led
 * (to make blinking more visible)
 */

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

static void din_ind (uint32_t value) {
	do
	{

	if (value <= 9) {

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_13);
		set_indicator(0);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_8);
		set_indicator(0);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_9);
		set_indicator(0);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_10);
		set_indicator(value);

		delay_10ms();
	}
	if (value >= 10 && value < 100) {
		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_13);
		set_indicator(0);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_8);
		set_indicator(0);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_9);
		set_indicator(value/10);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_10);
		set_indicator(value%10);

		delay_10ms();
	}

	if (value >= 100 && value < 1000) {
		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_13);
		set_indicator(0);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_8);
		set_indicator(value/100);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_9);
		set_indicator((value%100)/10);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_10);
		set_indicator(value%10);

		delay_10ms();
	}

	if (value >= 1000 && value < 10000) {
		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_13);
		set_indicator(value/1000);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_8);
		set_indicator(value/100);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_9);
		set_indicator((value%100)/10);

		delay_10ms();

		LL_GPIO_WriteOutputPort(GPIOB, 0xffff & ~LL_GPIO_PIN_10);
		set_indicator(value%10);

		delay_10ms();
	}
	}
	while (!LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0));
}



void SysTick_Handler(void)
{

    static int counter = 0;
    counter = (counter + 1) % counter_top;
    if (!counter)
    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
    //in_ind(digit);
}

int main(void)
{
    rcc_config();
    gpio_config();
    exti_config();
    systick_config();

    while (1)
    {
        din_ind(digit);
    }
    return 0;
}
