// 4장 연습문제 1 

select s.name "STU_NAME", s.deptno1 "DEPTNO1", d.dname "DEPT_NAME" 
from student s, department d 
where s.deptno1 = d.deptno; 

  

// 4장 연습문제 2 

SELECT e.name, p.position, 
       TO_CHAR(e.pay, '999,999,999') "PAY", 
       TO_CHAR(p.s_pay, '999,999,999') "Low PAY",  
       TO_CHAR(p.e_pay, '999,999,999') "High PAY" 
FROM emp2 e, p_grade p 
WHERE e.position = p.position; 

  

// 4장 연습문제 3 

SELECT e.name, TRUNC((sysdate - e.birthday) / 365, 0) "AGE", 
       e.position "CURR_POSITION", p.position "BE_POSITION" 
FROM emp2 e, p_grade p 
WHERE TRUNC((sysdate - e.birthday) / 365) BETWEEN p.s_age AND p.e_age; 

  

// 4장 연습문제 4 

SELECT c.gname "CUST_NAME", c.point "POINT", 
       g.gname "GIFT_NAME" 
FROM customer c, gift g 
WHERE g.g_start <= c.point AND g.gname = 'Notebook'; 

  

// 4장 연습문제 5 

SELECT p1.profno, p1.name,  
       TO_CHAR(p1.hiredate, 'YYYY-MM-DD') "HIREDATE", 
       COUNT(p2.hiredate) "COUNT" 
FROM professor p1, professor p2 
WHERE p2.hiredate(+) < p1.hiredate 
GROUP BY p1.profno, p1.name, p1.hiredate 
ORDER BY 4; 

  

// 4장 연습문제 6 

SELECT e1.empno, e1.ename, e1.hiredate, COUNT(e2.hiredate) "COUNT" 
FROM emp e1, emp e2 
WHERE e2.hiredate(+) < e1.hiredate 
GROUP BY e1.empno, e1.ename, e1.hiredate 
ORDER BY 4; 