[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
setxkbmap -option caps:escape
xmodmap -e "keycode 151 = Multi_key"

dunst > /dev/null 2>&1 &
udiskie &

exec i3
