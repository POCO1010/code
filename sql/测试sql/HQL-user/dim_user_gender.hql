DROP TABLE IF EXISTS dim_user_gender;CREATE TABLE IF NOT EXISTS dim_user_gender (
    gender_id INT COMMENT '代码',
    gender_name string COMMENT '名称',
    gender_explain string COMMENT '说明',
    data_source string COMMENT '数据来源',
    created_time string COMMENT '创建时间'
) comment '性别' stored as orc;

insert overwrite table dim_user_gender
values
(1,'男','' , 'GB/T 2261.1 个人基本信息分类与代码 第1部分:人的性别代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(2,'女','' ,'GB/T 2261.1 个人基本信息分类与代码 第1部分:人的性别代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));