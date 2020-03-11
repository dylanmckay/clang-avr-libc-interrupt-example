#include <avr/interrupt.h>

ISR(BADISR_vect)
{
  __asm__("break");
}

ISR(ADC_vect)
{
  __asm__("break");
}

int main(void) {
  return 0;
}
