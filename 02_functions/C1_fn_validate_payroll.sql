CREATE OR REPLACE FUNCTION payroll (empId NUMBER)
RETURN VARCHAR2 IS
    e_salary employees.salary%TYPE;
    e_hire   employees.hire_date%TYPE;
    e_dep    employees.dep_id%TYPE;
    e_result VARCHAR2(200);
BEGIN
    SELECT salary, hire_date, dep_id
    INTO e_salary, e_hire, e_dep
    FROM employees
    WHERE emp_id = empId;

    IF e_salary IS NULL OR e_salary <= 0 THEN
        e_result := 'INVALID: The salary is less than 0';
        GOTO done;
    END IF;

    IF e_dep IS NULL THEN
        e_result := 'INVALID: There is no department';
        GOTO done;
    END IF;

    IF e_hire IS NULL OR e_hire > SYSDATE THEN
        e_result := 'INVALID: The hire date is missing';
        GOTO done;
    END IF;

    e_result := 'VALID: ' || dept_name(e_dep) ||
                ', annual salary ' || annual_salary(e_salary) ||
                ', tax ' || calculate_tax(e_salary);

    <<done>>
    RETURN e_result;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: employee not found';
END;
/