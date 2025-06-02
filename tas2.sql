--task1 Barcha xodimlarni ularning bo‘lim nomlari bilan INNER JOIN yordamida chiqarish.

select e.name AS emp_name, d.dept_name 
from employees e INNER JOIN departments d ON
e.department_id = d.department_id;


-- Bo‘limlar va ularning xodimlarini, xodimi bo‘lmagan bo‘limlar bilan birga, LEFT JOIN yordamida chiqarish.

select e.name AS emp_name, d.dept_name 
from departments d LEFT JOIN employees e ON
e.department_id = d.department_id;

--3. Har bir bo‘lim uchun o‘rtacha maoshni hisoblash (dept_name va avg_salary ko‘rsatilgan).

SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM departments d JOIN employees e ON
d.department_id = e.department_id
GROUP BY d.dept_name;

--4. Barcha xodimlar va pudratchilar nomlarini bitta ro‘yxatda birlashtirish (UNION).

SELECT e.name AS emp_name
FROM employees e
UNION
SELECT c.name AS contractors_name
FROM contractors c;

-- Har bir bo‘limda nechta xodim borligini hisoblash va faqat 2 dan ortiq xodimi bo‘lgan bo‘limlarni ko‘rsatish (Advanced JOIN + GROUP BY).

SELECT d.dept_name, COUNT(e.emp_id) AS count_emp
FROM departments d JOIN employees e ON
d.department_id = e.department_id
WHERE COUNT(e.emp_id>2)
GROUP BY d.dept_name, e.salary;
