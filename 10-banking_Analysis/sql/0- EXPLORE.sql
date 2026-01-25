-- EXPLORE
SELECT * FROM public.banking;
SELECT MAX(age), MIN(age) FROM public.banking;
SELECT MAX(balance::"numeric"), MIN(balance::"numeric") FROM public.banking;
SELECT DISTINCT y FROM public.banking;