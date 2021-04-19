--How can you produce a list of the start times for bookings by members named 'David Farrell'?

SELECT starttime FROM cd.bookings cb
INNER JOIN cd.members cm
ON cm.memid = cb.memid
WHERE cm.surname = 'Farrell'
AND cm.firstname = 'David'

__________________________________________________________________________________________________________

--How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? 
--Return a list of start time and facility name pairings, ordered by the time.

SELECT cb.starttime AS start,cf.name AS name FROM cd.bookings cb
INNER JOIN cd.facilities cf
ON cb.facid = cf.facid
WHERE cf.name LIKE '%Tennis Court%'
AND cb.starttime BETWEEN '2012-09-21 00:00:00' AND '2012-09-21 23:59:59' 

__________________________________________________________________________________________________________

--How can you output a list of all members who have recommended another member?
--Ensure that there are no duplicates in the list, and that results are ordered by (surname, firstname).

SELECT DISTINCT c1.firstname,c1.surname FROM cd.members c1 
INNER JOIN cd.members c2 
ON c1.memid = c2.recommendedby
ORDER BY c1.surname,c1.firstname

__________________________________________________________________________________________________________

--How can you output a list of all members, including the individual who recommended them (if any)? 
--Ensure that results are ordered by (surname, firstname).

SELECT c1.firstname,c1.surname,c2.firstname,c2.surname
FROM cd.members c1
LEFT JOIN cd.members c2 
ON c1.recommendedby = c2.memid
ORDER by c1.surname,c1.firstname

__________________________________________________________________________________________________________


--How can you produce a list of all members who have used a tennis court? Include in your output the name of the court,
--and the name of the member formatted as a single column.
--Ensure no duplicate data, and order by the member name followed by the facility name.
 
 SELECT DISTINCT CONCAT(firstname,' ',surname) member,f.name facility FROM cd.members m 
 INNER JOIN cd.bookings b 
 ON m.memid = b.memid 
 INNER JOIN cd.facilities f
 ON b.facid = f.facid
 WHERE f.name LIKE '%Tennis Court%'
 ORDER BY member,facility

__________________________________________________________________________________________________________

--How can you produce a list of bookings on the day of 2012-09-14 which will cost the member (or guest) more than $30?
--Remember that guests have different costs to members (the listed costs are per half-hour 'slot'), and the guest user is always ID 0.
--Include in your output the name of the facility, the name of the member formatted as a single column, and the cost.
--Order by descending cost, and do not use any subqueries.

SELECT CONCAT(m.firstname,' ',m.surname) member,f.name facility,
CASE 
	WHEN m.memid = 0 THEN b.slots*f.guestcost
	ELSE b.slots*f.membercost
END AS cost
FROM cd.members m
INNER JOIN cd.bookings b
ON m.memid = b.memid
INNER JOIN cd.facilities f
ON b.facid = f.facid
WHERE b.starttime BETWEEN '2012-09-14 00:00:00' AND '2012-09-14 23:59:59'
AND ((m.memid = 0 AND b.slots*f.guestcost > 30) OR (m.memid > 0 AND b.slots*f.membercost > 30))
ORDER BY cost DESC









