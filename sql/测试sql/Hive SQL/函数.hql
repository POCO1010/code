create table testgrouping(
    id int,
    name string,
    sex string,
    deptno int
)
row format delimited fields terminated by ',';
1001,zhangsan,man,10
1002,xiaohua,famale,10
1003,lisi,man,20
1004,xiaohong,female,20

load data local inpath '/opt/module/hive-3.1.2/datas/testgrouping.txt' into table testgrouping;

统计每个部门各多少人，男女各多少人，每个部门男女各多少人
select deptno ,sex , count(id) 
from testgrouping
group by deptno ,sex
grouping sets((deptno,sex),sex,deptno);


create table emp_sex(
name string, 
dept_id string, 
sex string) 
row format delimited fields terminated by "\t";
load data local inpath '/opt/module/hive-3.1.2/datas/emp_sex.txt' into table emp_sex;

悟空	A	男
大海	A	男
宋宋	B	男
凤姐	A	女
婷姐	B	女
婷婷	B	女

select 
  dept_id,
  sum(case sex when '男' then 1 else 0 end) male_count,
  sum(case sex when '女' then 1 else 0 end) female_count
from 
  emp_sex
group by
  dept_id;

create table person_info(
name string, 
constellation string, 
blood_type string) 
row format delimited fields terminated by "\t";
load data local inpath "/opt/module/hive-3.1.2/datas/person_info.txt" into table person_info;


SELECT t1.c_b , CONCAT_WS("|",collect_set(t1.name))
FROM (
SELECT NAME ,CONCAT_WS(',',constellation,blood_type) c_b
FROM person_info
)t1 
GROUP BY t1.c_b


create table movie_info(
    movie string, 
    category string) 
row format delimited fields terminated by "\t";
load data local inpath "/opt/module/hive-3.1.2/datas/movie_info.txt" into table movie_info;


create table business(
name string, 
orderdate string,
cost int
) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',';
load data local inpath "/opt/module/hive-3.1.2/datas/business.txt" into table business;
