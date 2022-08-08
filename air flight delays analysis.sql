/*1.How many flights are in our table?*/
SELECT COUNT(*) FROM flight_delays;
/*2.What years, months, and days are in the dataset?*/
SELECT DISTINCT (year) FROM flight_delays;
SELECT DISTINCT (month) FROM flight_delays;
SELECT DISTINCT (dayofweek) FROM flight_delays;
/*3.Get the total airtime for all flights.*/
SELECT SUM(airtime) FROM flight_delays;
/*4.What is the average time of the arrival delays and the departure delays?*/
SELECT AVG(arrtime) FROM flight_delays;
SELECT AVG(deptime) FROM flight_delays;
/*5.What is the average time of the arrival delays and the departure delays?*/
SELECT MIN(distance) FROM flight_delays;
SELECT MAX(distance) FROM flight_delays;
/*6.It’s interesting to know the average departure delay of all flights,but when it comes to business decisions, this number is not actionable at all. So, we should know what is the average departure delay of each airport.*/
SELECT origin , AVG(arrtime) FROM flight_delays
GROUP BY (origin)
ORDER BY AVG(arrtime);
SELECT origin , AVG(deptime) FROM flight_delays;
GROUP BY (origin)
ORDER BY AVG(arrtime);
/*7.What is the total monthly airtime?*/
SELECT  month ,SUM(airtime) FROM flight_delays
GROUP BY (month);
/*8. What is the average departure delay by airport, but for only those
flights that flew more than 2000 miles?*/
SELECT origin,SUM(distance),AVG(deptime) FROM flight_delays
WHERE distance < 2000
GROUP BY (origin);
/*9. which airport was the busiest in 2007? (High)*/
SELECT COUNT(flightnum),origin 
FROM flight_delays
GROUP BY (origin)
ORDER BY COUNT DESC
limit 1;
/*10. How many different airports are in your table?*/
SELECT COUNT(DISTINCT(origin)) from flight_delays;
/*11.List the:
• top 5 planes (identified by the tailnum).
• by the number of landings/
• at PHX or SEA airport.
• on Sundays.*/

SELECT COUNT(*) , tailnum
FROM flight_delays
WHERE dayofweek =2 AND dest IN ('PHX','SEA')
GROUP BY tailnum
ORDER BY COUNT(*) DESC
LIMIT 5;









