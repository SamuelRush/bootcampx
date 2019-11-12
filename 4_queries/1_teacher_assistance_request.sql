SELECT teachers.name, count(assistance_requests.id) as nRequests
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;
