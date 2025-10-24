#First, backup standard configs
TARGET_DIR="./backup"
FILES_TO_COPY=("/boot/firmware/cmdline.txt" "/boot/firmware/config.txt" "/etc/d>

# target dir present?
if [ -d "$TARGET_DIR" ]; then
    echo "Target directory '$TARGET_DIR' exists. Will not touch."
else
    # Create directory
    sudo mkdir -p "$TARGET_DIR"
    echo "Target directory '$TARGET_DIR' created."

    # Copy files
    for file in "${FILES_TO_COPY[@]}"; do
        if [ -f "$file" ]; then
            sudo cp "$file" "$TARGET_DIR"
            echo "'$file' copied to '$TARGET_DIR' ."
        else
            echo "Warning: '$file' not present. Skipped."
        fi
    done
fi

#now install driver
sudo apt install xserver-xorg-input-evdev xinput-calibrator -y
sudo cp -rf waveshare32b.dtbo /boot/overlays/waveshare32b.dtbo
sudo cp -rf 99-fbdev.conf /usr/share/X11/xorg.conf.d/99-fbdev.conf
sudo cp -rf 45-evdev.conf /usr/share/X11/xorg.conf.d/45-evdev.conf
sudo cp -rf 99-calibration.conf /usr/share/X11/xorg.conf.d/99-calibration.conf
sudo cp -rf config.txt /boot/firmware/config.txt
sudo cp -rf cmdline.txt /boot/firmware/cmdline.txt
sudo cp -rf rc.local /etc/rc.local
sudo cp -rf console-setup /etc/default/console-setup
echo "Now reboot for changes to take effect.."
