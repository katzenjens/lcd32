#!/bin/sh
sudo apt install xserver-xorg-input-evdev xinput-calibrator -y
sudo cp -rf waveshare35a.dtbo /boot/overlays/waveshare35a.dtbo
sudo cp -rf 99-fbdev.conf /usr/share/X11/xorg.conf.d/99-fbdev.conf
sudo cp -rf 45-evdev.conf /usr/share/X11/xorg.conf.d/45-evdev.conf
sudo cp -rf 99-calibration.conf /usr/share/X11/xorg.conf.d/99-calibration.conf
sudo cp -rf config35.txt /boot/firmware/config.txt
sudo cp -rf cmdline.txt /boot/firmware/cmdline.txt
sudo cp -rf rc.local /etc/rc.local
sudo cp -rf console-setup /etc/default/console-setup
echo "Now reboot for changes to take effect.."



