CREATE TABLE log_history
(
  log_user VARCHAR2(30), 
  log_datum DATE, 
  log_tijd TIMESTAMP, 
  log_actie VARCHAR2(15)
);

CREATE OR REPLACE TRIGGER job_history_trigger
   AFTER INSERT OR UPDATE OR DELETE ON job_history
DECLARE
   v_action VARCHAR2(15) ;
BEGIN
  IF INSERTING THEN
    v_action := 'INSERT';
  ELSIF UPDATING THEN
    v_action := 'UPDATE';
  ELSE
    v_action := 'DELETE';
  END IF;
 
  INSERT INTO log_history
    VALUES(
      USER, 
      SYSDATE,
      SYSTIMESTAMP, 
      v_action
    );     
  END;
/