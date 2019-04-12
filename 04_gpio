/*
 * This example is a simple hexadecimal counter
 * Push the USER button and the number on the indicator increases
 * up to 0xF and then resets to 0x0
 * If you want to see how it works w/o debouncing
 * delete the following line:
 *      #define TURN_ON_CONTACT_DEBOUNCER
 */

#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"

#define TURN_ON_CONTACT_DEBOUNCER

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
    /*
     * Init two default LEDs
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
    /*
     * Init port for indicator
     */
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
 * Just set of commands to waste CPU power for 10ms
 * (basically it is a simple cycle with a predefined number
 * of loops)
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
int main(void)
{
    uint8_t number = 0;
#if defined(TURN_ON_CONTACT_DEBOUNCER)
    /*
     * For contact debouncer algorithm
     */
    uint32_t debouncer_clk = 0;
    uint32_t button_pressed = 0;
#endif

    rcc_config();
    gpio_config();

    /*
     * Turn on indicator
     */
    LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_13);
    din_ind(number);

    while (1) {
#if defined(TURN_ON_CONTACT_DEBOUNCER)
        /*
         * if button is pressed then set flag and reset counter
         */
        if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)) {
            button_pressed = 1;
            debouncer_clk = 0;
        }
        /*
         * if flag is set increase counter
         */
        if (button_pressed) {
            debouncer_clk++;
            delay_10ms();
        }
        /*
         * If counter manages to count up to 5 then button is not bouncing
         * any longer and we need to get action! (process it)
         * NOTE: 5 is just experimental value
         */
        if (debouncer_clk >= 5) {
            LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
            number++;
            din_ind(number);
            button_pressed = 0;
            debouncer_clk = 0;
        }
#else
        if (LL_GPIO_IsInputPinSet(GPIOA, LL_GPIO_PIN_0)) {
            LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
            number++;
            set_indicator(number);
        }
#endif
    }
    return 0;
}
