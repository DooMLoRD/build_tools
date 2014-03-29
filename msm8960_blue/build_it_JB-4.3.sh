python mkelf.py -o kernel.elf zImage@0x80208000 ramdisk.cpio.gz@0x81900000,ramdisk RPM_JB-4.3.bin@0x00020000,rpm bootcmd_JB-4.3@0x00000000,cmdline
