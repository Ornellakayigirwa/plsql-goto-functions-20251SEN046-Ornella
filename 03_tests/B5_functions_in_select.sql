SELECT e.emp_id,
       e.first_name,
       e.salary                      AS monthly_salary,
       annual_salary(e.salary)       AS annual_salary,
       years_of_service(e.hire_date) AS years_of_service,
       calculate_tax(e.salary)       AS tax,
       dept_name(e.dep_id)           AS department
FROM employees e
ORDER BY e.emp_id;