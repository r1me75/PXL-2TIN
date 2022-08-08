CREATE OR REPLACE FUNCTION netto
(p_salary employees.salary%type)
RETURN VARCHAR2
AS
  v_netto employees.salary%type;
BEGIN
  IF p_salary <= 10000 THEN
    v_netto := p_salary * 0.6;
  ELSIF p_salary <= 16000 THEN
    v_netto := 10000 * 0.6 + (p_salary-10000) * 0.5;
  ELSE
    v_netto := 10000 * 0.6 + 6000 * 0.5 + (p_salary-16000) * 0.4;
  END IF;
  RETURN to_char(v_netto, '9,999.00') || ' euro';
END;
/
