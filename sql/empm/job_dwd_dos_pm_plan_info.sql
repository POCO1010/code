INSERT OVERWRITE TABLE dwd_dos_pm_plan_info
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,one                 AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,two                 AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,three               AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,four                AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,five                AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,six                 AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,seven               AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,eight               AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,nine                AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,ten                 AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,eleven              AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao
UNION ALL
SELECT  ''                  AS ORG_ID
       ,stbstr(zq_code,1,3) AS DEPT_ID
       ,''                  AS REGION_ID
       ,line                AS LINE_ID
       ,''                  AS EQUIPMENT_ID
       ,mm_type             AS VRT
       ,VRT                 AS VFG
       ,SEQ                 AS SEQ
       ,ICC                 AS ICC
       ,''                  AS CCC
       ,twelve              AS protect_time
       ,cycle               AS protect_cycle
FROM ods_cq3pr1twx_aa_pm_niandujihuabiao