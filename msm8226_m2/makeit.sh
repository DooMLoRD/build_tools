#!/bin/sh
./mkbootimg --base 0x00000000 --kernel zImage --ramdisk_offset 0x02300000 --tags_offset 0x01E00000 --pagesize 2048 --cmdline "console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37" --ramdisk ramdisk.cpio.gz --dt dt.img -o boot.img
