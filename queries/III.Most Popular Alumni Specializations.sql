SELECT specialization, COUNT(*) AS total_alumni
FROM Alumni
WHERE specialization IS NOT NULL AND specialization <> ''
GROUP BY specialization
ORDER BY total_alumni DESC
LIMIT 10;


UPDATE Alumni
SET specialization = NULL
WHERE specialization = '';

SET SQL_SAFE_UPDATES = 0;

SELECT specialization, COUNT(*) AS total_alumni
FROM Alumni
GROUP BY specialization
ORDER BY total_alumni DESC;


