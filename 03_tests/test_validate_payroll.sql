SELECT emp_id, first_name, payroll(emp_id) AS payroll_status
FROM employees
ORDER BY emp_id;

SELECT payroll(999) AS missing_employee FROM dual;