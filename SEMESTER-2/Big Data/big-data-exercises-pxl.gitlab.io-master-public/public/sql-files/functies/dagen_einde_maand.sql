CREATE OR REPLACE FUNCTION dagen_einde_maand
RETURN NUMBER
AS
  v_number NUMBER;
BEGIN
  RETURN LAST_DAY(sysdate) - sysdate;
END;
/