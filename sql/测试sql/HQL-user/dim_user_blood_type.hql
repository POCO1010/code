DROP TABLE IF EXISTS dim_user_blood_type;CREATE TABLE IF NOT EXISTS dim_user_blood_type (
    blood_type_id INT COMMENT '代码',
    blood_type_name string COMMENT '名称',
    blood_type_explain string COMMENT '说明',
    data_source string COMMENT '数据来源',
    created_time string COMMENT '创建时间'
) COMMENT '血型' stored as orc;

insert overwrite table dim_user_blood_type
values
(0,	'不明','','GA/T 2000.37—2014公安信息代码 第37部分：血型代码' ,from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(1,	'A型','','GA/T 2000.37—2014公安信息代码 第37部分：血型代码' ,from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(2,	'E型','','GA/T 2000.37—2014公安信息代码 第37部分：血型代码' ,from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(3,	'0型','','GA/T 2000.37—2014公安信息代码 第37部分：血型代码' ,from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(4,	'AB型','','GA/T 2000.37—2014公安信息代码 第37部分：血型代码' ,from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(9,	'其他','','GA/T 2000.37—2014公安信息代码 第37部分：血型代码' ,from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));