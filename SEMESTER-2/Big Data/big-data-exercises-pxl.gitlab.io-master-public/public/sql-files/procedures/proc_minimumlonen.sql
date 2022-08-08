CREATE OR REPLACE PROCEDURE minimumlonen(
  p_country_name IN countries.country_name%type, 
  p_min_salary IN employees.salary%type
)
IS
BEGIN
  UPDATE employees
  SET salary = p_min_salary
  WHERE department_id 
  IN (
    SELECT department_id
    FROM departments
    WHERE location_id 
    IN (
      SELECT location_id
      FROM locations
      WHERE country_id
      IN (
        SELECT country_id
        FROM countries
        WHERE country_name = p_country_name
      )
    )
  )
  AND salary < p_min_salary;
END;
/