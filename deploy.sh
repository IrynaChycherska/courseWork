#!/bin/bash

# Налаштування
SERVER_USER=ira
SERVER_HOST=10.0.2.15
REMOTE_PATH=/var/www/html/static-site

echo "Deploying static site to $SERVER_HOST:$REMOTE_PATH..."

# Створити папку, якщо не існує
ssh $SERVER_USER@$SERVER_HOST "mkdir -p $REMOTE_PATH"

# Очистити старі файли (опційно)
# ssh $SERVER_USER@$SERVER_HOST "rm -rf $REMOTE_PATH/*"

# Копіювати нові файли
scp index.html styles.css script.js $SERVER_USER@$SERVER_HOST:$REMOTE_PATH

# Встановити права
ssh $SERVER_USER@$SERVER_HOST "chmod -R 755 $REMOTE_PATH"

echo "Deployment completed."