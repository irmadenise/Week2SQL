/* SELECT titles.title, COUNT(*) AS "Number of Employees" FROM titles
JOIN employees ON employees.emp_no = titles.emp_no 
WHERE employees.birth_date > '1965-01-01' GROUP BY titles.title;
*/
/* SELECT titles.title, AVG(salary) FROM titles 
JOIN employees ON employees.emp_no = titles.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
GROUP BY titles.title;
*/
SELECT dept_name, SUM(salary) FROM salaries 
JOIN dept_manager ON salaries.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE departments.dept_name = "%marketing%" AND (year(salaries.from_date)) 
BETWEEN 1990 AND 1992 OR (year(salaries.to_date)) 
BETWEEN 1990 AND 1992
GROUP BY departments.dept_name;
