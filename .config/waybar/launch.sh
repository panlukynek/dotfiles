killall waybar
if [[ $USER = "tydlifon" ]]
then
    waybar -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css
else
    waybar &
fi 