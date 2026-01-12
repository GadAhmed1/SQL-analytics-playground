-- Explore 
select * from public."Students Social Media Addiction";
select DISTINCT "Gender"  from public."Students Social Media Addiction";
select MAX("Avg_Daily_Usage_Hours") , MIN("Avg_Daily_Usage_Hours"), AVG("Avg_Daily_Usage_Hours"::float) from public."Students Social Media Addiction";
select MAX("Mental_Health_Score") , MIN("Mental_Health_Score") from public."Students Social Media Addiction";
select MAX("Conflicts_Over_Social_Media") , MIN("Conflicts_Over_Social_Media") from public."Students Social Media Addiction";
SELECT MAX("Sleep_Hours_Per_Night"),MIN("Sleep_Hours_Per_Night"),AVG("Sleep_Hours_Per_Night") from public."Students Social Media Addiction";