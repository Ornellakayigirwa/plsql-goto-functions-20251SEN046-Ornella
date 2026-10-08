# Reflection: PL/SQL GOTO Statements and Functions

## 1. What GOTO is and how I used it
GOTO works like a pointer. After a condition is checked, GOTO tells the program to jump to the block marked with `<< >>` whose name matches the name written after the `GOTO` keyword. I used it in A1 (classifying a number as positive, negative or zero), in A2 (reviewing each employee's salary) and in C1 (the payroll validator).

## 2. The illegal GOTO (A3)
In A3 I got the error `PLS-00375: illegal GOTO statement; this GOTO cannot branch to label 'INSIDE_IF'`. I understood that a GOTO cannot jump into the middle of an IF block from outside. The condition must be closed first, so the label has to sit outside the IF, in the same block as the GOTO. I fixed it by moving the label out of the IF.

## 3. GOTO compared with no GOTO
The version without GOTO (A4) was more straightforward than the GOTO version (A1). In my opinion, code without GOTO is easier to read, because you follow the IF / ELSIF / ELSE in order instead of jumping between labels.

## 4. What I learned about functions
Functions are reusable blocks of code that compute something and return a result. In B5, calling the functions inside a SELECT gave me the output I wanted. Without functions the code would have been much longer and harder to read. With them, the code is cleaner and the work is easier.

## 5. The main problem I hit and how I fixed it
My biggest problem was naming. In my `dept_name` function, the parameter had the same name as the table column `dep_id`, so the query compared the column with itself and returned every row (ORA-01422). I fixed it by renaming the parameter. I also had to think carefully about how to structure the functions so they gave the output I wanted.

## 6. What I would do differently
Next time I will be more careful with the naming of variables, parameters and columns, and keep them clearly different from each other.

## Notes: AI usage
I used Claude (an AI assistant) for guidance, for checking and fixing errors in my code, and for help with the wording of this reflection and the README. The reflection content comes from my own experience on this assignment. I remain responsible for understanding and explaining all submitted code.
