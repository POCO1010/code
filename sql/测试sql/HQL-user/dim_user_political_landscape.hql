DROP TABLE IF EXISTS dim_user_political_landscape;CREATE TABLE IF NOT EXISTS dim_user_political_landscape (
    political_landscape_id INT COMMENT '代码',
    political_landscape_name string COMMENT '政治面貌',
    political_landscape_sname string COMMENT '简称',
    political_landscape_explain string COMMENT '说明',
    data_source string COMMENT '数据来源',
    created_time string COMMENT '创建时间'
) comment '政治面貌'stored as orc;


insert overwrite table dim_user_political_landscape
values
(01,'中国共产党党员','中共党员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(02,'中国共产党预报党员','中共预备党员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(03,'中国共产主义青年团团员','共青团员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(04,'中国国民党革命委员会会员','民革会员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(05,'中国民主同盟盟员','民盟盟员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(06,'中国民主建国会会员','民建会员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(07,'中国民主促进会会员','民进会员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(08,'中国农工民主党党员','农工党党员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(09,'中国致公党党员','致公党党员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(10,'九三学社社员','九三学社社员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(11,'台湾民主自治同盟盟员','台盟盟员','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(12,'无党派民主人士','无党派人士','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss')),
(13,'群众','群众','','国家标准	GB 4762—84 中华人民共和国政治面貌代码 ',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));