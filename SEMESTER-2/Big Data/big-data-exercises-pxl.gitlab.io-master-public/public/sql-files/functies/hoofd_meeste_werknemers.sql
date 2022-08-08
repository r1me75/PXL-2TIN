CREATE OR REPLACE FUNCTION hoofd_meeste_werknemers
RETURN VARCHAR2
AS
  v_department_id employees.department_id%type;
  v_aantal NUMBER;
  v_manager_id employees.manager_id%type;
  v_first_name employees.first_name%type;
  v_last_name employees.last_name%type;
BEGIN
  SELECT department_id, count(employee_id)
  INTO v_department_id, v_aantal
  FROM employees
  GROUP BY department_id
  HAVING count(employee_id) = (SELECT max(count(employee_id))
  FROM employees
  GROUP BY department_id);
  SELECT manager_id
  INTO v_manager_id
  FROM departments
  WHERE department_id = v_department_id;
  SELECT first_name , last_name
  INTO v_first_name, v_last_name
  FROM employees
  WHERE employee_id = v_manager_id;
  RETURN v_first_name || ' ' || v_last_name;
END;
/
