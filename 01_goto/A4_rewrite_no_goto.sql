SET SERVEROUTPUT ON;

DECLARE
    n_number NUMBER := 3;
BEGIN
    IF n_number > 0 THEN
    DBMS_OUTPUT.PUT_LINE(n_number || ' is positive');
    
    ELSIF n_number < 0 THEN
    DBMS_OUTPUT.PUT_LINE(n_number || ' is negative');
    
    ELSE
    DBMS_OUTPUT.PUT_LINE(n_number || ' is zero');
    
    END IF;
END;
/