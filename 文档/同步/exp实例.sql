-- ywym_ywtg	t_ywym_ywtg_htc_bwzs_zzt	bwzs_zzt	
-- 四方_好停车_泊位指数_柱状图	t_ywym_ywtg_htc_bwzs_zzt	好停车_泊位指数_柱状图	
-- collect_ywym_ywtg_htc_bwzs_zzt	htc_park_time_rate_law	
-- adm_htc_park_time_rate_law	停车区域分类时长指数与执法管理情况表	/parkTimeRateLaw	htc_park_time_rate_law
truncate table t_ywym_ywtg_htc_bwzs_zzt;
Insert into t_ywym_ywtg_htc_bwzs_zzt(
    id,  --  主键
    create_time,  --  创建时间
    update_time,  --  更新时间
    px,  --  排序
    dd,  --  地点
    qy,  --  区域
    bwzs,  --  泊位指数
    rq  --  日期
) select id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px, -- 
    park_type as dd, -- 业态
    region_name as qy, -- 区/县
    round(num/60,2) as bwzs, -- 数量
    date_time as rq -- 日期 
from shenyang_cockpit.htc_park_time_rate_law where type = '泊位指数' order by id;

-- ywym_ywtg	t_ywym_ywtg_htc_jyxtcctczstop_zb	jyxtcctczstop_zb	
-- 四方_好停车_经营性停车场停车指数TOP10_指标	t_ywym_ywtg_htc_jyxtcctczstop_zb	
-- 好停车_经营性停车场停车指数TOP10_指标	collect_ywym_ywtg_htc_jyxtcctczstop_zb	
-- htc_park_operate_parkingrate_top	adm_htc_park_operate_parkingrate_top	
-- 经营性停车场指数top表	/parkOperateParkingrateTop	htc_park_operate_parkingrate_top

