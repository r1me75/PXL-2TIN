CREATE OR REPLACE PROCEDURE grootste_dept
IS
  v_dept_id departments.department_id%type;
  v_dept_name departments.department_name%type;
  v_name employees.last_name%type;
  v_firstname employees.first_name%type;
  v_salary employees.salary%type;
BEGIN
  SELECT department_name, department_id
  INTO v_dept_name, v_dept_id
  FROM departments 
  JOIN employees
  USING(department_id)
  GROUP BY department_name, department_id
  HAVING COUNT(employees.employee_id) = (
    SELECT MAX(COUNT(*))
    FROM employees
    GROUP BY department_id
  );
  SELECT last_name, first_name, salary
  INTO v_name, v_firstname, v_salary
  FROM employees 
  JOIN departments 
  USING (department_id)
  WHERE department_name = v_dept_name
  AND employees.salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = v_dept_id
  );
  DBMS_OUTPUT.PUT_LINE(
    'Department: ' || 
    v_dept_name ||
    chr(13) ||
    chr(10) ||
    'Highest salary: ' ||
    v_name ||
    ' ' || 
    v_salary
  );
END;
/