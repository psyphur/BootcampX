SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at - started_at) as duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
JOIN teachers on teachers.id = teacher_id
ORDER BY duration;