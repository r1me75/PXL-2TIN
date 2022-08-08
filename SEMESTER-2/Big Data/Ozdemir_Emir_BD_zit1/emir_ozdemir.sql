CREATE OR REPLACE PROCEDURE pcr_te_laat

IS
	v_boete	NUMBER(4, 2) := 0;
	v_genres 	VARCHAR2(50) := '';
	v_firstname members.firstname%TYPE;
	v_lastname  members.lastname%TYPE;
BEGIN
	FOR book in (
		SELECT title, isbn, date_borrowed, date_of_return, memberid
		FROM books
		JOIN loans
		USING (isbn)
		WHERE date_of_return IS NULL AND (sysdate - date_borrowed) > 21)
		LOOP 	
			v_boete := (sysdate - (book.date_borrowed + 21)) * 0.10;

			FOR genre in (
				SELECT genreid
				FROM book_genres
				WHERE isbn = book.isbn)
				
				LOOP	
					v_genres := v_genres || ' ' || genre.genreid;
			END LOOP;
			
			
			SELECT firstname, lastname
			into v_firstname, v_lastname
			FROM members
			WHERE memberid = book.memberid;
				
		
			DBMS_OUTPUT.PUT_LINE('Lid: ' || v_firstname || ' ' || v_lastname || ' ontleende ' || book.title || ' ('|| v_genres || ' )');
			DBMS_OUTPUT.PUT_LINE('---> ontleed op: ' || TO_CHAR(book.date_borrowed, 'dd-mm-yyyy') || ' --> ' || v_boete || ' euro');
			v_genres := '';
			
	END LOOP; 
END pcr_te_laat;
/