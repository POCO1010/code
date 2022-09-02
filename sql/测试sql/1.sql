/************************************************************************************************
数据库表： adm_dpxp_lfsry_enter_region_in
业务描述： 来返沈人员_入沈地区下钻表
逻辑描述：    
-------------------------------------------------------------------------------------------------
主键: 
分区：默认分区
同步方式：全量
调度周期：天
-------------------------------------------------------------------------------------------------
上线版本        上线日期           修改人     修改内容
HJY_v1.0.0     20220426            xyx      新增
*************************************************************************************************/

insert overwrite table adm_dpxp_lfsry_enter_region_in
select
    current_date() as date_time, -- 日期
    '区县' as hierarchy, -- 层级
    nvl(a.area,b.area) as place_name, -- 地点名称
    nvl(a.street,b.street) as next_name, -- 下层地点名称
    (nvl(b.is_notfiling_num,0) + nvl(a.is_filing_num,0)) as back_sum_num, -- 累计来返沈
    nvl(b.is_notfiling_num,0) as is_notfiling_num, -- 累计来返沈(未备案)
    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as create_time
from (select a.area,a.street,sum(a.handle_nums) as is_filing_num 
      from tdm_dpxp_lfsry_alarm_disposal_df a group by a.area,a.street) a -- 备案人数
full join (select b.area,b.street,sum(b.lfs_nums) as is_notfiling_num 
           from tdm_dpxp_lfsry_people_info_df b group by b.area,b.street) b on a.area = b.area and a.street = b.street -- 未备案人数
union all
select
    current_date() as date_time, -- 日期
    '街道' as hierarchy, -- 层级
    nvl(a.street,b.street) as place_name, -- 地点名称
    nvl(a.community,b.community) as next_name, -- 下层地点名称
    (nvl(b.is_notfiling_num,0) + nvl(a.is_filing_num,0)) as back_sum_num, -- 累计来返沈
    nvl(b.is_notfiling_num,0) as is_notfiling_num, -- 累计来返沈(未备案)
    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as create_time
from (select a.street,a.community,sum(a.handle_nums) as is_filing_num 
      from tdm_dpxp_lfsry_alarm_disposal_df a group by a.street,a.community) a -- 备案人数
full join (select b.street,b.community,sum(b.lfs_nums) as is_notfiling_num 
  from tdm_dpxp_lfsry_people_info_df b group by b.street,b.community) b on a.street = b.street and a.community = b.community -- 未备案人数