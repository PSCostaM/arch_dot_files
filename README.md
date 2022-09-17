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

- locale-gen
- nvim /etc/hostname

**Type hostname(will go after user)**

- nvim /etc/hosts

- 127.0.0.1 localhost
- ::1 localhost
- 127.0.1.1 hostname.localdomain hostname
- passwd (type in password)
- useradd -m **user**
- passwd **user**
- usermod -aG wheel,audio,video,optical,storage **user**
- pacman -S sudo
- EDITOR="nvim" visudo

Uncomment wheel line

- pacman -S grub efibootmgr dosfstool os-prober mtools
- mkdir /boot/EFI
- mount /dev/sda3(EFI PARTITION) /boot/EFI
- grub-install -target=x86_64-efi --bootloader-id=grub_uefi --recheck
- grub-mkconfig -o /boot/grub/grub.cfg

### INSTALL SOME OTHER STUFF WHILE IN SDA5

- pacman -S networkmanager git nitrogen 
- systemctl enable NetworkManager 

### Exit out of chroot

- exit
- umount -l /mnt

Now you can shutdown now remove the usb and go into arch linux


