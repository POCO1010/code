DROP TABLE IF EXISTS dim_date_day;

CREATE TABLE IF NOT EXISTS dim_date_day (
    date_id    string  	COMMENT '日ID',
    date_code    string  	COMMENT '日编码',
    date_name    string  	COMMENT '日名称',
    week_id    string  	COMMENT '周ID',
    month_id    string  	COMMENT '月份ID',
    season_id    string  	COMMENT '季度ID',
    year_id    string  	COMMENT '年份ID',
    pre_date_id  	string  	COMMENT '前一天ID',
    after_date_id  	string  	COMMENT '后一天ID',
    is_workday    string  	COMMENT '是否工作日',
    un_workday_name  string  	COMMENT '非工作日名称',
    data_source  	string  	COMMENT '数据来源',
    created_time  	string  	COMMENT '创建时间'
) COMMENT '日维度' 
STORED AS ORC;


create temporary table dates as (
    select date_add("2000-01-01", a.pos) as date_code
    from (
        select posexplode(split(repeat("o", datediff("2050-12-31", "2000-01-01")), "o"))) a
);

insert overwrite table dim_date_day
select
	regexp_replace(date_code,'-','') as date_id,
	date_code as date_code,
	concat(year(date_code),'年',substr(date_code,6,2),'月',substr(date_code,9,2),'日') as date_name,
	year(date_sub(next_day(date_code,'MO'),4))*100 + weekofyear(date_code) as week_id,
	substr(regexp_replace(date_code,'-',''),1,6) as month_id,
	concat(year(date_code),floor(substr(date_code,6,2) / 3.1) + 1) as season_id,
	year(date_code) as year_id,
	regexp_replace(date_add(date_code,-1),'-','') as pre_date_id,
	regexp_replace(date_add(date_code,1),'-','') as after_date_id,
	'' as is_workday,
	'' as un_workday_name,
	'' as data_source,
	from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as created_time
from dates
order by date_code;


DROP TABLE IF EXISTS dim_date_hour; 

CREATE TABLE IF NOT EXISTS dim_date_hour
(	
    hour_id      string	comment '小时id',
    hour_name  string	comment '小时名称',
    start_time  string	comment '开始时间',
    end_time  string	comment '结束时间',
    data_source  string	comment '数据来源',
    created_time	string	comment '创建时间'
)comment '时段维度' 
PARTITIONED BY (ds string)
STORED AS ORC;


