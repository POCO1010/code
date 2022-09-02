SELECT  *
FROM    emp
distribute by deptno 
sort by deptno;

SELECT  *
FROM    emp
sort by deptno;