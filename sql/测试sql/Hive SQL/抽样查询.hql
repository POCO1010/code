SELECT  *
FROM    emp
tablesample(bucket 1 out of 4 on empno);