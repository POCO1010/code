INSERT OVERWRITE TABLE dws_dos_empm_icc_stat

CREATE TEMPORARY TABLE temp_error AS
SELECT  DATE_ID
       ,ORG_ID
       ,DEPT_ID
       ,REGION_ID
       ,LINE_ID
       ,ICC
       ,COUNT(1) over(partition by b.month_id) AS moth_num
       ,COUNT(1) over(partition by b.year_id)  AS year_num
FROM dwd_dos_em_more10min_info a
LEFT JOIN dim_date_day b
ON a.DATE_ID = b.date_id
GROUP BY  DATE_ID
         ,ORG_ID
         ,DEPT_ID
         ,REGION_ID
         ,LINE_ID
         ,ICC
SELECT  a.ORG_ID                                                                                                                          AS ORG_ID
       ,a.DEPT_ID                                                                                                                         AS DEPT_ID
       ,a.REGION_ID                                                                                                                       AS REGION_ID
       ,a.LINE_ID                                                                                                                         AS LINE_ID
       ,a.icc                                                                                                                             AS icc
       ,moth_num                                                                                                                          AS moth_rate -- XX月频次（月度可选）
       ,year_num                                                                                                                          AS year_rate -- 历史故障频次（近1年内）,
       ,if(b.protect_time is not null ,1,0)                                                                                               AS is_there_plan -- 是否有PM计划,
       ,b.cycle                                                                                                                           AS plan_cycle -- PM执行周期,
       ,date_sub(from_unixtime(unix_timestamp(),"yyyy-MM-dd"),MIN(datediff(protect_time - from_unixtime(unix_timestamp(),"yyyy-MM-dd")))) AS last_time -- 近一次PM执行时间,
       ,MIN(datediff(protect_time - from_unixtime(unix_timestamp(),"yyyy-MM-dd")))                                                        AS last_times_space -- 故障与PM维护时间间隔,
       ,CASE WHEN b.protect_time is null THEN 'PM缺失'
             WHEN b.cycle > 1 AND moth_num >= 2 THEN 'PM标准不足（可能）'
             WHEN b.protect_time is not null AND moth_num >= 2 THEN 'PM执行不到位（可能）'  ELSE '未知' END                                          AS is_there_error -- PM是否存在问题
       ,
FROM temp_error a
LEFT JOIN dwd_dos_pm_plan_info
ON a.ORG_ID = b.ORG_ID AND a.DEPT_ID = b.DEPT_ID AND a.REGION_ID = b.REGION_ID AND a.LINE_ID = b.LINE_ID
-- AND a.EQUIPMENT_ID = b.EQUIPMENT_ID
-- AND a.VRT = b.VRT
-- AND a.VFG = b.VFG
-- AND a.SEQ = b.SEQ AND a.ICC = b.ICC