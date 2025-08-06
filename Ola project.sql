Create Database Ola;
Use Ola;

# 1.Retrive all successful bookings
create view Successful_Booking As
select * from bookings
where Booking_Status = 'Success';
select*from Successful_Booking;

# 2.Find the average ride distance for each vehicle type
Create view Ride_Distance_For_Each_Vehicle As
select Vehicle_Type, AVG(Ride_Distance) As avg_ride_distance
from bookings
group by Vehicle_Type;
select * from Ride_Distance_For_Each_Vehicle;

# 3. Get the total number of canceled rides by customers
create view Canceled_Rides_by_Customer As
select count(*)from bookings
where Booking_Status = 'Canceled By Customer';
select * from Canceled_Rides_by_Customer;

# 4. List the top 5 cuastomers who booked the highest number of rides
create view Top_5_Customers As
select *from bookings
where Payment_Method = 'UPI';
select * from Top_5_Customers;

# Get the number of rides canceled by drivers due to personal and card-related issue
create view Canceled_by_drivers As
SELECT COUNT(*) FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';
select * from Canceled_by_drivers;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Max_Min_Driver_Rating As
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';
select * from Max_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
Create View UPI_Payment As
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';
select * from UPI_Payment;

#8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;
select * from AVG_Cust_Rating;

#9. Calculate the total booking value of rides completed successfully:
Create View total_successful_ride_value As
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';
select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';
select * from Incomplete_Rides_Reason;