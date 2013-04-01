#!/bin/sh
./mkbootimg --base 0x00200000 --kernel zImage --ramdisk ramdisk.cpio.gz -o boot.img
