#!/bin/bash

echo "installing ..."

sudo cp sh /usr/share/X11/xkb/symbols/
sudo cp evdev.xml /usr/share/X11/xkb/rules/evdev.xml
cd fontInstall
sudo chmod +x install-fonts.sh
./install-fonts.sh

echo "Finished."
