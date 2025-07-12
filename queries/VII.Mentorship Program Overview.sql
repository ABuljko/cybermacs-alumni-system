SELECT 
    mentor.alumni_id AS mentor_id, 
    mentor.full_name AS mentor_name, 
    mentee.alumni_id AS mentee_id, 
    mentee.full_name AS mentee_name,
    mentee_count.total_mentees
FROM Mentorship m
JOIN Alumni mentor ON m.mentor_alumni_id = mentor.alumni_id
JOIN Alumni mentee ON m.mentee_alumni_id = mentee.alumni_id
JOIN (
    SELECT mentor_alumni_id, COUNT(mentee_alumni_id) AS total_mentees
    FROM Mentorship
    WHERE availability_status = 'Available'
    GROUP BY mentor_alumni_id
) 
mentee_count ON m.mentor_alumni_id = mentee_count.mentor_alumni_id
WHERE m.availability_status = 'Available'
ORDER BY total_mentees DESC
LIMIT 10;



