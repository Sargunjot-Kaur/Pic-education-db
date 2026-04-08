USE PICEducationdb;

INSERT INTO student (student_name, student_email, student_number, registration_date) VALUES
    ('Charlie Brown', 'charlie@example.com', '1112223333', NOW()),
    ('Diana Prince', 'diana@example.com', '4445556666', NOW()),
    ('Ethan Hunt', 'ethan@example.com', '7778889999', NOW()),
    ('Fiona Gallagher', 'fiona@example.com', '0001112222', NOW());

INSERT INTO test (test_name, test_marks, duration) VALUES
    ('PTE Academic', 90, '02:00:00'),
    ('PTE General', 100, '01:30:00');

INSERT INTO attempt (student_id, test_id, attempt_date) VALUES
    (1, 1, NOW()),
    (2, 1, NOW()),
    (3, 2, NOW()),
    (4, 2, NOW()),
    (4, 2, NOW()),
    (1, 2, NOW()),
    (2, 1, NOW()),
    (2, 2, NOW());

    
INSERT INTO section (test_id, section_name) VALUES
-- Test 1
    (1, 'Reading'),
    (1, 'Writing'),
    (1, 'Listening'),
    (1, 'Speaking'),

-- Test 2
    (2, 'Reading'),
    (2, 'Writing'),
    (2, 'Listening'),
    (2, 'Speaking');  
    
INSERT INTO question (section_id, correct_answer, question_text, marks) VALUES
-- Reading (Test 1)
    (1, 'Paris', 'Capital of France?', 5),
    (1, 'Berlin', 'Capital of Germany?', 5),

-- Writing (Test 1)
    ( 2, 'Essay tech', 'Write about technology', 10),
    (2, 'Essay env', 'Write about environment', 10),

-- Listening (Test 1)
    (3, 'Audio A', 'Listen and answer', 5),

-- Speaking (Test 1)
    (4, 'Speech 1', 'Describe image', 10),

-- Reading (Test 2)
    (5, 'Oxygen', 'Gas humans breathe?', 5),

-- Writing (Test 2)
    (6, 'Essay edu', 'Importance of education', 10),

-- Listening (Test 2)
    (7, 'Audio B', 'Summarize audio', 5),

-- Speaking (Test 2)
    (8, 'Speech 2', 'Talk about hobby', 10);    
    
INSERT INTO answer (question_id, attempt_id, student_answer, marks_awarded) VALUES
-- Alice (Attempt 1)
    (1, 1, 'Paris', 5),
    (3, 1, 'Tech is growing...', 8),

-- Bob (Attempt 2)
    (2, 2, 'Munich', 0),
    (4, 2, 'Environment essay...', 7),

-- Charlie (Attempt 3)
    (7, 3, 'Oxygen', 5),
    (8, 3, 'Education is important...', 9),

-- Diana (Attempt 4)
    (9, 4, 'Summary answer...', 4),
    (10, 4, 'I enjoy reading...', 8);  
    
