#!/bin/bash

echo "installing ..."

sudo cp sh /usr/share/X11/xkb/symbols/
sudo cp evdev.xml /usr/share/X11/xkb/rules/evdev.xml

echo "Finished."