insert into dim_date_hour partition(ds = '1') values
('0','深夜到凌晨','00:00:00','06:00:00','',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
('6','清晨','06:00:00','09:00:00','',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
('9','上午','09:00:00','12:30:00','',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
('12','午休时间','12:30:00','14:00:00','',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
('14','下午','14:00:00','18:00:00','',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
('18','下班时间','18:00:00','24:00:00','',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));


DROP TABLE IF EXISTS dim_date_month;

CREATE TABLE IF NOT EXISTS dim_date_month
(
	month_id        	string  COMMENT	'月份id',
	month_code        	string  COMMENT	'月份code',
	month_short_code      	string  COMMENT	'月份short_code',
	month_name        	string  COMMENT	'月份名称',
	month_short_name      	string  COMMENT	'月份简称',
	month_first_date      	string  COMMENT	'本月第一天',
	month_last_date        string  COMMENT	'本月最后一天',
	pre_month_id            string  COMMENT	'上一个月份id',
	after_month_id        string  COMMENT	'下一个月份id',
	pre_year_month_id    	string  COMMENT	'上年同月id',
	after_year_month_id  	string  COMMENT	'下年同月id',
	pre_season_month_id  	string  COMMENT	'上季同月id',
	after_season_month_id	string  COMMENT	'下季同月id',
	data_source        	string  COMMENT	'数据来源',
	created_time        string  COMMENT	'创建时间'
)COMMENT '月维度' 
STORED AS ORC;

create temporary table dates as (
    select add_months("2000-01-01", a.pos) as date_code
    from (
        select posexplode(split(repeat("o", datediff("2010-01-31", "2000-01-01")), "o"))) a
);

insert overwrite table dim_date_month
select
	substr(regexp_replace(date_code,'-',''),1,6) as month_id,
	substr(date_code,1,7) as month_code,
    substr(date_code,6,2) as month_short_code,
    concat(year(date_code),'年',substr(date_code,6,2),'月') as month_name,
    concat(substr(date_code,6,2),'月') as month_short_name,
    concat(year(date_code),'年',substr(date_code,6,2),'月',substr(date_code,9,2),'日') as month_first_date,
    concat(year(last_day(date_code)),'年',substr(last_day(date_code),6,2),'月',substr(last_day(date_code),9,2),'日') as month_last_date,
    substr(regexp_replace(add_months(date_code, -1), '-', ''), 1, 6) as pre_month_id,
    substr(regexp_replace(add_months(date_code, 1), '-', ''), 1, 6) as after_month_id,
    substr(regexp_replace(add_months(date_code, -12), '-', ''), 1, 6) as pre_year_month_id,
    substr(regexp_replace(add_months(date_code, 12), '-', ''), 1, 6) as after_year_month_id,
    substr(regexp_replace(add_months(date_code, -3), '-', ''), 1, 6) as pre_season_month_id,
    substr(regexp_replace(add_months(date_code, 3), '-', ''), 1, 6) as after_season_month_id,
    '' as data_source,
    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as created_time
from dates
order by date_code;
   
   

DROP TABLE IF EXISTS dim_date_season;

CREATE TABLE IF NOT EXISTS dim_date_season
(
	season_id    string  comment  '季度id',
	season_code    string  comment  '季度code',
	season_short_code  string  comment  '季度short_code',
	season_name    string  comment  '季度名称',
	season_short_name  string  comment  '季度简称',
	season_first_date  string  comment  '本季第一天',
	season_last_date  string  comment  '本季最后一天',
	pre_season_id  	string  comment  '上一个季度id',
	after_season_id      string  comment  '下一个季度id',
	pre_yeay_season_id  string  comment  '上年同季id',
	after_year_season_id	string  comment  '下年同季id',
	data_source    string  comment  '数据来源',
	created_time  	string  comment  '创建时间'
)COMMENT '季维度'
STORED AS ORC;


create temporary table dates as (
    select add_months("2000-01-01", a.pos * 3) as date_code
    from (
        select posexplode(split(repeat("o", datediff("2005-01-31", "2000-01-01")), "o"))) a
);

insert overwrite table dim_date_season
select
	concat(year(date_code),floor(substr(date_code,6,2) / 3.1) + 1) as season_id,
    concat(year(date_code),'Q',floor(substr(date_code,6,2) / 3.1) + 1) as season_code,
    concat('Q',floor(substr(date_code,6,2) / 3.1) + 1) as season_short_code,
    concat(year(date_code),'年第',floor(substr(date_code,6,2) / 3.1) + 1, '季度') as season_name,
    concat('第',floor(substr(date_code,6,2) / 3.1) + 1, '季度') as season_short_name,
    concat(year(date_code),'年',substr(date_code,6,2),'月',substr(date_code,9,2),'日') as season_first_date,
    concat(year(last_day(add_months(date_code, 2))),'年',substr(last_day(add_months(date_code, 2)),6,2),'月',
           substr(last_day(add_months(date_code, 2)),9,2),'日') as season_last_date,
    concat(year(add_months(date_code, -1)),floor(substr(add_months(date_code, -1),6,2) / 3.1) + 1) as pre_season_id,
    concat(year(add_months(date_code, 3)),floor(substr(add_months(date_code, 3),6,2) / 3.1) + 1) as after_season_id,
    concat(year(add_months(date_code, -12)),floor(substr(add_months(date_code, -12),6,2) / 3.1) + 1) as pre_season_id,
    concat(year(add_months(date_code, 12)),floor(substr(add_months(date_code, 12),6,2) / 3.1) + 1) as pre_season_id,
    '' as data_source,
    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as created_time
from dates
order by date_code;
   
 DROP TABLE IF EXISTS dim_date_week; 
CREATE TABLE IF NOT EXISTS dim_date_week(
week_id    string  comment  '周id',
week_name  	string  comment  '周名称',
week_first_date  string  comment  '本周第一天',
week_last_date  string  comment  '本周最后一天',
pre_week_id  	string  comment  '上一个周id',
after_week_id  string  comment  '下一个周id',
data_source  	string  comment  '数据来源',
created_time  string  comment  '创建时间'
) comment '周维度' 
STORED AS ORC;

create temporary table dates as (
    select date_add("2000-01-03", a.pos*7) as date_code
    from (
        select posexplode(split(repeat("o", datediff("2010-01-31", "2000-01-03")), "o"))) a
);

insert overwrite table dim_date_week
select
	year(date_sub(next_day(date_code,'MO'),4))*100 + weekofyear(date_code) as week_id,
    concat(year(date_sub(next_day(date_code,'MO'),4)), '年第',substr(100+weekofyear(date_code),2,2), '周') as week_name,
    concat(year(date_code),'年',substr(date_code,6,2),'月',substr(date_code,9,2),'日') as week_first_date,
    concat(year(date_add(date_code,6)),'年',substr(date_add(date_code,6),6,2),'月',substr(date_add(date_code,6),9,2),'日') as week_last_date,
    year(date_sub(next_day(date_add(date_code,-1),'MO'),4))*100 + weekofyear(date_add(date_code,-1)) as pre_week_id,
    year(date_sub(next_day(date_add(date_code,7),'MO'),4))*100 + weekofyear(date_add(date_code,7)) as after_week_id,
    '' as data_source,
    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as created_time
from dates
order by date_code;



DROP TABLE IF EXISTS dim_date_year; 

CREATE TABLE IF NOT EXISTS dim_date_year
(
	year_id       string	comment '年份id',
    year_name  	string	comment '年份名称',
    year_short_name  string	comment '年份简称',
    year_first_date  string	comment '本年第一天',
    year_last_date  string	comment '本年最后一天',
    pre_year_id      string	comment '上一个年份id',
    after_year_id  string	comment '下一个年份id',
    data_source  	string	comment '数据来源',
    created_time  string	comment '创建时间'
)COMMENT '年维度'
STORED AS ORC;

create temporary table dates as (
    select add_months("2000-01-01", a.pos * 12) as date_code
    from (
        select posexplode(split(repeat("o", datediff("2001-01-31", "2000-01-01")), "o"))) a
);

insert overwrite table dim_date_year
select
	year(date_code) as year_id,
    concat(year(date_code),'年') as year_name,
    concat(substr(date_code, 3, 2),'年') as year_short_name,
    concat(year(date_code),'年',substr(date_code,6,2),'月',substr(date_code,9,2),'日') as year_first_date,
    concat(year(last_day(add_months(date_code, 11))),'年',substr(last_day(add_months(date_code, 11)),6,2),'月',
           substr(last_day(add_months(date_code, 11)),9,2),'日') as year_last_date,
    year(add_months(date_code, -1)) as pre_year_id,
    year(add_months(date_code, 12)) as after_year_id,
    '' as data_source,
    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as created_time
from dates
order by date_code;