#!/bin/sh

# path to kernel sources
KERNEL_SRC_PATH=~/android_kernel_yu_msm8916/

echo "generating device tree..."
./dtbToolCM --force-v2 -o dt.img -s 2048 -p {KERNEL_SRC_PATH}/scripts/dtc/ {KERNEL_SRC_PATH}/arch/arm/boot/dts/

