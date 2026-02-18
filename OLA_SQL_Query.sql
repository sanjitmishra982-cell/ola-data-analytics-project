select * from ola limit 2;
-- 1. Retrieve all successful bookings
select count(booking_status) as successfull_booking
from ola
where booking_status='Success';

--2. Find the average ride distance for each vehicle type:
select vehicle_type,avg(ride_distance)
from ola
group by vehicle_type;

--3. Get the total number of cancelled rides by customers:
select count(*) as cancelled_rides_by_customer
from ola
where canceled_rides_by_customer is not null;

--4. List the top 5 customers who booked the highest number of rides:
select customer_id, count(booking_id) as highested_no_rides
from ola
group by customer_id
order by highested_no_rides desc
limit 5;


--5. Get total no of rides canceled by thr driver due to persoal ad car related issue
SELECT COUNT(*) AS canceled_rides_by_driver
FROM ola
WHERE canceled_rides_by_driver = 'Personal & Car related issue';


--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT 
    MAX(driver_ratings) AS max_rating,
    MIN(driver_ratings) AS min_rating,
	vehicle_type
FROM ola
WHERE vehicle_type = 'Prime Sedan'
group by vehicle_type;

--7. Retrieve all rides where payment was made using UPI:
select  count(customer_id) as UPI_payment, payment_method
        
from ola
where payment_method='UPI'
group by payment_method;

--8. Find the average customer rating per vehicle type:
select vehicle_type,avg(customer_rating)
from ola
group by vehicle_type;


--9. Calculate the total booking value of rides completed successfully:
select sum(booking_value) as booking_successfull
from ola
where booking_status='Success';
--10. List all incomplete rides along with the reason:
select incomplete_rides,incomplete_rides_reason
from ola
where incomplete_rides='Yes'






