DROP TABLE IF EXISTS dim_user_health;CREATE TABLE IF NOT EXISTS dim_user_health (
    health_id INT COMMENT '代码',
    health_name string COMMENT '名称',
    health_explain string COMMENT '说明',
    data_source string COMMENT '数据来源',
    created_time string COMMENT '创建时间'
) comment '健康状况' stored as orc;

insert overwrite table dim_user_health
values
 (10,'健康或良好','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(20,'一般或较弱','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(30,'有慢性病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(40,'有慢性病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(31,'心血管病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(32,'脑血管病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(33,'慢性呼吸系统病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(34,'慢性消化系统病','包括溃疡、肝炎和肝硬化','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(35,'慢性肾炎','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(36,'结核病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(37,'糖尿病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(38,'神经或精神疾病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(41,'癌症','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(49,'其他慢性病','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(60,'残废','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))	
,(61,'视力残疾','由于各种原因导致双眼视力障碍或视野缩小，以至影响正常工作、学习或其他活动','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(62,'听力残疾','由于各种原因导致双耳不同成都的听力丧失，听不到或听不清周围环境声及言语声','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(63,'言语残疾','由于各种原因导致言语障碍，不能进行长成的言语交往活动','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(64,'肢体残疾','指人的肢体残缺、畸形、麻痹导致人体运动功能丧失或功能障碍','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(65,'智力残疾','指人的智力明显低于一般人水平，并显示适应行为障碍','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(66,'精神残废','指精神病人患病持续一年以上未痊愈，导致其对家庭、社会应尽职能出现一定成都的障碍','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(67,'多重残废','凡有两种以上残疾的多重残疾，或称复合残疾','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'))
,(69,'其他残废','','GB/T 2261.3 个人基本信息分类与代码 第3部分:健康状况代码',from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss'));