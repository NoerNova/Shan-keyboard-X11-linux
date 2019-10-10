## Custom [Shan](https://en.wikipedia.org/wiki/Shan_people) language unicode keyboard for Debian
### X11,xkb

### **Setup**

cp [sh](/sh) to path: /usr/share/X11/xkb/symbols

**Adding xml rules to /usr/share/X11/xkb/rules/evdev.xml**
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

**example**
[evdev.xml](/evdev.xml)
