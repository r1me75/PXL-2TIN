CREATE OR REPLACE TRIGGER data_validation_trigger
  BEFORE INSERT 
  OR UPDATE 
  ON employees
  FOR EACH ROW
BEGIN
  :NEW.job_id := UPPER(:NEW.job_id);
  :NEW.first_name := INITCAP(:NEW.first_name);
  :NEW.last_name := INITCAP(:NEW.last_name);
  IF INSERTING THEN
    IF :NEW.hire_date < SYSDATE THEN
      raise_application_error(
        -20000,
        'Date can''t be in the past.'
      );
    END IF;
  END IF;
  IF UPDATING THEN
    IF 
      :NEW.job_id IN ('%MAN', '%MGR') 
      AND :OLD.job_id NOT IN ('AD_PRES', 'AD_VP') 
    THEN
      :NEW.salary := :OLD.salary*1.05;
    END IF;
  END IF;
  END;
/