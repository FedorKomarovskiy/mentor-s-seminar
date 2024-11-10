#!/bin/bash

# Проверка существования файла input.txt
if [ ! -f "input.txt" ]; then
    echo "Файл input.txt не найден. Создайте его с необходимыми данными."
    exit 1
fi

# 1. Чтение данных из файла input.txt и вывод его содержимого
echo "Содержимое файла input.txt:"
cat input.txt

# 2. Подсчет строк в input.txt и перенаправление результата в output.txt
wc -l < input.txt > output.txt
echo "Количество строк в input.txt записано в output.txt."

# 3. Попытка выполнить ls для несуществующего файла и перенаправление ошибки в error.log
ls non_existent_file 2> error.log
echo "Ошибки команды ls для несуществующего файла записаны в error.log."
