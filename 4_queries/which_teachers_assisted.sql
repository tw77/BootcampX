SELECT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY teacher, cohort
HAVING cohorts.name = 'JUL02'
ORDER BY teacher;