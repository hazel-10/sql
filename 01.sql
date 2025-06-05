/* 문자 연결 문제 */ 
select * from student; 

select name, id, weight from student; 
  

select name || '''s ID : ' || id || ', WEIGHT is ' || weight || 'Kg' "ID AND WEIGHT" 
from student; 


desc emp; 


select ename, job from emp; 
  
select ename || '(' || job || ') , ' || ename || '''' || job || '''' "NAME AND JOB" 
from emp; 

select ename, sal from emp; 

  
select ename || '''s sal is $' || sal "Name and Sal" from emp; 

  

/* 연습문제(1장) */ 

select name, jumin from student; 

select '서진수' "Name", substr('서진수', 1, 2) "substr", 
    substrb('서진수', 1, 3) "substrB" from dual; 
    

select length('서진수') "Length", lengthb('서진수') "LengthB" 
from dual; 

  
