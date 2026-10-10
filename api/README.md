# API-тестирование: Restful Booker

**Сайт:** [restful-booker.herokuapp.com](https://restful-booker.herokuapp.com/)  
**Коллекция:** [Restful_Booker.postman_collection.json](Restful_Booker.postman_collection.json)

## Инструкция по запуску

1. Открыть [Postman](https://www.postman.com/)
2. File → Import → выбрать файл `Restful_Booker.postman_collection.json`
3. Создать окружение (`Environments`) с переменными:
   - `baseUrl` = `https://restful-booker.herokuapp.com`
   - `username` = `admin`
   - `password` = `password123`
   - `token` = (заполнится автоматически после запроса `POST /auth`)
   - `bookingId` = (заполнится после создания брони)
4. Выполнить запрос `POST /auth` — скрипт автоматически сохранит `token`
5. Прогнать остальную коллекцию по порядку (Create → Get By Id → Update → Partial Update → Delete → Get (проверка удаления))

## Покрытие запросов

- POST /auth
- GET /booking
- POST /booking
- GET /booking/:id
- PUT /booking/:id (requires Cookie: token=...)
- PATCH /booking/:id (partial update)
- DELETE /booking/:id (requires Cookie: token=...)
- GET /ping

## Tips

- Тело запросов (JSON) минимально валидное, легко модифицировать при проверке позитивных/негативных кейсов
- Поле `totalprice` — число, а не строка (важно при ручной правке)
- `bookingdates` — формат `YYYY-MM-DD`
- Для `PUT/PATCH/DELETE` требуется авторизация через `Cookie: token={{token}}`
