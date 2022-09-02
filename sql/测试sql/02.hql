
/************************************************************************************************
数据库表： ads_ys_jjzb_A_FrReport
业务描述： 引水公司经济指标表-结果数据表
逻辑描述： 由于该公司累计值不能直接按1+1=2计算，所以此处计算包含了当月实际值、全年实际值、累计值、预算值
-------------------------------------------------------------------------------------------------
分区：默认分区
同步方式：全量
调度周期：暂定每天12点跑
-------------------------------------------------------------------------------------------------
上线版本        上线日期           修改人     		修改内容
SJBB_v16.0.0     20210615      	huangzhiyong       人工成本利润率公式：利润总额 / 人工成本
*************************************************************************************************/
-- use report;

-- 职工人数
create temporary table tmp_num as 
select
	num_year as num_year,
	num_month as num_month,
	sum(employees_nums) as employees_nums
from
(
	select
    	*,
    	row_number() over(partition by num_year,num_month,b0110_0,subcompany_name order by num_day desc) as number
    from
    	ads_jt_jjzb_A_jepaas_df
    where 
    	b0110_0 = '0103'
) a
where number = '1'
group by num_year,num_month;


-- 用友函数计算结果以及2021年4月份以前的历史数据
create temporary table tmp_jsjg as
select
	JJZB_ZB5 ,
	JJZB_ZB7 ,
	JJZB_ZB8 ,
	JJZB_ZB10,
    -- 20220214新增指标 
    JJZB_QWS_YYFD, -- 引水[其外收]余压发电
	JJZB_ZB12,
	JJZB_ZB15,
	JJZB_ZB20,
	JJZB_ZB22,
    -- 20220214新增指标
    JJZB_QWC_YYFD, -- 引水[其外成]余压发电
	JJZB_ZB24,
	JJZB_ZB25,
	JJZB_ZB26,
    JJZB_XYJZSS, -- 信用减值损失
	JJZB_ZB27,
	JJZB_ZB28,
	JJZB_ZB29,
	JJZB_ZB30,
	JJZB_ZB31,
	JJZB_ZB32,
	JJZB_YFFY,
	JJZB_ZB33,
	JJZB_ZB34,
	JJZB_ZB35,
	JJZB_ZB36,
	JJZB_ZB46,
	JJZB_ZB57,
	JJZB_ZB59,
	JJZB_ZB60,
	JJZB_ZB61,
	JJZB_ZB62,
	JJZB_ZB63,
    -- 20220214新增指标
    JJZB_SZYF, -- 水资源费
    JJZB_DF, -- 电费
	JJZB_ZB64,
	JJZB_ZB65,
	JJZB_ZB68,
	JJZB_ZB69,
	JJZB_ZB71,
	JJZB_ZB72,
	JJZB_ZB73,
    JJZB_ZB74,
	JJZB_ZB54,
	JJZB_ZGSLX_NAME as JJZB_ZGSLX_NAME,
	JJZB_ZGSLX_CODE as JJZB_ZGSLX_CODE,
	JJZB_N_CODE as year,
	JJZB_Y_CODE as adjustperiod,
	JJZB_TBRQ as JJZB_TBRQ,
	SY_CREATETIME as SY_CREATETIME,
	'0' as datatype,
    BBXX_JJZB_ID as BBXX_JJZB_ID,
    SY_AUDFLAG as SY_AUDFLAG
from
	(
        select
        	*
        from
        (
        	select
        		nvl(JJZB_ZB71,0) as JJZB_ZB71,
        		nvl(JJZB_ZB56,0) as JJZB_ZB72,
				nvl(JJZB_ZB57,0) as JJZB_ZB73,
        		nvl(JJZB_ZB80,0) as JJZB_ZB74,
        		JJZB_ZGSLX_NAME,
				JJZB_ZGSLX_CODE,
				JJZB_N_CODE,
				JJZB_Y_CODE,
				JJZB_TBRQ,
        		BBXX_JJZB_ID,
				SY_CREATETIME,
        		SY_AUDFLAG,
            	row_number() over(partition by JJZB_ZGSLX_CODE,JJZB_N_CODE,JJZB_Y_CODE order by SY_CREATETIME desc) as num
        	from
        		ods_jepaas_bbxx_jjzb_df
			where JJZB_SZLX_CODE = '0' and ds = "${bizdate}"
        	and  JJZB_ZGSLX_CODE = 'YSGS'
        ) a
        where num = 1
    ) jepaas
left join
	(
     	select
			nvl(sum(case when report_num = 'JJZB_ZB5'  then localamount	end),0) as JJZB_ZB5,
			nvl(sum(case when report_num = 'JJZB_ZB7'  then localamount	end),0) as JJZB_ZB7,
			0 as JJZB_ZB8,
			0 as JJZB_ZB10,
        	-- 20220214新增指标
            nvl(sum(case when report_num = 'JJZB_QWS_YYFD' then localamount	end),0) as JJZB_QWS_YYFD, -- 引水[其外收]余压发电
    
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_ZB12' then localamount	end),0) as JJZB_ZB12,
			nvl(sum(case when report_num = 'JJZB_ZB15' then localamount	end),0) as JJZB_ZB15,
			0 as JJZB_ZB20,
			0 as JJZB_ZB22,
            -- 20220214新增指标
            nvl(sum(case when report_num = 'JJZB_QWC_YYFD' then localamount	end),0) as JJZB_QWC_YYFD, -- 引水[其外成]余压发电
			nvl(sum(case when report_num = 'JJZB_ZB24' then localamount	end),0) as JJZB_ZB24,
			nvl(sum(case when report_num = 'JJZB_ZB25' then localamount	end),0) as JJZB_ZB25,
			nvl(sum(case when report_num = 'JJZB_ZB26' then localamount	end),0) as JJZB_ZB26,
        	nvl(sum(case when report_num = 'JJZB_XYJZSS' then localamount	end),0) as JJZB_XYJZSS, -- 信用减值损失
			nvl(sum(case when report_num = 'JJZB_ZB27' then localamount	end),0) as JJZB_ZB27,
			nvl(sum(case when report_num = 'JJZB_ZB28' then localamount	end),0) as JJZB_ZB28,
			nvl(sum(case when report_num = 'JJZB_ZB29' then localamount	end),0) as JJZB_ZB29,
			nvl(sum(case when report_num = 'JJZB_ZB30' then localamount	end),0) as JJZB_ZB30,
			nvl(sum(case when report_num = 'JJZB_ZB31' then localamount	end),0) as JJZB_ZB31,
			nvl(sum(case when report_num = 'JJZB_ZB32_1' then  localamount 
		        when report_num = 'JJZB_ZB32_2' then  -1*localamount end),0) as JJZB_ZB32,
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_YFFY' then  localamount end),0) as JJZB_YFFY,
			nvl(sum(case when report_num = 'JJZB_ZB33' then  localamount	end),0) as JJZB_ZB33,
			nvl(sum(case when report_num = 'JJZB_ZB34' then  localamount	end),0) as JJZB_ZB34,
			nvl(sum(case when report_num = 'JJZB_ZB35' then  localamount	end),0) as JJZB_ZB35,
			nvl(sum(case when report_num = 'JJZB_ZB36_1' then  localamount 
		        when report_num = 'JJZB_ZB36_2' then  -1*localamount end),0) as JJZB_ZB36,
			nvl(sum(case when report_num = 'JJZB_ZB46' then  localamount	end),0) as JJZB_ZB46,
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_ZB57' then  localamount end),0) as JJZB_ZB57,
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_ZB59' then  localamount end),0) as JJZB_ZB59,
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_ZB60' then  localamount end),0) as JJZB_ZB60,
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_ZB61' then  localamount end),0) as JJZB_ZB61,
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_ZB62' then  localamount end),0) as JJZB_ZB62,
			nvl(sum(case when report_num = 'JJZB_ZB63' then  localamount	end),0) as JJZB_ZB63,
        	-- 20220214新增指标
            nvl(sum(case when report_num = 'JJZB_SZYF' then localamount	end),0) as JJZB_SZYF, -- 水资源费 
            nvl(sum(case when report_num = 'JJZB_DF' then localamount	end),0) as JJZB_DF, -- 电费
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_ZB64' then  localamount end),0) as JJZB_ZB64,
			nvl(sum(case when substr(report_num,1,9) = 'JJZB_ZB65' then  localamount end),0) as JJZB_ZB65,
			0 as JJZB_ZB68,
			nvl(sum(case when report_num = 'JJZB_ZB69' then  localamount	end),0) as JJZB_ZB69,
			year,
			adjustperiod
		from
			ads_ys_jjzb_jsjg_df
		where ds = "${bizdate}" and concat(year,'-',adjustperiod) >= '2021-04'
		group by
			year,
			adjustperiod
	)jsjg
