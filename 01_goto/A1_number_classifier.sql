SET SERVEROUTPUT ON;
DECLARE
    n_number NUMBER := 3;
BEGIN
    IF n_number> 0 THEN
     GOTO positive_label;
    ELSIF n_number < 0 THEN
    GOTO negative_label;
    ELSE
    GOTO zero_label;
    END IF;
    
    <<positive_Label>>
        dbms_output.put_line(n_number ||' is positive');
        GOTO end_label;
    <<negative_label>>
        dbms_output.put_line(n_number || ' is negative');
        GOTO end_label;
    <<zero_label>>
        dbms_output.put_line(n_number || ' is zero');
        GOTO end_label;
    <<end_label>>
        NULL;
    END;
    /