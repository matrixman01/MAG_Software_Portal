#!/bin/sh

echo "Recovery scripts for MAG Software Portal"
echo "Beta version 1 (2018-10-26)"
echo "============================================"
echo
echo
echo "Choose action you want to do:"
echo "(1) Boot directly embedded portal"
echo "(2) Boot portals loader"
echo "(3) Reboot STB"
echo "(4) Load specified by you portal on STB"
echo "(5) Get STB information"
echo "(6) Check latest update"
echo "(7) Exit"
echo
read choose

if [ $choose == "1" ]; then
	echo
	echo "Loading embedded portal..."
	STBmodel='fw_printenv stb_rfs_model'
	if [ $STBmodel == "MAG322" ] || [ $STBmodel == "MAG324" ]; then
		killall stbapp
		/usr/local/share/app/stbapp -qws -display directfb "/usr/local/share/app/web/services.html"
	else
		killall stbapp
		/usr/share/qt-4.6.0/stbapp -qws -display directfb "/home/web/services.html"
	fi
elif [ $choose == "2" ]; then
	echo
	echo "Loading portals loader..."
	killall stbapp
elif [ $choose == "3" ]; then
	echo
	echo "Rebooting STB... The connection will be closed automatically."
	reboot
elif [ $choose == "4" ]; then
	./url.sh
elif [ $choose == "5" ]; then
	./get_fw_info.sh
elif [ $choose == "6" ]; then
	./update.sh
elif [ choose = "7" ]; then
	exit
else
	echo "You have put unexpected char. Press any key to exit."
	read -n 1 -s -r -p
	exit
fi