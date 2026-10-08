CREATE OR REPLACE FUNCTION dept_name (depId NUMBER)
RETURN VARCHAR2 IS
    d_name VARCHAR2(50);
BEGIN
    IF depId IS NULL THEN
        RETURN 'No Department';
    END IF;
    SELECT MAX(dep_name) INTO d_name FROM departments WHERE dep_id = depId;
    IF d_name IS NULL THEN
        RETURN 'Unknown Department';
    END IF;
    RETURN d_name;
END;
/