#!/bin/bash

echo "installing ..."

cp sh /usr/share/X11/xkb/symbols/
cp evdev.xml /usr/share/X11/xkb/rules/evdev.xml

echol "Finished."
