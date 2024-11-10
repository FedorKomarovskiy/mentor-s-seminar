#!/bin/bash

# 1. Создание списка всех файлов в текущей директории с указанием их типа
echo "Список файлов и их типов в текущей директории:"
for item in *; do
    if [ -f "$item" ]; then
        echo "$item - обычный файл"
    elif [ -d "$item" ]; then
        echo "$item - каталог"
    else
        echo "$item - другой тип"
    fi
done

# 2. Проверка существования файла, переданного как аргумент
if [ -z "$1" ]; then
    echo "Укажите имя файла в качестве аргумента."
else
    if [ -e "$1" ]; then
        echo "Файл '$1' существует."
    else
        echo "Файл '$1' не найден."
    fi
fi

# 3. Используем цикл for для вывода имени файла и его прав доступа
echo "Информация о каждом файле и его правах доступа:"
for file in *; do
    if [ -e "$file" ]; then
        permissions=$(ls -ld "$file" | awk '{print $1}')
        echo "$file - права доступа: $permissions"
    fi
done


