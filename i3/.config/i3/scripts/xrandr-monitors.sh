#! /bin/bash
monitors=($( xrandr | grep " connected" | cut -d" " -f1))

xrandr --output ${monitors[1]} --above ${monitors[0]}
