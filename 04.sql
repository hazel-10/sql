// 그룹 함수 연습 문제 1 

SELECT MAX(SAL+NVL(COMM, 0)) "MAX", MIN(SAL+NVL(COMM, 0)) "MIN", 
       ROUND(AVG(SAL+NVL(COMM, 0)), 1) "AVG" 
FROM EMP; 

  

// 그룹 함수 연습 문제 2 

SELECT COUNT(*)||'EA' "TOTAL", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '01', 0))||'EA' "JAN", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '02', 0))||'EA' "FEB", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '03', 0))||'EA' "MAR", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '04', 0))||'EA' "APR", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '05', 0))||'EA' "MAY", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '06', 0))||'EA' "JUN", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '07', 0))||'EA' "JUL", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '08', 0))||'EA' "AUG", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '09', 0))||'EA' "SEP", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '10', 0))||'EA' "OCT", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '11', 0))||'EA' "NOV", 
       COUNT(DECODE(TO_CHAR(birthday, 'MM'), '12', 0))||'EA' "DEC" 
FROM STUDENT; 

  

// 그룹 함수 연습 문제 3 

SELECT COUNT(*) "TOTAL", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '02', 0)) "SEOUL", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '031', 0)) "SYEONGGI", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '051', 0)) "BUSAN", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '052', 0)) "ULSAN", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '053', 0)) "DAEGU", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '055', 0)) "GYEONGNAM" 
FROM STUDENT; 

  

// 그룹 함수 연습 문제 4 

INSERT INTO EMP(empno, deptno, ename, sal) VALUES(1000, 10, 'Tiger', 3600); 
INSERT INTO EMP(empno, deptno, ename, sal) VALUES(2000, 30, 'Cat', 3000); 
COMMIT; 

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO FROM EMP; 

SELECT deptno, 
       SUM(DECODE(job, 'CLERK', sal, 0)) "CLERK", 
       SUM(DECODE(job, 'MAMAGER', sal, 0)) "MANAGER", 
       SUM(DECODE(job, 'PRESIDENT', sal, 0)) "PRESIDENT", 
       SUM(DECODE(job, 'ANALYST', sal, 0)) "ANALYST", 
       SUM(DECODE(job, 'SALESMAN', sal, 0)) "SALESMAN", 
       SUM(NVL2(job, sal, 0)) "TOTAL" 
FROM emp 
GROUP BY ROLLUP(deptno); 

  

// 그룹 함수 연습 문제 5 

SELECT deptno, ename, sal, SUM(sal) OVER(ORDER BY sal) "TOTAL" 
FROM emp; 

// 그룹 함수 연습 문제 6 

SELECT SUM(DECODE(name, 'apple', 100)) "APPLE", 
       SUM(DECODE(name, 'grape', 200)) "GRAPE", 
       SUM(DECODE(name, 'orange', 300)) "ORANGE" 
FROM fruit; 

  

// 그룹 함수 연습 문제 7 

SELECT COUNT(*)||'EA (' || (COUNT(*) / COUNT(*))*100 || '%)' "TOTAL", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '02', 0))||'EA (' || 
       (COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '02', 0))/COUNT(*)) * 100 || '%)' "SEOUL", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '031', 0))||'EA (' || 
       (COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '031', 0))/COUNT(*)) * 100 || '%)' "GYEONGGI", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '051', 0))||'EA (' || 
       (COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '051', 0))/COUNT(*)) * 100 || '%)' "BUSAN", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '052', 0))||'EA (' || 
       (COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '052', 0))/COUNT(*)) * 100 || '%)' "ULSAN", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '053', 0))||'EA (' || 
       (COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '053', 0))/COUNT(*)) * 100 || '%)' "DEAGU", 
       COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '055', 0))||'EA (' || 
       (COUNT(DECODE(SUBSTR(tel, 1, INSTR(tel, ')') -1), '055', 0))/COUNT(*)) * 100 || '%)' "GYEONGNAM" 
FROM STUDENT; 