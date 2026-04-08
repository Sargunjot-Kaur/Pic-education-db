USE PICEducationdb;

SELECT * FROM student;
SELECT * FROM test;
SELECT * FROM attempt;
SELECT * FROM section;
SELECT * FROM question;
SELECT * FROM answer;

-- To insert a new student
INSERT INTO student (student_name, student_email, student_number, registration_date)
VALUES ('John Wick', 'john@example.com', '9998887777', NOW());

-- To update the number of the student with student_id = 1
UPDATE student
SET student_number = '1231231234'
WHERE student_id = 1;

-- To delete a student
DELETE FROM student
WHERE student_id = 4;

-- To show all attempts with the student names and test names
SELECT s.student_name, t.test_name, a.attempt_date
FROM attempt a
JOIN student s ON a.student_id = s.student_id
JOIN test t ON a.test_id = t.test_id;

-- To show all questions with their section names
SELECT q.question_text, s.section_name
FROM question q
JOIN section s ON q.section_id = s.section_id;

-- To show the answers given by each student
SELECT st.student_name, q.question_text, ans.student_answer
FROM answer ans
JOIN attempt a ON ans.attempt_id = a.attempt_id
JOIN student st ON a.student_id = st.student_id
JOIN question q ON ans.question_id = q.question_id;

-- To show the total score of each attempt 
SELECT attempt_id, SUM(marks_awarded) AS total_score
FROM answer
GROUP BY attempt_id;

-- To show the Average score per student
SELECT st.student_name, AVG(ans.marks_awarded) AS avg_score
FROM answer ans
JOIN attempt a ON ans.attempt_id = a.attempt_id
JOIN student st ON a.student_id = st.student_id
GROUP BY st.student_name;

-- To show the Highest scoring student
SELECT st.student_name, SUM(ans.marks_awarded) AS total_score
FROM answer ans
JOIN attempt a ON ans.attempt_id = a.attempt_id
JOIN student st ON a.student_id = st.student_id
GROUP BY st.student_name
ORDER BY total_score DESC
LIMIT 1;

-- To show the number of attempts given per student
SELECT st.student_name, COUNT(a.attempt_id) AS total_attempts
FROM student st
JOIN attempt a ON st.student_id = a.student_id
GROUP BY st.student_name;

-- To show the total marks per test
SELECT t.test_name, SUM(q.marks) AS total_question_marks
FROM test t
JOIN section s ON t.test_id = s.test_id
JOIN question q ON s.section_id = q.section_id
GROUP BY t.test_name;

-- To show which students attempted "PTE Academic"
SELECT DISTINCT st.student_name
FROM student st
JOIN attempt a ON st.student_id = a.student_id
JOIN test t ON a.test_id = t.test_id
WHERE t.test_name = 'PTE Academic';