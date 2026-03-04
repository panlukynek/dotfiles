killall waybar
if [[ $USER = "tydlifon" ]]
then
	# waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css
	waybar -c ~/.config/waybar/pill.jsonc -s ~/.config/waybar/pill.css
else
	waybar &
fi
