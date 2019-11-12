SELECT teachers.name as teacher, cohorts.name as cohort, COUNT(teachers.name) as total_assistance
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher,cohort
ORDER BY teacher;