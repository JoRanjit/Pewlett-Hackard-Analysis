-- Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.
SELECT E.emp_no,
	E.first_name,
	E.last_name,
	T.title,
	T.from_date,
	T.to_date
INTO retirement_titles
FROM employees E
INNER JOIN titles T
ON E.emp_no = T.emp_no
WHERE E.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT * FROM retirement_titles LIMIT 10;

-- create a Unique Titles table that contains the employee number, first and last name, and most recent title. 
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_retirement_titles LIMIT 10;

--Retiring Titles table that contains the number of titles filled by employees who are retiring. 
SELECT title, count(title)
FROM unique_titles
GROUP BY title;


SELECT DISTINCT ON(E.emp_no) E.emp_no,
	E.first_name,
	E.last_name,
	E.birth_date,
	DE.from_date,
	DE.to_date,
	T.title
INTO mentorship_eligibilty
FROM employees E
INNER JOIN dept_emp DE
ON E.emp_no = DE.emp_no
INNER JOIN titles T
ON (E.emp_no = T.emp_no)
WHERE E.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
ORDER BY E.emp_no;

SELECT * FROM mentorship_eligibilty LIMIT 10;

