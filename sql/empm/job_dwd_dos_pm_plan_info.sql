insert overwrite table dwd_dos_pm_plan_info
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
one as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
two as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
three as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
four as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
five as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
six as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
seven as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
eight as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
nine as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
ten as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
eleven as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao
union all
select
'' as ORG_ID,
stbstr(zq_code,1,3) as DEPT_ID,
'' as REGION_ID,
line as LINE_ID,
'' as EQUIPMENT_ID,
mm_type as VRT,
VRT as VFG,
SEQ as SEQ,
ICC as ICC,
'' as CCC,
twelve as protect_time,
cycle as protect_cycle
from
ods_cq3pr1twx_aa_pm_niandujihuabiao