CREATE OR REPLACE TRIGGER test
BEFORE INSERT
ON KLAS_PERSTUDENT_PEROLOD
FOR EACH ROW
DECLARE
v_eind_datum		DATE;
BEGIN
v_eind_datum := TO_DATE('01/09/' || SUBSTR(:NEW.ACJAAR,7), 'DD/MM/YYYY');

IF SYSDATE > v_eind_datum THEN
RAISE_APPLICATION_ERROR(-20000, 'u kan zich niet inschrijven voor een acjaar dat al voorbij is.'); 
END IF;

END;