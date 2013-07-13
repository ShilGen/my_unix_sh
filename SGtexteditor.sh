#!/bin/bash
# Copyright 2013 ShilGen.ru geniusshil@gmail.com 
open_path="$(zenity --file-selection)"
if [ "$open_path" != "" ]
then
  orig_text=$(cat "$open_path")
  edit_text=$(echo -n "$orig_text" | zenity --text-info --editable \
                                         --width=550 --height=500)
  save_path=$(echo -n "$(zenity --file-selection \
                      --filename="$open_path" --save --confirm-overwrite)")
  echo -n "$edit_text" > "$save_path"
fi
