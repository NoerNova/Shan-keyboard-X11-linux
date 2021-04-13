## Custom [Shan](https://en.wikipedia.org/wiki/Shan_people) language xkb, X11 keyboard for Debian/Linux (Unicode)

This is unofficial custom xkb, X11 keyboard for shan typing base on "panglong keyboard" layout.


Shan language has include in [ISO639-2](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes) standard [id 399](https://www.loc.gov/standards/iso639-2/php/langcodes_name.php?code_ID=399) codes

**xkb layout custom file, adding for Shan layout**
[evdev.xml](/evdev.xml#L2631-L2642)

---------------------------

#### Worked on

- [x] Debian 10.x
- [x] Kali Linux
- [x] Ubuntu  

----------------------------------------------------
### Install

#### Method 1. git clone this source
- git clone https://github.com/NoerNova/Shan-keyboard-X11-linux.git
- locate to ```Shan-keyboard-X11-linux/``` directory
- ```sudo chmod +x install.sh```
```sudo ./install.sh```

this bash script will copy [sh (xkb_symbols) file](/sh) to the path: /usr/share/X11/xkb/symbols and edit [evdev.xml](/evdev.xml) file in path: /usr/share/X11/xkb/rules/evdev.xml

**notice** You may need to backup the original evdev.xml file locate in /usr/share/X11/xkb/rules/evdev.xml

*reboot or logout may require to use shn layout*

#### Method 2. git clone this source
- Downloads [panglong-keyboard_1.0_all.deb](https://github.com/NoerNova/Shan-keyboard-X11-linux/releases/download/1.0/panglong-keyboard_1.0_all.deb)
- ```sudo dpkg -i panglong-keyboard_1.0_all.deb```

*reboot or logout may require to use shn layout*

---
## License
Apache 2.0
