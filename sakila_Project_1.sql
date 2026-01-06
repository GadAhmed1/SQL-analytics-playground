use sakila;
select  customer_id,concat(lower(first_name)," ",last_name),email,address_id from customer;
select postal_code,address_id,address,district,city_id,phone from address;
select city,country_id,city_id from city;
select country_id,country from country;
select customer_id,inventory_id from rental;
select inventory_id,film_id from inventory;
select film_id,title,description,language_id from film;
select film_id,category_id from film_category;
select category_id ,name from category;
select language_id,name from language;
select customer_id,inventory_id from rental;
select rental_id,amount from payment;
-- ------------------------------------------------
-- USER FULL INFORMATION
select 
	customer.customer_id,
	concat(lower(customer.first_name)," ",customer.last_name) As "Full name",
    customer.email,
    address.phone,
--     address.address,
--     address.postal_code,
--     customer.address_id As "Address id",
--     address.district,
--     address.city_id,
--     city.country_id,
--     city.city,
--     country.country_id,
--     country.country,
    concat(address.address,", ",address.district,", ",city.city,", ",country.country,", ",address.postal_code) As "full Address"
    from customer
    inner join address on customer.address_id = address.address_id
    inner join city on address.city_id = city.city_id
	inner join country on city.country_id = country.country_id;
    
-- ------------------------------------------------
-- Film Info
select 
	film.film_id,
    film.title,
    film.description,
--     film_category.film_id,
--     film_category.category_id,
--     category.category_id,
	category.name as  "category",
    language.name as "language"
	from film
    inner join film_category on film.film_id = film_category.film_id
    inner join category on film_category.category_id = category.category_id
    inner join language on film.language_id = language.language_id;
    
-- ------------------------------------------------
-- Rental Info : The account of the highest paying customer and the customer who rented the most movies will be used to give them a gift, with all their personal information known.
select 
	rental.customer_id,
	count(rental.rental_id) As "Rental Times",
	concat(lower(customer.first_name)," ",customer.last_name) As "Full name",
    customer.email,
    address.phone,
    concat(address.address,", ",address.district,", ",city.city,", ",country.country,", ",address.postal_code) As "full Address",
    sum(payment.amount) As "Total Payment"
    from rental
    inner join payment on rental.rental_id = payment.rental_id
    inner join customer on rental.customer_id = customer.customer_id
    inner join address on customer.address_id = address.address_id
    inner join city on address.city_id = city.city_id
	inner join country on city.country_id = country.country_id
    group by customer_id
    order by sum(payment.amount) and count(rental.rental_id)
    limit 5;