on jepaas.JJZB_N_CODE = jsjg.year and jepaas.JJZB_Y_CODE = jsjg.adjustperiod
left join
	(
        select
        	num_year,
        	num_month,
			employees_nums as JJZB_ZB54
        from
    		tmp_num 
    )num
on num.num_year = JJZB_N_CODE and num.num_month = JJZB_Y_CODE
union all
-- 加载历史数据（非预算）
select
	nvl(JJZB_ZB4  / 10000,0) as JJZB_ZB5 ,
	nvl(JJZB_ZB6  / 10000,0) as JJZB_ZB7 ,
	nvl(JJZB_ZB7  / 10000,0) as JJZB_ZB8 ,
	nvl(JJZB_ZB9  / 10000,0) as JJZB_ZB10,
    -- 20220214新增指标
    0 as JJZB_QWS_YYFD, -- 引水[其外收]余压发电
	nvl(JJZB_ZB11 / 10000,0) as JJZB_ZB12,
	nvl(JJZB_ZB14 / 10000,0) as JJZB_ZB15,
	nvl(JJZB_ZB19 / 10000,0) as JJZB_ZB20,
	nvl(JJZB_ZB21 / 10000,0) as JJZB_ZB22,
    -- 20220214新增指标
    0 as JJZB_QWC_YYFD, -- 引水[其外成]余压发电
	nvl(JJZB_ZB23 / 10000,0) as JJZB_ZB24,
	nvl(JJZB_ZB24 / 10000,0) as JJZB_ZB25,
	nvl(JJZB_ZB25 / 10000,0) as JJZB_ZB26,
    0						 as JJZB_XYJZSS, -- 信用减值损失
	nvl(JJZB_ZB26 / 10000,0) as JJZB_ZB27,
	nvl(JJZB_ZB27 / 10000,0) as JJZB_ZB28,
	nvl(JJZB_ZB28 / 10000,0) as JJZB_ZB29,
	nvl(JJZB_ZB29 / 10000,0) as JJZB_ZB30,
	nvl(JJZB_ZB30 / 10000,0) as JJZB_ZB31,
	nvl(JJZB_ZB31 / 10000,0) as JJZB_ZB32,
	nvl(JJZB_ZB32 / 10000,0) as JJZB_YFFY,
	nvl(JJZB_ZB33 / 10000,0) as JJZB_ZB33,
	nvl(JJZB_ZB34 / 10000,0) as JJZB_ZB34,
	nvl(JJZB_ZB35 / 10000,0) as JJZB_ZB35,
	nvl(JJZB_ZB36 / 10000,0) as JJZB_ZB36,
	nvl(JJZB_ZB46 / 10000,0) as JJZB_ZB46,
	nvl(JJZB_ZB57 / 10000,0) as JJZB_ZB57,
	nvl(JJZB_ZB59 / 10000,0) as JJZB_ZB59,
	nvl(JJZB_ZB60 / 10000,0) as JJZB_ZB60,
	nvl(JJZB_ZB61 / 10000,0) as JJZB_ZB61,
	nvl(JJZB_ZB62 / 10000,0) as JJZB_ZB62,
	nvl(JJZB_ZB63 / 10000,0) as JJZB_ZB63,
    -- 20220214新增指标
    0 as JJZB_SZYF, -- 水资源费
    0 as JJZB_DF,-- 电费
    
	nvl(JJZB_ZB64 / 10000,0) as JJZB_ZB64,
	nvl(JJZB_ZB65 / 10000,0) as JJZB_ZB65,
	nvl(JJZB_ZB68 / 10000,0) as JJZB_ZB68,
	nvl(JJZB_ZB69 / 10000,0) as JJZB_ZB69,
    nvl(JJZB_ZB71 / 10000,0) as JJZB_ZB71,
    nvl(JJZB_ZB72 / 10000,0) as JJZB_ZB72,
	nvl(JJZB_ZB73 / 10000,0) as JJZB_ZB73,
	0.22 as JJZB_ZB74,
    nvl(JJZB_ZB54,0) as JJZB_ZB54,
    '引水公司' as JJZB_ZGSLX_NAME,
	'YSGS' as JJZB_ZGSLX_CODE,
	substr(JJZB_ZBSJ,1,4) as `year`,
  	substr(regexp_replace(substr(JJZB_ZBSJ,6),'月','') + 100,2,2) as `adjustperiod`,
	'' as JJZB_TBRQ,
	'' as SY_CREATETIME,
	'0' as datatype,
    concat(substr(JJZB_ZBSJ,1,4),substr(regexp_replace(substr(JJZB_ZBSJ,6),'月','') + 100,2,2),'0') as BBXX_JJZB_ID,
    'ENDED' as SY_AUDFLAG
from
	ods_import_jjzb_A_FrReport
    where p_comp = 'ys' and JJZB_ZBSJ not like '%预算'
    -- and substr(JJZB_ZBSJ,1,4) = '2022'
;
    

insert overwrite table ads_ys_jjzb_A_FrReport_df partition(ds = "${bizdate}")

