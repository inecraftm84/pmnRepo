#!/bin/sh
# quit Using ctrl+alt+backspace
#using openbox tint2 pcmanfm
pmn install Xfbdev xterm tint2 openbox pcmanfm xfonts-base xfonts-utils
cd /usr/share/fonts/X11/misc
mkfontdir
echo "fixed -misc-fixed-medium-r-semicondensed--13-120-75-75-c-60-iso8859-1" > fonts.alias
/usr/local/bin/Xfbdev -fp /usr/share/fonts/X11/misc -screen 1024x768x16 &
sleep 2
export DISPLAY=:0
openbox &
tint2 &
pcmanfm --desktop &
xterm &
