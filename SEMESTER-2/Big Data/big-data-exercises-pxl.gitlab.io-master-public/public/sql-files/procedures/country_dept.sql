CREATE OR REPLACE PROCEDURE country_dept(
  p_country_id IN countries.country_id%type
)
AS
  v_max number(5);
BEGIN
  SELECT COUNT(location_id) 
  INTO v_max
  FROM departments 
  JOIN locations
  USING (location_id)
  WHERE country_id = p_country_id;
  IF v_max = 0 
  THEN
    DBMS_OUTPUT.PUT_LINE(
      'Er zijn geen departementen gevestigd in het land met id ' ||
      p_country_id
    );
  ELSE
    FOR department IN (
      SELECT department_name
      FROM departments
      JOIN locations
      USING (location_id)
      WHERE country_id = p_country_id
    )
  LOOP
    DBMS_OUTPUT.PUT_LINE(
      department.department_name
    );
  END LOOP;
  END IF;
  END country_dept_cursorloop;
/