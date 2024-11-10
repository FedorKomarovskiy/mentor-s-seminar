#!/bin/bash

# Функция, которая принимает строку и выводит её с префиксом "Hello, "
greet() {
    local name="$1"
    echo "Hello, $name"
}

# Функция, которая принимает два числа и возвращает их сумму
sum() {
    local num1="$1"
    local num2="$2"
    echo $((num1 + num2))
}

# Вызов первой функции
greet "World"

# Вызов второй функции и сохранение результата в переменной
result=$(sum 5 10)
echo "Сумма чисел 5 и 10: $result"
