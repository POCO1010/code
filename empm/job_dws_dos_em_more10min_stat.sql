insert overwrite table dws_dos_em_more10min_stat 
select
DATE_ID as DATE_ID,
ORG_ID as ORG_ID,
DEPT_ID as DEPT_ID,
REGION_ID as REGION_ID,
LINE_ID as LINE_ID,
count(1) as error_num
from
dwd_dos_em_more10min_info
group by 
DATE_ID,
ORG_ID,
DEPT_ID,
REGION_ID,
LINE_ID