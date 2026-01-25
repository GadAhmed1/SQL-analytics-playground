-- Campaign Effectiveness
SELECT 
    campaign,
    COUNT(*) AS total_contacts,
    SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS subscriptions
FROM public.banking
GROUP BY campaign;
