#! /bin/bash
# Copyright 2013 ShilGen.ru geniusshil@gmail.com 
action=$(yad --width 300 --entry --title "System Logout" \
    --image=gnome-shutdown \
    --button="Switch User:2" \
    --button="gtk-ok:0" --button="gtk-close:1" \
    --text "Choose action:" \
    --entry-text \
    "min10" "min30" "Cansel" "Logout")
ret=$?

[[ $ret -eq 1 ]] && exit 0

if [[ $ret -eq 2 ]]; then
    gdmflexiserver --startnew &
    exit 0
fi

case $action in
    min10*) cmd="sudo shutdown -k +10" ;;
    min30*) cmd="sudo shutdown -k +30" ;;
    Cansel*) cmd="sudo shutdown -c" ;;
    Logout*) 
        case $(wmctrl -m | grep Name) in
            *Openbox) cmd="openbox --exit" ;;
            *FVWM) cmd="FvwmCommand Quit" ;;
            *Metacity) cmd="gnome-save-session --kill" ;; 
            *) exit 1 ;;
        esac
        ;;
    *) exit 1 ;;        
esac

eval exec $cmd
