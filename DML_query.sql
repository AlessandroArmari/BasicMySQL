/*
QUERY to show ONLY the Alessandro's gigs ORDER BY Date

SELECT date as gig_date, city, band.name as band, full_name as user, venue.name as venue FROM ticket2.gig
JOIN ticket2.ticket ON gig.id=gig_id
JOIN ticket2.band ON gig.band_id=band.id
JOIN ticket2.user ON ticket.user_id=user.id
JOIN ticket2.venue ON venue.id=gig.venue_id
WHERE user.full_name LIKE "Alessandro";


Query to show HOW MANY tickets are meant to be used in italian gigs
SELECT COUNT(ticket.id) as "Number IT Ticket" FROM ticket2.ticket
JOIN ticket2.gig ON ticket.gig_id=gig.id
WHERE country LIKE "IT";

Query to show How many gigs Circo Massimo and Palazzo di Parma will hold" 

SELECT COUNT(gig.id) as "Num of Gigs", venue.name FROM ticket2.gig
INNER JOIN ticket2.venue
ON gig.venue_id = venue.id
GROUP BY venue.name
HAVING venue.name IN ("Circo Massimo", "Parco ducale di Parma")
ORDER BY gig.id DESC;

+++ The HAVING clause was added to SQL 
because the WHERE keyword cannot be used with aggregate functions.+++



Using CASE (if, else...)

SELECT ticket_code, date, country, city,
CASE 
	
	WHEN country LIKE "IT" THEN "This is an Italian Gig"
    WHEN country = "PL" THEN "This is a Polish Gig"
    ELSE "This isn't an italian concert nor Polish "
    END AS Statement

FROM ticket2.ticket
INNER JOIN ticket2.gig
ON ticket.gig_id = gig.id;

*/





