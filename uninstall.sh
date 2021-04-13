#!/bin/bash

echo "This will remove Shan keyboard layout? [y/n]"
read VAR

if [[ $VAR = "y" ]]; then
	echo "removing ..."
    
    SH_FILE=/usr/share/X11/xkb/symbols/sh
    if [ -f "$SH_FILE" ]; then
    	sudo rm -r $SH_FILE
    fi
    # Remove Shan layout from evdev.xml rules

	# Shan's rules
	RULES="<layout><configItem><name>sh</name><shortDescription>sh</shortDescription><description>Shan</description><languageList><iso639Id>shn</iso639Id></languageList></configItem></layout>"

	C=$(echo $RULES | sed 's/\//\\\//g')

	sudo sed -i "s/${C}//" /usr/share/X11/xkb/rules/evdev.xml
fi

echo "Do you want to remove shan font? [y/n]"
read VAR2

if [[ $VAR2 = "y" ]]; then
	echo "removing..."
    SHAN_FONTS=/usr/share/fonts/truetype/shanfonts/
    if [ -d "$SHAN_FONTS" ]; then
    	sudo rm -rf $SHAN_FONTS
    fi
fi

sudo dpkg-reconfigure xkb-data

echo "Uninstalled, Buy."


