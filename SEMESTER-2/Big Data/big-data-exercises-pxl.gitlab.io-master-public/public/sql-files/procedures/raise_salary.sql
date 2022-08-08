CREATE OR REPLACE PROCEDURE raise_salary(
  p_department_id employees.department_id%type,
  p_percent_raise NUMBER
)
AS
  v_name_dep departments.department_name%type;
  v_raise NUMBER;
  v_raises NUMBER := 0;
  BEGIN
    v_raise := p_percent_raise / 100;
    --2
    SELECT department_name
    INTO v_name_dep
    FROM departments
    WHERE department_id = p_department_id;
    DBMS_OUTPUT.PUT_LINE(
      'Het gekozen departement is: ' ||
      TO_CHAR(v_name_dep) 
    );
    FOR employee IN (
      SELECT last_name, employee_id, salary
      FROM employees
      WHERE department_id = p_department_id
    ) 
    LOOP
      DBMS_OUTPUT.PUT_LINE(
        employee.last_name || 
        CHR(9) || 
        employee.employee_id || 
        CHR(9) || 
        employee.salary
      );

     --3
     UPDATE employees 
     SET salary = (employee.salary * v_raise) + 
       employee.salary 
     WHERE employee_id = employee.employee_id;
     v_raises := v_raises + 1;
   END LOOP;
   --4
   DBMS_OUTPUT.PUT_LINE('');
   DBMS_OUTPUT.PUT_LINE(
     'Aantal salarisverhogingen: ' ||
     v_raises
   );

   --5
   DBMS_OUTPUT.PUT_LINE(
     'SITUATIE NA WIJZIGING'
   );
   FOR employee IN (
     SELECT last_name, employee_id, salary
     FROM employees
     WHERE department_id = p_department_id
   )
   LOOP
     DBMS_OUTPUT.PUT_LINE(
       employee.last_name ||
       CHR(9) || 
       employee.employee_id ||
       CHR(9) || 
       employee.salary
     );
   END LOOP;
 END;
/