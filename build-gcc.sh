#! /bin/sh -ea

SCRIPT_DIR=$(dirname $0)

cd "${SCRIPT_DIR}"

avr-gcc main.avr-gcc.c -o bin/main.avr-gcc.elf -mmcu=atmega328
