#!/usr/bin/env bash
theme="$HOME/.config/rofi/themes/powermenu.rasi"

# ── Toggle Close ─────────────────────────────

if pidof rofi >/dev/null; then
  pkill rofi
  exit 0
fi

# ── Main Menu ────────────────────────────────

choice=$(printf \
  "  Shutdown\n\
󰒲  Sleep\n\
  Lock\n\
󰍃  Logout\n\
󰤄  Hibernate\n\
󰜉  Reboot" |
  rofi \
    -dmenu \
    -theme "$theme" \
    -selected-row 0 \
    -p "" \
    -name powermenu)

[ -z "$choice" ] && exit

# ── Confirmation ─────────────────────────────

confirm=$(printf "Yes\nNo" |
  rofi \
    -dmenu \
    -theme "$theme" \
    -p "$choice ?" \
    -name powermenu)
[ "$confirm" != "Yes" ] && exit

# ── Actions ──────────────────────────────────

case "$choice" in
*"Shutdown") systemctl poweroff ;;
*"Sleep") systemctl suspend ;;
*"Lock") "$HOME/.local/share/quickshell-lockscreen/lock.sh" ;;
*"Logout") mmsg dispatch quit ;;
*"Hibernate") systemctl hibernate ;;
*"Reboot") systemctl reboot ;;
esac
