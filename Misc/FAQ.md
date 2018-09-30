# Frequently Asked Questions

### Can I connect to STB?
Yes, you can use SSH at standard settings (user root, password 930920, port 22).

### How are images signed?
Firmware is signed with standard public key (*STB_PUBLIC*).

### How to do an update?
Follow instructions for installing. Don't use Software update option from system settings, it installs default Infomir software. Integration of MAG Software Portal with this option is planned in next releases.

### What is based this firmware in?
Firmware updates 2.18.25 and below are based on Infomir release **0.2.18-r22** and image 2.18.26 and laters are based on **0.2.18-r23**. Both ones use Linux kernel.

### I've got Wrong Signature error.
You can try these solutions:
* Install factory image from Infomir and then MAG Software Portal.
* If you have box from provider, try installing their image. Maybe your STB is blocked permanently to one key.
* Set default settings from STB bootloader.

### Can I use external portals?
Yes, I haven't deleted anything from firmware so any external portals which don't have to be used with firmware customized on portal developers' own can be used.

### What is the difference between MAG 245, 250, Aura HD etc.?
In practice side there's nothing difference, only one thing - Auras have access to apps catalogue. MAG 245 is the same as 250 but without some embedded codecs and sockets. Aura HD is a "father" of 250 and International is, as its name says, international version of Aura which was intented to Ukrainian market. In my firmware's side there's no difference, one file is suitable for all STBs.

### Can I get source code of your firmware?
Just ask if you'd like :)

### How to enter bootloader menu (BIOS)?
* Plug off STB from power supply.
* Hold MENU button at remote control.
* Plug in STB while still holding button. Wait until you see the blue screen with some options. Then you can release MENU.

**Navigating at bootloader menu**
* UP and DOWN to move cursor.
* RIGHT to enter option selected by cursor.
* LEFT to go back to previous menu.
When being at main menu of bootloader, you can use HOME, which executes exiting with discarding changes.
**Navigating at System Recovery Utility** (MAG 322/324/324c) you can find at screen when booting there.

### Can I use **Software update** option from embedded portal?
Unfortunately not now, it installs official Infomir software. To do update of MAG Software Portal, follow guidelines. Integration with this option will be done in next releases.
