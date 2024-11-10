#!/bin/bash

# Директория для резервного копирования и для логов
BACKUP_DIR=$1
LOG_FILE="backup.log"

# Проверка на наличие директории
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Ошибка: Директория $BACKUP_DIR не найдена."
    exit 1
fi

# Текущая дата
DATE=$(date +%Y-%m-%d)

# Создание резервной копии файлов с добавлением даты
FILE_COUNT=0
for FILE in "$BACKUP_DIR"/*; do
    cp "$FILE" "$BACKUP_DIR/$(basename "$FILE")_$DATE"
    FILE_COUNT=$((FILE_COUNT + 1))
done

# Запись в лог и уведомление пользователя
echo "Резервное копирование завершено: $FILE_COUNT файлов" | tee -a "$LOG_FILE"

