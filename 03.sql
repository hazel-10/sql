// 형 변환 문제 1 

select studno, name, birthday 
from student 
where TO_CHAR(birthday, 'MM') = '01'; 

  

// 형 변환 문제 2 

select empno, ename, hiredate 
from emp 
where TO_CHAR(hiredate, 'MM') in('01', '02', '03'); 

  

// 형변환 함수 퀴즈 3 

desc emp; 

select empno, ename, hiredate, TO_CHAR((sal*12)+comm, '$999,999') "SAL", 
TO_CHAR(((sal*12)+comm)*1.15, '$999,999') "15% UP" 
from emp 
where comm IS NOT NULL; 

  

// NVL 함수 퀴즈 1 

select profno, name, pay, NVL(bonus, 0), TO_CHAR(pay*12+NVL(bonus, 0), '999,999') "Total" 
from professor 
where deptno = 201; 

  

// NVL 함수 퀴즈 2 

SELECT empno, ename, comm, NVL2(comm, 'Exist', 'NULL') "NVL2" 
FROM emp 
WHERE deptno = 30; 

  

// DECODE 함수 퀴즈 1 

select name, jumin, DECODE(SUBSTR(jumin, 7, 1), '1', 'MAN', 'WOMAN') "GENDER" 
from student 
where deptno1 = 101; 

  

// DECODE 함수 퀴즈 2 

SELECT NAME, TEL, 
    DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1) -1), '02', 'SEOUL', 
        '031', 'GYONGGI', '051', 'BUSAN', '052', 'ULSAN', 
        '055', 'GYEONGNAM') "LOC" 
FROM STUDENT 
WHERE DEPTNO1 = 101; 


// CASE 함수 퀴즈 1 

SELECT EMPNO, ENAME, SAL, 
    CASE WHEN sal BETWEEN 1 AND 1000 THEN 'LEVEL 1' 
         WHEN sal BETWEEN 1001 AND 2000 THEN 'LEVEL 2' 
         WHEN sal BETWEEN 2001 AND 3000 THEN 'LEVEL 3' 
         WHEN sal BETWEEN 3001 AND 4000 THEN 'LEVEL 4' 
         WHEN sal BETWEEN 4001 AND 5000 THEN 'LEVEL 5' 
    END "LEVEL" 
FROM EMP 
ORDER BY SAL DESC; 