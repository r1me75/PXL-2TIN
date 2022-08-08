CREATE OR REPLACE PROCEDURE asterisk_sal(
   p_employee_id IN employees.employee_id%type
)
AS
  v_salary employees.salary%type;
  v_asterisks VARCHAR2(50);
BEGIN
  SELECT salary 
  INTO v_salary
  FROM employees
  WHERE employee_id = p_employee_id;

  FOR i IN 1 .. ROUND(v_salary/1000)
  LOOP v_asterisks := v_asterisks || '*';
  END LOOP;
  DBMS_OUTPUT.PUT_LINE(
    v_asterisks
  );

  END;
/