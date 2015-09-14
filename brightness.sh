LightLev="$1"

#nvdia
#echo 100 > /sys/class/backlight/intel_backlight/brightness
#ati max 255
echo $LightLev > /sys/class/backlight/radeon_bl0/brightness
echo "success for setting backlight to $LightLev"
