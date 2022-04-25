-- Deliverable 1: Number of Retiring Employees by Title

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
							rt.first_name,
							rt.last_name,
							rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = ('9999-01-01')
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Count of employees close to retirement
SELECT COUNT (ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- Deliverable 2: Mentorship Elegibility
SELECT DISTINCT ON (e.emp_no) e.emp_no,
							e.first_name,
							e.last_name,
							e.birth_date,
							de.from_date,
							de.to_date,
							ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE de.to_date = ('9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ASC;

--Deliverable 3 count of employees retirement
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
                            rt.first_name,
                            rt.last_name,
                            rt.title,
                            d.dept_name
INTO retirement_dept
FROM retirement_titles AS rt
INNER JOIN dept_emp AS de
ON (rt.emp_no=de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no=d.dept_no)
WHERE rt.to_date=('9999-01-01')
ORDER BY rt.emp_no ASC, rt.to_date DESC;

--Future open position by Department
SELECT COUNT(rd.emp_no),rd.dept_name
INTO vacancie_dep
FROM retirement_dept AS rd
GROUP BY rd.dept_name
ORDER BY rd.dept_name

--Employees eligible to participate in a Mentorship Program
SELECT DISTINCT ON (me.emp_no) me.emp_no,
                            me.first_name,
                            me.last_name,
                            me.title,
                            d.dept_name
INTO mentorship_dept
FROM mentorship_eligibility AS me
INNER JOIN dept_emp AS de
ON (me.emp_no=de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no=d.dept_no)
ORDER BY me.emp_no ASC;

--Count of Available Mentors by Department 
SELECT COUNT(md.emp_no),md.dept_name
INTO mentorship_title
FROM mentorship_dept AS md
GROUP BY md.dept_name
ORDER BY md.dept_name

