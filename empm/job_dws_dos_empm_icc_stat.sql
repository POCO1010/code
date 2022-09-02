insert overwrite table dws_dos_empm_icc_stat

CREATE TEMPORARY TABLE  temp_error as
select
DATE_ID,
ORG_ID,
DEPT_ID,
REGION_ID,
LINE_ID,
ICC,
count(1) over(partition by b.month_id)  as moth_num,
count(1) over(partition by b.year_id)  as year_num
from dwd_dos_em_more10min_info a
left join dim_date_day b on a.DATE_ID = b.date_id 
group by
DATE_ID,
ORG_ID,
DEPT_ID,
REGION_ID,
LINE_ID,
ICC










select
a.ORG_ID as ORG_ID,
a.DEPT_ID as DEPT_ID,
a.REGION_ID as REGION_ID,
a.LINE_ID as LINE_ID,
a.icc as icc,
moth_num as moth_rate, -- XX月频次（月度可选）
year_num as year_rate, -- 历史故障频次（近1年内）,
if(b.protect_time is not null ,1,0) as is_there_plan, -- 是否有PM计划,
b.cycle as plan_cycle, -- PM执行周期,
date_sub(from_unixtime(unix_timestamp(),"yyyy-MM-dd"),min(datediff(protect_time - from_unixtime(unix_timestamp(),"yyyy-MM-dd")))) as last_time, -- 近一次PM执行时间,
min(datediff(protect_time - from_unixtime(unix_timestamp(),"yyyy-MM-dd"))) as last_times_space, -- 故障与PM维护时间间隔,
case
 when b.protect_time is null then 'PM缺失'
 when b.cycle>1 and moth_num>=2 then 'PM标准不足（可能）' 
 when b.protect_time is not null and moth_num>=2 then 'PM执行不到位（可能）'
 else '未知' end  
 as is_there_error, -- PM是否存在问题
from temp_error a
left join dwd_dos_pm_plan_info 
on a.ORG_ID = b.ORG_ID
and a.DEPT_ID = b.DEPT_ID
and a.REGION_ID = b.REGION_ID
and a.LINE_ID = b.LINE_ID
-- and a.EQUIPMENT_ID = b.EQUIPMENT_ID
-- and a.VRT = b.VRT
-- and a.VFG = b.VFG
-- and a.SEQ = b.SEQ
and a.ICC = b.ICC