DROP TABLE IF EXISTS dim_user_employment_status;CREATE TABLE IF NOT EXISTS dim_user_employment_status (
    employment_status_id INT COMMENT '代码',
    employment_status_name string COMMENT '名称',
    employment_status_explain string COMMENT '说明',
    data_source string COMMENT '数据来源',
    created_time string COMMENT '创建时间'
) comment '从业状况' stored as orc;

insert overwrite table dim_user_employment_status
values
(11,'国家公务员','包括参照、依照公务员管理的人员','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(13,'专业技术人员','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),			
(17,'职员','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),			
(21,'企业管理人员','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),			
(24,'工人','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),				
(31,'学生','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),	
(37,'现役军人','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),	
(51,'自由职业者','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),	
(54,'个体经营者','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(70,'无业人员','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(80,'退（离）休人员','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(90,'其他','','国家标准	GB/T 2261.4 个人基本信息分类与代码 第4部分:从业状况（个人身份）代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));