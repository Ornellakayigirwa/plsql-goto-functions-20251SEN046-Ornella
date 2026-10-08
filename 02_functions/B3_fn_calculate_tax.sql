CREATE OR REPLACE FUNCTION calculate_tax (salary NUMBER)
RETURN NUMBER IS
BEGIN
    IF salary IS NULL OR salary <= 60000 THEN
        RETURN 0;
    ELSIF salary <= 100000 THEN
        RETURN (salary - 60000) * 0.20;
    ELSE
        RETURN 8000 + (salary - 100000) * 0.30;
    END IF;
END;
/