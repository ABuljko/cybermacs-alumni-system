SELECT ea.alumni_id, a.full_name, COUNT(ea.event_id) AS events_attended
FROM Event_Attendance ea
JOIN Alumni a ON ea.alumni_id = a.alumni_id
GROUP BY ea.alumni_id, a.full_name
ORDER BY events_attended DESC
LIMIT 10;
