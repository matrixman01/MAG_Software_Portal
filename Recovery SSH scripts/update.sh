mkdir .temp && cd .temp/
	echo "Getting firmware details from STB NAND..."
	
	# declare temp vars
	local img_release='fw_printenv Image_Version'
	local img_desc='fw_printenv Image_Desc'
	local img_date='fw_printenv Image_Date'
	local stb_model='fw_printenv stb_rfs_model'
	
	# check
	echo "Checking available firmware from server..."
	local url_start=http://vps.magboxes.xyz/$stb_model/latest
	wget "$url_start/img_release.txt" "$url_start/img_desc.txt" "$url_start/img_date.txt" 2>/dev/null 1>/dev/null
	
	# set available ver
	local available_img_release='cat img_release.txt' 2>/dev/null 1>/dev/null
	local available_img_desc='cat img_desc.txt' 2>/dev/null 1>/dev/null
	local available_img_date='cat img_date.txt' 2>/dev/null 1>/dev/null
	
	# compare
	if [ "$img_release" == "$available_img_release" ] && [ "$img_desc" == "$available_img_desc" ] && [ "$img_date" == "$available_img_date" ]; then
		echo "You have latest version of image. Press any key to come back to main menu."
		read -n 1 -s -r -p
		./boot.sh
	elif [ "$img_release" != "$available_img_release" ] && [ "$img_desc" != "$available_img_desc" ] && [ "$img_date" != "$available_img_date" ]; then
		echo "There is a new image available!"
		echo "--------"
		echo "Release: $available_img_release"
		echo "Version: $available_img_desc"
		echo "Date: $available_img_date"
		echo "--------"
		echo "Do you want to download image to your USB? (y/n)"
		read img_flash_choose
		if [ img_flash_choose = "y" ]; then
			echo "Downloading image from server. Please wait"
			wget "$url_start/img_wget_link.txt" 2>/dev/null 1>/dev/null
			local img_wget_link='cat img_wget_link.txt'
			wget "$img_wget_link"
			mv imageupdate ../
			cd ../
			rm .temp/
			echo "File imageupdate downloaded succesfully. Now you can do update by USB through embedded or external portal. Use correct option from main menu to load correct one on your STB. Set path of update to root of pendrive at settings to do it properly. Press any key to exit."
			read -n 1 -s -r -p
			./boot.sh
		else
		echo "Unexpected error happened"
		read -n 1 -s -r -p
		exit
	fi	