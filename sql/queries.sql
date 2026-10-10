-- Students schema + sample queries for QA portfolio

DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS grades;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  group_name TEXT NOT NULL,
  enrolled_date DATE NOT NULL
);

CREATE TABLE grades (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  student_id INTEGER NOT NULL,
  subject TEXT NOT NULL,
  grade INTEGER NOT NULL CHECK (grade >= 2 AND grade <= 10),
  exam_date DATE NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students (first_name, last_name, group_name, enrolled_date) VALUES
('Алексей', 'Иванов', 'CS-41', '2023-09-01'),
('Мария', 'Петрова', 'CS-41', '2023-09-01'),
('Иван', 'Сидоров', 'IS-22', '2022-09-01'),
('Анна', 'Кузнецова', 'IS-22', '2022-09-01'),
('Дмитрий', 'Смирнов', 'CS-41', '2024-09-01');

INSERT INTO grades (student_id, subject, grade, exam_date) VALUES
(1, 'Математика', 9, '2026-01-20'),
(1, 'Программирование', 10, '2026-06-15'),
(2, 'Математика', 8, '2026-01-20'),
(2, 'Программирование', 9, '2026-06-15'),
(3, 'БД', 7, '2026-01-25'),
(3, 'Экономика', 8, '2026-06-18'),
(4, 'БД', 10, '2026-01-25'),
(4, 'Экономика', 9, '2026-06-18'),
(5, 'Математика', 6, '2026-01-20'),
(5, 'Программирование', 7, '2026-06-15');

-- 1. Выбрать всех студентов из CS-41
SELECT * FROM students WHERE group_name = 'CS-41' ORDER BY last_name;

-- 2. Средний балл по каждому предмету
SELECT subject, ROUND(AVG(grade), 2) AS avg_grade, COUNT(*) AS count FROM grades GROUP BY subject;

-- 3. Топ-3 студентов по среднему баллу
SELECT s.last_name, s.first_name, ROUND(AVG(g.grade), 2) AS avg_grade
FROM students s
JOIN grades g ON s.id = g.student_id
GROUP BY s.id, s.last_name, s.first_name
ORDER BY avg_grade DESC
LIMIT 3;

-- 4. Студенты со средним баллом >= 9
SELECT s.last_name, s.first_name, ROUND(AVG(g.grade), 2) AS avg_grade
FROM students s
JOIN grades g ON s.id = g.student_id
GROUP BY s.id
HAVING AVG(g.grade) >= 9
ORDER BY avg_grade DESC;

-- 5. Количество студентов по группам
SELECT group_name, COUNT(*) AS students_count FROM students GROUP BY group_name;

-- 6. Кто сдал математику на 8 и выше
SELECT DISTINCT s.last_name, s.first_name, g.grade
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE g.subject = 'Математика' AND g.grade >= 8;

-- 7. Студенты без оценок за математику (пример)
SELECT s.id, s.last_name, s.first_name
FROM students s
WHERE NOT EXISTS (
  SELECT 1 FROM grades g WHERE g.student_id = s.id AND g.subject = 'Математика'
);
