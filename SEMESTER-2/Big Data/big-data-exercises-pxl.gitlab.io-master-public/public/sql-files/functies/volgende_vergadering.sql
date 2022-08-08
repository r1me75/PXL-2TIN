CREATE OR REPLACE FUNCTION volgende_vergadering
RETURN DATE
AS
  v_meeting DATE;
BEGIN
  v_meeting := LAST_DAY(sysdate)+1;

  IF to_char(v_meeting,'fmday')!='monday'
  THEN
    v_meeting := NEXT_DAY(v_meeting,'monday');
  END IF;  
	IF to_char(v_meeting,'dd-mm') = '01-01'
  OR to_char(v_meeting,'dd-mm') = '01-05'
  THEN
    v_meeting := v_meeting + 1;
  END IF;
 	RETURN v_meeting;
END;
/
