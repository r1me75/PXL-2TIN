SELECT l.isbn, l.date_borrowed, l.date_of_return, m.firstname, m.lastname
FROM loans l
JOIN members m
ON (l.memberid = m.memberid)

WHERE (sysdate - l.date_borrowed) > 21 AND l.date_of_return IS NULL AND m.firstname = 'Yilmaz' and m.lastname = 'Niels';
/