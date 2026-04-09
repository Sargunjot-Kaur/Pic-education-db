# PIC Education - Database System

Relational database for a PTE practice platform where students can take tests and get scores.

## Project structure

- `PICEducationdb-Schema.sql` - Database tables and constraints
- `sample-data-for-db.sql` - Sample data for testing
- `queries.sql` - SQL queries which demonstrate the dunctioning of the database

## How to Run

1. Open MySQL and run `PICEducationdb-Schema.sql` to create the database and the tables.
2. Run `sample-data-for-db.sql` to insert the sample data.
3. Run  `queries.sql` to run the queries and see their outputs.

## Key Ideas

1. Attempt = junction table (Student ↔ Test)
2. Sections → Questions → Answers

## Database Overview

1. A database for a PTE education platform where students can take sample PTE tests and track their performance.
2. Stores student information, available tests, and test sections like Reading, Writing, Listening, and Speaking.
3. Tracks student attempts for each test, allowing multiple attempts per student.
4. Records student answers and marks awarded per question for detailed performance analysis.
5. Supports scoring and reporting, making it easy to calculate total marks and monitor student progress.

## Technologies 
- MySQL 8.0
- DrawSQL (For ER Diagram)

