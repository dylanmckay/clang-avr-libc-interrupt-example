# AVR Clang interrupt handling example

Clang currently uses avr-gcc's runtime libraries when linking AVR executables.

The ISR tables are provided by GCC's AVR CRT files. Projects that target AVR-GCC
use the ISR(..) #define macro to define interrupt handlers. This macro hides the implementation
details.

## Handling exceptions with AVR and Clang

By default, the AVR-GCC runtime libraries are linked when generating ELF executables with AVR/clang.

You can handle interrupts using clang by either

1) write functions with `__attribute__(interrupt)`. The function names must match those defined in the AVR-GCC
CRT assembly and object files.

or

2) write your own ISR table in assembly and chose the ISR handler symbol names yourself.

This repository is an example of (1).

## Slightly more context

GCC defines the ISR table in assembly using [weak](https://en.wikipedia.org/wiki/Weak_symbol) symbol references. This allows linking to succeed
when no ISR handlers are explicitly defined. If you name your AVR-Clang methods with the same names
that GCC uses for its ISR tables, the linker will automatically point at your custom ISR handler.

GCC CRT ISR handler names:

* ADC interrupt handler: `__vector_21`
* Catch-all interrupt handler: `__vector_default`

This example repository was created in response to a question on llvm-dev: https://lists.llvm.org/pipermail/llvm-dev/2020-March/139732.html
