#!/bin/bash

# Замените значение <access_token> на свой токен доступа к API Stepik
access_token="<access_token>"

# Вызываем API метод stepik.org/api/users с указанием токена доступа и получаем информацию о пользователе
response=$(curl -s -H "Authorization: Bearer $access_token" https://stepik.org/api/users)

# Извлекаем ID пользователя из ответа API
user_id=$(echo $response | jq -r '.users[0].id')

# Выводим ID пользователя
echo "ID вашего профиля на Stepik: $307060449"