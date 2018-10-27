# declare vars
local img_desc='fw_printenv Image_Desc'
local img_date='fw_printenv Image_Date'
local img_release='fw_printenv Image_Version'
local stb_model='fw_printenv STB_model'

echo "STB model: $stb_model"
echo "Image release: $img_release"
echo "Image date: $img_date"
echo "Image description: $img_desc"

read -n 1 -s -r -p "Press any key to go to main menu"
exit
