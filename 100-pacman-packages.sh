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

sudo pacman -S --noconfirm --needed firewalld 
sudo pacman -S --noconfirm --needed clamav
sudo pacman	-S --noconfirm --needed clamtk
sudo pacman -S --noconfirm --needed packagekit-qt5
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed jq
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed yajl

sudo freshclam
sudo systemctl enable firewalld.service 
sudo systemctl start firewalld.service 
sudo systemctl enable clamav-freshclam.service 
sudo systemctl start clamav-freshclam.service 
sudo systemctl enable clamav-daemon.service 
sudo systemctl start clamav-daemon.service 
sudo firewall-cmd --set-default-zone=home

sudo pacman -S os-prober  
sudo pacman -S --noconfirm --needed dosfstools
sudo pacman -S --noconfirm --needed exfat-utils
sudo pacman -S --noconfirm --needed fuse2
sudo pacman -S --noconfirm --needed fuse3 
sudo pacman -S --noconfirm --needed cifs-utils 
sudo pacman -S --noconfirm --needed smbclient 
sudo pacman -S --noconfirm --needed zip 
sudo pacman -S --noconfirm --needed unzip
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed p7zip
sudo pacman -S --noconfirm --needed lzop
sudo pacman -S --noconfirm --needed rsync 
sudo pacman -S --noconfirm --needed traceroute
sudo pacman -S --noconfirm --needed dnsutils
sudo pacman -S --noconfirm --needed nmap
sudo pacman -S --noconfirm --needed speedtest-cli
sudo pacman -S --noconfirm --needed wavemon 
sudo pacman -S --noconfirm --needed dsniff
sudo pacman -S --noconfirm --needed plasma-wayland-session
sudo pacman -S --noconfirm --needed openshot
sudo pacman -S --noconfirm --needed shotcut
sudo pacman -S --noconfirm --needed scribus
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed blender
sudo pacman -S --noconfirm --needed pinta
sudo pacman -S --noconfirm --needed krita
sudo pacman -S --noconfirm --needed pitivi
sudo pacman -S --noconfirm --needed flatpak
sudo pacman -S --noconfirm --needed snapd
sudo pacman -S --noconfirm --needed base-devel
sudo pacman -S --noconfirm --needed linux-headers
sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack
sudo pacman -S aspell-en libmythes mythes-en languagetool enchant mythes-en ttf-liberation hunspell-en_US ttf-bitstream-vera pkgstats adobe-source-sans-pro-fonts gst-plugins-good ttf-droid ttf-dejavu aspell-en icedtea-web gst-libav ttf-ubuntu-font-family ttf-anonymous-pro jre8-openjdk languagetool libmythes
sudo pacman -S ttf-font-awesome ttf-roboto ttf-roboto-mono ttf-ubuntu-font-family
sudo pacman -S pacman-contrib arch-audit exfat-utils fuse-exfat a52dec faad2 faac flac jasper lame libdca libdv gst-libav libmad libmpeg2 libxv wavpack x264 x265 xvidcore kdegraphics-thumbnailers kimageformats qt5-imageformats kdesdk-thumbnailers ffmpegthumbs raw-thumbnailer taglib ntfs-3g steam piper gnome-keyring openshot shotcut scribus sudo inkscape
sudo systemctl enable fstrim.timer 
sudo pacman -S wine wine-gecko lutris playonlinux proton-ge-custom-bin wine-mono winetricks
#adding user to admin group 
sudo usermod -g wheel subodhkapoor
#configuring snap 
git clone https://aur.archlinux.org/snapd.git
cd snapd/
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

set ntp --true

#reduce swap space 
sudo touch /etc/sysctl.d/100-arch.conf
echo "vm.swappiness=10" /etc/sysctl.d/100-arch.conf

###############################################################################################

echo "################################################################"
echo "################### core software installed"
echo "################################################################"
