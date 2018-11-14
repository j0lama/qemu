#!/bin/bash
rm kernel.elf
wget $1:8000/build/kernel.elf
chmod +x kernel.elf
qemu/arm-softmmu/qemu-system-arm -m 256 -M raspi -serial stdio -s -S -kernel kernel.elf
