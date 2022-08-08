CREATE OR REPLACE FUNCTION get_jaarloon
(p_employee_id employees.employee_id%type)
RETURN employees.salary%type
AS
  v_bruto employees.salary%type;
BEGIN
  SELECT (salary + nvl(salary*commission_pct,0))*12 
  INTO v_bruto
  FROM employees
  WHERE employee_id = p_employee_id;
  RETURN v_bruto;
END;
/
