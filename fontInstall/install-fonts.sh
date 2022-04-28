#!/bin/bash

VERSION=1.1
fonts_dir=$(pwd)/fontInstall
echo "Copy fonts from: $fonts_dir/fonts"

find_command="find \"$fonts_dir/fonts\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"

shan_font_dir=/usr/share/fonts/truetype/shanfonts/
if ! [ -d "$shan_font_dir" ]; then
    mkdir -p $shan_font_dir
    echo "Fonts folder created ."
fi


# Copy all fonts to user fonts directory
echo "Copying fonts..."
# printing
eval $find_command | xargs -0 -I %

eval $find_command | xargs -0 -I % cp "%" "$shan_font_dir/"

# Reset font cache
if command -v fc-cache @>/dev/null ; then
    echo -e "\nResetting font cache, this may take a moment..."
    fc-cache -f $shan_font_dir
fi
echo -e "\nAll fonts have been installed to $shan_font_dir" ]]
