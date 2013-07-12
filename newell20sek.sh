#!/bin/bash
# Copyright 2013 ShilGen.ru geniusshil@gmail.com 
# mainstream from http://alexkutsan.blogspot.com/2012/02/linux.html
pre="file:"
florder="/home/gena/Изображения/best/"
time=20
#zenity --notification --window-icon /usr/share/pixmaps/bum_serv_on.png
pic(){
  pic=`ls $florder |grep '\(png\|gif\|jpg\|jpeg\)$'|shuf -n 1`
  GSETTINGS_BACKEND=dconf gsettings set org.gnome.desktop.background picture-uri ${pre}${florder}${pic}
  sleep $time
}
yad --notification &
i=0
while [ ""-z ]
do
 pic
 #notify-send --urgency normal --expire-time=5000 -i typing-monitor -h int:x:300 -h int:y:500 "changing wallpaper"
 echo $SECONDS
done

