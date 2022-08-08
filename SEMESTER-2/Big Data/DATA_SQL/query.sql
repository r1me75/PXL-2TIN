SELECT r.theatre_performance, TO_CHAR(r.date_starttime, 'dd-mm-yyyy hh24:mi') as "Date", ra.actor_id, a.actor_name, a.actor_firstname
FROM REHEARSALS r
JOIN REHEARSAL_ACTORS ra
ON r.theatre_performance = ra.theatre_performance AND ra.date_starttime = r.date_starttime
JOIN ACTORS a
ON ra.actor_id = a.actor_id 
/
