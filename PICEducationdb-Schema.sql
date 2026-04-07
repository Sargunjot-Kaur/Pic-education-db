CREATE DATABASE PICEducationdb;
USE PICEducationdb;

-- Stores all registered students
CREATE TABLE student(
    student_id  INT PRIMARY KEY AUTO_INCREMENT,
	student_name VARCHAR(30) NOT NULL, 
    student_email VARCHAR(50) NOT NULL UNIQUE, 
    student_number VARCHAR(12), 
    registration_date DATETIME);

-- Stores tests (e.g., "PTE Academic")
CREATE TABLE test(
    test_id INT PRIMARY KEY AUTO_INCREMENT, 
    test_name VARCHAR(30) NOT NULL, 
    test_marks INT, 
    duration TIME);

-- Stores each time a student attempts a test
CREATE TABLE attempt(
    attempt_id INT PRIMARY KEY AUTO_INCREMENT, 
    student_id INT, 
    test_id INT, 
    attempt_date DATETIME, 
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (test_id) REFERENCES test(test_id));
    
-- Each test has multiple sections (Reading, Writing, Listening, Speaking)
CREATE TABLE section(
    section_id INT PRIMARY KEY AUTO_INCREMENT,
    test_id INT,
    section_name VARCHAR(30),
    FOREIGN KEY (test_id) REFERENCES test(test_id));
    
-- Stores questions under each section    
CREATE TABLE question(
    question_id INT PRIMARY KEY AUTO_INCREMENT,
    section_id INT,
    correct_answer TEXT NOT NULL, -- the correct answer to each question
    question_text TEXT NOT NULL,
    marks INT,
    FOREIGN KEY (section_id) REFERENCES section(section_id));
    
-- Stores answers given by student in an attempt    
CREATE TABLE answer(
    answer_id INT PRIMARY KEY AUTO_INCREMENT,
    question_id INT,
    attempt_id INT,
    student_answer TEXT,
    marks_awarded INT NOT NULL, -- marks given per answer
    FOREIGN KEY (question_id) REFERENCES question(question_id),
    FOREIGN KEY (attempt_id) REFERENCES attempt(attempt_id));
    
    
    
    
    




