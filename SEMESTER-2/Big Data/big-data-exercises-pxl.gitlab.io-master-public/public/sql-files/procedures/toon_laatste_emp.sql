CREATE OR REPLACE PROCEDURE toon_laatste_emp
IS
  v_emp_id employees.employee_id%type;
  v_emp_name employees.last_name%type;
  v_emp_hire_date employees.hire_date%type;
BEGIN
  SELECT employee_id, last_name, hire_date
  INTO v_emp_id, v_emp_name, v_emp_hire_date
  FROM (
    SELECT employee_id, first_name, last_name, hire_date
    FROM employees
    ORDER BY hire_date 
    DESC
  ) 
  WHERE ROWNUM = 1;

  DBMS_OUTPUT.PUT_LINE(
    v_emp_id || ':' || v_emp_name || ':' || v_emp_hire_date
  );
END;
/