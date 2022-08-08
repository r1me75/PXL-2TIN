CREATE OR REPLACE FUNCTION aantal_dienstjaren
(p_hire_date employees.hire_date%type)
RETURN NUMBER
AS
BEGIN
  RETURN TRUNC(months_between(sysdate, p_hire_date)/12);
END;
/