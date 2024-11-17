-- Retrieving Data
-- Scenario A: Retrieve all courses offered by HarvardX.

Select course_id,course_number,course_title,course_subject
FROM courses
JOIN institutions
ON
courses.institution_id=institutions.institution_id
WHERE institution_name= "HarvardX";

-- Scenario B: Retrieve the names of instructors teaching the course "Introduction to Computer Science"
SELECT course_title,instructor_name
FROM courses
JOIN course_instructors
ON courses.course_id = course_instructors.course_id
JOIN Instructors 
ON course_instructors.instructor_id = instructors.instructor_id
WHERE 
    courses.course_title = "Introduction to Computer Science";
    
 -- Scenario C: List courses along with the number of participants for each session in 2013
SELECT 
    courses.course_id, 
    course_sessions.session_id, 
    course_sessions.participants
FROM 
    courses
JOIN 
    course_sessions
ON 
    courses.course_id = course_sessions.course_id
WHERE 
    course_sessions.year = 2013;

 -- Scenario D: Get the average percentage of students who earned certificates across all course sessions for "MITx
 SELECT 
    AVG(course_sessions.percent_certified) AS average_percent_certified
FROM Courses 
JOIN Institutions 
ON courses.institution_id = institutions.institution_id
JOIN Course_Sessions 
ON courses.course_id =  Course_Sessions.course_id
WHERE institutions.institution_name = 'MITx';


