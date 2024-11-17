-- Scenario A: Update the course title for course 6.002x to “Advanced Circuits and Electronics”
use online_courses_db;
UPDATE Courses
SET course_title = 'Advanced Circuits and Electronics'
WHERE course_number = '6.002x';

-- Scenario B: Increase the number of participants in a specific session by 200
UPDATE Course_Sessions
SET participants = participants + 200
WHERE session_id = 1;
