CREATE OR REPLACE FUNCTION schrikkeljaar
RETURN VARCHAR2
AS
  v_year VARCHAR2(4):= TO_CHAR(SYSDATE, 'YYYY');
BEGIN
  IF MOD(v_year, 4) = 0 THEN
    RETURN 'Het jaar ' || v_year || ' is een schrikkeljaar.';
	ELSE
    RETURN 'Het jaar ' || v_year || ' is geen schrikkeljaar.';
	END IF;
END;
/
