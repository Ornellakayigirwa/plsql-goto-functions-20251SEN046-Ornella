# PL/SQL GOTO Statements and Functions: Individual Assignment III

**Student:** Ornella (ID 20251SEN046)

## Project idea
An employee payroll database with two tables:
- `departments` (`dep_id`, `dep_name`)
- `employees` (`emp_id`, `first_name`, `last_name`, `salary`, `hire_date`, `dep_id`)

`salary` is the **monthly** salary. The data includes deliberate invalid rows for the validator to catch: one employee with a salary of 0 (Grace) and one with no department (Zoe).

## Repository structure
- `00_setup/create_tables.sql`: creates and fills the tables
- `01_goto/`: A1 number classifier, A2 salary review, A3 illegal GOTO and fix, A4 rewrite without GOTO
- `02_functions/`: B1 annual salary, B2 years of service, B3 tax calculator, B4 department name, C1 payroll validator
- `03_tests/`: B5 functions in a SELECT, and test files for the functions and the validator
- `screenshots/`: output screenshots for A1, A2, A3, A4, B5 and C1
- `docs/REFLECTION.md`: reflection (C2)

## How to run
1. Run `00_setup/create_tables.sql`.
2. Run the functions in `02_functions/`.
3. Run the programs in `01_goto/` (use `SET SERVEROUTPUT ON;`).
4. Run the test files in `03_tests/`.
5. Verify your results against the screenshots.

## Function notes
- The functions in the code are named `annual_salary`, `years_of_service`, `calculate_tax`, `dept_name` and `payroll` (the C1 validator).
- Tax rules (my own scheme): 0 up to 60,000; 20% on the part from 60,000 to 100,000; 8,000 plus 30% of the part above 100,000.
- The validator `payroll` reports an invalid salary, a missing department, or a missing or future hire date, and otherwise returns a VALID summary.

## Notes
I used Claude (an AI assistant) for guidance, for debugging errors, and for help with the wording of the reflection and this README. I tested the code myself in Oracle SQL Developer and I am responsible for understanding and explaining all submitted code.