truncate table t_ywym_ywtg_htc_jyxtcctczstop_zb;
Insert into t_ywym_ywtg_htc_jyxtcctczstop_zb(
        id,
        create_time,
        update_time,
        px,
        qy,
        zbx,
        zs,
        lx
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    rank_num as px,
    region_name as qy,
    park_name as zbx,
    park_rate as zs,
    type as lx
from shenyang_cockpit.htc_park_operate_parkingrate_top;

-- ywym_ywtg	t_ywym_ywtg_htc_khdsyqk_zb	khdsyqk_zb	四方_好停车_客户端使用情况_指标	
-- t_ywym_ywtg_htc_khdsyqk_zb	好停车_客户端使用情况_指标	collect_ywym_ywtg_htc_khdsyqk_zb	
-- htc_park_client	adm_htc_park_client	客户端使用情况表	/parkClinent	htc_park_client

UPDATE t_ywym_ywtg_htc_khdsyqk_zb t SET t.value =(SELECT sst_rate FROM shenyang_cockpit.htc_park_client) where zbx = '盛世通';
UPDATE t_ywym_ywtg_htc_khdsyqk_zb t SET t.value =(SELECT bd_rate FROM shenyang_cockpit.htc_park_client) where zbx = '百度';
UPDATE t_ywym_ywtg_htc_khdsyqk_zb t SET t.value =(SELECT gd_rate FROM shenyang_cockpit.htc_park_client) where zbx = '高德';
UPDATE t_ywym_ywtg_htc_khdsyqk_zb t SET t.value =(SELECT tx_rate FROM shenyang_cockpit.htc_park_client) where zbx = '腾讯';

-- ywym_ywtg	t_ywym_ywtg_htc_rjtcsc_zzt	rjtcsc_zzt	四方_好停车_日均停车时长_柱状图	
-- t_ywym_ywtg_htc_rjtcsc_zzt	好停车_日均停车时长_柱状图	collect_ywym_ywtg_htc_rjtcsc_zzt	
-- htc_park_time_rate_law	adm_htc_park_time_rate_law	停车区域分类时长指数与执法管理情况表	/parkTimeRateLaw	htc_park_time_rate_law

truncate table t_ywym_ywtg_htc_rjtcsc_zzt;
Insert into t_ywym_ywtg_htc_rjtcsc_zzt(
    id,  --  主键
    create_time,  --  创建时间
    update_time,  --  更新时间
    px,  --  排序
    dd,  --  地点
    qy,  --  区域
    rjtcsc,  --  日均停车时长
    rq  --  日期
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px, -- 
    park_type as dd, -- 业态
    region_name as qy, -- 区/县
    round(num/60,2) as rjtcsc, -- 数量
    date_time as rq -- 日期 
from shenyang_cockpit.htc_park_time_rate_law where type = '日均停车时长' order by id;

-- ywym_ywtg	t_ywym_ywtg_htc_smtctsrd_zb	smtctsrd_zb	四方_好停车_市民停车投诉热点_指标	
-- t_ywym_ywtg_htc_smtctsrd_zb	好停车_市民停车投诉热点_指标	collect_ywym_ywtg_htc_smtctsrd_zb	
-- htc_park_hotpoint	adm_htc_park_hotpoint	市民停车投诉热点表	/parkHotPoint	htc_park_hotpoint

truncate table t_ywym_ywtg_htc_smtctsrd_zb;
Insert into t_ywym_ywtg_htc_smtctsrd_zb(
        id,
        create_time,
        update_time,
        px,
        zbx
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    word_order as px,
    word_name as zbx
from shenyang_cockpit.htc_park_hotpoint order by id;

-- ywym_ywtg	t_ywym_ywtg_htc_tccfwpjb_lb	tccfwpjb_lb	
-- 四方_好停车_停车场服务评价榜_列表	t_ywym_ywtg_htc_tccfwpjb_lb	好停车_停车场服务评价榜_列表	
-- collect_ywym_ywtg_htc_tccfwpjb_lb	htc_park_top	adm_htc_park_top	停车场服务评论top	/parkTop	htc_park_top

truncate table t_ywym_ywtg_htc_tccfwpjb_lb;
Insert into t_ywym_ywtg_htc_tccfwpjb_lb(
        id,
        create_time,
        update_time,
        px,
        bdlx,
        tccmc,
        pf,
        lx
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px, -- 
    type  as bdlx,
    park_name  as tccmc,
    park_score as pf,
    park_type  as lx
from shenyang_cockpit.htc_park_top;


-- ywym_ywtg	t_ywym_ywtg_htc_tcgl_zb	tcgl_zb	四方_好停车_停车概览_指标	
-- t_ywym_ywtg_htc_tcgl_zb	好停车_停车概览_指标	collect_ywym_ywtg_htc_tcgl_zb	
-- htc_park_generalize	adm_htc_park_generalize	停车概览表	/parkGeneralize	htc_park_generalize

UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT online_parking_rate FROM shenyang_cockpit.htc_park_generalize) where zbx = '实时停车指数';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT yesterday_berth_rate FROM shenyang_cockpit.htc_park_generalize) where zbx = '昨日泊位指数';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT yesterday_park_avg_time FROM shenyang_cockpit.htc_park_generalize) where zbx = '昨日平均停车时长';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT not_perceive_park_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '无感支付停车场数量';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT now_access_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '今日客户端累计访问量';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT yesterday_stop_penalty_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '昨日违停处罚数量';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT city_car_handle_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '中心城区小汽车普查数量';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT city_berth_handle_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '中心城区泊位普查数量';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT operate_park_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '经营性停车场数量';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT operate_berth_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '经营性停车场泊位数量';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT in_operate_park_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '已接入经营性停车场数量';
UPDATE t_ywym_ywtg_htc_tcgl_zb t SET t.value =(SELECT in_operate_berth_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '已接入经营性停车场泊位数量';

-- ywym_ywtg	t_ywym_ywtg_htc_tczs_qs	tczs_qs	四方_好停车_停车指数_趋势	
-- t_ywym_ywtg_htc_tczs_qs	好停车_停车指数_趋势	collect_ywym_ywtg_htc_tczs_qs	
-- htc_park_rate	adm_htc_park_rate	停车指数小时统计表	/parkRate	htc_park_rate

truncate table t_ywym_ywtg_htc_tczs_qs;
Insert into t_ywym_ywtg_htc_tczs_qs(
    id,  --  主键
    create_time,  --  创建时间
    update_time,  --  更新时间
    px,  --  排序
    dd,  --  地点
    qy,  --  区域
    dqtczs,  --  当前停车指数
    tczs,  --  停车指数
    rq,  --  日期
    sj  --  时间
) select 
    id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px, -- 
    type as dd,  --  地点
    region_name as qy,  --  区域
    park_rate as dqtczs,  --  当前停车指数
    park_rate as tczs,  --  停车指数
    date_time as rq,  --  日期
    hour as sj  --  时间
from shenyang_cockpit.htc_park_rate order by id;

-- ywym_ywtg	t_ywym_ywtg_htc_wgzftcc_tips	wgzftcc_tips	四方_好停车_无感支付停车场_TIPS	
-- t_ywym_ywtg_htc_wgzftcc_tips	好停车_无感支付停车场_TIPS	collect_ywym_ywtg_htc_wgzftcc_tips	
-- select * from t_ywym_ywtg_htc_wgzftcc_tips a;
-- select * from shenyang_cockpit.htc_park_infomap;
truncate table t_ywym_ywtg_htc_wgzftcc_tips;
Insert into t_ywym_ywtg_htc_wgzftcc_tips(
     id,
     create_time,
     update_time,
     px,
     type,
     tccmc,
     bwsl,
     zs,
     zccls,
     url,
     lon,
     lat
) select
	id as id,
    create_time as create_time,
    create_time as update_time,
    id as px, 
    district as type,
    park_name as tccmc,
    berth_num as bwsl,
    park_rate as zs,
    in_park_num as zccls,
    '' as url,
    lon as lon,
    lat as lat
from shenyang_cockpit.htc_park_infomap a;

-- ywym_ywtg	t_ywym_ywtg_htc_wgzftcc_zb	wgzftcc_zb	四方_好停车_无感支付停车场_指标	
-- t_ywym_ywtg_htc_wgzftcc_zb	好停车_无感支付停车场_指标	collect_ywym_ywtg_htc_wgzftcc_zb	
-- htc_park_etc_paylatter	adm_htc_park_etc_paylatter	无感支付停车场统计表	/parkEtcPaylatter	htc_park_etc_paylatter

UPDATE t_ywym_ywtg_htc_wgzftcc_zb t SET t.value =(SELECT etc_parking_num FROM shenyang_cockpit.htc_park_etc_paylatter) where zbx = '开通ETC停车场' and type = '开通ETC停车场';
UPDATE t_ywym_ywtg_htc_wgzftcc_zb t SET t.value =(SELECT etc_berth_num FROM shenyang_cockpit.htc_park_etc_paylatter) where zbx = '总泊位数' and type = '开通ETC停车场';
UPDATE t_ywym_ywtg_htc_wgzftcc_zb t SET t.value =(SELECT day_parking_pay_num FROM shenyang_cockpit.htc_park_etc_paylatter) where zbx = '本月订单' and type = '开通ETC停车场';
UPDATE t_ywym_ywtg_htc_wgzftcc_zb t SET t.value =(SELECT paylater_paring_num FROM shenyang_cockpit.htc_park_etc_paylatter) where zbx = '开通先离场后付费停车场' and type = '开通先离场后付费停车场';
UPDATE t_ywym_ywtg_htc_wgzftcc_zb t SET t.value =(SELECT paylater_berth_num FROM shenyang_cockpit.htc_park_etc_paylatter) where zbx = '总泊位数' and type = '开通先离场后付费停车场';
UPDATE t_ywym_ywtg_htc_wgzftcc_zb t SET t.value =(SELECT day_paylater_pay_num FROM shenyang_cockpit.htc_park_etc_paylatter) where zbx = '本月订单' and type = '开通先离场后付费停车场';

-- ywym_ywtg	t_ywym_ywtg_htc_yhqqk_zb	yhqqk_zb	
-- 四方_好停车_优惠券情况_指标	t_ywym_ywtg_htc_yhqqk_zb	好停车_优惠券情况_指标	
-- collect_ywym_ywtg_htc_yhqqk_zb	htc_park_coupon	adm_htc_park_coupon	优惠劵情况表	/parkCoupon	htc_park_coupon

UPDATE t_ywym_ywtg_htc_yhqqk_zb t SET t.value =(SELECT e_coupons_pay FROM shenyang_cockpit.htc_park_coupon) where zbx = '电子优惠券发放金额';
UPDATE t_ywym_ywtg_htc_yhqqk_zb t SET t.value =(SELECT e_coupons_use FROM shenyang_cockpit.htc_park_coupon) where zbx = '电子优惠券使用金额';
UPDATE t_ywym_ywtg_htc_yhqqk_zb t SET t.value =(SELECT e_coupons_2use FROM shenyang_cockpit.htc_park_coupon) where zbx = '2元';
UPDATE t_ywym_ywtg_htc_yhqqk_zb t SET t.value =(SELECT e_coupons_5use FROM shenyang_cockpit.htc_park_coupon) where zbx = '5元';
UPDATE t_ywym_ywtg_htc_yhqqk_zb t SET t.value =(SELECT e_coupons_10use FROM shenyang_cockpit.htc_park_coupon) where zbx = '10元';
UPDATE t_ywym_ywtg_htc_yhqqk_zb t SET t.value =(SELECT e_coupons_20use FROM shenyang_cockpit.htc_park_coupon) where zbx = '20元';

-- ywym_ywtg	t_ywym_ywtg_htc_ym_zb	ym_zb	四方_好停车_页面_指标	
-- t_ywym_ywtg_htc_ym_zb	好停车_页面_指标	collect_ywym_ywtg_htc_ym_zb	htc_park_infomap	
-- adm_htc_park_infomap	停车饱和信息地图表	/parkInfoMap	htc_park_infomap
 
UPDATE t_ywym_ywtg_htc_ym_zb t SET t.value =(SELECT round(city_car_handle_num/10000,2) as city_car_handle_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '中心城区小汽车普查数量';
UPDATE t_ywym_ywtg_htc_ym_zb t SET t.value =(SELECT round(city_berth_handle_num/10000,2) as city_berth_handle_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '中心城区泊位普查数量';
UPDATE t_ywym_ywtg_htc_ym_zb t SET t.value =(SELECT operate_park_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '经营性停车场数量';
UPDATE t_ywym_ywtg_htc_ym_zb t SET t.value =(SELECT round(operate_berth_num/10000,2) as operate_berth_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '经营性停车场泊位数量';
UPDATE t_ywym_ywtg_htc_ym_zb t SET t.value =(SELECT in_operate_park_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '已接入经营性停车场数量';
UPDATE t_ywym_ywtg_htc_ym_zb t SET t.value =(SELECT round(in_operate_berth_num/10000,2) as in_operate_berth_num FROM shenyang_cockpit.htc_park_generalize) where zbx = '已接入经营性停车场泊位数量';


-- ywym_ywtg	t_ywym_ywtg_htc_zdqysstczs_lb	zdqysstczs_lb	
-- 四方_好停车_重点区域实时停车指数_列表	t_ywym_ywtg_htc_zdqysstczs_lb	
-- 好停车_重点区域实时停车指数_列表	collect_ywym_ywtg_htc_zdqysstczs_lb	htc_park_key_area	
-- adm_htc_park_key_area	重点区域实时交通指数表	/parkKeyArea	htc_park_key_area

truncate table t_ywym_ywtg_htc_zdqysstczs_lb;
Insert into t_ywym_ywtg_htc_zdqysstczs_lb(
        id,
        create_time,
        update_time,
        px,
        szcq,
        bwzs,
        sybw,
        tczs
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px, -- 
    city_area as szcq,
    berth_num as bwzs,
    last_berth as sybw,
    park_rate as tczs
from shenyang_cockpit.htc_park_key_area;

-- ywym_ywtg	t_ywym_ywtg_htc_zfglqk_zzt	zfglqk_zzt	四方_好停车_执法管理情况_柱状图	
-- t_ywym_ywtg_htc_zfglqk_zzt	好停车_执法管理情况_柱状图	collect_ywym_ywtg_htc_zfglqk_zzt	
-- htc_park_time_rate_law	adm_htc_park_time_rate_law	停车区域分类时长指数与执法管理情况表	/parkTimeRateLaw	htc_park_time_rate_law

truncate table t_ywym_ywtg_htc_zfglqk_zzt;
Insert into t_ywym_ywtg_htc_zfglqk_zzt(
    id,
    create_time,
    update_time,
    px,
    qy,
    cflx,
    ygl,
    fygl,
    rq
) select 
    id as id,
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px,
    region_name as qy,
    park_type as cflx,
    max(case when type = '严管路' then num end) as ygl,
    max(case when type = '非严管路' then num end) as fygl,
    date_time as rq
from shenyang_cockpit.htc_park_time_rate_law 
where type in ('严管路','非严管路') 
group by  
region_name,park_type
order by date_time;

-- ywym_ywtg	t_ywym_ywtg_htc_zhcgjdcltfmk_tp	zhcgjdcltfmk_tp	
-- 四方_好停车_智慧城管机动车乱停放模块_图片	t_ywym_ywtg_htc_zhcgjdcltfmk_tp	
-- 好停车_智慧城管机动车乱停放模块_图片	collect_ywym_ywtg_htc_zhcgjdcltfmk_tp	

-- ywym_ywtg	t_ywym_ywtg_htc_zhcgjdcltfmk_zb	zhcgjdcltfmk_zb	
-- 四方_好停车_智慧城管机动车乱停放模块_指标	t_ywym_ywtg_htc_zhcgjdcltfmk_zb	好停车_智慧城管机动车乱停放模块_指标	
-- collect_ywym_ywtg_htc_zhcgjdcltfmk_zb	htc_park_urban_management	adm_htc_park_urban_management	
-- 智慧城管统计表	/parkUrbanManagement	htc_park_urban_management

UPDATE t_ywym_ywtg_htc_zhcgjdcltfmk_zb t SET t.value =(SELECT day_todo_handle_num FROM shenyang_cockpit.htc_park_urban_management) where zbx = '待处置';
UPDATE t_ywym_ywtg_htc_zhcgjdcltfmk_zb t SET t.value =(SELECT day_handleing_num FROM shenyang_cockpit.htc_park_urban_management) where zbx = '处置中';
UPDATE t_ywym_ywtg_htc_zhcgjdcltfmk_zb t SET t.value =(SELECT day_handled_num FROM shenyang_cockpit.htc_park_urban_management) where zbx = '已处置';
UPDATE t_ywym_ywtg_htc_zhcgjdcltfmk_zb t SET t.value =(SELECT month_handle_num FROM shenyang_cockpit.htc_park_urban_management) where zbx = '累计处置';