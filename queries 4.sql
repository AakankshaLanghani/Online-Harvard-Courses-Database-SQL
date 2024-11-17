-- Scenario A: Delete a course and its associated sessions
DELETE FROM Course_Sessions
WHERE course_id = (SELECT course_id FROM Courses WHERE course_number = '6.002x');
DELETE FROM Courses
WHERE course_number = '6.002x';

-- Scenario B: Remove an instructor from teaching a specific course
DELETE FROM Course_Instructors
WHERE 
    course_id = (SELECT course_id FROM Courses WHERE course_title = 'Introduction to Algorithms')
    AND instructor_id = (SELECT instructor_id FROM Instructors WHERE instructor_name = 'Charles Leiserson');
    
-- Scenario C: Delete all course sessions for courses in a given year (e.g., 2012)
DELETE FROM Course_Sessions
WHERE year = 2012;

-- Scenario D: Remove an instructor who no longer teaches any courses
SELECT instructor_id 
FROM Instructors 
WHERE instructor_id NOT IN (SELECT instructor_id FROM Course_Instructors);
DELETE FROM Instructors
WHERE instructor_id NOT IN (SELECT instructor_id FROM Course_Instructors);
