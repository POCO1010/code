DROP TABLE IF EXISTS dim_user_marital_status;CREATE TABLE IF NOT EXISTS dim_user_marital_status (
    marital_status_id INT COMMENT '代码',
    marital_status_name string COMMENT '名称',
    marital_status_explain string COMMENT '说明',
    data_source string COMMENT '数据来源',
    created_time string COMMENT '创建时间'
) comment '婚姻状况' stored as orc;

insert overwrite table dim_user_marital_status
values
(1,	'未婚','','GB/T 2261.2 个人基本信息分类与代码 第2部分:婚姻状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(2,	'已婚','','GB/T 2261.2 个人基本信息分类与代码 第2部分:婚姻状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(3,	'丧偶','','GB/T 2261.2 个人基本信息分类与代码 第2部分:婚姻状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(4,	'离婚','','GB/T 2261.2 个人基本信息分类与代码 第2部分:婚姻状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(5,	'再婚','','GB/T 2261.2 个人基本信息分类与代码 第2部分:婚姻状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(9,	'其他','','GB/T 2261.2 个人基本信息分类与代码 第2部分:婚姻状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));