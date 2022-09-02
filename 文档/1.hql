/**
*
*	城市运行问题表
* 
**/

drop table if exists ods_hcg_cgdbstat_to_stat_info ;
CREATE TABLE IF NOT EXISTS ods_hcg_cgdbstat_to_stat_info(
task_num STRING COMMENT '',
create_time TIMESTAMP COMMENT '',
address STRING COMMENT '',
event_desc STRING COMMENT '',
event_src_id int COMMENT '城市运行问题来源分析',
event_src_name STRING COMMENT '',
rec_type_id int COMMENT '',
rec_type_name STRING COMMENT '',
event_type_id int COMMENT '',
event_type_name STRING COMMENT '',
main_type_id int COMMENT '',
main_type_name STRING COMMENT '',
sub_type_id int COMMENT '',
sub_type_name STRING COMMENT '问题类型高发top5问题数量',
event_type_code STRING COMMENT '',
part_code STRING COMMENT '',
district_id int COMMENT '',
district_name STRING COMMENT '问题区域高发top5问题数量',
street_id int COMMENT '',
street_name STRING COMMENT '',
community_id int COMMENT '',
community_name STRING COMMENT '',
cell_id int COMMENT '',
cell_name STRING COMMENT '',
duty_grid_id int COMMENT '',
duty_grid_name STRING COMMENT '',
duty_grid_code STRING COMMENT '',
road_id int COMMENT '',
road_name STRING COMMENT '',
road_type_id int COMMENT '',
road_type_name STRING COMMENT '',
coordinate_x double COMMENT '',
coordinate_y double COMMENT '',
act_property_id int COMMENT '',
event_state_id int COMMENT '',
event_state_name STRING COMMENT '',
event_grade_id int COMMENT '',
event_grade_name STRING COMMENT '',
event_level_id int COMMENT '',
event_level_name STRING COMMENT '',
report_num int COMMENT '',
valid_report_num int COMMENT '',
patrol_report_num int COMMENT '',
valid_patrol_report_num int COMMENT '',
public_report_num int COMMENT '',
valid_public_report_num int COMMENT '',
report_patrol_id int COMMENT '',
report_patrol_name STRING COMMENT '',
operate_time TIMESTAMP COMMENT '',
operate_role_id int COMMENT '',
operate_human_id int COMMENT '',
operate_human_name STRING COMMENT '',
not_operate_num int COMMENT '',
to_operate_num int COMMENT '',
operate_num int COMMENT '',
intime_operate_num int COMMENT '',
need_send_verify_num int COMMENT '',
send_verify_time TIMESTAMP COMMENT '',
send_verify_human_id int COMMENT '',
send_verify_human_name STRING COMMENT '',
send_verify_human_role_id int COMMENT '',
send_verify_num int COMMENT '',
intime_send_verify_num int COMMENT '',
need_verify_num int COMMENT '',
verify_time TIMESTAMP COMMENT '',
verify_patrol_id int COMMENT '',
verify_patrol_name STRING COMMENT '',
verify_num int COMMENT '',
intime_verify_num int COMMENT '',
inst_time TIMESTAMP COMMENT '',
inst_human_id int COMMENT '',
inst_human_name STRING COMMENT '',
inst_role_id int COMMENT '',
not_inst_num int COMMENT '',
to_inst_num int COMMENT '',
inst_num int COMMENT '',
intime_inst_num int COMMENT '',
need_dispatch_num int COMMENT '',
dispatch_time TIMESTAMP COMMENT '',
dispatch_human_id int COMMENT '',
dispatch_human_name STRING COMMENT '',
dispatch_role_id int COMMENT '',
to_dispatch_num int COMMENT '待派遣数',
dispatch_num int COMMENT '',
intime_dispatch_num int COMMENT '',
overtime_dispatch_times float COMMENT '',
need_second_dispatch_num int COMMENT '',
second_dispatch_time TIMESTAMP COMMENT '',
second_dispatch_human_id int COMMENT '',
second_dispatch_human_name STRING COMMENT '',
second_dispatch_role_id int COMMENT '',
second_dispatch_num int COMMENT '',
intime_second_dispatch_num int COMMENT '',
need_dispose_num int COMMENT '',
dispose_region_id int COMMENT '',
dispose_region_name STRING COMMENT '',
dispose_unit_id int COMMENT '',
dispose_unit_name STRING COMMENT '处置部门',
dispose_act_def_id int COMMENT '',
first_unit_id int COMMENT '',
first_unit_name STRING COMMENT '',
second_unit_id int COMMENT '',
second_unit_name STRING COMMENT '',
third_unit_id int COMMENT '',
thrid_unit_name STRING COMMENT '',
dispose_begin_time TIMESTAMP COMMENT '',
dispose_end_time TIMESTAMP COMMENT '',
dispose_deadline TIMESTAMP COMMENT '',
bundle_dispose_deadline TIMESTAMP COMMENT '',
dispose_num int COMMENT '',
intime_dispose_num int COMMENT '按时处置数',
overtime_dispose_num int COMMENT '超时处置数',
to_dispose_num int COMMENT '待处置数',
intime_to_dispose_num int COMMENT '',
overtime_to_dispose_num int COMMENT '',
dispose_used float COMMENT '',
dispose_limit float COMMENT '',
dispose_limit_str STRING COMMENT '',
bundle_dispose_used float COMMENT '',
bundle_dispose_limit float COMMENT '',
dispose_overtime_times float COMMENT '',
bundle_dispose_overtime_times float COMMENT '',
dispose_opinion STRING COMMENT '',
postpone_num int COMMENT '',
rework_num int COMMENT '返工案件数',
multi_rework_num int COMMENT '',
district_rework_num int COMMENT '',
multi_district_rework_num int COMMENT '',
shuffle_num int COMMENT '',
multi_overtime_back_num int COMMENT '',
hang_num int COMMENT '',
his_hang_num int COMMENT '',
need_archive_num int COMMENT '',
to_archive_num int COMMENT '',
archive_num int COMMENT '结案数',
archive_time TIMESTAMP COMMENT '',
overtime_archive_num int COMMENT '',
intime_archive_num int COMMENT '',
overtime_to_archive_num int COMMENT '',
intime_to_archive_num int COMMENT '',
need_supervise_num int COMMENT '',
supervise_time TIMESTAMP COMMENT '',
supervise_human_id int COMMENT '',
supervise_human_name STRING COMMENT '',
supervise_role_id int COMMENT '',
to_supervise_num int COMMENT '',
supervise_num int COMMENT '',
intime_supervise_num int COMMENT '',
need_send_check_num int COMMENT '',
send_check_time TIMESTAMP COMMENT '',
send_check_human_id int COMMENT '',
send_check_human_name STRING COMMENT '',
send_check_human_role_id int COMMENT '',
send_check_num int COMMENT '',
intime_send_check_num int COMMENT '',
need_check_num int COMMENT '',
check_time TIMESTAMP COMMENT '',
check_patrol_id int COMMENT '',
check_patrol_name STRING COMMENT '',
check_num int COMMENT '',
intime_check_num int COMMENT '',
check_trans_time TIMESTAMP COMMENT '',
check_trans_human_id int COMMENT '',
check_trans_human_name STRING COMMENT '',
check_trans_role_id int COMMENT '',
check_trans_num int COMMENT '',
need_human_archive_num int COMMENT '',
human_archive_time TIMESTAMP COMMENT '',
archive_human_id int COMMENT '',
archive_human_name STRING COMMENT '',
archive_role_id int COMMENT '',
human_archive_num int COMMENT '',
intime_human_archive_num int COMMENT '',
cancel_num int COMMENT '',
cancel_opinion STRING COMMENT '',
cancel_time TIMESTAMP COMMENT '',
biz_id int COMMENT '',
biz_name STRING COMMENT '',
display_style_id int COMMENT '',
period_type int COMMENT '',
stat_flag int COMMENT '',
new_inst_cond_id int COMMENT '',
new_inst_cond_name STRING COMMENT '',
archive_cond_id int COMMENT '',
archive_cond_name STRING COMMENT '',
rec_disp_num STRING COMMENT '',
classic_flag int COMMENT '',
last_update_time TIMESTAMP COMMENT '',
third_type_id int COMMENT '',
third_type_name STRING COMMENT '',
max_event_type_id int COMMENT '',
max_event_type_name STRING COMMENT '',
media_url STRING COMMENT '',
patrol_deal_flag int COMMENT '',
patrol_deal_report_numtiny int COMMENT '',
patrol_deal_archive_numtiny int COMMENT '',
patrol_deal_cancel_numtiny int COMMENT '',
district_to_citytiny int COMMENT '',
to_check_num int COMMENT '待核查数',
event_property_id int COMMENT '',
event_property_name STRING COMMENT '',
duty_region_id int COMMENT '',
duty_region_name STRING COMMENT '',
city_to_district_time TIMESTAMP COMMENT '',
register_human_name STRING COMMENT '',
register_human_id int COMMENT '',
register_report_num int COMMENT '',
cancel_human_id int COMMENT '',
cancel_human_name STRING COMMENT '',
dispatch_not_need_archive_num int COMMENT '',
dispose_not_need_check_num int COMMENT '',
difficult_num int COMMENT '',
difficult_type_id int COMMENT '',
difficult_type_name STRING COMMENT '',
is_city_flag int COMMENT '',
report_patrol_desc STRING COMMENT '',
duty_grid_area_type_id int COMMENT '',
duty_grid_area_type_name STRING COMMENT '',
key_po int_id int COMMENT '',
key_po int_name STRING COMMENT '',
back_num int COMMENT '',
cur_act_def_id int COMMENT '',
cur_act_def_name STRING COMMENT '',
road_stat_name STRING COMMENT '',
multi_dispatch_num int COMMENT '',
multi_rollback_num int COMMENT '',
check_begin_time TIMESTAMP COMMENT '',
first_send_check_time TIMESTAMP COMMENT '',
last_check_time TIMESTAMP COMMENT '',
archive_type_name STRING COMMENT '',
archive_opinion STRING COMMENT '',
urgent_flag STRING COMMENT '',
check_msg_state_id STRING COMMENT '',
to_verify_num int COMMENT '',
overtime_inst_num int COMMENT '',
create_time_hours STRING COMMENT '',
create_time_day STRING COMMENT '',
create_time_month STRING COMMENT '',
archive_time_hours STRING COMMENT '',
reporter_id int COMMENT '',
reporter_name STRING COMMENT '',
contact STRING COMMENT '',
accur_dispatch_num int COMMENT '',
wrong_dispatch_num int COMMENT '',
pass_dispose_unit STRING COMMENT '',
last_action_time TIMESTAMP COMMENT '案件最新活动时间',
public_flag int COMMENT '案件公开标识',
refuse_back_num int COMMENT '拒绝回退数',
refuse_postpone_num int COMMENT '拒绝延期数',
id_card_no STRING COMMENT '',
common_rec_type_flag int COMMENT '',
common_rec_attr_flag int COMMENT '',
dispose_human_id int COMMENT '',
dispose_human_name STRING COMMENT '',
to_human_archive_num int COMMENT '',
shop_name STRING COMMENT '门前三包责任主体',
duty_district_id int COMMENT '责属区域标识',
duty_district_name STRING COMMENT '责属区域名称',
duty_street_id int COMMENT '责属街道标识',
duty_street_name STRING COMMENT '责属街道名称',
duty_community_id int COMMENT '责属社区标识',
duty_community_name STRING COMMENT '责属社区名称',
dispose_region_type int COMMENT '',
multi_check_not_pass_num int COMMENT '',
gather_weight float COMMENT '',
dispose_weight float COMMENT '',
classic_type STRING COMMENT '典型类型',
classic_reason STRING COMMENT '典型理由',
classic_human STRING COMMENT '典型上报人姓名',
forbid_reporter_info_flag int COMMENT '是否保密标识',
dispose_timeliness STRING COMMENT '处置时效(超期结案/按期结案/超期未结案/延期结案)',
report_picture_num int COMMENT '上报图片数量',
dispose_picture_num int COMMENT '处置图片数量',
vehicle_area STRING COMMENT '车辆所属区域',
vehicle_company STRING COMMENT '车辆所属公司',
other_task_num STRING COMMENT '其他系统任务号',
report_district_name STRING COMMENT '上报区域',
revisit_flag STRING COMMENT '是否需回访（是/否）',
apply_not_revisit STRING COMMENT '申请不回访（是/否）',
satisfy_type STRING COMMENT '满意度(满意/一般/不满意)',
revisit_content STRING COMMENT '回访内容',
not_operate_reason STRING COMMENT '不受理理由',
change_type_flag int COMMENT '是否更改大小类',
unsatisfy_reason STRING COMMENT '不满意理由',
from_mobile int COMMENT '',
operate_direct_archive_num int COMMENT '直接办结数',
special_postpone_num int COMMENT '特殊延期数',
archive_type_id int COMMENT '结案类型标识',
important_rec_audit_state_name STRING COMMENT '重点案件审核状态（株洲用）',
is_important_rec int COMMENT '是否重点案件（株洲用）',
repeated_inst_num int COMMENT '重复立案数',
repeated_rec_id int COMMENT '重复案件号',
repeated_task_num STRING COMMENT '重复任务号',
dispose_role_id int COMMENT '处置岗位标识',
dispose_role_name STRING COMMENT '处置岗位',
point float COMMENT '',
supervise_dispose_num int COMMENT '督办数',
sup_reply_num int COMMENT '答复督办数',
intime_sup_reply_num int COMMENT '按时答复督办数',
overtime_sup_reply_num int COMMENT '超时答复督办数',
satisfy_score  DECIMAL(5,2) COMMENT '满意度评分',
super_rec_id big int COMMENT '关联案件标识',
multi_postpone_num int COMMENT '延期次数',
multi_hang_num int COMMENT '挂账次数',
jx_id int COMMENT '街巷ID',
jx_jxmc STRING COMMENT '街巷名称',
whistle_flag int COMMENT '吹哨标识',
db_time TIMESTAMP COMMENT '督办时间',
db_human_id int COMMENT '督办人员标识',
db_human_name STRING COMMENT '督办人员姓名',
additional_point  float COMMENT '附加分值',
call_time TIMESTAMP COMMENT '来电时间',
first_index_id int COMMENT '一级指标标识',
first_index_name STRING COMMENT '一级指标名称',
second_index_id int COMMENT '二级指标标识',
second_index_name STRING COMMENT '二级指标名称',
party_member_flag int COMMENT '是否党员标识',
road_section_id int COMMENT '路段标识',
road_section_name STRING COMMENT '路段名称',
road_belong_district_name STRING COMMENT '',
device_guid STRING COMMENT '',
rec_id bigint COMMENT ')
COMMENT '城市运行问题表'
partitioned by (ds string)
STORED AS ORC

