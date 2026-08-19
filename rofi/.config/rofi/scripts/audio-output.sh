#!/usr/bin/env bash

declare -A MAP

while IFS=$'\t' read -r id name; do
    MAP["$name"]="$id"
done < <(
    wpctl status --name | awk '
        /Sinks:/ { sinks=1; next }
        /Sources:/ { sinks=0 }
        sinks && match($0, /[0-9]+\./) {
            id = substr($0, RSTART, RLENGTH-1)
            print id
        }
    ' |
    while read -r id; do
        name=$(wpctl inspect "$id" 2>/dev/null |
            awk -F'"' '/node.description/ {print $2; exit}')

        [ -n "$name" ] && printf "%s\t%s\n" "$id" "$name"
    done
)

choice=$(printf "%s\n" "${!MAP[@]}" | sort | rofi -dmenu \
    -theme "$HOME/superior-dotfiles-mango/rofi/.config/rofi/themes/audio-output.rasi" \
    -p "󰓃 Output")

[ -z "$choice" ] && exit

wpctl set-default "${MAP[$choice]}"

notify-send "Default output" "$choice"
