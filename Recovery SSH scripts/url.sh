#!/bin/sh

echo "Put the URL of portal that you want to load on STB. Any site will be loaded with System Settings button support, but you probably won't be able to navigate."
echo
echo "Type full URL address."
read url

echo "The URL address will be $url (y/n)"
read choice
if [ choice = "y" ]
	echo "Loading portal $url ..."
	killall stbapp
	/usr/share/qt-4.6.0/stbapp -qws -display directfb "$url"
elif [ choice = "n" ]
	read -n 1 -s -r -p "Press any key to come back to recovery main menu..."
	./boot.sh
else
	echo "Error: unexpected char. Exiting to main menu."
	./boot.sh
fi
