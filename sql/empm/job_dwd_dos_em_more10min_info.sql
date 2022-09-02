INSERT OVERWRITE TABLE dwd_dos_em_more10min_info
SELECT  start_time            AS DATE_ID
       ,factory_area_id       AS ORG_ID
       ,workshop_id           AS DEPT_ID
       ,''                    AS REGION_ID
       ,production_id         AS LINE_ID
       ,equipment_name        AS EQUIPMENT_ID -- equipment_number
       ,vrt                   AS VRT
       ,vfg                   AS VFG
       ,seq                   AS SEQ
       ,icc                   AS ICC
       ,ccc                   AS CCC
       ,down_time             AS down_time
       ,fault_category        AS fault_category
       ,failure_mode          AS failure_mode
       ,stop_line_type        AS stop_line_type
       ,fault_phenomenon      AS fault_phenomenon
       ,troubleshooting       AS troubleshooting
       ,root_cause            AS root_cause
       ,fundamental_solutions AS fundamental_solutions
FROM ods_device_ca_faulinput
WHERE down_time > 10; 