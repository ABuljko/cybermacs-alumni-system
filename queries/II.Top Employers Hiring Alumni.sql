SELECT e.company_name, COUNT(eh.alumni_id) AS total_alumni_hired
FROM employer e
JOIN employment_history eh ON e.employer_id = eh.employer_id
GROUP BY e.company_name
ORDER BY total_alumni_hired DESC
LIMIT 10;
