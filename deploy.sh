#!/bin/bash

# Вкажи адресу сервера
SERVER_USER=ira
SERVER_HOST=10.0.2.15
REMOTE_PATH=/var/www/html/static-site

# Відправляємо файли
scp index.html styles.css script.js $SERVER_USER@$SERVER_HOST:$REMOTE_PATH

# Опціонально: оновлення прав або перезапуск служби
ssh $SERVER_USER@$SERVER_HOST "chmod -R 755 $REMOTE_PATH"
