CREATE DATABASE PICEducationdb;
USE PICEducationdb;

-- 1. student table: stores data of all students who have registered
CREATE TABLE student(
    student_id  INT PRIMARY KEY AUTO_INCREMENT,
	student_name VARCHAR(30) NOT NULL, 
    student_email VARCHAR(50) NOT NULL UNIQUE, 
    student_number VARCHAR(12), 
    registration_date DATETIME);

-- 2. test table: Stores the name of test ("PTE Academic"/"PTE General")
CREATE TABLE test(
    test_id INT PRIMARY KEY AUTO_INCREMENT, 
    test_name VARCHAR(30) NOT NULL, 
    test_marks INT, -- total mark weightage of the test
    duration TIME); -- time allocated for the test

-- 3. attempt table: Stores the number of times a student attempts a test
CREATE TABLE attempt(
    attempt_id INT PRIMARY KEY AUTO_INCREMENT, 
    student_id INT, 
    test_id INT, -- refers to name of the test taken
    attempt_date DATETIME, 
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (test_id) REFERENCES test(test_id));
    
-- 4. section table: Each test has 4 sections (Reading, Writing, Listening, Speaking)
CREATE TABLE section(
    section_id INT PRIMARY KEY AUTO_INCREMENT,
    test_id INT,
    section_name VARCHAR(30),
    FOREIGN KEY (test_id) REFERENCES test(test_id));
    
-- 5. question table: Stores questions under each section    
CREATE TABLE question(
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    section_id INT, -- refers which section the question belongs to
    correct_answer TEXT NOT NULL, -- the correct answer to each question
    question_text TEXT NOT NULL,
    marks INT,
    FOREIGN KEY (section_id) REFERENCES section(section_id));
    
-- 6. answer table: Stores answers given by student in a particular attempt    
CREATE TABLE answer(
    answer_id INT PRIMARY KEY AUTO_INCREMENT,
    question_id INT,
    attempt_id INT,
    student_answer TEXT, -- answer given by the student
    marks_awarded INT NOT NULL, -- marks given per answer
    FOREIGN KEY (question_id) REFERENCES question(question_id),
    FOREIGN KEY (attempt_id) REFERENCES attempt(attempt_id));
    
    
    
    
    




