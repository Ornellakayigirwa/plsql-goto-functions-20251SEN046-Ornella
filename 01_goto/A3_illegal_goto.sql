SET SERVEROUTPUT ON;
BEGIN
    GOTO inside_if;
    IF 1 = 1 THEN
    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('Inside the IF');
    END IF;
END;
/

BEGIN
    GOTO after_if;
    IF 1 = 1 THEN
    DBMS_OUTPUT.PUT_LINE('Inside the IF');
    END IF;
    <<after_if>>
    DBMS_OUTPUT.PUT_LINE('Fixed: jumped to a legal label');
END;
/