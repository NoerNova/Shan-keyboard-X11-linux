#!/bin/bash

fonts_dir=$(pwd)
echo "Copy fonts from: $fonts_dir/fonts"

find_command="find \"$fonts_dir/fonts\" \( -name '*.[o,t]tf' -or -name '*.pcf.gz' \) -type f -print0"

system_font_dir="$HOME/.local/share/fonts"
if ! [ -d "system_font_dir" ]; then
    mkdir -p $system_font_dir
    echo "Fonts folder created ."
fi


# Copy all fonts to user fonts directory
echo "Copying fonts..."
# printing
eval $find_command | xargs -0 -I %

eval $find_command | xargs -0 -I % cp "%" "$system_font_dir/"

  # Reset font cache
 if command -v fc-cache @>/dev/null ; then
        echo -e "\nResetting font cache, this may take a moment..."
           fc-cache -f $system_font_dir
           fi
          
          echo -e "\nAll fonts have been installed to $system_font_dir" ]]
