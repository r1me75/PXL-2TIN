CREATE OR REPLACE TRIGGER data_validation_trigger
  BEFORE 
    INSERT OR DELETE 
           ON employees
           FOR EACH ROW
  DECLARE
    v_manager_id departments.manager_id%TYPE;
    v_firstname employees.first_Name%TYPE;
    v_name employees.last_name%TYPE;
 
  BEGIN
  IF INSERTING THEN
    IF :NEW.manager_id IS NULL THEN
      SELECT manager_id
      INTO v_manager_id
      FROM departments
      WHERE department_id = :NEW.department_id;
      
      SELECT first_name, last_name
      INTO v_firstname, v_name
      FROM employees
      WHERE employee_id = v_manager_id;

      :NEW.manager_id := v_manager_id;
      DBMS_OUTPUT.PUT_LINE(
        'de chef wordt ' ||
        v_name || 
        ' ' || 
        v_firstname
      );
    END IF;

    IF :NEW.hire_date IS NULL THEN
      :NEW.hire_date := NEXT_DAY(SYSDATE, 'MONDAY');
    END IF;
 
    IF :NEW.salary IS NULL THEN
      :NEW.salary := 1000;
      DBMS_OUTPUT.PUT_LINE(
        'het salaris van employee ' || 
        :NEW.last_name || 
        ' wordt 1000.'
      );
    END IF;
 
  ELSIF DELETING THEN
    DBMS_OUTPUT.PUT_LINE(
      'dit is per maand een besparing van ' || 
      :OLD.salary || 
      ' euro.'
    );
  END IF;
  END;
/