#!/usr/bin/env bash

xrandr --output eDP-1 --mode 2560x1440 --rate 60 --primary &
xrandr --output DP-1-3 --auto --mode 3440x1440 --left-of eDP-1 --rate 120 &

feh --no-fehbg --bg-fill /home/thomas_janhonen/asset/desktop.jpg &

picom --fading &

dwmblocks &
while true; do
  #>/dev/null 2>&1 redirect error and success
  eval $(ssh-agent) dwm >/dev/null 2>&1
done
