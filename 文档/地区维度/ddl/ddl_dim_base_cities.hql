DROP TABLE IF EXISTS dim_base_cities;
CREATE EXTERNAL TABLE dim_base_cities (
    cities_code STRING COMMENT '市级编码',
    cities_name STRING COMMENT '市级名称',
    province_code STRING COMMENT '省级编码',
    province_name STRING COMMENT '省级名称',
    cities_start STRING COMMENT '行政市施行开始年份',
    cities_end STRING COMMENT '行政市施行结束年份',
    data_source             string COMMENT '数据来源',
    alter_user              string COMMENT '修改人',
    alter_time              string COMMENT '修改时间',
    remarks                 string COMMENT '备注',
    created_user            string COMMENT '创建人',
    created_time            string COMMENT '创建时间'
) COMMENT '市级维度表'
stored as orc;
