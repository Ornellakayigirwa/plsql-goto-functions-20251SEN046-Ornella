# PL/SQL GOTO Statements and Functions: Individual Assignment III

**Names:** Kayigirwa Ornella 

**ID:** 20251SEN046

## Overview
Database for the payroll of the employees containing two tables
- Departments
- Employees

salary refers to the **monthly** salary. The data was deliberately created with errors so the validator has something to catch:
- employees whose salary is 0
- employees without a department

## Oracle Environment Used

- **Database:** Oracle Database
- **Tool:** Oracle SQL Developer


  ## GOTO Statements

- **A1, Number classifier:** classifies a number using GOTO
- **A2, Salary review:** reviews employee salaries using GOTO
- **A3, Illegal GOTO and fix:** shows a GOTO that Oracle rejects, then the corrected version.
- **A4, Rewrite without GOTO:** the same logic restructured with standard control structures.

  ## Functions

  - B1 annual salary:  Converts the monthly salary to an annual figure 
  - B2  years of  service: Calculates how long an employee has worked 
  - B3  calculate tax:   Applies the tax scheme below 
  - B4  department_name:  Returns the department name for an employee
    
   ### Function notes
- The functions in the code are named **annual-salary**, **years-of-service**, **calculate-tax**,**dept_name** and **payroll**` (the validator).
- The validator payroll reports an invalid salary, a missing department, or a missing or future hire date, and otherwise returns a VALID summary.
  
  ## Validator

  The validator checks each employee and reports:
  - an invalid salary
  - a missing department
  - a missing or future hire date


## Notes
The codes have been tested using tested Oracle SQL Developer. I used Gemini (AI assistant) for debugging complex errors.
