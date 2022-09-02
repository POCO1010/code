create table if not exists test1(
id int comment "this is id",
name string comment "this is name"
)
comment "this is table"
row format delimited fields terminated by ','
STORED as textfile
TBLPROPERTIES("createtime"="2022-03-29");

1001,zhangsan
1002,lisi
1003,wangwu

create table if not exists test2(
id int ,
name string 
)
row format delimited fields terminated by ','
location "/test2.table";

create table if not exists test3(
id int ,
name string 
)
row format delimited fields terminated by ','
location "/mydata";

create table if not exists test4(
id int ,
name string 
)
row format delimited fields terminated by ',';

create external table if not exists test5(
id int ,
name string 
)
row format delimited fields terminated by ',';

alter table test4 set tblproperties('EXTERNAL'='TURE');error
alter table test4 set tblproperties('EXTERNAL'='TRUE');
alter table test5 set tblproperties('EXTERNAL'='FALSE');

1001    zhangsan    10000.1
1002    lisi    10000.2
1003    wangwu  10000.3

create table emp(
id int,
name string,
salary double
)
row format delimited fields terminated by '\t';

alter table emp rename to emptest;

alter table emptest change column salary sal double ;

alter table emptest add columns (addr string,deptno int);

alter table emptest replace columns (empid int, empname string);

create table student
(id string, name string) 
row format delimited fields terminated by '\t';

load data local 
inpath '/opt/module/hive-3.1.2/datas/student.txt' 
into table student;

load data local 
inpath '/opt/module/hive-3.1.2/datas/student1.txt' 
into table student;

load data local 
inpath '/opt/module/hive-3.1.2/datas/student2.txt' 
overwrite into table student;

load data
inpath '/hivedatas/student.txt' 
into table student;

insert into student values(1017,'ss17'),(1018,'ss18'),(1019,'ss19');


create table student2
(id string, name string) 
row format delimited fields terminated by '\t';

insert into student2 select id,name from student;

create table student3 as select id , name from student;

create table student4
(id string, name string) 
row format delimited fields terminated by '\t'
location '/student4';


set hive.exec.mode.local.auto=false;
set hive.exec.mode.local.auto=true;