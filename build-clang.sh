#! /bin/sh -ea

SCRIPT_DIR=$(dirname $0)
AVR_CLANG_BIN=~/projects/builds/llvm/llvm-project/llvm/bin/clang

cd "${SCRIPT_DIR}"

"${AVR_CLANG_BIN}" main.avr-clang.c -o bin/main.avr-clang.elf -mmcu=atmega328 -target avr -mmcu=atmega328
