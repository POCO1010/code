SELECT  [ALL | DISTINCT] select_expr
       ,select_expr
       ,...
FROM table_reference [WHERE where_condition] [GROUP BY col_list] [ORDER BY col_list] [CLUSTER BY col_list | [DISTRIBUTE BY col_list] [SORT BY col_list] ] [LIMIT number];

CREATE TABLE if not exists dept( deptno int, dname string, loc int ) row format delimited fields terminated by '\t';

CREATE TABLE if not exists emp( empno int, ename string, job string, mgr int, hiredate string, sal double, comm double, deptno int) row format delimited fields terminated by '\t'; load data local inpath '/opt/module/hive-3.1.2/datas/dept.txt' into TABLE dept;

load data local inpath '/opt/module/hive-3.1.2/datas/emp.txt' into TABLE emp;

计算emp表每个部门的平均工资

SELECT  deptno
       ,AVG(sal) avg_sal
FROM emp
GROUP BY  deptno; 计算emp每个部门中每个岗位的最高薪水

SELECT  deptno
       ,job
       ,MAX(sal) max_sal
FROM emp
GROUP BY  deptno
         ,job;

计算emp中每个部门中最高薪水的那个人

SELECT  deptno
       ,MAX(sal) max_sal
       ,ename --错误
FROM emp
GROUP BY  deptno; 分组后

         ,select后面只能跟组标识(分组字段)和聚合函数(分组函数)
SELECT  e.deptno
       ,e.sal
       ,e.ename
FROM emp e
JOIN
(
	SELECT  deptno
	       ,MAX(sal) max_sal
	FROM emp
	GROUP BY  deptno
) a
ON e.deptno = a.deptno AND e.sal = a.max_sal; 计算emp中除了CLERK岗位之外的剩余员工的每个部门的平均工资大于2000的部门和平均工资

SELECT  deptno
       ,AVG(sal) avg_sal
FROM emp
WHERE job != 'CLERK'
GROUP BY  deptno
HAVING avg_sal > 2000; --分组后再过滤

CREATE TABLE if not exists location( loc int, loc_name string ) row format delimited fields terminated by '\t'; load data local inpath '/opt/module/hive-3.1.2/datas/loc.txt' into TABLE location;

SELECT  *
FROM emp
ORDER BY sal desc;