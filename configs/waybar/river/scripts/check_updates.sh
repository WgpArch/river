#!/bin/bash

# Get pacman updates - only actual package lines
pacman_output=$(pacman -Qu 2>/dev/null)
pacman_updates=$(echo "$pacman_output" | grep -E '^[a-zA-Z0-9@_-]+\s' | wc -l)

# Get trizen updates - only actual package lines  
trizen_output=$(trizen -Qu 2>/dev/null)
trizen_updates=$(echo "$trizen_output" | grep -E '^[a-zA-Z0-9@_-]+\s' | wc -l)

# Total updates
total=$((pacman_updates + trizen_updates))

# Output for waybar (JSON format)
if [ $total -gt 0 ]; then
    pacman_list=$(echo "$pacman_output" | grep -E '^[a-zA-Z0-9@_-]+\s' | head -10 | while read pkg old new; do echo "• $pkg $old -> $new"; done)
    trizen_list=$(echo "$trizen_output" | grep -E '^[a-zA-Z0-9@_-]+\s' | head -10 | while read pkg old new; do echo "• $pkg $old -> $new"; done)
    
    [ -z "$trizen_list" ] && trizen_list="None"
    [ -z "$pacman_list" ] && pacman_list="None"
    
    echo "{\"text\": \"\", \"tooltip\": \"<b>System Updates Available</b>\\n\\n<b>Pacman:</b> $pacman_updates updates\\n<b>Trizen:</b> $trizen_updates updates\\n\\n<b>Recent Pacman Updates:</b>\\n$pacman_list\\n\\n<b>Trizen Updates:</b>\\n$trizen_list\"}"
else
    echo "{\"text\": \"\", \"tooltip\": \"<b>System is up to date</b>\\nNo updates available\"}"
fi
