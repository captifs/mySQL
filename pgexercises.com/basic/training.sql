How can you produce a list of facilities, with each labelled as 'cheap' or 'expensive' depending on if their monthly maintenance cost is more than $100? 
Return the name and monthly maintenance of the facilities in question.

https://pgexercises.com/img/schema-horizontal.svg

SELECT name,
CASE 
	WHEN monthlymaintenance > 100 THEN 'expensive'
ELSE 'cheap'
END AS cost
FROM cd.facilities
_______________________________________________________________________________________________________________________________________________________________

How can you produce a list of members who joined after the start of September 2012? Return the memid, surname, firstname, and joindate of the members in question.

SELECT memid,surname,firstname,joindate FROM cd.members
WHERE joindate > '2012-09-01'


_______________________________________________________________________________________________________________________________________________________________

You, for some reason, want a combined list of all surnames and all facility names. Yes, this is a contrived example :-). Produce that list!

SELECT surname FROM cd.members
UNION 
SELECT name FROM cd.facilities

_______________________________________________________________________________________________________________________________________________________________

How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.

SELECT DISTINCT surname FROM cd.members
ORDER BY surname
LIMIT 10

_______________________________________________________________________________________________________________________________________________________________

You'd like to get the first and last name of the last member(s) who signed up - not just the date. How can you do that?

SELECT firstname,surname,joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1



