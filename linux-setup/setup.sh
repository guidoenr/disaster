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
sudo gedit /etc/default/grub

#mpg123
sudo apt install mpg123 -y

#TIMEOUT=30
