# MAG Software Portal
Customized firmware for MAG 245/250, Aura HD, Aura HD International and IP_STB_HD (variant of 250 developed by Rostelecom) Feel free to ask, use or do anything good :)

## Why using it instead official soft?
Because Infomir stopped servicing all STBs from first line. As "first line" I mean boxes with stm processor expect MAG256 (particularly MAG 200, 245, 250, 254, 270, 275 and Aura HD, Aura HD International). A nice surprise was r23 update after a year of mute ;) And I'll put more functions here. It is also a nice lesson of programming for me so if you're able, please help me realising my hobby and join in project :D
You can find changelog at *misc* -> *Changelog.md* file.

## How to install and do update?
There are several methods of doing it, I'll describe here USB & Bootstrap. Other ones you can find at *misc* -> *Install-guide.md*.
1. Download Bootstrap file and firmware file from repository.
2. Prepare pendrive (8 GB or less, FAT32, first partition is used) by creating *mag250* directory at root of stick.
3. Move files from step 1. to *mag250* directory at USB stick.
4. Connect USB to rear socket of STB and run it in bootloader mode by holding MENU button until blue screen appears. After it you can release button.
5. Navigate by Up, Down and use Right button to go to selected menu. Go to *Upgrade Tools* -> *USB&Bootstrap*. Then press OK.
6. Follow instructions at screen. Just chill out and wait until STB won't boot with flashed MAG Software Portal :)

## Can I use it on my box?
If it's from manufacturer / shop / etc. - **yeah**. Images are signed with standard public key. But if your box is from provider, it can use customized firmware signed by itself. You just would have to try and check, I can't make sure whether there wouldn't be Wrong Signature error.

## FAQ
You can find FAQs at *misc* -> *FAQ.md*.

## What is *misc*?
It's a directory with all miscellaneous stuff, such as documentation, changelogs and licenses. I wanted to make it simple and don't do any blockings at main site :)

## But remember!
You do everything on your own responsibility! ;) If you'd like to ask something, just ask, I don't bite ;)
