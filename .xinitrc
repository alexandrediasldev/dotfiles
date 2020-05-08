[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
setxkbmap -option caps:escape

dunst > /dev/null 2>&1 &
udiskie &

exec i3
