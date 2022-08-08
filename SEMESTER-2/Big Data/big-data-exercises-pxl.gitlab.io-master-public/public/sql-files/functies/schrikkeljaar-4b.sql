CREATE OR REPLACE FUNCTION schrikkeljaar
(p_year VARCHAR2)
RETURN VARCHAR2
AS
BEGIN
  IF MOD(p_year, 4) = 0 THEN
    RETURN 'Het jaar ' || p_year || ' is een schrikkeljaar.';
	ELSE
    RETURN 'Het jaar ' || p_year || ' is geen schrikkeljaar.';
	END IF;
END;
/
