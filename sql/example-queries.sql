INSERT INTO teachers (id, name, lastname, title, email, password, phone, pesel, created_at, updated_at)
VALUES (NULL, 'Zbigniew', 'Zbogdanca', 'Pan', 'z.zbogdanca@gmail.com', '123', '+48 111 222 333', '86120421370', '2022-01-01 00:00:00', '2022-01-01 00:00:00');

INSERT INTO classes (id, name, school_type, class_teacher_id, created_at, updated_at)
VALUES (NULL, '1a', 'szkola_podstawowa', 1, '2022-01-01 00:00:00', '2022-01-01 00:00:00');

INSERT INTO learners (id, name, lastname, email, password, pesel, class_id, created_at, updated_at)
VALUES (NULL, 'Maciej', 'Nowakowski', 'maciek.n@poczta.pl', '123', '99010112345', 1, '2022-01-01 00:00:00', '2022-01-01 00:00:00');

INSERT INTO subjects (id, name, valid_date_from, valid_date_to, created_at, updated_at)
VALUES (NULL, 'Fizyka', '2022-09-01', '2023-06-23', '2022-01-01 00:00:00', '2022-01-01 00:00:00');

INSERT INTO timetable (id, start_time, length_minutes, subject_id, class_id, teacher_id, created_at, updated_at)
VALUES (NULL, '2022-09-01 08:00:00', 45, 1, 1, 1, '2022-01-01 00:00:00', '2022-01-01 00:00:00');

INSERT INTO marks (id, value, weight, subject_id, teacher_id, learner_id, created_at, updated_at)
VALUES (NULL, '5.0', '1.0', 1, 1, 1, '2022-01-01 00:00:00', '2022-01-01 00:00:00');
INSERT INTO marks (id, value, weight, subject_id, teacher_id, learner_id, created_at, updated_at)
VALUES (NULL, '4.5', '1.0', 1, 1, 1, '2022-01-01 10:00:00', '2022-01-01 10:00:00');


UPDATE teachers
SET name = 'Andrzej'
WHERE id = 1;

SELECT tt.start_time, tt.length_minutes, t.name AS teacher_name, t.lastname AS teacher_lastnamem
FROM timetable tt
INNER JOIN teachers t
ON tt.teacher_id = t.id;

SELECT m.learner_id, SUM(m.value * m.weight)/SUM(m.weight) AS marks_avg, l.name, l.lastname
FROM marks m
JOIN learners l 
    ON m.learner_id = l.id
WHERE m.learner_id = 1
    AND m.created_at BETWEEN '2021-01-01 00:00:00' AND '2022-12-31 23:59:59';


UPDATE teachers
SET name = 'Andrzej'
WHERE id = 1;

SELECT tt.start_time, tt.length_minutes, t.name AS teacher_name, t.lastname AS teacher_lastnamem
FROM timetable tt
INNER JOIN teachers t
ON tt.teacher_id = t.id;

DELETE FROM marks
WHERE id = 2;
