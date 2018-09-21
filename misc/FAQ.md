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

### Can I use **Software update** option from embedded portal?
Unfortunately not now, it installs official Infomir software. To do update of MAG Software Portal, do it by USB & Bootstrap. Integration with this option will be done in release channel.

### What does "release channel" mean?
Now there is beta channel, which means that there can be some bugs and interface is constantly changing (thinking that to better ;) ). In release channel I'm going to make it more stable.
