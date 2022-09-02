
select
date_code as date_time,
'热门' as hot_type,
p1_name as hot_name,
'1' as hot_num,
from_utc_timestamp(current_timestamp, 'GMT+8') as create_time
from
tdm_hyw_hotel_top_stat_df
where
source_type = 'rmph'
union all
select
date_code as date_time,
'热门' as hot_type,
p2_name as hot_name,
'2' as hot_num,
from_utc_timestamp(current_timestamp, 'GMT+8') as create_time
from
tdm_hyw_hotel_top_stat_df
where
source_type = 'rmph'
union all
select
date_code as date_time,
'热门' as hot_type,
p3_name as hot_name,
'3' as hot_num,
from_utc_timestamp(current_timestamp, 'GMT+8') as create_time
from
tdm_hyw_hotel_top_stat_df
where
source_type = 'rmph'
union all
select
date_code as date_time,
'热门' as hot_type,
p4_name as hot_name,
'4' as hot_num,
from_utc_timestamp(current_timestamp, 'GMT+8') as create_time
from
tdm_hyw_hotel_top_stat_df
where
source_type = 'rmph'
union all
select
date_code as date_time,
'热门' as hot_type,
p5_name as hot_name,
'5' as hot_num,
from_utc_timestamp(current_timestamp, 'GMT+8') as create_time
from
tdm_hyw_hotel_top_stat_df
where
source_type = 'rmph'
order by
date_time,
hot_num;