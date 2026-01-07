use chinook_autoincrement;

-- 1- Revenue per country (ranked in descending order)
select 
	BillingCountry,
    sum(total)
    from invoice
    group by BillingCountry order by sum(total) desc;
    

-- 2- Top 5 Spending Customers
select 
	invoice.CustomerId,
    concat(customer.FirstName," ",customer.lastName) As "Full Name",
    customer.phone,
    customer.Email,
	sum(invoice.Total) As "Total"
    from invoice
    inner join customer
    on invoice.customerId = customer.customerId
    group by CustomerId
    order by sum(invoice.Total) desc
    limit 5;


-- 3- Income for each type of music
select 
	genre.Name,
    sum(invoiceline.Quantity * invoiceline.UnitPrice) As "Price"
    from invoice
    inner join invoiceline
    on invoice.InvoiceId = invoiceline.InvoiceId
    inner join track
    on invoiceline.TrackId = track.TrackId
    inner join genre
    on track.GenreId = genre.GenreId
	group by genre.Name
    order by sum(invoiceline.Quantity * invoiceline.UnitPrice) desc;


-- 4- Top 5 Artists by Revenue

select 
	artist.Name,
	sum(invoiceline.Quantity * invoiceline.UnitPrice) As "Price"
    from invoice
    inner join invoiceline
    on invoice.InvoiceId = invoiceline.InvoiceId
    inner join track
    on invoiceline.TrackId = track.TrackId
    inner join album
    on track.AlbumId = album.AlbumId
    inner join artist
    on album.ArtistId = artist.ArtistId
    group by artist.Name
    order by sum(invoiceline.Quantity * invoiceline.UnitPrice) desc
    limit 5;
    