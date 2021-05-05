#!/bin/bash
# this is the guidoenr auto-setup for any dist of linux

# set bash as default shell
sudo chsh --shell /bin/bash

# install gnome-tweaks
sudo apt install gnome-tweaks -y

# add color to the root@dist terminal, obs >> append
# non-root user: gedit .bashrc
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#root user: gedit /root/.bashrc
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# O.S Screen pretty info
sudo apt install neofetch -y
sudo apt install screenfetch -y

# Change the GRUB timeout in boot
sudo gedit /etc/default/grub #TIMEOUT=30

#mpg123
sudo apt install mpg123 -y

# shows al the devices, commonly sda is the USB device
$ lsblk 

# an alternative 
$ fdisk -l 

# progressive format to the usb, usb_name= must be 'sda'.. this command copies 
# zeroes to the USB to override the blocks of the usb file systems with "0000"
# the bs=4096 means a disk-to-disk duplication
$ sudo dd if=/dev/zero of=/dev/{usb_name} bs=4096 status=progress

#show all the active connections
nmcli con show --active

# show all the actove connections for vpn
nmcli con show --active | grep -i vpn

# search by string, in this example im searching files with the .dat extension
ls | grep .dat

#SUBLIME3- LICENSE
----- BEGIN LICENSE -----
Member J2TeaM
Single User License
EA7E-1011316
D7DA350E 1B8B0760 972F8B60 F3E64036
B9B4E234 F356F38F 0AD1E3B7 0E9C5FAD
FA0A2ABE 25F65BD8 D51458E5 3923CE80
87428428 79079A01 AA69F319 A1AF29A4
A684C2DC 0B1583D4 19CBD290 217618CD
5653E0A0 BACE3948 BB2EE45E 422D2C87
DD9AF44B 99C49590 D2DBDEE1 75860FD2
8C8BB2AD B2ECE5A4 EFC08AF2 25A9B864
------ END LICENSE ------

#set default -hyperx headset and mic 
pactl set-default-sink alsa_output.usb-Kingston_Technology_Company_HyperX_Cloud_Flight_Wireless-00.analog-stereo
pactl set-default-source alsa_input.usb-Kingston_Technology_Company_HyperX_Cloud_Flight_Wireless-00.mono-fallback