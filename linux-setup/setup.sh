#!/bin/bash
# this is the guidoenr auto-setup for any dist of linux

# superuser
sudo su

# set bash as default shell
sudo chsh --shell /bin/bash

# install gnome-tweaks
sudo apt install gnome-tweaks

# add color to the root@dist terminal, obs >> append
echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bashrc
source ~/.bashrc

# O.S Screen prettt info
sudo apt install neofetch
sudo apt install screenfetch
