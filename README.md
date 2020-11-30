## Custom [Shan](https://en.wikipedia.org/wiki/Shan_people) language unicode keyboard for Debian
### X11,xkb

### Setup

##### sudo chmod +x install.sh
##### sudo ./install.sh

reboot may require before **keyboard layout setting**

==================================================

### **Manual**

##### cp [sh](/sh) to path: /usr/share/X11/xkb/symbols

#### **Adding xml rules to /usr/share/X11/xkb/rules/evdev.xml**
==================================================

``` xml

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
reboot may require before **keyboard layout setting**

====================================================

#### Tested on

- [x] Debian 10.x
- [x] Kali Linux
- [x] Ubuntu  

====================================================

**Shan language has include in [ISO639-2](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes) standard [id 399](https://www.loc.gov/standards/iso639-2/php/langcodes_name.php?code_ID=399) codes**

**example**
[evdev.xml](/evdev.xml)

layout base on panglong keyboard

**NoerNova**
