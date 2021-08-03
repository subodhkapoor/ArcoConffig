#!/bin/bash
#set -e
##################################################################################################################
# Author 	:Subodh Kapoor

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#software from Arch Linux repositories

paru -S --noconfirm --needed apple-fonts
paru -S --noconfirm --needed fluent-icon-theme-git 
paru -S --noconfirm --needed tela-icon-theme-git  
paru -S --noconfirm --needed flat-remix 
paru -S --noconfirm --needed ttf-mac-fonts 
paru -S --noconfirm --needed ttf-ms-fonts
paru -S --noconfirm --needed numix-icon-theme-git 
paru -S --noconfirm --needed beautyline
paru -S --noconfirm --needed google-chrome
paru -S --noconfirm --needed brave-bin
paru -S --noconfirm --needed teams
paru -S --noconfirm --needed bitwarden-bin 
paru -S --noconfirm --needed microsoft-edge-beta-bin 
paru -S --noconfirm --needed microsoft-edge-dev-bin 
paru -S --noconfirm --needed firefox
paru -S --noconfirm --needed audacity-wxgtk2 
paru -S --noconfirm --needed dupeguru
paru -S --noconfirm --needed bpytop
paru -S --noconfirm --needed fluent-reader 
paru -S --noconfirm --needed handbrake 
paru -S --noconfirm --needed lightworks 
paru -S --noconfirm --needed p7zip-gui
paru -S --noconfirm --needed alac-git 
paru -S --noconfirm --needed peazip-qt5  
paru -S --noconfirm --needed mailspring-libre
paru -S --noconfirm --needed flac
paru -S --noconfirm --needed wavpack
paru -S --noconfirm --needed radeontop-git
paru -S --noconfirm --needed flameshot-git 
paru -S --noconfirm --needed cpu-x 
paru -S --noconfirm --needed stacer 
paru -S --noconfirm --needed xscreensaver 
paru -S --noconfirm --needed archlinux-wallpaper  
paru -S --noconfirm --needed 4kvideodownloader 
paru -S --noconfirm --needed foxitreader 
paru -S --noconfirm --needed burpsuite 
paru -S --noconfirm --needed github-desktop-bin
paru -S --noconfirm --needed lightly-git
paru -S --noconfirm --needed arcolinux-meta-steam 
paru -S --noconfirm --needed arcolinux-meta-utilities 
paru -S --noconfirm --needed arcolinux-meta-samba

#amdgpu pro software 
paru -S --noconfirm --needed amdgpu-pro-libgl 
paru -S --noconfirm --needed opencl-amd 
paru -S --noconfirm --needed vulkan-amdgpu-pro 
paru -S --noconfirm --needed amf-amdgpu-pro 
paru -S --noconfirm --needed libva-mesa-driver 
paru -S --noconfirm --needed mesa-vdpau

#DavinciResolve 
yay davinci-resolve

#Vmware Installatino for Arch 
paru -S --noconfirm --needed vmware-workstation
sudo modprobe vmw_vmci vmmon
sudo systemctl enable vmware-networks.service 
sudo systemctl enable vmware-usbarbitrator.service
###############################################################################################

echo "################################################################"
echo "################### AUR software installed"
echo "################################################################"
