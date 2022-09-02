DROP TABLE IF EXISTS dim_user_edu_category;CREATE TABLE IF NOT EXISTS dim_user_edu_category (
    education_category_id INT COMMENT '代码',
    education_category_name string COMMENT '名称',
    education_category_explain string COMMENT '说明',
    data_source string COMMENT '数据来源',
    created_time string COMMENT '创建时间'
) comment '教育类别' stored as orc;

insert overwrite table dim_user_edu_category
values
(1,'全日制','','行业标准',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(2,'在职','','行业标准',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(3,'其他','','行业标准',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(4,'非全日制','','行业标准',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));