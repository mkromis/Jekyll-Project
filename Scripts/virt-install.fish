#!/usr/bin/env fish

# for libvirt/qemu install
sudo usermod -aG libvirt $USER
sudo usermod -aG wheel $USER

# start services
systemctl start libvirtd
systemctl enable libvirtd

# setup network
virsh net-define /etc/libvirt/qemu/networks/default.xml
virsh net-start default
virsh net-autostart default

# in /etc/libvirt/libvirtd.conf uncomment
# unix_sock_group = "libvirt"
# unix_sock_rw_perms = "0770"

# Create the bridge
sudo ip link add name virbr10 type bridge

# Bring it up
sudo ip link set virbr10 up

sudo ip addr add 192.168.100.1/24 dev virbr10

sudo systemctl enable --now systemd-networkd
## References
# https://www.bing.com/search?q=arch+create+virbr10

