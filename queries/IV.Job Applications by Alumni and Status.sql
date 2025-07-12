SELECT ja.status, COUNT(*) AS total_applications
FROM Job_Application ja
GROUP BY ja.status
ORDER BY total_applications DESC;
