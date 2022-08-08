DECLARE
  v_number_of_departments NUMBER(5);
BEGIN
  show_cities('US', v_number_of_departments);
  DBMS_OUTPUT.PUT_LINE(v_number_of_departments);
END;
/