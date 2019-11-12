SELECT students.name as name, count(assistance_requests.id) as student_requests
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id 
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;