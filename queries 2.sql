-- Scenario A: Insert a new course offered by "MITx"
INSERT INTO Courses (course_number, course_title, course_subject, institution_id)
VALUES ('6.045x', 'Introduction to Algorithms', 'Computer Science', 1);

-- Add a new instructor and assign them to a course ("Introduction to Algorithms")
INSERT INTO Instructors (instructor_name)
VALUES ('Charles Leiserson');

SELECT course_id
FROM Courses
WHERE course_title = 'Introduction to Algorithms';

INSERT INTO Course_Instructors (course_id, instructor_id)
VALUES (16, (SELECT instructor_id FROM Instructors WHERE instructor_name = 'Charles Leiserson'));

-- Adds a new session for existing course
INSERT INTO Course_Sessions (
    course_id, 
    launch_date, 
    year, 
    honor_code_certificates, 
    participants, 
    audited, 
    certified, 
    percent_certified, 
    percent_played_video, 
    percent_posted_in_forum, 
    percent_grade_higher_than_zero, 
    total_course_hours, 
    median_hours_for_certification, 
    median_age, 
    percent_male, 
    percent_female, 
    percent_bachelors_degree_or_higher
)
VALUES 
(
    16, 
    '2024-01-15', 
    2024, 
    500, 
    10000, 
    2000, 
    500, 
    5.0, 
    75.0, 
    10.0, 
    20.0, 
    400.0, 
    50.0, 
    28.0, 
    80.0, 
    20.0, 
    65.0
);

