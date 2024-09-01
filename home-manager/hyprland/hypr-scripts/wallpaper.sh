#!/usr/bin/env bash

# ----------------------------------------------------- 
# Select wallpaper
# ----------------------------------------------------- 
selected=$(ls -1 ~/.dots/assets/wallpapers | grep "jpg\|png\|gif" | tofi -c ~/.config/tofi/config-search)

if [[ -z $selected ]]; then return; fi

echo "Changing theme..."
# ----------------------------------------------------- 
# Update wallpaper with pywal
# ----------------------------------------------------- 
wal -q -i ~/.dots/assets/wallpapers/$selected

# ----------------------------------------------------- 
# Get new theme
# ----------------------------------------------------- 
source "$HOME/.cache/wal/colors.sh"

# ----------------------------------------------------- 
# Copy selected wallpaper into .cache folder
# ----------------------------------------------------- 
cp $wallpaper ~/.cache/current_wallpaper.jpg   

# -----------------------------------------------------
# get wallpaper image name
# -----------------------------------------------------
newwall=$(echo $wallpaper | sed "s|~/.dots/assets/wallpapers/||g")

# ----------------------------------------------------- 
# Set the new wallpaper
# ----------------------------------------------------- 
swww img $wallpaper \
    --transition-fps=60 \
    --transition-type="grow" \
    --transition-pos "0.854, 0.977" \
    --transition-step 90 \

~/.dots/home-manager/hyprland/hypr-scripts/start-waybar.sh

# hyprland colors update
cp ~/.cache/wal/colors-hyprland ~/.config/hypr/colors.conf
sleep 1

# ----------------------------------------------------- 
# Send notification
# ----------------------------------------------------- 
# notify-send "Colors and Wallpaper updated" "with image $newwall"

echo "Done."
