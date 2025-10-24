#!/bin/bash
sudo cp -rf ./backup/*.txt /boot/firmware
sudo cp -f ./backup/console-setup /etc/default
sudo rm /etc/rc.local
sudo rm -rf ./backup
echo "Now reboot for changes to take effect.."
