#!/bin/sh

numlockx &

picom &

redshift &

#thunar

xset r rate 200 40 &

xset -dpms s off s noblank &

xsetroot -cursor_name left_ptr

xrdb -merge ~/.Xresources

xsettingsd &

exec awesome
