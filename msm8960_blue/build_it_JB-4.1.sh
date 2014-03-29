python mkelf.py -o kernel.elf zImage@0x80208000 ramdisk.cpio.gz@0x81400000,ramdisk RPM_JB.bin@0x00020000,rpm bootcmd_JB@0x00000000,cmdline
