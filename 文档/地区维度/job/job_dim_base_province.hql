insert overwrite table dim_base_province
select
    distinct 
    xzqy_number as province_code,
    xzqy_name as province_name,
    min(xzqy_year) over(partition by xzqy_name) as province_start,
    max(xzqy_year) over(partition by xzqy_name) as mprovince_end,
    '中华人民共和国民政部' as data_source,
    '' as alter_user,
    '' as alter_time,
    '' as remarks,
    '' as created_user,
    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as created_time
from
    xingzhengquyu_3
where
    substring(xzqy_number, 3, 6) = '0000';
    select * from  dim_base_province;