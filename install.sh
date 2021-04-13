#!/bin/bash

echo "Installing ..."

# copy shan X11 xkb symbols to /usr/share/X11/xkb.symbols/
echo "Copying Shan's X11 xkb symbols ... "
sudo cp sh /usr/share/X11/xkb/symbols/

# Add Shan X11 xkb rules to evdev.xml
echo "Editing evdev.xml rules ... "

# Shan's rules
RULES="<layout><configItem><name>sh</name><shortDescription>sh</shortDescription><description>Shan</description><languageList><iso639Id>shn</iso639Id></languageList></configItem></layout>"

C=$(echo $RULES | sed 's/\//\\\//g')

sudo sed -i.bak "/<\/layoutList>/ s/.*/${C}\n&/" /usr/share/X11/xkb/rules/evdev.xml


# fonts install
echo "Copying fonts ..."
cd fontInstall
sudo chmod +x install-fonts.sh
./install-fonts.sh

# refreshing xkb cache
sudo dpkg-reconfigure xkb-data
echo "Shan keyboard installed, Thanks"
