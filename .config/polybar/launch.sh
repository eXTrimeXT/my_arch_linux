#!/bin/bash

# Завершить втекущие экземпляры polybar
killall -q polybar

# Ожидание полного завершения работы процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запуск polybar с дефолтным конфигом 
polybar example &

echo "Polybar загрузился!"
