DROP TABLE IF EXISTS dim_user_account_nature;CREATE TABLE IF NOT EXISTS dim_user_account_nature (
    account_nature_id INT COMMENT '代码',
    account_nature_name string COMMENT '名称',
    account_nature_explain string COMMENT '说明',
    data_source string COMMENT '数据来源',
    created_time string COMMENT '创建时间'
) COMMENT '户口性质' stored as orc;

insert overwrite table dim_user_account_nature 
values
(10,'家庭户口','','GA/T 2000.27 公安信息代码 第27部分：户口性质分类与代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(11,'非农业家庭户口','','GA/T 2000.27 公安信息代码 第27部分：户口性质分类与代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(12,'农业家庭户口','','GA/T 2000.27 公安信息代码 第27部分：户口性质分类与代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(20,'集体户口','','GA/T 2000.27 公安信息代码 第27部分：户口性质分类与代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(21,'非农业集体户口','','GA/T 2000.27 公安信息代码 第27部分：户口性质分类与代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(22,'农业集体户口','','GA/T 2000.27 公安信息代码 第27部分：户口性质分类与代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(30,'未落常住户口','','GA/T 2000.27 公安信息代码 第27部分：户口性质分类与代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(90,'其他户口','','GA/T 2000.27 公安信息代码 第27部分：户口性质分类与代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));