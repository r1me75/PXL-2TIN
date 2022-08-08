CREATE OR REPLACE FUNCTION get_jubileumdatum
(p_last_name employees.last_name%type, p_first_name employees.first_name%type)
RETURN VARCHAR2
AS
  v_hire_date DATE;
  v_jubileum DATE;
BEGIN
  SELECT hire_date
  INTO v_hire_date
  FROM employees
  WHERE last_name = p_last_name
  AND first_name = p_first_name;
  
  v_jubileum := add_months(v_hire_date, 25*12);
  IF to_char(v_jubileum, 'd') != 6 
  THEN
-- Eerste dag van de week is zondag in plsql. Dit controleert of het vrijdag is 
-- en als dat niet het geval is neemt het de volgende vrijdag
    v_jubileum := next_day(v_jubileum, 'fri');
  END IF;
  IF v_jubileum < sysdate
  THEN
    RETURN 'Al gevierd';
  ELSE 
    RETURN to_char(v_jubileum);
  END IF;
END;
/
