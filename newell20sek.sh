#!/bin/bash
# http://alexkutsan.blogspot.com/2012/02/linux.html
pre="file:"
florder="/home/gena/Изображения/best/"
time=20

pic(){
  pic=`ls $florder |grep '\(png\|gif\|jpg\|jpeg\)$'|shuf -n 1`
  GSETTINGS_BACKEND=dconf gsettings set org.gnome.desktop.background picture-uri ${pre}${florder}${pic}
  sleep $time
}

i=0
while [ ""-z ]
do
 pic
done
