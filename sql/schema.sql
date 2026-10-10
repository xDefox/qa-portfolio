-- Sample schema and data for QA portfolio SQL practice

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
