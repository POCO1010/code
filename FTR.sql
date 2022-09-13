SELECT
	YANGBEN.MQSA_CODE,
	YANGBEN.ACT_SHIFT,
	ROUND( TGC.NUM / YANGBEN.NUM * 100, 2 ) VALUE,
SYSDATE 
FROM
	(
	SELECT
		MQSA_CODE,
	CASE
			ACT_SHIFT 
			WHEN '1' THEN
			'0' 
			WHEN '2' THEN
			'1' 
		END ACT_SHIFT,
	COUNT( DISTINCT mqsc_vin ) num 
FROM
	mqs_carinfo C
	LEFT JOIN (
	SELECT
		MQSC_VIN,
		MQSA_CODE,
		ACT_SHIFT,
		MQSPU_PCODE 
	FROM
		MQS_CARTH
		LEFT JOIN (
		SELECT
			A.MQSA_CODE,
			A.MQSA_AREANAME,
			MQSPU_MESPCODE,
			MQSPU_PCODE 
		FROM
			MQS_AREA A,
			MQS_PUNION B 
		WHERE
			A.MQSA_PPCODE = B.MQSPU_PCODE  AND MQSA_CODE='A01'
			AND MQSPU_PCODE IS NOT NULL  
		) ON MQSC_CJD = MQSPU_MESPCODE 
	WHERE
		MQSC_TGRQ BETWEEN TO_DATE( TO_CHAR( SYSDATE, 'yyyy-mm-dd' ) || '08:00:00', 'yyyy-mm-dd hh24:mi:ss' ) 
		AND TO_DATE( TO_CHAR( SYSDATE + 1, 'yyyy-mm-dd' ) || '08:00:00', 'yyyy-mm-dd hh24:mi:ss' ) 
	) D ON C.MQSC_CARNO = d.mqsc_vin 
	WHERE MQSA_CODE IS NOT NULL
GROUP BY
	MQSA_CODE,
	ACT_SHIFT 
	) YANGBEN
	LEFT JOIN (
	SELECT
		MQSA_CODE,
	CASE
			ACT_SHIFT 
			WHEN '1' THEN
			'0' 
			WHEN '2' THEN
			'1' 
		END ACT_SHIFT,
	COUNT( DISTINCT mqsc_vin ) num 
FROM
	mqs_carinfo C
	LEFT JOIN (
	SELECT
		A.MQSA_CODE,
		ACT_SHIFT,
		A.MQSC_VIN 
	FROM
		(
		SELECT
			MQSA_CODE,
			ACT_SHIFT,
			MQSC_VIN 
		FROM
			MQS_CARTH
			LEFT JOIN (
			SELECT
				A.MQSA_CODE,
				A.MQSA_AREANAME,
				MQSPU_MESPCODE 
			FROM
				MQS_AREA A,
				MQS_PUNION B 
			WHERE
				A.MQSA_PPCODE = B.MQSPU_PCODE AND MQSA_CODE='A01'
				AND MQSPU_PCODE IS NOT NULL
			) ON MQSC_CJD = MQSPU_MESPCODE 
		WHERE
			MQSC_TGRQ BETWEEN TO_DATE( TO_CHAR( SYSDATE, 'yyyy-mm-dd' ) || '08:00:00', 'yyyy-mm-dd hh24:mi:ss' ) 
			AND TO_DATE( TO_CHAR( SYSDATE + 1, 'yyyy-mm-dd' ) || '08:00:00', 'yyyy-mm-dd hh24:mi:ss' ) 
			AND MQSA_CODE IS NOT NULL 
		GROUP BY
			MQSA_CODE,
			ACT_SHIFT,
			MQSC_VIN 
		) A
		LEFT JOIN (
		SELECT
			MQSC_VIN,
			MQSA_CODE 
		FROM
			MQS_CARRECORD
			LEFT JOIN ( SELECT MQSA_CODE, MQSAC_CJPOINT FROM MQS_AREA B, MQS_AREACJ A WHERE A.MQSAC_AREACODE = B.MQSA_ID ) ON MQSAC_CJPOINT = MQSC_CHECKPOINT 
		WHERE
			MQSC_TYPE = 'B' 
-- 			AND MQSC_REPAIR = 'N' 
		GROUP BY
			MQSC_VIN,
			MQSA_CODE 
		) B ON A.MQSA_CODE = B.MQSA_CODE 
		AND A.MQSC_VIN = B.MQSC_VIN 
	WHERE
		B.MQSC_VIN IS NULL 
	) D ON C.MQSC_CARNO = D.MQSC_VIN 
GROUP BY
	MQSA_CODE,
	ACT_SHIFT 
	) tgc ON TGC.MQSA_CODE = YANGBEN.MQSA_CODE 
	AND TGC.ACT_SHIFT = YANGBEN.ACT_SHIFT