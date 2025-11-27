#!/usr/bin/env fish

systemctl enable refind-btrfs.service
systemctl start refind-btrfs.service

# for libvirt/qemu install
sudo usermod -aG libvirt $USER
sudo usermod -aG wheel $USER

systemctl start libvirtd
systemctl enable libvirtd

virsh net-define /etc/libvirt/qemu/networks/default.xml
virsh net-start default
virsh net-autostart default

# in /etc/libvirt/libvirtd.conf uncomment
# unix_sock_group = "libvirt"
# unix_sock_rw_perms = "0770"