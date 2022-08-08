CREATE OR REPLACE PROCEDURE show_cities(
  p_country_id IN locations.country_id%type,
  p_count_location OUT NUMBER
)
AS
  v_country_name countries.country_name%type;
BEGIN
  p_count_location :=0;
  FOR location IN (
    SELECT *
    FROM locations
    WHERE country_id = p_country_id
    AND location_id IN (
      SELECT location_id FROM departments
    )
  )
  LOOP
    SELECT country_name INTO v_country_name
    FROM countries
    WHERE country_id = location.country_id;
    DBMS_OUTPUT.PUT_LINE(
      '==> ' ||
      v_country_name ||
      ' - ' ||
      location.location_id || 
      ' ' || 
      location.city
    );
    FOR department IN (
      SELECT department_name, COUNT(*) NUMBER_of_departments
      FROM departments JOIN employees USING (department_id)
      WHERE departments.location_id = location.location_id
      GROUP BY department_name
    )
    LOOP
      DBMS_OUTPUT.PUT_LINE(
        department.department_name || 
        ': ' || 
        department.NUMBER_of_departments
      );
      p_count_location := p_count_location + department.NUMBER_of_departments;
    END LOOP;
  END LOOP;
  END;
/