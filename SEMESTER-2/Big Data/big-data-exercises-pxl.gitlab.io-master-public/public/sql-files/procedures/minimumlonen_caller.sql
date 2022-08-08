DECLARE
  v_rowcount NUMBER;
BEGIN
  minimumlonen('Canada', 2000, v_rowcount);
  DBMS_OUTPUT.PUT_LINE(v_rowcount);
END;
/