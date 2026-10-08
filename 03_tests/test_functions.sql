   SET SERVEROUTPUT ON;
   BEGIN
       DBMS_OUTPUT.PUT_LINE('Annual salary of 150000: ' || annual_salary(150000));
       DBMS_OUTPUT.PUT_LINE('Tax on 150000: ' || calculate_tax(150000));
       DBMS_OUTPUT.PUT_LINE('Dept 102: ' || dept_name(102));
       DBMS_OUTPUT.PUT_LINE('Dept NULL: ' || dept_name(NULL));
   END;
   /