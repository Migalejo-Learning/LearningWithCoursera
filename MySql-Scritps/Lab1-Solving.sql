use little_lemon;

# Task 1: 
# Little Lemon want a list of all customers who have made bookings. 
# Write an INNER JOIN SQL statement to combine the full name and the phone 
# number of each customer from the Customers table with the related booking 
# date and 'number of guests' from the Bookings table. 
SELECT c.FullName, c.PhoneNumber, b.BookingDate, b.NumberOfGuests 
FROM Customers as c
INNER JOIN Bookings as b
on c.`CustomerID` = b.`CustomerID`;

# Task 2: 
# Little Lemon want to view information about all existing customers 
# with bookings that have been made so far. This data must include customers 
# who haven’t made any booking yet. 

# Write a LEFT JOIN SQL statement to view the customer id from Customers table 
# and the related booking id from the Bookings table. The expected output result 
# should be the same as the following screenshot (assuming that you have created 
# and populate the tables correctly.)

SELECT c.CustomerID, b.BookingID 
from Customers as c LEFT JOIN Bookings as b
on c.`CustomerID` = b.`CustomerID`;