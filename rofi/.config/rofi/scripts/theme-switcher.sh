#!/bin/bash

THEME_DIR="$HOME/superior-dotfiles-mango/themes/.config/themes"

# ── Get Theme ─────────────────────────────────

THEME=$(
  find "$THEME_DIR" -maxdepth 1 -type d ! -path "$THEME_DIR" \
    -printf "%f\n" | sort | rofi \
    -dmenu \
    -i \
    -theme ~/.config/rofi/themes/theme-switcher.rasi \
    -p "󰔎"
)

[ -z "$THEME" ] && exit

# ── Theme Paths ──────────────────────────────

SRC="$THEME_DIR/$THEME"

# ── Mango ─────────────────────────────────

cp "$SRC/color.conf" \
  "$HOME/.config/mango/color.conf"

# ── Kitty ────────────────────────────────────

cp "$SRC/kitty.conf" \
  "$HOME/.config/kitty/current-theme.conf"

killall -SIGUSR1 kitty 2>/dev/null

# ── Fastfetch ────────────────────────────────

cp "$SRC/fastfetch.jsonc" \
  "$HOME/.config/fastfetch/current.jsonc"

# ──GTK / Icons────────────────────────────────
cp ~/.config/themes/$THEME/xsettingsd.conf \
  ~/.config/xsettingsd/xsettingsd.conf

# ──GTK CSS────────────────────────────────
cp ~/.config/themes/$THEME/gtk.css \
  ~/.config/gtk-3.0/gtk.css

# Apply GTK settings live
gsettings set org.gnome.desktop.interface gtk-theme \
  "$(grep 'Net/ThemeName' ~/.config/xsettingsd/xsettingsd.conf | cut -d '"' -f2)"

gsettings set org.gnome.desktop.interface icon-theme \
  "$(grep 'Net/IconThemeName' ~/.config/xsettingsd/xsettingsd.conf | cut -d '"' -f2)"

# ──Refresh GTK App────────────────────────────────
xfconf-query -c xsettings -p /Net/ThemeName -s "$(grep 'Net/ThemeName' ~/.config/xsettingsd/xsettingsd.conf | cut -d '"' -f2)"

xfconf-query -c xsettings -p /Net/IconThemeName -s "$(grep 'Net/IconThemeName' ~/.config/xsettingsd/xsettingsd.conf | cut -d '"' -f2)"

# ── Reload Mango ──────────────────────────

mmsg dispatch reload_config >/dev/null 2>&1

# ── Notification ─────────────────────────────

notify-send \
  "Theme Switched To $THEME"

# ── Wallpaper Selection ──────────────────────

WALL_DIR="$HOME/Pictures/Wallpapers/$THEME"

SELECTED=$(
    find "$WALL_DIR" -type f | while read -r img; do
        [[ "$img" =~ \.(jpg|jpeg|png|webp|JPG|PNG)$ ]] || continue

        REL_PATH="${img#$WALL_DIR/}"

        printf "%s\0icon\x1f%s\n" "$REL_PATH" "$img"
    done | rofi \
        -dmenu \
        -i \
        -show-icons \
        -theme ~/.config/rofi/themes/wallpaper.rasi \
        -p "󰸉"
)

if [ -n "$SELECTED" ]; then
    WALLPATH="$WALL_DIR/$SELECTED"

    awww img "$WALLPATH" \
        --transition-type wipe \
        --transition-duration 1

# 1. Extract the colors from the selected wallpaper using Matugen
/usr/bin/matugen image "$WALL_DIR/$SELECTED" --source-color-index 0

fi
