INSERT OVERWRITE TABLE dws_dos_em_more10min_stat
SELECT  DATE_ID   AS DATE_ID
       ,ORG_ID    AS ORG_ID
       ,DEPT_ID   AS DEPT_ID
       ,REGION_ID AS REGION_ID
       ,LINE_ID   AS LINE_ID
       ,COUNT(1)  AS error_num
FROM dwd_dos_em_more10min_info
GROUP BY  DATE_ID
         ,ORG_ID
         ,DEPT_ID
         ,REGION_ID
         ,LINE_ID