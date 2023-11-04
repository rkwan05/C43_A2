-- Insert departments
INSERT INTO department
    (dcode, dname)
VALUES
    ('D01', 'Computer Science'),
    ('D02', 'Mathematics'),
    ('D03', 'Physics');

-- Insert students
INSERT INTO student
    (sid, slastname, sfirstname, sex, age, dcode, yearofstudy)
VALUES
    (1, 'Smith', 'John', 'M', 21, 'D01', 2),
    (2, 'Johnson', 'Emily', 'F', 20, 'D02', 1),
    (3, 'Brown', 'Michael', 'M', 22, 'D03', 3);

-- Insert instructors
INSERT INTO instructor
    (iid, ilastname, ifirstname, idegree, dcode)
VALUES
    (101, 'Anderson', 'David', 'PhD', 'D01'),
    (102, 'Wilson', 'Sarah', 'MSc', 'D02'),
    (103, 'Lee', 'Robert', 'PhD', 'D03');

-- Insert courses
INSERT INTO course
    (cid, dcode, cname)
VALUES
    (1, 'D01', 'Data Structures'),
    (2, 'D02', 'Calculus I'),
    (3, 'D03', 'Intro to Physics');

-- Insert course sections
INSERT INTO courseSection
    (csid, cid, dcode, year, semester, section, iid)
VALUES
    (1001, 1, 'D01', 2023, 9, 'A01', 101),
    (2001, 2, 'D02', 2023, 1, 'B01', 102),
    (3001, 3, 'D03', 2023, 5, 'C01', 103);

-- Insert student enrollments and grades
INSERT INTO studentCourse
    (sid, csid, grade)
VALUES
    (1, 1001, 95.5),
    (2, 2001, 88.0),
    (3, 3001, 92.3);

-- Insert classrooms
INSERT INTO classroom
    (bname, rnum, capacity, cid, dcode)
VALUES
    ('Main Building', 101, 50, 1, 'D01'),
    ('Science Hall', 201, 40, 2, 'D02'),
    ('Physics Building', 301, 60, 3, 'D03');

-- Insert prerequisites
INSERT INTO prerequisites
    (cid, dcode, pcid, pdcode)
VALUES
    (1, 'D01', 2, 'D02'),
    (2, 'D02', 3, 'D03'),
    (3, 'D03', 1, 'D01');
