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
