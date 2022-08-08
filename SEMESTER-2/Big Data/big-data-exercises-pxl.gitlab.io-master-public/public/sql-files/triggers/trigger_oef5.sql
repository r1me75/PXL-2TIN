CREATE OR REPLACE TRIGGER loan_raise_trigger
  AFTER UPDATE 
  OF salary 
  ON employees
  FOR EACH ROW
  WHEN (OLD.hire_date < TO_DATE('01-01-1995','dd-mm-yyyy'))
BEGIN
  IF :NEW.salary < :OLD.salary THEN
    RAISE_APPLICATION_ERROR(-20000,'Loonsverlaging kan niet!');
  ELSIF :NEW.salary > :OLD.salary*1.05 THEN
    RAISE_APPLICATION_ERROR(
      -20000,
      'Een loonsverhoging van meer dan 5% is niet toegelaten!'
    );
  END IF;
  END;
/