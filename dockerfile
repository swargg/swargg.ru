# Используем легковесный образ nginx на базе Alpine Linux
FROM nginx:stable-alpine

# Копируем содержимое локальной папки dist в стандартную директорию nginx
# (где nginx ищет index.html по умолчанию)
COPY ./www /usr/share/nginx/html

# Пробрасываем 80-й порт
EXPOSE 80

# Запускаем nginx (эта команда уже прописана в базовом образе,
# но её часто оставляют для наглядности)
CMD ["nginx", "-g", "daemon off;"]