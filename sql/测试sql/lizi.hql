/**
*
*	
* 
**/

drop table if exists  ;
CREATE TABLE IF NOT EXISTS (

)
COMMENT '就业（除招聘外）二级代码对照表'
partitioned by (ds string)
STORED AS ORC

"{""nullMode"":""null""}"

${bizdate}