CREATE OR REPLACE PROCEDURE plan_1tin_zit2
(p_jaar			NUMBER)
AS
v_acjaar		EXAMENDATUM_OLOD.ACJAAR%TYPE;
v_examenmaand		EXAMENDATUM_OLOD.EXAMENMAAND%TYPE;
v_exdatum		EXAMENDATUM_OLOD.EXDATUM%TYPE;
BEGIN
v_acjaar := p_jaar - 1 || ' - ' || p_jaar;
v_exdatum := TO_DATE('17/08/' || p_jaar, 'DD/MM/YYYY');
v_examenmaand := 'aug-sep';

FOR examen IN (SELECT OLODCODE FROM OLODS) LOOP

IF SUBSTR(LOWER(examen.OLODCODE), 2, 4) = '1tin' THEN

IF TO_CHAR(v_exdatum, 'DY') = 'SAT' OR TO_CHAR(v_exdatum, 'DY') = 'SUN' THEN
v_exdatum := NEXT_DAY(v_exdatum, 'MONDAY');
END IF;

INSERT INTO EXAMENDATUM_OLOD VALUES (v_acjaar, v_examenmaand, examen.OLODCODE, v_exdatum);

v_exdatum := v_exdatum + 1;

END IF;

END LOOP;

END;