-- 实际值
select
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 + JJZB_ZB27 as JJZB_ZB1,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 as JJZB_ZB2,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 as JJZB_ZB3,
	JJZB_ZB5 as JJZB_ZB4,
	JJZB_ZB5 as JJZB_ZB5,
	JJZB_ZB8 + JJZB_ZB7 as JJZB_ZB6,
	JJZB_ZB7 as JJZB_ZB7,
	JJZB_ZB8 as JJZB_ZB8,
	JJZB_QWS_YYFD + JJZB_ZB12 as JJZB_ZB9,
	JJZB_QWS_YYFD as JJZB_ZB10,
    JJZB_QWS_YYFD as JJZB_QWS_YYFD, -- 引水[其外收]余压发电
	JJZB_ZB12 as JJZB_ZB11,
	JJZB_ZB12 as JJZB_ZB12,
	JJZB_ZB15 +JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26+JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33 as JJZB_ZB13,
	JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 as JJZB_ZB14,
	JJZB_ZB15 as JJZB_ZB15,
	nvl(JJZB_ZB72 * JJZB_ZB74,0) as JJZB_ZB16,
	nvl(JJZB_ZB72 * JJZB_ZB74,0) as JJZB_ZB17,
	JJZB_ZB15 - nvl(JJZB_ZB72 * JJZB_ZB74,0) + JJZB_ZB20 as JJZB_ZB18,
	JJZB_ZB15 - nvl(JJZB_ZB72 * JJZB_ZB74,0) as JJZB_ZB19,
	JJZB_ZB20 as JJZB_ZB20,
	JJZB_QWC_YYFD + JJZB_ZB24 as JJZB_ZB21,
	JJZB_QWC_YYFD as JJZB_ZB22,
	JJZB_QWC_YYFD as JJZB_QWC_YYFD, -- 引水[其外成]余压发电
	JJZB_ZB24 as JJZB_ZB23,
	JJZB_ZB24 as JJZB_ZB24,
	JJZB_ZB25 as JJZB_ZB25,
	JJZB_ZB26 as JJZB_ZB26,
    JJZB_XYJZSS as JJZB_XYJZSS, -- 信用减值损失
	JJZB_ZB27 as JJZB_ZB27,
	JJZB_ZB28 as JJZB_ZB28,
	JJZB_ZB29 as JJZB_ZB29,
	JJZB_ZB30 as JJZB_ZB30,
	JJZB_ZB31 as JJZB_ZB31,
	JJZB_ZB32 as JJZB_ZB32,
	JJZB_YFFY as JJZB_YFFY,
	JJZB_ZB33 as JJZB_ZB33,
	JJZB_ZB34 as JJZB_ZB34,
	JJZB_ZB35 as JJZB_ZB35,
	JJZB_ZB36 as JJZB_ZB36,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26
     +JJZB_XYJZSS+ JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 as JJZB_ZB37,
	JJZB_ZB5 +JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26
      +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 
      	- (JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30) - JJZB_ZB36 - JJZB_ZB27 as JJZB_ZB38,
	JJZB_ZB27 as JJZB_ZB39,
	JJZB_ZB36 as JJZB_ZB40,
	JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 as JJZB_ZB41,
	JJZB_ZB28 as JJZB_ZB42,
	JJZB_ZB29 as JJZB_ZB43,
	JJZB_ZB30 as JJZB_ZB44,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26
      +JJZB_XYJZSS+ JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33)+ JJZB_ZB27 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 
      - (JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30) - JJZB_ZB36 - JJZB_ZB27 + JJZB_ZB27 + JJZB_ZB36 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 
        as JJZB_ZB45,
	JJZB_ZB46 as JJZB_ZB46,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 
      +JJZB_XYJZSS+ JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 - JJZB_ZB46 as JJZB_ZB47,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 
       + JJZB_ZB26 + JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 
         + JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 + JJZB_ZB35 as JJZB_ZB48,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 
      + JJZB_ZB26 + JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 + JJZB_ZB33 as JJZB_ZB49,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 
      + JJZB_ZB26 + JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12),0) as JJZB_ZB50,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 
       + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 
         + JJZB_ZB36 - JJZB_ZB46) / (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12),0) as JJZB_ZB51,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 
      + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36)
        / (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33),0) as JJZB_ZB52,
	nvl( (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 
       + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 
          + JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / JJZB_ZB57,0) as JJZB_ZB53,
	JJZB_ZB54 as JJZB_ZB54,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 + JJZB_ZB27) / JJZB_ZB54,0) as JJZB_ZB55,
	nvl((JJZB_ZB5 +JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 
      + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / JJZB_ZB54,0) as JJZB_ZB56,
	JJZB_ZB57 as JJZB_ZB57,
	JJZB_ZB57 as JJZB_ZB58,
	JJZB_ZB59 as JJZB_ZB59,
	JJZB_ZB60 as JJZB_ZB60,
	JJZB_ZB61 as JJZB_ZB61,
	JJZB_ZB62 as JJZB_ZB62,
	JJZB_ZB63 as JJZB_ZB63,
	-- 20220214新增指标
    JJZB_SZYF as JJZB_SZYF, -- 水资源费
    JJZB_DF as JJZB_DF, -- 电费
	JJZB_ZB64 as JJZB_ZB64,
	JJZB_ZB65 as JJZB_ZB65,
	JJZB_ZB64 - JJZB_ZB65 as JJZB_ZB66,
	JJZB_ZB68 + JJZB_ZB69 as JJZB_ZB67,
	JJZB_ZB68 as JJZB_ZB68,
	JJZB_ZB69 as JJZB_ZB69,
	JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33 - JJZB_ZB57 
     - JJZB_ZB60 - JJZB_ZB61 - JJZB_ZB62 - JJZB_ZB63 - JJZB_SZYF - JJZB_DF - (JJZB_ZB64 - JJZB_ZB65) - JJZB_ZB69 as JJZB_ZB70,
	nvl(JJZB_ZB71,0) as JJZB_ZB71,
	nvl(JJZB_ZB72,0) as JJZB_ZB72,
	nvl(JJZB_ZB73,0) as JJZB_ZB73,
	nvl(JJZB_ZB74,0) as JJZB_ZB74, 
	'' as col6,
	'' as col7,
	'' as col8,
	'' as col9,
	'' as col10,
    '引水公司' as JJZB_ZGSLX_NAME,
	'YSGS' as JJZB_ZGSLX_CODE,
	year as JJZB_N_CODE,
	adjustperiod as JJZB_Y_CODE,
	concat(year,'-',adjustperiod) as JJZB_TBRQ,
	from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as SY_CREATETIME,
	'0' as datatype,
    concat(year,'-',adjustperiod,'-','0') as BBXX_JJZB_ID,
    SY_AUDFLAG as SY_AUDFLAG,
	from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as filltime	
from
    tmp_jsjg
union all

-- 累计值
select
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 + JJZB_ZB27 as JJZB_ZB1,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7  + JJZB_QWS_YYFD + JJZB_ZB12 as JJZB_ZB2,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 as JJZB_ZB3,
	JJZB_ZB5 as JJZB_ZB4,
	JJZB_ZB5 as JJZB_ZB5,
	JJZB_ZB8 + JJZB_ZB7 as JJZB_ZB6,
	JJZB_ZB7 as JJZB_ZB7,
	JJZB_ZB8 as JJZB_ZB8,
	JJZB_QWS_YYFD + JJZB_ZB12 as JJZB_ZB9,
	JJZB_QWS_YYFD as JJZB_ZB10,
    JJZB_QWS_YYFD as JJZB_QWS_YYFD, -- 引水[其外收]余压发电
	JJZB_ZB12 as JJZB_ZB11,
	JJZB_ZB12 as JJZB_ZB12,
	JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33 as JJZB_ZB13,
	JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 as JJZB_ZB14,
	JJZB_ZB15 as JJZB_ZB15,
	-- nvl(JJZB_ZB72 * JJZB_ZB74,0) as JJZB_ZB16,
	-- nvl(JJZB_ZB72 * JJZB_ZB74,0) as JJZB_ZB17,
    nvl(JJZB_ZB16,0) as JJZB_ZB16,
	nvl(JJZB_ZB16,0) as JJZB_ZB17,
	JJZB_ZB15 - nvl(JJZB_ZB16,0) + JJZB_ZB20 as JJZB_ZB18,
	JJZB_ZB15 - nvl(JJZB_ZB16,0) as JJZB_ZB19,
	JJZB_ZB20 as JJZB_ZB20,
	JJZB_QWC_YYFD + JJZB_ZB24 as JJZB_ZB21,
	JJZB_QWC_YYFD as JJZB_ZB22,
	JJZB_QWC_YYFD as JJZB_QWC_YYFD, -- 引水[其外成]余压发电
	JJZB_ZB24 as JJZB_ZB23,
	JJZB_ZB24 as JJZB_ZB24,
	JJZB_ZB25 as JJZB_ZB25,
	JJZB_ZB26 as JJZB_ZB26,
    JJZB_XYJZSS as JJZB_XYJZSS, -- 信用减值损失
	JJZB_ZB27 as JJZB_ZB27,
	JJZB_ZB28 as JJZB_ZB28,
	JJZB_ZB29 as JJZB_ZB29,
	JJZB_ZB30 as JJZB_ZB30,
	JJZB_ZB31 as JJZB_ZB31,
	JJZB_ZB32 as JJZB_ZB32,
	JJZB_YFFY as JJZB_YFFY,
	JJZB_ZB33 as JJZB_ZB33,
	JJZB_ZB34 as JJZB_ZB34,
	JJZB_ZB35 as JJZB_ZB35,
	JJZB_ZB36 as JJZB_ZB36,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 + JJZB_XYJZSS
      + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 as JJZB_ZB37,
	JJZB_ZB5 +JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 
      +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28  + JJZB_ZB29 + JJZB_ZB30 
        + JJZB_ZB36 - (JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30) - JJZB_ZB36 - JJZB_ZB27 as JJZB_ZB38,
	JJZB_ZB27 as JJZB_ZB39,
	JJZB_ZB36 as JJZB_ZB40,
	JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 as JJZB_ZB41,
	JJZB_ZB28 as JJZB_ZB42,
	JJZB_ZB29 as JJZB_ZB43,
	JJZB_ZB30 as JJZB_ZB44,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 - (JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30) - JJZB_ZB36 - JJZB_ZB27 + JJZB_ZB27 + JJZB_ZB36 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 
        as JJZB_ZB45,
	JJZB_ZB46 as JJZB_ZB46,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 - JJZB_ZB46 as JJZB_ZB47,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 + JJZB_ZB35 as JJZB_ZB48,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 + JJZB_ZB33 as JJZB_ZB49,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26+ JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12),0) as JJZB_ZB50,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 - JJZB_ZB46) / (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12),0) as JJZB_ZB51,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33),0) as JJZB_ZB52,
	nvl(JJZB_ZB57 / (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36),0) as JJZB_ZB53,
	JJZB_ZB54 as JJZB_ZB54,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 + JJZB_ZB27) / JJZB_ZB54,0) as JJZB_ZB55,
	nvl((JJZB_ZB5 +JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / JJZB_ZB54,0) as JJZB_ZB56,
	JJZB_ZB57 as JJZB_ZB57,
	JJZB_ZB57 as JJZB_ZB58,
	JJZB_ZB59 as JJZB_ZB59,
	JJZB_ZB60 as JJZB_ZB60,
	JJZB_ZB61 as JJZB_ZB61,
	JJZB_ZB62 as JJZB_ZB62,
	JJZB_ZB63 as JJZB_ZB63,
	-- 20220214新增指标
    JJZB_SZYF as JJZB_SZYF, -- 水资源费
    JJZB_DF as JJZB_DF, -- 电费
	JJZB_ZB64 as JJZB_ZB64,
	JJZB_ZB65 as JJZB_ZB65,
	JJZB_ZB64 - JJZB_ZB65 as JJZB_ZB66,
	JJZB_ZB68 + JJZB_ZB69 as JJZB_ZB67,
	JJZB_ZB68 as JJZB_ZB68,
	JJZB_ZB69 as JJZB_ZB69,
	JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33 - JJZB_ZB57 - JJZB_ZB60 - JJZB_ZB61 - JJZB_ZB62 - JJZB_ZB63 - 
    - JJZB_SZYF - JJZB_DF -	(JJZB_ZB64 - JJZB_ZB65) - JJZB_ZB69 as JJZB_ZB70,
	nvl(JJZB_ZB71,0) as JJZB_ZB71,
	nvl(JJZB_ZB72,0) as JJZB_ZB72,
	nvl(JJZB_ZB73,0) as JJZB_ZB73,
	nvl(JJZB_ZB74,0) as JJZB_ZB74, 
	'' as col6,
	'' as col7,
	'' as col8,
	'' as col9,
	'' as col10,
    '引水公司' as JJZB_ZGSLX_NAME,
	'YSGS' as JJZB_ZGSLX_CODE,
	year as JJZB_N_CODE,
	adjustperiod as JJZB_Y_CODE,
	concat(year,'-',adjustperiod) as JJZB_TBRQ,
	from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as SY_CREATETIME,
	'2' as datatype,
    concat(year,'-',adjustperiod,'-','2') as BBXX_JJZB_ID,
    SY_AUDFLAG as SY_AUDFLAG,
	from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as filltime	
from
	(
        select
        	nvl(SUM(b.JJZB_ZB5 ),0) AS JJZB_ZB5 ,
			nvl(SUM(b.JJZB_ZB7 ),0) AS JJZB_ZB7 ,
			nvl(SUM(b.JJZB_ZB8 ),0) AS JJZB_ZB8 ,
			nvl(SUM(b.JJZB_ZB10),0) AS JJZB_ZB10,
        	nvl(SUM(b.JJZB_QWS_YYFD),0) AS JJZB_QWS_YYFD, -- 引水[其外收]余压发电
			nvl(SUM(b.JJZB_ZB12),0) AS JJZB_ZB12,
        	nvl(SUM(a.JJZB_ZB72 * a.JJZB_ZB74),0) AS JJZB_ZB16,
			nvl(SUM(b.JJZB_ZB15),0) AS JJZB_ZB15,
			nvl(SUM(b.JJZB_ZB20),0) AS JJZB_ZB20,
			nvl(SUM(b.JJZB_ZB22),0) AS JJZB_ZB22,
			nvl(SUM(b.JJZB_QWC_YYFD),0) AS JJZB_QWC_YYFD,
			nvl(SUM(b.JJZB_ZB24),0) AS JJZB_ZB24,
			nvl(SUM(b.JJZB_ZB25),0) AS JJZB_ZB25,
			nvl(SUM(b.JJZB_ZB26),0) AS JJZB_ZB26,
        	nvl(SUM(b.JJZB_XYJZSS),0) AS JJZB_XYJZSS, -- 信用减值损失
			nvl(SUM(b.JJZB_ZB27),0) AS JJZB_ZB27,
			nvl(SUM(b.JJZB_ZB28),0) AS JJZB_ZB28,
			nvl(SUM(b.JJZB_ZB29),0) AS JJZB_ZB29,
			nvl(SUM(b.JJZB_ZB30),0) AS JJZB_ZB30,
			nvl(SUM(b.JJZB_ZB31),0) AS JJZB_ZB31,
			nvl(SUM(b.JJZB_ZB32),0) AS JJZB_ZB32,
			nvl(SUM(b.JJZB_YFFY),0) AS JJZB_YFFY,
			nvl(SUM(b.JJZB_ZB33),0) AS JJZB_ZB33,
			nvl(SUM(b.JJZB_ZB34),0) AS JJZB_ZB34,
			nvl(SUM(b.JJZB_ZB35),0) AS JJZB_ZB35,
			nvl(SUM(b.JJZB_ZB36),0) AS JJZB_ZB36,
			nvl(SUM(b.JJZB_ZB46),0) AS JJZB_ZB46,
			nvl(SUM(b.JJZB_ZB57),0) AS JJZB_ZB57,
			nvl(SUM(b.JJZB_ZB59),0) AS JJZB_ZB59,
			nvl(SUM(b.JJZB_ZB60),0) AS JJZB_ZB60,
			nvl(SUM(b.JJZB_ZB61),0) AS JJZB_ZB61,
			nvl(SUM(b.JJZB_ZB62),0) AS JJZB_ZB62,
			nvl(SUM(b.JJZB_ZB63),0) AS JJZB_ZB63,
			nvl(SUM(b.JJZB_SZYF),0) AS JJZB_SZYF, -- 水资源费
			nvl(SUM(b.JJZB_DF),0) AS JJZB_DF, -- 电费
			nvl(SUM(b.JJZB_ZB64),0) AS JJZB_ZB64,
			nvl(SUM(b.JJZB_ZB65),0) AS JJZB_ZB65,
			nvl(SUM(b.JJZB_ZB68),0) AS JJZB_ZB68,
			nvl(SUM(b.JJZB_ZB69),0) AS JJZB_ZB69,
        	nvl(SUM(b.JJZB_ZB71),0) as JJZB_ZB71,
        	nvl(SUM(b.JJZB_ZB72),0) as JJZB_ZB72,
			nvl(SUM(b.JJZB_ZB73),0) as JJZB_ZB73,
        	a.JJZB_ZB74 as JJZB_ZB74,
       		nvl(sum(b.JJZB_ZB54) / a.adjustperiod,0) as JJZB_ZB54,
        	a.year as year,
        	a.adjustperiod as adjustperiod,
        	a.SY_AUDFLAG as SY_AUDFLAG
        from
    		(select * from tmp_jsjg) a
        left join
        	(select * from tmp_jsjg) b
        on a.year = b.year and a.adjustperiod >= b.adjustperiod
        group by a.year, a.adjustperiod, a.JJZB_ZB74, a.SY_AUDFLAG
    ) jsjg
union all

-- 全年实际值
select
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 + JJZB_ZB27 as JJZB_ZB1,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 as JJZB_ZB2,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 as JJZB_ZB3,
	JJZB_ZB5 as JJZB_ZB4,
	JJZB_ZB5 as JJZB_ZB5,
	JJZB_ZB8 + JJZB_ZB7 as JJZB_ZB6,
	JJZB_ZB7 as JJZB_ZB7,
	JJZB_ZB8 as JJZB_ZB8,
	JJZB_QWS_YYFD + JJZB_ZB12 as JJZB_ZB9,
	JJZB_QWS_YYFD as JJZB_ZB10,
    JJZB_QWS_YYFD as JJZB_QWS_YYFD, -- 引水[其外收]余压发电
	JJZB_ZB12 as JJZB_ZB11,
	JJZB_ZB12 as JJZB_ZB12,
	JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33 as JJZB_ZB13,
	JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 as JJZB_ZB14,
	JJZB_ZB15 as JJZB_ZB15,
	nvl(JJZB_ZB72 * JJZB_ZB74,0) as JJZB_ZB16,
	nvl(JJZB_ZB72 * JJZB_ZB74,0) as JJZB_ZB17,
	JJZB_ZB15 - nvl(JJZB_ZB72 * JJZB_ZB74,0) + JJZB_ZB20 as JJZB_ZB18,
	JJZB_ZB15 - nvl(JJZB_ZB72 * JJZB_ZB74,0) as JJZB_ZB19,
	JJZB_ZB20 as JJZB_ZB20,
	JJZB_QWC_YYFD + JJZB_ZB24 as JJZB_ZB21,
	JJZB_QWC_YYFD as JJZB_ZB22,
	JJZB_QWC_YYFD as JJZB_QWC_YYFD, -- 引水[其外成]余压发电
	JJZB_ZB24 as JJZB_ZB23,
	JJZB_ZB24 as JJZB_ZB24,
	JJZB_ZB25 as JJZB_ZB25,
	JJZB_ZB26 as JJZB_ZB26,
    JJZB_XYJZSS as JJZB_XYJZSS, -- 信用减值损失
	JJZB_ZB27 as JJZB_ZB27,
	JJZB_ZB28 as JJZB_ZB28,
	JJZB_ZB29 as JJZB_ZB29,
	JJZB_ZB30 as JJZB_ZB30,
	JJZB_ZB31 as JJZB_ZB31,
	JJZB_ZB32 as JJZB_ZB32,
	JJZB_YFFY as JJZB_YFFY,
	JJZB_ZB33 as JJZB_ZB33,
	JJZB_ZB34 as JJZB_ZB34,
	JJZB_ZB35 as JJZB_ZB35,
	JJZB_ZB36 as JJZB_ZB36,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 as JJZB_ZB37,
	JJZB_ZB5 +JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 - (JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30) - JJZB_ZB36 - JJZB_ZB27 as JJZB_ZB38,
	JJZB_ZB27 as JJZB_ZB39,
	JJZB_ZB36 as JJZB_ZB40,
	JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 as JJZB_ZB41,
	JJZB_ZB28 as JJZB_ZB42,
	JJZB_ZB29 as JJZB_ZB43,
	JJZB_ZB30 as JJZB_ZB44,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 - (JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30) - JJZB_ZB36 - JJZB_ZB27 + JJZB_ZB27 + JJZB_ZB36 + JJZB_ZB28 + JJZB_ZB29 + JJZB_ZB30 
        as JJZB_ZB45,
	JJZB_ZB46 as JJZB_ZB46,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 - JJZB_ZB46 as JJZB_ZB47,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 + JJZB_ZB35 as JJZB_ZB48,
	JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 + JJZB_ZB33 as JJZB_ZB49,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12),0) as JJZB_ZB50,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36 - JJZB_ZB46) / (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12),0) as JJZB_ZB51,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33),0) as JJZB_ZB52,
	nvl(JJZB_ZB57 / (JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28 
    	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36),0) as JJZB_ZB53,
	JJZB_ZB54 as JJZB_ZB54,
	nvl((JJZB_ZB5 + JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 + JJZB_ZB27) / JJZB_ZB54,0) as JJZB_ZB55,
	nvl((JJZB_ZB5 +JJZB_ZB8 + JJZB_ZB7 + JJZB_QWS_YYFD + JJZB_ZB12 - (JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33) + JJZB_ZB27 + JJZB_ZB28
     	+ JJZB_ZB29 + JJZB_ZB30 + JJZB_ZB36) / JJZB_ZB54,0) as JJZB_ZB56,
	JJZB_ZB57 as JJZB_ZB57,
	JJZB_ZB57 as JJZB_ZB58,
	JJZB_ZB59 as JJZB_ZB59,
	JJZB_ZB60 as JJZB_ZB60,
	JJZB_ZB61 as JJZB_ZB61,
	JJZB_ZB62 as JJZB_ZB62,
	JJZB_ZB63 as JJZB_ZB63,
	-- 20220214新增指标
    JJZB_SZYF as JJZB_SZYF, -- 水资源费
    JJZB_DF as JJZB_DF, -- 电费
	JJZB_ZB64 as JJZB_ZB64,
	JJZB_ZB65 as JJZB_ZB65,
	JJZB_ZB64 - JJZB_ZB65 as JJZB_ZB66,
	JJZB_ZB68 + JJZB_ZB69 as JJZB_ZB67,
	JJZB_ZB68 as JJZB_ZB68,
	JJZB_ZB69 as JJZB_ZB69,
	JJZB_ZB15 + JJZB_QWC_YYFD + JJZB_ZB24 + JJZB_ZB25 + JJZB_ZB26 +JJZB_XYJZSS + JJZB_ZB31 + JJZB_ZB32 + JJZB_ZB33 - JJZB_ZB57 - JJZB_ZB60 - JJZB_ZB61 - JJZB_ZB62 - JJZB_ZB63 - 
    JJZB_SZYF - JJZB_DF	- (JJZB_ZB64 - JJZB_ZB65) - JJZB_ZB69 as JJZB_ZB70,
	nvl(JJZB_ZB71,0) as JJZB_ZB71,
	nvl(JJZB_ZB72,0) as JJZB_ZB72,
	nvl(JJZB_ZB73,0) as JJZB_ZB73,
	nvl(JJZB_ZB74,0) as JJZB_ZB74, 
	'' as col6,
	'' as col7,
	'' as col8,
	'' as col9,
	'' as col10,
    '引水公司' as JJZB_ZGSLX_NAME,
	'YSGS' as JJZB_ZGSLX_CODE,
	year as JJZB_N_CODE,
	'' as JJZB_Y_CODE,
	year as JJZB_TBRQ,
	from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as SY_CREATETIME,
	'3' as datatype,
    concat(year,'-','3') as BBXX_JJZB_ID,
    'ENDED' as SY_AUDFLAG,
	from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as filltime	
