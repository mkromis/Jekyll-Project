## secure boot

- []()


## eEFInd-btrfs

Edit `/boot/EFI/refind/refind.conf` to update arch to point to cachyOS.
The `loader` and `initrd` has a path to the files, the path portion needs removed. For the line that references options, copy the kernel params from `/boot/refind.conf`. There is an example in the repo.

- [Linux cryptsetup and rEFInd](https://www.pierov.org/2021/12/12/cryptsetup-refind/) -- This explains the `/boot/refind.conf`


## Virtal Machine Manager

I'm pretty sure I over complatated this, and it needs revisisted

- [libVirt: Arch Wiki](https://wiki.archlinux.org/title/Libvirt)
- [libVirt: Nat forwarding](https://wiki.libvirt.org/Networking.html)


## Theme [Catppucin](https://github.com/catppuccin)

- [Konsole Themes](https://github.com/catppuccin/konsole)