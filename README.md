# QA Portfolio · xDefox

[![GitHub](https://img.shields.io/badge/GitHub-xDefox-181717?logo=github)](https://github.com/xDefox)

Учебное/демонстрационное портфолио QA-инженера. Собрано с целью показать понимание ручного тестирования: тест-план, чек-листы, тест-кейсы, баг-репорты, тестирование API и основы SQL.

**Целевой стенд:** [SauceDemo](https://www.saucedemo.com/) (UI) · [Restful Booker](https://restful-booker.herokuapp.com/) (API)

## Навигация

| Раздел | Описание |
|---|---|
| [docs/](docs/) | Тест-план и шаблон баг-репорта |
| [checklists/](checklists/) | Чек-листы по функционалу |
| [test-cases/](test-cases/) | Детализированные тест-кейсы |
| [bug-reports/](bug-reports/) | Примеры баг-репортов (в т.ч. на `problem_user`) |
| [api/](api/) | Postman-коллекция для Restful Booker + инструкция |
| [sql/](sql/) | Практика SQL: схема, данные, запросы |
| [automation/](automation/) | Ссылки на автотест-проекты |

## Hard skills

- **Ручное тестирование:** тест-дизайн (эквивалентные классы, граничные значения), чек-листы, тест-кейсы, баг-трекинг
- **Автотесты:** Python + Selenium + pytest, Page Object, API-тесты через requests/FastAPI TestClient
- **API-тестирование:** Postman, ручной проверочный прогон REST
- **SQL:** SELECT/JOIN/GROUP BY/ORDER BY, простые фильтрации
- **Документация:** структурированные баг-репорты в минимально необходимом для воспроизведения виде

## Реальные проекты

- [First_AQA_project](https://github.com/xDefox/First_AQA_project) — UI-тесты на Page Object (Selenium + pytest)
- [MTS_Hacaton_AI_Agent](https://github.com/xDefox/MTS_Hacaton_AI_Agent) — оффлайн-набор API/контрактных тестов (FastAPI TestClient), CI
- [Witcher_game_qa_report](https://github.com/xDefox/Witcher_game_qa_report) — живые баг-репорты по игре
- [-parser](https://github.com/xDefox/-parser) — Flet-приложение, работает с реальным API

## Советы по использованию

1. **Для ручного:** см. `checklists/`, `test-cases/`, `bug-reports/` и `docs/test-plan.md`.
2. **Для API:** импортируй `api/Restful_Booker.postman_collection.json` в Postman → запусти коллекцию с переменными окружения.
3. **Для SQL:** открой `sql/schema.sql`, выполните в SQLite и порешайте задачи в `sql/queries.sql`.

> Проект носит учебный характер и создан для демонстрации структуры QA-портфолио.
