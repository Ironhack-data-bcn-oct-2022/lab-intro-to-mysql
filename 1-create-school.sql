DROP DATABASE IF EXISTS school;
CREATE DATABASE school;
USE school;

-- this is a comment

-- Create teachers table
-- id, name, language1, language2, date ofbirth
-- tax_id, phonenumber

CREATE TABLE teacher (
teacher_id INT PRIMARY KEY,
first_name VARCHAR(40) NOT NULL,
language_1 VARCHAR(3) NOT NULL,
language_2 VARCHAR(3) NOT NULL,
dob DATE,
tax_id INT UNIQUE,
phone_no VARCHAR(20)
);

SELECT * FROM teacher;
-- clientid, clientname, address, industry

CREATE TABLE `client` (
client_id INT PRIMARY KEY,
client_name VARCHAR(20) NOT NULL,
address VARCHAR(20),
industry VARCHAR(20)
);

CREATE TABLE participant (
participant_id INT PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
phone_no VARCHAR(20),
client INT
);

CREATE TABLE course (
course_id INT PRIMARY KEY,
course_name VARCHAR(20) NOT NULL,
language CHAR(3) NOT NULL,
level CHAR(2) NOT NULL,
course_lenght_weeks INT,
start_date DATE,
in_school BOOLEAN,
teacher INT,
client INT
);

-- 1. alter table
-- 2. populating / seeding table
-- 3. Detele / Update

-- Error message: copy to read it better
-- Semicolons!!
-- Maybe I'll have to put things in quotes ``

ALTER TABLE participant
ADD FOREIGN KEY (client) -- in participants table
REFERENCES client(client_id) -- in clients table
ON DELETE SET NULL;

-- If value is deleted in parent table
-- or original table -> Set nulls on
-- child table

-- Goal: include client in course table

ALTER TABLE course
ADD FOREIGN KEY (client) -- name on the child table
REFERENCES client(client_id) -- name on th eoriginal table
ON DELETE CASCADE;

-- If value is deleted in parent table
-- or original table --> Will deleted
-- all rows in child table

ALTER TABLE course
ADD FOREIGN KEY (teacher) -- name on the child table
REFERENCES teacher(teacher_id) -- name on th eoriginal table
ON DELETE CASCADE;

-- This table will have two foreign keys that will make one primary kei in combation
CREATE TABLE takes_course(
participant_id INT,
course_id INT,
PRIMARY KEY (participant_id, course_id),
	FOREIGN KEY(participant_id) REFERENCES participant(participant_id) ON DELETE CASCADE,
    FOREIGN KEY(course_id) REFERENCES course(course_id) ON DELETE CASCADE
);

INSERT INTO teacher (teacher_id, first_name, language_1, language_2)
VALUES (2, "Venice", "ENG", "CAT");

-- OR WE CAN DO IT THIS WAY:

INSERT INTO teacher VALUES
(1, "Sam", "ENG", "DEU", "2000-01-01", 8676776, "+33231321");
-- We have to cover all the columns

SELECT * FROM teacher;

-- GET RID OF ONE OF THEM

DELETE FROM teacher WHERE teacher_id = 2;

-- And execute Select again.
-- Venice row is gone

-- Update the name:

UPDATE teacher
SET first_name = "Samuel"
WHERE teacher_id = 1;

SELECT * FROM teacher;
