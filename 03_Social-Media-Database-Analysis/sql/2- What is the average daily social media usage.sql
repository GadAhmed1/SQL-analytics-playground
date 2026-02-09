-- What is the average daily social media usage (in hours)?
SELECT ROUND(AVG("Avg_Daily_Usage_Hours"::"numeric"),2) from public."Students Social Media Addiction";