# Postgres-Lec7-Jan-12-25
into- postgres

* constrain ON DELETE CASCADE - is used to specify that when a row is deleted from the parent table, 
all rows in the child table that reference the deleted row should also be deleted. 
  * This is useful for maintaining the **integrity** of the database.
  * but decrease the **security** of the database
* ON UPDATE CASCADE - after update parent table, the child table will be update accordingly.
* SERIAL= AUTO-INCREASE && integer the id
* RANDOM()- function , generate a random number between 0-1 
* ::numeric = convert to number
* ROUND() - function , receive a float number and a number of how many number after the .
* generate_series(start,stop[,step]) = range between 2 numbers, including stop value.
* DECIMAL(number before the . , numbers after the .) = value type with definition of
* VARCHAR(limit of length of string) = sting type
* TIMESTAMP - timestamp without time zone= '2024-01-10 10:30:00'- can be only date/time
* NOW() - function returns the current date and time with the time zone of the database server. 
* EXTRACT - a function to extract a field such as a year, month, and day from a date/time value.
  * reference: https://neon.tech/postgresql/postgresql-date-functions/postgresql-extract
  * DOW=  Day Of the Week (Sunday (0), Monday (1) … Saturday (6)).
  * IN (0, 6) = range between 0-6
* INTERVAL [fields] - allow to use the string parameters as mentioned time range
  * reference: https://neon.tech/postgresql/postgresql-tutorial/postgresql-interval
  * now()- INTERVAL '1 day' returns the now timestamp - 1 day
*  BETWEEN num1 AND num2 - range(num1,num2), including 
* DATE(sale_timestamp)- extract the date only from the timestamp(date time) in yyyy-mm-dd format 
