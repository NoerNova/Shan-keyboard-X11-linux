## Custom [Shan](https://en.wikipedia.org/wiki/Shan_people) language xkb, X11 keyboard for Debian/Linux (Unicode)

This is unofficial custom xkb, X11 keyboard for shan typing base on "panglong keyboard" layout.


Shan language has include in [ISO639-2](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes) standard [id 399](https://www.loc.gov/standards/iso639-2/php/langcodes_name.php?code_ID=399) codes

**xkb layout custom file, adding for Shan layout**
[evdev.xml](/evdev.xml#L2631-L2642)

---------------------------

#### Tested on

- [x] Debian 10.x
- [x] Kali Linux
- [x] Ubuntu  

----------------------------------------------------
### Setup
this bash script will copy [sh (xkb_symbols) file](/sh) to the path: /usr/share/X11/xkb/symbols and replace [evdev.xml](/evdev.xml) file in path: /usr/share/X11/xkb/rules/evdev.xml

**notice** always backing up the original evdev.xml file


```sudo chmod +x install.sh```
```sudo ./install.sh```

reboot may require before **keyboard layout setting**

----------------------------------------------------

### Manual install

1. copy [sh](/sh) layout file to path: /usr/share/X11/xkb/symbols
  
```sudo cp sh /usr/share/X11/xkb/symbols/```

1. Adding this xml rules to /usr/share/X11/xkb/rules/evdev.xml

```xml 
<layout>
      <configItem>
        <name>sh</name>
        <shortDescription>sh</shortDescription>
        <description>Shan</description>
        <languageList>
          <iso639Id>shn</iso639Id>
        </languageList>
      </configItem>
</layout>
```



insert into 
```xml
<layoutList>
  ...
</layoutList>
```


**example**
[evdev.xml](/evdev.xml#L2631-L2642) (between line 2631 - 2642)

reboot may require before **keyboard layout setting**

