#!/bin/bash

# 1. Вывод текущего значения переменной PATH
echo "Текущее значение PATH: $PATH"

# 2. Проверка наличия аргумента
if [ -z "$1" ]; then
    echo "Ошибка: Укажите директорию в качестве аргумента."
    exit 1
fi

# 3. Добавление новой директории к PATH
export PATH="$PATH:$1"
echo "Новое значение PATH: $PATH"

