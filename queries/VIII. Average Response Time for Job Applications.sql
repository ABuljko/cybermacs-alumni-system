-- because originally we had no response date when i created
ALTER TABLE Job_Application 
ADD COLUMN response_date DATE NULL;
-- populate the data
UPDATE Job_Application
SET response_date = DATE_ADD(submission_date, INTERVAL FLOOR(RAND() * 30) DAY)
WHERE status IN ('Accepted', 'Rejected');
-- query code
SELECT 
    jp.job_title, 
    e.company_name, 
    AVG(DATEDIFF(ja.response_date, ja.submission_date)) AS avg_response_time
FROM Job_Application ja
JOIN Job_Posting jp ON ja.job_posting_id = jp.job_posting_id
JOIN Employer e ON jp.employer_id = e.employer_id
WHERE ja.response_date IS NOT NULL
GROUP BY jp.job_title, e.company_name
ORDER BY avg_response_time ASC;


