#!/bin/sh
./mkbootimg --base 0x00000000 --kernel zImage --ramdisk_offset 0x02000000 --tags_offset 0x01E00000 --pagesize 2048 --cmdline "androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 dwc3.maximum_speed=high dwc3_msm.prop_chg_detect=Y" --ramdisk ramdisk.cpio.gz --dt dt.img -o boot.img
