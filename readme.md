# SQL
## Описание

Проект содержит реализацию четырех областей:
- Транспортные средства
- Гоночные автомобили
- Система бронирования отелей
- Организационная структура компании

В каждом разделе приведены скрипты создания таблиц (MySQL/PostgreSQL), наполнения тестовыми данными, а также решения задач с использованием SQL (в т.ч. рекурсивных CTE, агрегаций и оконных функций).

## Структура

- `transport/` — таблицы и задачи по транспорту (машины, мотоциклы, велосипеды)
- `car_racing/` — таблицы и задачи по автогонкам и классам автомобилей
- `bookings/` — таблицы и задачи по бронированию номеров в отелях
- `organization/` — таблицы и задачи по структуре сотрудников, ролей и проектов

## Как использовать

1. Запустить скрипты создания таблиц для выбранной СУБД (MySQL или PostgreSQL).
2. Наполнить базу тестовыми данными из соответствующих файлов.
3. Проверить работу решений, выполняя SQL-запросы из файлов `*_task_scripts.sql` для каждой предметной области.
4. Все решения проверены на соответствие ожидаемым результатам из условий задач.

