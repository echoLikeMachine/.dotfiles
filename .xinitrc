#!/bin/sh

numlockx &

picom &

redshift &

xset r rate 200 40 &

xset -dpms s off s noblank &

xrdb -merge ~/.Xresources

xsettingsd &

exec bspwm
