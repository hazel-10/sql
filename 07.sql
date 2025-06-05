// 5장 연습문제 1 

CREATE TABLE new_emp ( 
    no          NUMBER(5), 
    name        VARCHAR2(20), 
    hiredate    DATE, 
    bonus       NUMBER(6, 2) ); 
   
// 5장 연습문제 2 

CREATE TABLE new_emp2 
AS 
    SELECT no, name, hiredate 
    FROM new_emp; 


// 5장 연습문제 3 

CREATE TABLE new_emp3 
AS 
    SELECT * FROM new_emp2 
    WHERE 1 = 2; 


// 5장 연습문제 4 

ALTER TABLE new_emp2 
ADD(birthday DATE DEFAULT SYSDATE); 

  

// 5장 연습문제 5 

ALTER TABLE new_emp2 
RENAME COLUMN birthday TO birth; 



// 5장 연습문제 6 

ALTER TABLE new_emp2 
MODIFY(no NUMBER(7)); 



// 5장 연습문제 7 

ALTER TABLE new_emp2 
DROP COLUMN birth; 



// 5장 연습문제 8 

insert into new_emp2 values(1, 'hong', sysdate); 
select * from new_emp2; 


TRUNCATE TABLE new_emp2; 


// 5장 연습문제 9 

DROP TABLE new_emp2; 
