SELECT 
    a.alumni_id, 
    a.full_name, 
    e.company_name, 
    eh.job_title AS latest_job, 
    eh.start_date AS latest_start_date, 
    a.graduation_year, 
    FLOOR(DATEDIFF(eh.start_date, CONCAT(a.graduation_year, '-06-01')) / 365) AS years_to_senior_role
FROM Employment_History eh
JOIN Alumni a ON eh.alumni_id = a.alumni_id
JOIN Employer e ON eh.employer_id = e.employer_id
WHERE eh.start_date = ( 
    SELECT MIN(eh2.start_date) 
    FROM Employment_History eh2
    WHERE eh2.alumni_id = eh.alumni_id 
      AND eh2.job_title LIKE '%Senior%'
)
AND a.graduation_year IS NOT NULL 
HAVING years_to_senior_role > 0  
ORDER BY years_to_senior_role ASC
