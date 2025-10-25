# Waveshare 3.2 / 3.5 inch TFT GPIO (and clones) driver for Raspberry PI Zero to 5 on Debian 13 Trixie
works in text console, desktop and KlipperScreen.

Tested on Pi 1 to Pi 5, including Zero W and Zero2 W.
## Prequisites:

[Install the latest image via Raspberry Pi Imager](https://www.raspberrypi.com/software/)
<br>Update the system<br>
`sudo apt update && sudo apt upgrade -y`<br>
Modify the settings to your taste with `sudo raspi-config`<br>
If you are using the desktop, remember to set **boot to comand line** in raspi-config. Desktop autostart does not work at the moment. Start the desktop with `startx` as user pi, not root! A quick'ndirty solution for desktop autostart, add **startx** to the end of **/home/pi/.bashrc**

## Install
`sudo apt install git`

`git clone https://github.com/katzenjens/lcd32.git`

`cd lcd32`
## for 3.2 or 2.8 inch tft (320 x 240 px):
`./install.sh`

## for 3.5 inch tft (480 x 320 px):
`./install35.sh`

## restore to defaults
`./restore.sh`
