#!/bin/sh
# LED="/sys/class/leds/tp-link:green:qss/brightness"
LED="/tmp/status.txt"
URL="http://ftp.br.debian.org/"
update_led="1s"
# Iniciando o loop
while [ true ]; do 
wget -q -O tested --spider "$URL"
if [ $? -eq 0 ]; then
  echo "1" > $LED
else
  echo "0" > $LED
fi
sleep $update_led
done
