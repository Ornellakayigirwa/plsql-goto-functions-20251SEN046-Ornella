CREATE OR REPLACE FUNCTION annual_salary (monthly_salary NUMBER)
RETURN NUMBER IS
BEGIN
    IF monthly_salary IS NULL THEN
        RETURN 0;
    END IF;
    RETURN monthly_salary * 12;
END;
/