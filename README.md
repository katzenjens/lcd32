# Waveshare 3.2 / 3.5 inch TFT GPIO (and clones) driver for Raspberry PI Zero to 5 on Debian 13 Trixie
works in text console, desktop and KlipperScreen.

Tested on Pi 1 to Pi 5, including Zero W and Zero2 W.
## Prequisites:

[Install the latest image via Raspberry Pi Imager](https://www.raspberrypi.com/software/)
<br>Update the system<br>
`sudo apt update && sudo apt upgrade -y`<br>
Modify the settings to your taste with `sudo raspi-config`<br>
If you are using the desktop, remember to set **boot to comand line** in raspi-config. Desktop autostart does not work at this moment. Start the desktop with `startx` as user pi, not root! After that, you may select "boot to Desktop" inside the config menu. If this does not work for you, look under [Issues](https://github.com/katzenjens/lcd32/edit/main/README.md#issues) for a workaround.<br>

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

# Issues:
## Desktop Autostart not working:
On some older Pi's I had issues booting to desktop. So I started with autoboot into command line. You can start the desktop from there with startx which sometimes is not practical. So I included a little snippet for .profile for the user pi. On the command line, type <br>`cat add_startx.txt >> .profile`<br> to include startx at startup. 
