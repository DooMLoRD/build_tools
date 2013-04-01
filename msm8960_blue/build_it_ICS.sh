python mkelf.py -o kernel.elf zImage@0x80208000 ramdisk.cpio.gz@0x81300000,ramdisk RPM_ICS.bin@0x00020000,rpm bootcmd_ICS@0x00000000,cmdline
