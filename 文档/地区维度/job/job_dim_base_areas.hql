create temporary table dates1 as (
select
    distinct xzqy_number as areas_code,
    xzqy_name as areas_name,
    CONCAT(substring(xzqy_number, 1, 4), '00') as cities_code,
    CONCAT(substring(xzqy_number, 1, 2), '0000') as province_code,
    min(xzqy_year) over(partition by xzqy_name) as areas_start,
    max(xzqy_year) over(partition by xzqy_name) as areas_end
from
    xingzhengquyu_3
where
    substring(xzqy_number, 5, 6) != '00'
);
create temporary table dates2 as (
    select 
    province_code,province_name
    from
    dim_base_province
);
create temporary table dates3 as (
    select 
    cities_code,cities_name
    from
    dim_base_cities
);

insert overwrite table dim_base_areas
select 
    a.areas_code as areas_code,
    a.areas_name as areas_name,
    a.cities_code as cities_code,
    c.cities_name as cities_name,
    a.province_code as province_code,
    b.province_name as province_name,
    a.areas_start as areas_start,
    a.areas_end as areas_end,
    '中华人民共和国民政部' as data_source,
    '' as alter_user,
    '' as alter_time,
    '' as remarks,
    '' as created_user,
    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as created_time

from dates1 a
left join dates2 b
on a.province_code=b.province_code
left join dates3 c
on a.cities_code=c.cities_code;

select * from dim_base_areas;



