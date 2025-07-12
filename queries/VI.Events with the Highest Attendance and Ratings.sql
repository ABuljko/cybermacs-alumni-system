SELECT e.event_name, a.name AS admin_name, COUNT(ea.alumni_id) AS total_attendance, AVG(ea.rating) AS avg_rating
FROM Event e
JOIN Event_Attendance ea ON e.event_id = ea.event_id
JOIN Administrator a ON e.admin_id = a.admin_id  -- Joining with Administrator table
GROUP BY e.event_name, a.name
ORDER BY total_attendance DESC, avg_rating DESC
LIMIT 10;


