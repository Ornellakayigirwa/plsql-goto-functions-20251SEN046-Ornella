CREATE OR REPLACE FUNCTION years_of_service (hire_date DATE)
RETURN NUMBER IS
BEGIN
    IF hire_date IS NULL THEN
        RETURN 0;
    END IF;
    RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, hire_date) / 12);
END;
/