from
	(
        select
        	SUM(JJZB_ZB5 ) AS JJZB_ZB5 ,
			SUM(JJZB_ZB7 ) AS JJZB_ZB7 ,
			SUM(JJZB_ZB8 ) AS JJZB_ZB8 ,
			SUM(JJZB_ZB10) AS JJZB_ZB10,
        	SUM(JJZB_QWS_YYFD) AS JJZB_QWS_YYFD, -- 引水[其外收]余压发电
			SUM(JJZB_ZB12) AS JJZB_ZB12,
			SUM(JJZB_ZB15) AS JJZB_ZB15,
			SUM(JJZB_ZB20) AS JJZB_ZB20,
			SUM(JJZB_ZB22) AS JJZB_ZB22,
			SUM(JJZB_QWC_YYFD) AS JJZB_QWC_YYFD,
			SUM(JJZB_ZB24) AS JJZB_ZB24,
			SUM(JJZB_ZB25) AS JJZB_ZB25,
			SUM(JJZB_ZB26) AS JJZB_ZB26,
        	SUM(JJZB_XYJZSS) AS JJZB_XYJZSS, -- 信用减值损失
			SUM(JJZB_ZB27) AS JJZB_ZB27,
			SUM(JJZB_ZB28) AS JJZB_ZB28,
			SUM(JJZB_ZB29) AS JJZB_ZB29,
			SUM(JJZB_ZB30) AS JJZB_ZB30,
			SUM(JJZB_ZB31) AS JJZB_ZB31,
			SUM(JJZB_ZB32) AS JJZB_ZB32,
			SUM(JJZB_YFFY) AS JJZB_YFFY,
			SUM(JJZB_ZB33) AS JJZB_ZB33,
			SUM(JJZB_ZB34) AS JJZB_ZB34,
			SUM(JJZB_ZB35) AS JJZB_ZB35,
			SUM(JJZB_ZB36) AS JJZB_ZB36,
			SUM(JJZB_ZB46) AS JJZB_ZB46,
			SUM(JJZB_ZB57) AS JJZB_ZB57,
			SUM(JJZB_ZB59) AS JJZB_ZB59,
			SUM(JJZB_ZB60) AS JJZB_ZB60,
			SUM(JJZB_ZB61) AS JJZB_ZB61,
			SUM(JJZB_ZB62) AS JJZB_ZB62,
			SUM(JJZB_ZB63) AS JJZB_ZB63,
			SUM(JJZB_SZYF) AS JJZB_SZYF, -- 水资源费
			SUM(JJZB_DF)   AS JJZB_DF, -- 电费
			SUM(JJZB_ZB64) AS JJZB_ZB64,
			SUM(JJZB_ZB65) AS JJZB_ZB65,
			SUM(JJZB_ZB68) AS JJZB_ZB68,
			SUM(JJZB_ZB69) AS JJZB_ZB69,
        	SUM(JJZB_ZB71) as JJZB_ZB71,
        	SUM(JJZB_ZB72) as JJZB_ZB72,
			SUM(JJZB_ZB73) as JJZB_ZB73,
        	sum(JJZB_ZB74) / count(1) as JJZB_ZB74,
       		nvl(sum(JJZB_ZB54) / count(1),0) as JJZB_ZB54,
        	year as year
        from
    		tmp_jsjg
        where year < year(current_date)
        group by
        	year
    ) jsjg
