#!/bin/bash
function print_help() {
  echo "Скрипт работы с Webdav"
  echo
  echo "Использование: $ME options..."
  echo "Параметры:"
  echo " -m Монтировать директории webdav."
  echo " -u Размонтировать директории."
  echo " -s Резервное копирование."
  echo " -h Справка."
  echo
}
if [ $# = 0 ]; then
  print_help
fi
