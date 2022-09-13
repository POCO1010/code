-- 算出各个区域各个班次问题类型为B，未返修的车辆的比率
SELECT  YANGBEN.MQSA_CODE
       ,YANGBEN.ACT_SHIFT
       ,ROUND( TGC.NUM / YANGBEN.NUM * 100,2 ) VALUE -- 算出问题类型为B，未返修的车辆的比率
       ,SYSDATE
FROM
(	-- 计算各个区域各个班次有多少车辆
	SELECT  MQSA_CODE
	       ,CASE ACT_SHIFT WHEN '1' THEN '0' WHEN '2' THEN '1' END ACT_SHIFT
	       ,COUNT( DISTINCT mqsc_vin ) num
	FROM mqs_carinfo C
	LEFT JOIN
	(	-- 找到该车辆的VIN码，通过点，区域，班次
		SELECT  MQSC_VIN   -- VIN码
		       ,MQSA_CODE  -- 区域代码
		       ,ACT_SHIFT  -- 班次
		       ,MQSPU_PCODE -- 通过点代码
		FROM MQS_CARTH -- 车辆MES通过信息表
		LEFT JOIN
		( -- 找到A1区域的通过点
			SELECT  A.MQSA_CODE -- 区域代码 
			       ,A.MQSA_AREANAME -- 区域名称
			       ,MQSPU_MESPCODE -- MES点代码
			       ,MQSPU_PCODE -- 通过点代码
			FROM MQS_AREA A, MQS_PUNION B -- 区域设置 & MQS通过点与MES点位关联表
			WHERE A.MQSA_PPCODE = B.MQSPU_PCODE -- 通过点代码
			AND MQSA_CODE = 'A01' -- 区域代码 
			AND MQSPU_PCODE IS NOT NULL  -- 通过点代码
		)
		ON MQSC_CJD = MQSPU_MESPCODE -- MES点位代码 & MES点代码
		WHERE MQSC_TGRQ -- 通过时间
        BETWEEN TO_DATE( TO_CHAR( SYSDATE, 'yyyy-mm-dd' ) || '08:00:00', 'yyyy-mm-dd hh24:mi:ss' ) 
        AND TO_DATE( TO_CHAR( SYSDATE + 1, 'yyyy-mm-dd' ) || '08:00:00', 'yyyy-mm-dd hh24:mi:ss' ) 
	) D
	ON C.MQSC_CARNO = d.mqsc_vin -- VIN码
	WHERE MQSA_CODE IS NOT NULL -- 区域代码
	GROUP BY  MQSA_CODE
	         ,ACT_SHIFT -- 班次
) YANGBEN
LEFT JOIN
(	-- 计算各个区域各个班次有多少问题类型为B，未返修的车辆
	SELECT  MQSA_CODE
	       ,CASE ACT_SHIFT 
		   WHEN '1' THEN '0' 
		   WHEN '2' THEN '1' END ACT_SHIFT
	       ,COUNT( DISTINCT mqsc_vin ) num
	FROM mqs_carinfo C
	LEFT JOIN
	(	-- 找到问题类型为B，未返修的车辆vin码与区域代码，班次
		SELECT  A.MQSA_CODE -- 区域代码
		       ,ACT_SHIFT -- 班次
		       ,A.MQSC_VIN VIN码
		FROM
		(	-- 找到该车辆的VIN码，区域，班次
			SELECT  MQSA_CODE -- 区域代码
			       ,ACT_SHIFT -- 班次
			       ,MQSC_VIN -VIN码
			FROM MQS_CARTH
			LEFT JOIN
			(	-- 找到A1区域的通过点
				SELECT  A.MQSA_CODE -- 区域代码 
				       ,A.MQSA_AREANAME -- 区域名称
				       ,MQSPU_MESPCODE -- MES点代码
				FROM MQS_AREA A, MQS_PUNION B -- 区域设置 & MQS通过点与MES点位关联表
				WHERE A.MQSA_PPCODE = B.MQSPU_PCODE
				AND MQSA_CODE = 'A01' -- 区域代码 
				AND MQSPU_PCODE IS NOT NULL  -- 通过点代码
			)
			ON MQSC_CJD = MQSPU_MESPCODE -- MES点位代码 & MES点代码
			WHERE MQSC_TGRQ  -- 通过时间
			BETWEEN TO_DATE( TO_CHAR( SYSDATE, 'yyyy-mm-dd' ) || '08:00:00', 'yyyy-mm-dd hh24:mi:ss' ) 
            AND TO_DATE( TO_CHAR( SYSDATE + 1, 'yyyy-mm-dd' ) || '08:00:00', 'yyyy-mm-dd hh24:mi:ss' )
			AND MQSA_CODE IS NOT NULL -- 区域代码
			GROUP BY  MQSA_CODE -- 区域代码
			         ,ACT_SHIFT -- 班次
			         ,MQSC_VIN -- VIN码
		) A
		LEFT JOIN
		(	-- 取出问题类型为B，未返修的车辆vin码与区域代码
			SELECT  MQSC_VIN -- VIN码
			       ,MQSA_CODE -- 区域代码
			FROM MQS_CARRECORD -- 车辆扫描信息表
			LEFT JOIN
			(	-- 关联区域与采集点
				SELECT  MQSA_CODE -- 区域代码
				       ,MQSAC_CJPOINT -- 采集点代码
				FROM MQS_AREA B, MQS_AREACJ A -- 区域设置 & 区域采集点关系设置
				WHERE A.MQSAC_AREACODE = B.MQSA_ID 
			)
			ON MQSAC_CJPOINT = MQSC_CHECKPOINT -- 采集点代码 & 采集点代码
			WHERE MQSC_TYPE = 'B' -- 类型A audit B 一般问题
			AND MQSC_REPAIR = 'N' -- 再现返修YYN否
			GROUP BY  MQSC_VIN -- VIN码
			         ,MQSA_CODE -- 区域代码
		) B
		ON A.MQSA_CODE = B.MQSA_CODE  -- 区域代码
		AND A.MQSC_VIN = B.MQSC_VIN -- VIN码
		WHERE B.MQSC_VIN IS NULL  -- VIN码
	) D
	ON C.MQSC_CARNO = D.MQSC_VIN -- VIN码
	GROUP BY  MQSA_CODE -- VIN码
	         ,ACT_SHIFT -- 班次
) tgc
ON TGC.MQSA_CODE = YANGBEN.MQSA_CODE -- 区域代码
AND TGC.ACT_SHIFT = YANGBEN.ACT_SHIFT -- 班次