union all

--  jepaas填报系统预算值
	select
		nvl(JJZB_ZB1,0)  as JJZB_ZB1,
		nvl(JJZB_ZB2,0)  as JJZB_ZB2,
		nvl(JJZB_ZB3,0)  as JJZB_ZB3,
		nvl(JJZB_ZB4,0)  as JJZB_ZB4,
		nvl(JJZB_ZB5,0)  as JJZB_ZB5,
		nvl(JJZB_ZB6,0)  as JJZB_ZB6,
		nvl(JJZB_ZB7,0)  as JJZB_ZB7,
		nvl(JJZB_ZB8,0)  as JJZB_ZB8,
		nvl(JJZB_ZB9,0)  as JJZB_ZB9,
		nvl(JJZB_ZB10,0) as JJZB_ZB10,
        nvl(JJZB_ZB77,0) as JJZB_QWS_YYFD, -- 引水[其外收]余压发电
		nvl(JJZB_ZB11,0) as JJZB_ZB11,
		nvl(JJZB_ZB12,0) as JJZB_ZB12,
		nvl(JJZB_ZB13,0) as JJZB_ZB13,
		nvl(JJZB_ZB14,0) as JJZB_ZB14,
		nvl(JJZB_ZB15,0) as JJZB_ZB15,
		nvl(JJZB_ZB16,0) as JJZB_ZB16,
		nvl(JJZB_ZB17,0) as JJZB_ZB17,
		nvl(JJZB_ZB18,0) as JJZB_ZB18,
		nvl(JJZB_ZB19,0) as JJZB_ZB19,
		nvl(JJZB_ZB20,0) as JJZB_ZB20,
		nvl(JJZB_ZB21,0) as JJZB_ZB21,
		nvl(JJZB_ZB22,0) as JJZB_ZB22,
		nvl(JJZB_ZB78,0) as JJZB_QWC_YYFD,
		nvl(JJZB_ZB23,0) as JJZB_ZB23,
		nvl(JJZB_ZB24,0) as JJZB_ZB24,
		nvl(JJZB_ZB25,0) as JJZB_ZB25,
		nvl(JJZB_ZB26,0) as JJZB_ZB26,
        nvl(JJZB_ZB76,0) as JJZB_XYJZSS, -- 信用减值损失
		nvl(JJZB_ZB27,0) as JJZB_ZB27,
		nvl(JJZB_ZB28,0) as JJZB_ZB28,
		nvl(JJZB_ZB29,0) as JJZB_ZB29,
		nvl(JJZB_ZB30,0) as JJZB_ZB30,
		nvl(JJZB_ZB31,0) as JJZB_ZB31,
		nvl(JJZB_ZB32,0) as JJZB_ZB32,
		nvl(JJZB_ZB33,0) as JJZB_YFFY,
        nvl(JJZB_ZB34,0) as JJZB_ZB33, 
		nvl(JJZB_ZB35,0) as JJZB_ZB34,
		nvl(JJZB_ZB36,0) as JJZB_ZB35,
		nvl(JJZB_ZB37,0) as JJZB_ZB36,
		nvl(JJZB_ZB38,0) as JJZB_ZB37,
		nvl(JJZB_ZB39,0) as JJZB_ZB38,
		nvl(JJZB_ZB40,0) as JJZB_ZB39,
		nvl(JJZB_ZB41,0) as JJZB_ZB40,
		nvl(JJZB_ZB42,0) as JJZB_ZB41,
		nvl(JJZB_ZB43,0) as JJZB_ZB42,
		nvl(JJZB_ZB44,0) as JJZB_ZB43,
		nvl(JJZB_ZB45,0) as JJZB_ZB44,
		nvl(JJZB_ZB46,0) as JJZB_ZB45,
		nvl(JJZB_ZB47,0) as JJZB_ZB46,
		nvl(JJZB_ZB48,0) as JJZB_ZB47,
		nvl(JJZB_ZB49,0) as JJZB_ZB48,
		nvl(JJZB_ZB50,0) as JJZB_ZB49,
		nvl(JJZB_ZB51,0) as JJZB_ZB50,
		nvl(JJZB_ZB52,0) as JJZB_ZB51,
		nvl(JJZB_ZB53,0) as JJZB_ZB52,
		nvl(JJZB_ZB54,0) as JJZB_ZB53,
		nvl(JJZB_ZB55,0) as JJZB_ZB54,
		nvl(JJZB_ZB56,0) as JJZB_ZB55,
		nvl(JJZB_ZB57,0) as JJZB_ZB56,
		nvl(JJZB_ZB58,0) as JJZB_ZB57,
		nvl(JJZB_ZB59,0) as JJZB_ZB58,
		nvl(JJZB_ZB60,0) as JJZB_ZB59,
		nvl(JJZB_ZB61,0) as JJZB_ZB60,
		nvl(JJZB_ZB62,0) as JJZB_ZB61,
		nvl(JJZB_ZB63,0) as JJZB_ZB62,
		nvl(JJZB_ZB64,0) as JJZB_ZB63,
		nvl(JJZB_ZB79,0) AS JJZB_SZYF, -- 水资源费
		nvl(JJZB_ZB80,0)   AS JJZB_DF, -- 电费
		nvl(JJZB_ZB65,0) as JJZB_ZB64,
		nvl(JJZB_ZB66,0) as JJZB_ZB65,
		nvl(JJZB_ZB67,0) as JJZB_ZB66,
		nvl(JJZB_ZB68,0) as JJZB_ZB67,
		nvl(JJZB_ZB69,0) as JJZB_ZB68,
		nvl(JJZB_ZB70,0) as JJZB_ZB69,
		nvl(JJZB_ZB71,0) as JJZB_ZB70,
		nvl(JJZB_ZB72,0) as JJZB_ZB71,
        nvl(JJZB_ZB73,0) as JJZB_ZB72,
		nvl(JJZB_ZB74,0) as JJZB_ZB73,
    	nvl(JJZB_ZB75,0) as JJZB_ZB74, 
		'' as col6,
		'' as col7,
		'' as col8,
		'' as col9,
		'' as col10,
       	'引水公司' as JJZB_ZGSLX_NAME,
		'YSGS' as JJZB_ZGSLX_CODE,
		JJZB_N_CODE as JJZB_N_CODE,
		'00' as JJZB_Y_CODE,
		JJZB_TBRQ as JJZB_TBRQ,
		SY_CREATETIME as SY_CREATETIME,
		'1' as datatype,
        concat(JJZB_N_CODE,'-00','-1') as BBXX_JJZB_ID,
        SY_AUDFLAG as SY_AUDFLAG,
		from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as filltime
    from
       	ods_jepaas_bbxx_jjzb_df
	where JJZB_SZLX_CODE = '1' -- and JJZB_ZGSLX_CODE = 'YSGS';
    and JJZB_ZGSLX_CODE = 'YSGS'

