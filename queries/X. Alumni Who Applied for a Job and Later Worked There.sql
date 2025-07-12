SELECT DISTINCT ja.alumni_id, a.full_name, jp.job_title, e.company_name,ja.submission_date,eh.start_date
FROM Job_Application ja
JOIN Job_Posting jp ON ja.job_posting_id = jp.job_posting_id
JOIN Employer e ON jp.employer_id = e.employer_id
JOIN Employment_History eh ON ja.alumni_id = eh.alumni_id 
    AND eh.employer_id = e.employer_id
    AND eh.start_date > ja.submission_date
JOIN Alumni a ON ja.alumni_id = a.alumni_id
ORDER BY a.full_name;

