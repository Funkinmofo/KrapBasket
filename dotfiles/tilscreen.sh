#1 /bin/sh

chosen=$(printf "Desktop\nHalfscreen\nSplit\nQuad\nFullscreen\n\nAlacritty" | rofi -dmenu -i '@import "/home/myrrdin/.config/rofi/config.rasi"')

case "$chosen" in
"Desktop") tilix --session=/home/myrrdin/.tilix/desktopterm.json ;;
"Halfscreen") tilix --session=/home/myrrdin/.tilix/half.json ;;
"Split") tilix --session=/home/myrrdin/.tilix/split.json ;;
"Quad") tilix --session=/home/myrrdin/.tilix/quad.json ;;
"Fullscreen") tilix --session=/home/myrrdin/.tilix/full.json ;;
"Alacritty") alacritty --config-file /home/myrrdin/.config/alacritty/alacfull.toml ;;
*) exit 1 ;;
esac
