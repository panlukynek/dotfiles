killall waybar
if [[ $USER = "tydlifon" ]]
then
	waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css
	# waybar -c ~/.config/waybar/wide.jsonc -s ~/.config/waybar/wide.css
else
	waybar &
fi
