DECLARE
  v_asterisks VARCHAR2(50);
BEGIN
  asterisk_sal(100, v_asterisks);
  DBMS_OUTPUT.PUT_LINE(v_asterisks);
END;
/