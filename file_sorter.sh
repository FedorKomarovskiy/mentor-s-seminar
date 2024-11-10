#!/bin/bash

SORT_DIR=$1
LOG_FILE="file_sorter.log"

# Создание папок для сортировки
mkdir -p "$SORT_DIR/Images" "$SORT_DIR/Documents"

# Перемещение файлов по расширениям
mv "$SORT_DIR"/*.jpg "$SORT_DIR/Images/" 2>>"$LOG_FILE"
mv "$SORT_DIR"/*.png "$SORT_DIR/Images/" 2>>"$LOG_FILE"
mv "$SORT_DIR"/*.gif "$SORT_DIR/Images/" 2>>"$LOG_FILE"
mv "$SORT_DIR"/*.txt "$SORT_DIR/Documents/" 2>>"$LOG_FILE"
mv "$SORT_DIR"/*.pdf "$SORT_DIR/Documents/" 2>>"$LOG_FILE"
mv "$SORT_DIR"/*.docx "$SORT_DIR/Documents/" 2>>"$LOG_FILE"

echo "$(date): Файлы перемещены в соответствующие папки." >> "$LOG_FILE"

