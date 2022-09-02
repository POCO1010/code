--分区表
CREATE table dept_partition(
    deptno int ,
    dname string,
    loc string
)
partitioned by (day string )
row format delimited fields terminated by '\t';

--传入数据

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200401.log' 
into table dept_partition partition(day='20200401');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200402.log' 
into table dept_partition partition(day='20200402');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200403.log' 
into table dept_partition partition(day='20200403');

select * from dept_partition where day = '20200401';


加分区
alter table dept_partition add partition(day='20200404') ;
alter table dept_partition add partition(day='20200405') partition(day='20200406');
删分区
alter table dept_partition drop partition (day='20200406');
alter table dept_partition drop partition (day='20200404'), partition(day='20200405');
--加,号

二级分区表
create table dept_partition2(
deptno int,
dname string,
loc string
)
partitioned by (day string, hour string)
row format delimited fields terminated by '\t';

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200401.log' 
into table dept_partition2 partition(day='20200401',hour='12');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200402.log' 
into table dept_partition2 partition(day='20200401',hour='13');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200403.log' 
into table dept_partition2 partition(day='20200401',hour='14');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200401.log' 
into table dept_partition2 partition(day='20200402',hour='07');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200402.log' 
into table dept_partition2 partition(day='20200402',hour='08');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200403.log' 
into table dept_partition2 partition(day='20200402',hour='09');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200401.log' 
into table dept_partition2 partition(day='20200403',hour='01');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200402.log' 
into table dept_partition2 partition(day='20200403',hour='02');

load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200403.log' 
into table dept_partition2 partition(day='20200404',hour='03');

select * from dept_partition2
where day = '20200401' and hour = '12'

show partitions dept_partition2;


数据和分区表关联方式

hadoop fs -mkdir /user/hive/warehouse/mydb2.db/dept_partition/day=20200405

hadoop fs -put /opt/module/hive-3.1.2/datas/dept_20200403.log /user/hive/warehouse/mydb2.db/dept_partition/day=20200405

进行分区修复操作

msck repair table dept_partition;

手动添加分区
alter table dept_partition add partition(day='20200405');

自建分区再load数据到分区中
hadoop fs -mkdir /user/hive/warehouse/mydb2.db/dept_partition/day=20200406
load data local inpath '/opt/module/hive-3.1.2/datas/dept_20200403.log' into table dept_partition partition(day='20200406');

动态分区

create table dept_partition_dy(
deptno int,
dname string,
loc string
)
partitioned by (day string)
row format delimited fields terminated by '\t';

load data local inpath '/opt/module/hive-3.1.2/datas/dept_partition_dy.txt' into table dept_partition_dy ;

分桶表

create table stu_bucket(
id int,
name string)
clustered by(id) 
into 4 buckets
row format delimited fields terminated by '\t';

hadoop fs -put student.txt /

load data inpath '/student.txt' into table stu_bucket;

