#!/bin/bash

red=$( tput setaf 1 )
green=$( tput setaf 2 )
yellow=$( tput setaf 3 )
NC=$( tput sgr 0 )


echo -e "\nInstalling ..."

# copy shan X11 xkb symbols to /usr/share/X11/xkb.symbols/
echo -e "\nCopying Shan's X11 xkb symbols ... "

if [ -f "$(pwd)/shn" ]; 
then
    sudo cp $(pwd)/shn /usr/share/X11/xkb/symbols/
else
    echo -ne "\n${red}Error, ${NC}Something wrong with xkb symbols, please re-download and try again"
fi

# Add Shan X11 xkb rules to evdev.xml
echo -e "\nEditing evdev.xml rules ... "

# Shan's rules
RULES="<layout><configItem><name>shn</name><shortDescription>shn</shortDescription><description>Shan</description><languageList><iso639Id>shn</iso639Id></languageList></configItem></layout>"

C=$(echo $RULES | sed 's/\//\\\//g')

sudo sed -i.bak "/<\/layoutList>/ s/.*/${C}\n&/" /usr/share/X11/xkb/rules/evdev.xml
echo "done."


# fonts install

if [ -f $(pwd)/fontInstall/install-fonts.sh ]; 
then
    echo -e "\nCopying fonts ..."
    sudo chmod +x $(pwd)/fontInstall/install-fonts.sh
    sudo bash $(pwd)/fontInstall/install-fonts.sh
else
    echo -ne "\n${yellow}Warning, ${NC}Something wrong with fonts directory, please re-download and try again later"
fi

# refreshing xkb cache
sudo dpkg-reconfigure xkb-data
echo -e "\n${green}Shan keyboard installed, မႂ်ႇသုင်ၶႃႈ"
