SELECT graduation_year, COUNT(*) AS total_alumni
FROM Alumni
GROUP BY graduation_year
ORDER BY total_alumni DESC


