CREATE OR REPLACE TRIGGER salary_jobs_trigger
  BEFORE UPDATE OF min_salary, max_salary ON jobs
BEGIN
  IF USER IN ('STUDENT','BEZOEKER') 
  THEN 
    RAISE_APPLICATION_ERROR(
      -20000, 
      'Je hebt onvoldoende rechten om deze actie uit te voeren!'
    );
  ELSE
    DBMS_OUTPUT.PUT_LINE(
      'Ben je zeker dat je het minimum en/of maximum ' || 
      'salaris van één of meerdere jobs wil aanpassen? ' ||
      'Indien niet voer dan een ROLLBACK uit!'
    );
  END IF;
  END;
/