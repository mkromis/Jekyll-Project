## secure boot

- []()


## eEFInd-btrfs

Edit `/boot/EFI/refind/refind.conf` to update arch to point to cachyOS.
The `loader` and `initrd` has a path to the files, the path portion needs removed. For the line that references options, copy the kernel params from `/boot/refind.conf`. There is an example in the repo.

- [Linux cryptsetup and rEFInd](https://www.pierov.org/2021/12/12/cryptsetup-refind/) -- This explains the `/boot/refind.conf`