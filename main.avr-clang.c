// ADC interrupt handler. Function name taken from avr-gcc ELF files using ISR() macro.
__attribute__((interrupt)) void __vector_21(void)  {
  __asm__("break");
}

// Catch-all interrupt handler. Function name taken from avr-gcc ELF files using ISR() macro.
 __attribute__((interrupt)) void __vector_default(void) {
  __asm__("break");

}

int main(void) {
  return 0;
}
