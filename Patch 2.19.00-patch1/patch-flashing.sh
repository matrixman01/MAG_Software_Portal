#!/bin/sh

echo Update 2.19.00-patch1 starts now.
mkdir .temp
mv patch.tar.gz .temp/
cd .temp/
echo Unpacking patch source code...
tar -zxf patch.tar.gz
echo Writing patch to STB NAND...
mv mini /home
cd /home/
echo Removing additional existing code which is not required now...
rm -rf web/
mv mini/ web/
echo Setting new image version...
fw_setenv "Image_Desc" "2.19.00-patch1"
echo Rebooting STB...
echo The connection will be lost.
reboot
