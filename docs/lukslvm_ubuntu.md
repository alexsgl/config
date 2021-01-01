Running Ubuntu using [LUKS](https://en.wikipedia.org/wiki/Linux_Unified_Key_Setup) on [LVM](https://en.wikipedia.org/wiki/Logical_Volume_Manager_(Linux)).

Boot live CD.

Open GParted & create 3 partitions
- sda1 FAT32       ESP  (flags: boot, efi)
- sda2 ext2        boot
- sda3 unformatted data

Open terminal.
```
$ sudo -i
# cryptsetup luksFormat --type=luks2 -c aes-xts-plain64 -s 512 -h sha384 --iter-time 3000 /dev/sda3
Enter YES and type passphrase twice.
Now open the device:
# cryptsetup luksOpen /dev/sda3 sda3_crypt
Create vg and lv:
# pvcreate /dev/mapper/sda3_crypt
# vgcreate cryptvg /dev/mapper/sda3_crypt
# lvcreate -L 6G  -n swap cryptvg
# lvcreate -L 47G -n root cryptvg
# lvcreate -l +100%FREE -n home cryptvg
```

Launch Ubiquity installer and follow the setup.  
After setup finishes, click "Continue Testing".

Switch to terminal again.
```
# blkid /dev/sda3 -> copy UUID
# mount /dev/mapper/cryptvg-root /mnt
# mount /dev/sda2 /mnt/boot
# mount --bind /dev /mnt/dev
# chroot /mnt
# mount -t proc proc /proc
# mount -t sysfs sys /sys
# mount -t devpts devpts /dev/pts
# nano /etc/crypttab
  sda3_crypt UUID=<sda3_UUID> none luks
Regenerate initramfs
# update-initramfs -k all -c
# exit
# exit
$ exit
```

Reboot.
