-- Previous Campaign Contacts
SELECT
    previous,
    poutcome,
    COUNT(*) AS num_customers
FROM public.banking
WHERE previous::NUMERIC > 0
GROUP BY previous, poutcome
ORDER BY previous, poutcome;
