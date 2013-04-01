#!/bin/sh
./mkbootimg --base 0x80200000 --kernel zImage --ramdisk_offset 0x02000000 --cmdline "androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 vmalloc=400M androidboot.emmc=true" --ramdisk ramdisk.cpio.gz -o boot.img
