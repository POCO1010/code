insert overwrite table dwd_dos_em_more10min_info
select
start_time as DATE_ID,
factory_area_id as ORG_ID,
workshop_id as DEPT_ID,
'' as REGION_ID,
production_id as LINE_ID,
equipment_name as EQUIPMENT_ID, -- equipment_number
vrt as VRT,
vfg as VFG,
seq as SEQ,
icc as ICC,
ccc as CCC,
down_time as down_time,
fault_category as fault_category,
failure_mode as failure_mode,
stop_line_type as stop_line_type,
fault_phenomenon as fault_phenomenon,
troubleshooting as troubleshooting,
root_cause as root_cause,
fundamental_solutions as fundamental_solutions
from
ods_device_ca_faulinput 
where down_time > 10 ;