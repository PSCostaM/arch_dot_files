# arch_dot_files
These are my precious dot files subject to many changes as I progress as a linux user.
## Installation Guide:
- Usb with arch linux iso
- 3 partitions: UEFI(500MB), Linux Swap(32GB), linux Filesystem(what's left of the disk space)
### Pre-installation steps
- loadkeys la-latin1 in case of having a latin keyboard
- systemctl set-ntp true
- cfdisk and create the mentioned partitions and remember what /dev/sda they are(EFI/sda3, SWAP/sda4, Filesystem/sda5)
### Installing
run this commands in order
- mkfs.fat -F32 /dev/sda3
- mkswap /dev/sda4
- swapon /dev/sda4
- mkfs.ext4 /dev/sda5
- mount /dev/sda5 /mnt
- pacstrap /mnt base linux-firmware
Generate fstab
- genfstab -U /mnt >> /mnt/etc/fstab
- arch-chroot /mnt
- ln -sf /usr/share/zoneinfo/America/Lima
- hwclock --systohc
-  pacman -S neovim(or any other text editor)
-  nvim /etc/locale.gen

**Uncomment en_US.utf8**


