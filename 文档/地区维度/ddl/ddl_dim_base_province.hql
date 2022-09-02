DROP TABLE IF EXISTS dim_base_province;
CREATE EXTERNAL TABLE dim_base_province (
    province_code STRING COMMENT '省级编码',
    province_name STRING COMMENT '省级名称',
    province_start STRING COMMENT '行政省施行开始年份',
    province_end STRING COMMENT '行政省施行结束年份',
    data_source             string COMMENT '数据来源',
    alter_user              string COMMENT '修改人',
    alter_time              string COMMENT '修改时间',
    remarks                 string COMMENT '备注',
    created_user            string COMMENT '创建人',
    created_time            string COMMENT '创建时间'
) COMMENT '省级维度表'
stored as orc;