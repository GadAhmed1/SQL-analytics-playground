use chinook_autoincrement;

-- 1- Monthly Revenue
select * from invoice;

select 
	monthname(InvoiceDate),
	sum(Total)
    from invoice
    where year(InvoiceDate) = 2022
    group by monthname(InvoiceDate)
    order by monthname(InvoiceDate) asc
    ;
    
-- 2- Best Sales Month
select 
	monthname(InvoiceDate),
	sum(Total)
    from invoice
    where year(InvoiceDate) = 2022
    group by monthname(InvoiceDate)
    order by sum(Total) desc
    limit 1
    ;