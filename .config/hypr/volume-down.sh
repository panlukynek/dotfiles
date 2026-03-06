#!/bin/sh

wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%d%%", $2 * 100}')

notify-send -a "Volume" \
            -h string:x-canonical-private-synchronous:volume \
            -h "int:value:${VOLUME%%%}" \
            "Volume" "$VOLUME"
