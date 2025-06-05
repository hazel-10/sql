// 6장 연습문제 1 

INSERT INTO dept2 
VALUES(9011, 'temp_10', 1006, 'temp area'); 


// 6장 연습문제 2 

INSERT INTO dept2(dcode, dname, pdept) 
VALUES(9020, 'temp_20', 1006); 
select * from dept2; 

  

// 6장 연습문제 3 

CREATE TABLE professor4 
AS SELECT profno, name, pay 
   FROM professor 
   WHERE 1 = 2; 


SELECT * FROM PROFESSOR; 
  

INSERT INTO professor4 
    SELECT profno, name, pay 
    FROM professor 
    WHERE profno <= 3000; 

     

// 6장 연습문제 4 

UPDATE professor 
SET bonus = NVL(bonus, 0) + 100 
WHERE name = 'Sharon Stone'; 


desc professor; 
