DROP TABLE IF EXISTS dim_date_day;

CREATE TABLE IF NOT EXISTS dim_date_day (
    date_id    string  	COMMENT '日ID',

    data_source  	string  	COMMENT '数据来源',
    created_time  	string  	COMMENT '创建时间'
) COMMENT '日维度' 
STORED AS ORC;


insert overwrite table dim_date_day
	'' as data_source,
	from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as created_time