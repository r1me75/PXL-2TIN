CREATE OR REPLACE PROCEDURE procedure_examen
	(p_month in NUMBER
	  ,p_year in NUMBER)
AS

BEGIN
	FOR rehearsal IN (
		SELECT theatre_performance, date_starttime
		FROM rehearsals
		WHERE TO_CHAR(date_starttime, 'mm') = p_month AND TO_CHAR(date_starttime, 'yyyy') = p_year)
		
		LOOP
			DBMS_OUTPUT.PUT_LINE(rehearsal.theatre_performance || ' ' || TO_CHAR(rehearsal.date_starttime, 'dd-mm-yyyy hh24:mi'));
			
			FOR reh_actor IN (
				SELECT actor_id
				FROM rehearsal_actors
				WHERE date_starttime = rehearsal.date_starttime)
				
				LOOP
					FOR actor IN (
						SELECT actor_name, actor_firstname
						FROM actors
						WHERE actor_id = reh_actor.actor_id)
						
						LOOP
							DBMS_OUTPUT.PUT_LINE('---> ' || actor.actor_name || ' ' || actor.actor_firstname);
					END LOOP;
			END LOOP;
			
	END LOOP;
END procedure_examen;
/