union all
    
-- 历史数据 预算值
	select
    	0 as JJZB_ZB1        ,
		JJZB_ZB1 /10000 as JJZB_ZB2 ,
		JJZB_ZB2 /10000 as JJZB_ZB3 ,
		JJZB_ZB3 /10000 as JJZB_ZB4 ,
		JJZB_ZB4 /10000 as JJZB_ZB5 ,
		JJZB_ZB5 /10000 as JJZB_ZB6 ,
		JJZB_ZB6 /10000 as JJZB_ZB7 ,
		JJZB_ZB7 /10000 as JJZB_ZB8 ,
		JJZB_ZB8 /10000 as JJZB_ZB9 ,
		JJZB_ZB9 /10000 as JJZB_ZB10,
        0 as JJZB_QWS_YYFD, -- 引水[其外收]余压发电
		JJZB_ZB10/10000 as JJZB_ZB11,
		JJZB_ZB11/10000 as JJZB_ZB12,
		JJZB_ZB12/10000 as JJZB_ZB13,
		JJZB_ZB13/10000 as JJZB_ZB14,
		JJZB_ZB14/10000 as JJZB_ZB15,
		JJZB_ZB15/10000 as JJZB_ZB16,
		JJZB_ZB16/10000 as JJZB_ZB17,
		JJZB_ZB17/10000 as JJZB_ZB18,
		JJZB_ZB18/10000 as JJZB_ZB19,
		JJZB_ZB19/10000 as JJZB_ZB20,
		JJZB_ZB20/10000 as JJZB_ZB21,
		JJZB_ZB21/10000 as JJZB_ZB22,
		0 as JJZB_QWC_YYFD, -- 引水[其外成]余压发电
		JJZB_ZB22/10000 as JJZB_ZB23,
		JJZB_ZB23/10000 as JJZB_ZB24,
		JJZB_ZB24/10000 as JJZB_ZB25,
		JJZB_ZB25/10000 as JJZB_ZB26,
        0 as JJZB_XYJZSS, -- 信用减值损失
		JJZB_ZB26/10000 as JJZB_ZB27,
		JJZB_ZB27/10000 as JJZB_ZB28,
		JJZB_ZB28/10000 as JJZB_ZB29,
		JJZB_ZB29/10000 as JJZB_ZB30,
		JJZB_ZB30/10000 as JJZB_ZB31,
		JJZB_ZB31/10000 as JJZB_ZB32,
		JJZB_ZB32/10000 as  JJZB_YFF,
		JJZB_ZB33/10000 as JJZB_ZB33,
		JJZB_ZB34/10000 as JJZB_ZB34,
		JJZB_ZB35/10000 as JJZB_ZB35,
		JJZB_ZB36/10000 as JJZB_ZB36,
		JJZB_ZB37/10000 as JJZB_ZB37,
		JJZB_ZB38/10000 as JJZB_ZB38,
		JJZB_ZB39/10000 as JJZB_ZB39,
		JJZB_ZB40/10000 as JJZB_ZB40,
		JJZB_ZB41/10000 as JJZB_ZB41,
		JJZB_ZB42/10000 as JJZB_ZB42,
		JJZB_ZB43/10000 as JJZB_ZB43,
		JJZB_ZB44/10000 as JJZB_ZB44,
		JJZB_ZB45/10000 as JJZB_ZB45,
		JJZB_ZB46/10000 as JJZB_ZB46,
		JJZB_ZB47/10000 as JJZB_ZB47,
		JJZB_ZB48/10000 as JJZB_ZB48,
		JJZB_ZB49/10000 as JJZB_ZB49,
		JJZB_ZB50 as JJZB_ZB50,
		JJZB_ZB51 as JJZB_ZB51,
		JJZB_ZB52 as JJZB_ZB52,
		JJZB_ZB53 as JJZB_ZB53,
		JJZB_ZB54 as JJZB_ZB54,
		JJZB_ZB55/10000 as JJZB_ZB55,
		JJZB_ZB56/10000 as JJZB_ZB56,
		JJZB_ZB57/10000 as JJZB_ZB57,
		JJZB_ZB58/10000 as JJZB_ZB58,
		JJZB_ZB59/10000 as JJZB_ZB59,
		JJZB_ZB60/10000 as JJZB_ZB60,
		JJZB_ZB61/10000 as JJZB_ZB61,
		JJZB_ZB62/10000 as JJZB_ZB62,
		JJZB_ZB63/10000 as JJZB_ZB63,
		0 AS JJZB_SZYF, -- 水资源费
		0   AS JJZB_DF, -- 电费
		JJZB_ZB64/10000 as JJZB_ZB64,
		JJZB_ZB65/10000 as JJZB_ZB65,
		JJZB_ZB66/10000 as JJZB_ZB66,
		JJZB_ZB67/10000 as JJZB_ZB67,
		JJZB_ZB68/10000 as JJZB_ZB68,
		JJZB_ZB69/10000 as JJZB_ZB69,
		JJZB_ZB70/10000 as JJZB_ZB70,
		JJZB_ZB71/10000 as JJZB_ZB71,
		JJZB_ZB72/10000 as JJZB_ZB72,
		JJZB_ZB73/10000 as JJZB_ZB73,
        0.22 as JJZB_ZB74, 
		'' as col6,
		'' as col7,
		'' as col8,
		'' as col9,
		'' as col10,
    	'引水公司' as JJZB_ZGSLX_NAME,
        'YSGS' as JJZB_ZGSLX_CODE,
        substr(JJZB_ZBSJ,1,4) as JJZB_N_CODE,
  		'00' as JJZB_Y_CODE,
		substr(JJZB_ZBSJ,1,4) as JJZB_TBRQ,
		from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as SY_CREATETIME,
		'1' as datatype,
    	concat(substr(JJZB_ZBSJ,1,4),'-00','-1') as BBXX_JJZB_ID,
        'ENDED' as SY_AUDFLAG,
		from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as filltime	
    from
    	ods_import_jjzb_A_FrReport
    where p_comp = 'ys' and JJZB_ZBSJ like ('%预算')