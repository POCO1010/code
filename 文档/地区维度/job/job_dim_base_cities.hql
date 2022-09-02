   create temporary table dates1 as (
select
    distinct xzqy_number as cities_code,
    xzqy_name as cities_name,
    CONCAT(substring(xzqy_number, 1, 2), '0000') as province_code,
    min(xzqy_year) over(partition by xzqy_name) as cities_start,
    max(xzqy_year) over(partition by xzqy_name) as cities_end
from
    xingzhengquyu_3 
where
    substring(xzqy_number, 5, 6) = '00'
 ); 
    
create temporary table dates2 as (
    select 
    province_code,province_name
    from
    dim_base_province
);


