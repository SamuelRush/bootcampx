SELECT name,id
FROM students
WHERE email IS NULL OR email = '' OR phone IS NULL OR phone = '';