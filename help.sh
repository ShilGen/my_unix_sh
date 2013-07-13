#!/bin/bash
function print_help() {
  echo "скрипт запущен без дополнительных параметров."
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


  #zenity --warning --text='Какой-то текст '
TIMETOSLEEP=`zenity --scale --title="Сколько еще не спать?" --text='Сколько еще не спать?' --min-value=0 --max-value=60`
	echo  до выключения компьютера TIMETOSLEEP  ${TIMETOSLEEP} 
	
