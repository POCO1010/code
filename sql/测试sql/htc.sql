-- t_ywym_ywtg_hyw_jrjqdryy_qs	好游玩_接入景区当日预约_趋势	hyw_scenic_tourists	景区游客走势表

truncate table t_ywym_ywtg_hyw_jrjqdryy_qs;
Insert into t_ywym_ywtg_hyw_jrjqdryy_qs(
    id,  --  主键
    create_time,  --  创建时间
    update_time,  --  更新时间
    px,  --  排序
    sj,  --  时间
    rc  --  人次
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px, -- 
    date_time as sj, -- 业态
    num as rc, -- 区/县
from shenyang_cockpit.hyw_scenic_tourists where type = '接入景区历史预约人次' and date_type = '当日预约' order by id;

-- t_ywym_ywtg_hyw_jrjqlsyyzs_zzt	好游玩_接入景区历史预约走势_柱状图	hyw_scenic_tourists	景区游客走势表

truncate table t_ywym_ywtg_hyw_jrjqlsyyzs_zzt;
Insert into t_ywym_ywtg_hyw_jrjqlsyyzs_zzt(
    id,  --  主键
    create_time,  --  创建时间
    update_time,  --  更新时间
    px,  --  排序
    sj,  --  时间
    rc,  --  人次
    sjfl
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px,
    date_time as sj, 
    num as rc,
    date_type as sjfl
from shenyang_cockpit.hyw_scenic_tourists where type = '接入景区历史预约人次' order by id;

-- t_ywym_ywtg_hyw_jrjqykzs_qs	好游玩_接入景区游客走势_趋势	hyw_scenic_tourists	景区游客走势表

truncate table t_ywym_ywtg_hyw_jrjqlsyyzs_zzt;
Insert into t_ywym_ywtg_hyw_jrjqlsyyzs_zzt(
    id,  --  主键
    create_time,  --  创建时间
    update_time,  --  更新时间
    px,  --  排序
    sj,  --  时间
    rc,  --  人次
    sjfl
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    id as px,
    date_time as sj, 
    num as rc,
    date_type as sjfl
from shenyang_cockpit.hyw_scenic_tourists where type = '接入景区游客' order by id;

-- t_ywym_ywtg_hyw_qcrmjdtop5_zb	好游玩_全城热门酒店Top5_指标	hyw_hot_top	宾客满意度酒店TOP5

truncate table t_ywym_ywtg_hyw_qcrmjdtop5_zb;
Insert into t_ywym_ywtg_hyw_qcrmjdtop5_zb(
    id,  --  主键
    create_time,  --  创建时间
    update_time,  --  更新时间
    px,  --  排序
    zbx
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
    hot_num as px,
    hot_name as zbx
from shenyang_cockpit.hyw_hot_top where hot_type = '全域热门酒店TOP5' order by id;

-- t_ywym_ywtg_hyw_rzbltjfx_zb	好游玩_入住办理统计分析_指标	hyw_check_stat	入住办理统计分析表

UPDATE t_ywym_ywtg_hyw_rzbltjfx_zb t SET t.value =(SELECT idcard_num FROM shenyang_cockpit.hyw_check_stat) where zbx = '身份证核验次数';
UPDATE t_ywym_ywtg_hyw_rzbltjfx_zb t SET t.value =(SELECT itinerary_code_num FROM shenyang_cockpit.hyw_check_stat) where zbx = '行程码核验次数';
UPDATE t_ywym_ywtg_hyw_rzbltjfx_zb t SET t.value =(SELECT health_code_num FROM shenyang_cockpit.hyw_check_stat) where zbx = '健康码核验次数';

-- t_ywym_ywtg_hyw_smzfsyy_zb	好游玩_实名制分时预约_指标	hyw_rname_order	实名制分时预约表

truncate table t_ywym_ywtg_hyw_smzfsyy_zb;
Insert into t_ywym_ywtg_hyw_smzfsyy_zb(
    id,  --  主键
    create_time,  --  创建时间
    update_time,  --  更新时间
    px,  --  排序
    zbx,
    `value`,
    sjlx
) select 
 id as id, -- 
    create_time as create_time, -- 创建时间
    create_time as update_time, -- 创建时间
     as px,
    '购票预约游玩人数' as zbx,
    idcard_num as `value`,
    date_type as sjlx
from shenyang_cockpit.hyw_rname_order where  order by id;





SELECT
DISTINCT(b.category_id)
,a.goods_sid
FROM pdata.t02_pcm_chan_sale_h a
JOIN recommendation.goods_avaialbe_for_sale_channel b
ON a.goods_sid = b.sid
WHERE b.category_id IS NOT NULL or b.category_id <> 'NULL' or b.category_id <> ''