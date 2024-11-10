#!/bin/bash

# Запрос ввода числа у пользователя
read -p "Введите число: " number

# Проверка, является ли число положительным, отрицательным или нулем
if [ "$number" -gt 0 ]; then
    echo "Число $number положительное."
elif [ "$number" -lt 0 ]; then
    echo "Число $number отрицательное."
else
    echo "Число равно нулю."
fi

# Подсчёт от 1 до введенного числа, если оно положительное
if [ "$number" -gt 0 ]; then
    echo "Подсчёт от 1 до $number:"
    count=1
    while [ "$count" -le "$number" ]; do
        echo "$count"
        ((count++))
    done
fi

