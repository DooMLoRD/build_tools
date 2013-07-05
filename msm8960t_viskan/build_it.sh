python mkelf.py -o kernel.elf zImage@0x80208000 ramdisk.cpio.gz@0x81600000,ramdisk RPM.bin@0x00020000,rpm bootcmd@0x00000000,cmdline
