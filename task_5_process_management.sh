#!/bin/bash

# Запуск трех команд sleep с разными временами в фоновом режиме
sleep 10 &  # Задача 1
sleep 20 &  # Задача 2
sleep 30 &  # Задача 3

# Выводим список фоновых задач
echo "Список фоновых задач:"
jobs

# Демонстрация управления задачами
echo "Переводим задачу 2 на передний план (fg)"
fg %2

echo "Переводим задачу 1 в фоновый режим (bg)"
bg %1

# Выводим окончательный список фоновых задач
echo "Окончательный список фоновых задач:"
jobs