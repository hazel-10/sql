// 그룹 함수 연습 문제 8 

SELECT deptno, ename, sal, 
       SUM(sal) OVER(PARTITION BY deptno ORDER BY sal) "TOTAL" 
from emp; 

  

// 그룹 함수 연습 문제 9 

SELECT deptno, ename, sal, 
       SUM(sal) OVER() "TOTAL_SAL", 
       ROUND((RATIO_TO_REPORT(SUM(sal)) OVER()) * 100, 2) "%" 
FROM emp 
GROUP BY deptno, ename, sal 
ORDER BY 5 DESC; 

  
// 그룹 함수 연습 문제 10 

SELECT deptno, ename, sal, 
       SUM(sal) OVER(PARTITION BY deptno) "SUM_DEPT", 
       ROUND((RATIO_TO_REPORT(SUM(sal)) OVER(PARTITION BY deptno)) * 100, 2) "%" 
FROM emp 
GROUP BY deptno, ename, sal 
ORDER BY 1; 

  

// 그룹 함수 연습 문제 11 

SELECT l_date "대출일자", l_code "대출종목코드", l_qty "대출건수", l_total "대출총액", 
       SUM(l_total) OVER(ORDER BY l_date) "누적대출금액" 
FROM loan 
WHERE l_store = 1000; 

  

// 그룹 함수 연습 문제 12 

SELECT l_code "대출종목코드", l_store "대출지점", l_date "대출일자", 
       l_qty "대출건수", l_total "대출액", 
       SUM(l_total) OVER(PARTITION BY l_code, l_store ORDER BY l_date) "누적대출금액" 
FROM loan; 

  

// 그룹 함수 연습 문제 13 

SELECT l_date "대출일자", l_code "대출구분코드", l_qty "대출건수", l_total "대출총액", 
       SUM(l_total) OVER(PARTITION BY l_code ORDER BY l_total) "누적대출금액" 
FROM loan 
WHERE l_store = 1000; 

  

// 그룹 함수 연습 문제 14 

SELECT deptno, name, pay,  
       SUM(pay) OVER() "TOTAL PAY", 
       ROUND(RATIO_TO_REPORT(SUM(pay)) OVER() * 100, 2) "RATIO %" 
FROM professor 
GROUP BY deptno, name, pay 
ORDER BY 5 DESC; 

  

// 그룹 함수 연습 문제 15 

SELECT deptno, name, pay,  
       SUM(pay) OVER(PARTITION BY deptno) "TOTAL_DEPTNO", 
       ROUND(RATIO_TO_REPORT(SUM(pay)) OVER(PARTITION BY deptno) * 100, 2) "RATIO(%)" 
FROM professor 
GROUP BY deptno, name, pay 
ORDER BY 1; 