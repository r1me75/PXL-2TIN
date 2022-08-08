CREATE OR REPLACE TRIGGER month_loan_trigger
  BEFORE 
    UPDATE OF salary
    OR DELETE
    OR INSERT ON employees
DECLARE
  v_hour varchar2(8);
BEGIN
  IF DELETING OR INSERTING THEN
    IF 
      TO_CHAR(SYSDATE, 'D') = 7 
      OR TO_CHAR(SYSDATE, 'D') = 1
    THEN
      RAISE_APPLICATION_ERROR(
        -20000, 
        'Can't add or delete salary during weekends.'
      );
    END IF;
  ELSE
    v_hour := TO_CHAR(SYSDATE,'hh24:mi:ss');
    IF
      TO_CHAR(SYSDATE, 'd') != 2 
      OR v_hour < '09:00:00' 
      OR v_hour > '17:00:00'
    THEN
      RAISE_APPLICATION_ERROR(
        -20000,  
        'Can't edit salary, ' || 
        'can only edit during Mondays during 9:00 - 17:00'
      );
    END IF;
  END IF;
  END;
/