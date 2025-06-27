-- # Write your MySQL query statement below

-- SELECT s.student_id, s.student_name, sj.subject_name, COUNT(e.student_id) AS attended_exams
-- FROM students s
-- CROSS JOIN subjects sj
-- JOIN examinations e ON s.student_id = e.student_id AND sj.subject_name = e.subject_name
-- GROUP BY s.student_id, sj.subject_name, s.student_name
-- ORDER BY student_id, subject_name;

-- # Write your MySQL query statement below

SELECT st.student_id, st.student_name, sj.subject_name, COUNT(e.student_id) AS attended_exams
FROM students st
CROSS JOIN subjects sj
LEFT JOIN examinations e ON st.student_id = e.student_id AND sj.subject_name = e.subject_name 
GROUP BY st.student_id, sj.subject_name, st.student_name
ORDER BY student_id, subject_name;