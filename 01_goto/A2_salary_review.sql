SET SERVEROUTPUT ON;
BEGIN
    FOR e IN (SELECT emp_id, First_name, salary FROM employees ORDER BY emp_id) LOOP
    IF e.salary IS NULL OR e.salary <= 0 THEN
    GOTO invalid_salary;
    ELSIF e.salary < 100000 THEN
    GOTO low_salary;
    ELSIF e.salary < 200000 THEN
    GOTO normal_salary;
    ELSE
    GOTO high_salary;
    END IF;
    
    <<invalid_salary>>
    dbms_output.put_line(e.First_name || ' has an invalid salary: ' || e.salary );
    GOTO next_employee;
    
    <<low_salary>>
    dbms_output.put_line(e.First_name || ' has a low salary: ' || e.salary );
    GOTO next_employee;
    
    <<normal_salary>>
    dbms_output.put_line(e.First_name || ' has a normal salary: ' || e.salary );
    GOTO next_employee;

    <<high_salary>>
    dbms_output.put_line (e.First_name || ' has a high salary: ' || e.salary );
    GOTO next_employee;

    <<next_employee>>
    NULL;
    END LOOP;
    END;
    /
    