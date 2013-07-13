#!/bin/bash
# Copyright 2013 ShilGen.ru geniusshil@gmail.com 


if zenity --entry --title="Проверка прав доступа" --text="Введите свой пароль:" \
          --entry-text="" --hide-text
then
  echo this $?
else
  zenity --error --text="Пароль не введён"
fi
