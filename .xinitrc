#!/bin/sh

numlockx &

picom &

redshift &

#thunar

xset r rate 200 40 &

xset -dpms s off s noblank &

exec awesome
