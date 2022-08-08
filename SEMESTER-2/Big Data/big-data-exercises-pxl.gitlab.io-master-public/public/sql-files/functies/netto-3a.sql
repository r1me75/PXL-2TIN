CREATE OR REPLACE FUNCTION netto
(p_salary employees.salary%type)
RETURN VARCHAR2
AS
  v_netto employees.salary%type;
BEGIN
  v_netto := p_salary * 0.6;
  RETURN to_char(v_netto, '9,999.00') || 'euro';
END;
/
