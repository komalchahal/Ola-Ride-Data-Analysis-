Create database Ola;
Use Ola;

# We Retrieve all successful bookings:
Create View Successful_Bookings As
Select * from Bookings
where Booking_Status = 'success';
Select * from  Successful_Bookings;

# Find the average ride distance for each vehicle type:
Create view ride_distance_for_each_vehicle As
Select Vehicle_Type, AVG(Ride_Distance) as avg_distance from Bookings
Group by Vehicle_Type;
Select * from ride_distance_for_each_vehicle ;

# Get the total number of cancelled rides by customer
Create View Cancelled_rides_by_customers As
Select Count(*)  from Bookings
where Booking_Status = 'Canceled by Customer';
select *  from Canceled_rides_by_customers 

# List the top 5 customers who booked the highest number of rides
Create view Top_5_customers As
SELECT Customer_ID, COUNT(Booking_ID) As Total_rides From Bookings 
Group by Customer_ID 
Order by Total_rides DESC limit 5;
select * from Top_5_customers;

# Get the no. of rides canceled by driver due to personal and car-related issues:
create View Rides_cancelled_by_Drivers_P_C_Issues As
Select Count(*) from Bookings 
where Canceled_rides_by_Driver = 'Personal & Car related issue';

#Find the max and min driver ratings from Prime sedan bookings:
Create View Max_Min_Driver_rating As
Select Max(Driver_Ratings), Min(Driver_ratings)
from bookings
where Vehicle_Type = 'Prime Sedan';

#Retrieve all rides where payment was made using UPI:
Create View UPI_Payment As
Select * from bookings 
where payment_method= 'UPI';

# Find the average customer rating per vehicle type:
Create View Avg_Customer_Rating as
Select Vehicle_Type,  Avg(Customer_rating)
from bookings
group by Vehicle_Type ;

#Calculate the total booking value of rides completed  successfully:
Create View total_successful_ride_value As
Select Sum(Booking_Value) from bookings
where Booking_status = 'Success';
Select * from total_successful_ride_value; 

#List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
Select Booking_ID , Incomplete_Rides_Reason
from Bookings
Where Incomplete_Rides = 'Yes';


 #1. Retrieve all successful bookings:
 Select * From Successful_Bookings;
 #2. Find the average ride distance for each vehicle type:
 Select * from ride_distance_for_each_vehicle;
 #3. Get the total number of cancelled rides by customers:
 Select * from cancelled_rides_by_customers;
 #4. List the top 5 customers who booked the highest number of rides:
 Select * from Top_5_Customers;
 #5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 Select * from Rides_cancelled_by_Drivers_P_C_Issues;
 #6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 Select * from Max_Min_Driver_Rating;
 #7. Retrieve all rides where payment was made using UPI:
 Select * from UPI_Payment;
 #8. Find the average customer rating per vehicle type:
 Select * from AVG_Customer_Rating;
 #9. Calculate the total booking value of rides completed successfully:
 Select * from total_successful_ride_value;
 #10. List all incomplete rides along with the reason:
 Select * from Incomplete_Rides_Reason

 






