/* 2장 */ 

// SUBSTR(), INSTR() 문제 

select name, tel, substr(tel, 1, instr(tel, ')') -1) "AREA CODE" 
from student; 

  

/* LPAD 문제 */ 

select LPAD(ename, 9, '123456789') "LPAD" 
from emp 
where deptno = 10; 

  

// RPAD 문제 

select RPAD(ename, 9, SUBSTR('123456789', LENGTHB(ename)+1)) "RPAD" 
from emp 
where deptno = 10; 

  

// Replace 퀴즈 1 

select ename, REPLACE(ename, SUBSTR(ename, 2, 2), '--') "REPLACE" 
from emp where deptno = 20; 

  

// Replace 퀴즈 2 

select name, jumin, REPLACE(jumin, SUBSTR(jumin, 7, 7), '-/-/-/-') "REPLACE" 
from student where deptno1 = 101; 

  

// Replace 퀴즈 3 

desc student; 

// 국번이 3자리 일때 

select name, tel, REPLACE(tel, SUBSTR(tel, INSTR(tel, ')', 1)+1, 3), '***') "REPLACE" 
from student where deptno1 = 102; 

// 국번이 3자리로 고정되지 않을때 

select name, tel, REPLACE(tel, SUBSTR(tel, INSTR(tel, ')', 1)+1, (INSTR(tel, '-', 1)-1) - INSTR(tel, ')', 1)), '***') "REPLACE" 
from student where deptno1 = 101; 

  

// Replace 퀴즈 4 

select name, tel, REPLACE(tel, SUBSTR(tel, INSTR(tel, '-', 1) + 1, 4), '****') "REPLACE" 
from student where deptno1 = 101; 
