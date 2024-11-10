#!/bin/bash

# Сбор данных о системных ресурсах
CPU_LOAD=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')
MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
DISK_USAGE=$(df -h / | grep / | awk '{print $5}')

echo "Загрузка CPU: $CPU_LOAD"
echo "Использование памяти: $MEMORY_USAGE%"
echo "Использование дискового пространства: $DISK_USAGE"

# Уведомление, если использование памяти превышает 80%
if (( $(echo "$MEMORY_USAGE > 80" | bc -l) )); then
    echo "Внимание: использование памяти превышает 80%!"
    echo "Текущие процессы, потребляющие наибольшие ресурсы:"
    ps aux --sort=-%mem | head -n 10
fi
