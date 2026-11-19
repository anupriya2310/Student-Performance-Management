CREATE DATABASE student_management;

USE student_management;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    course_name VARCHAR(100),
    programming_score DECIMAL(5,2),
    mathematics_score DECIMAL(5,2),
    CHECK (programming_score BETWEEN 0 AND 100),
    CHECK (mathematics_score BETWEEN 0 AND 100)
);

CREATE TABLE student_skills (
    student_id INT,
    skill_name VARCHAR(100),
    PRIMARY KEY (student_id, skill_name),
    FOREIGN KEY (student_id)
    REFERENCES students(student_id)
);