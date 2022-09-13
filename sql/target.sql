DROP TABLE IF EXISTS `basic_virtue`;
CREATE TABLE `basic_virtue`(
id int(4) primary key not null auto_increment COMMENT 'ID',
group_id varchar(255) COMMENT'群组ID',
group_name varchar(255) COMMENT'群组名称',
target_id varchar(255) COMMENT'目标ID',
target_level varchar(255) COMMENT'目标等级',
nation varchar(255) COMMENT'国籍',
nation_name varchar(255) COMMENT'本国名',
zh_name varchar(255) COMMENT'中文名',
en_name varchar(255) COMMENT'英文名',
used_name varchar(255) COMMENT'曾用名',
nick_name varchar(255) COMMENT'昵称',
gender varchar(255) COMMENT'性别',
birthday varchar(255) COMMENT'出生日期',
age varchar(255) COMMENT'年龄',
photo varchar(255) COMMENT'照片',
marital_status varchar(255) COMMENT'家庭婚姻状况',
home_address varchar(255) COMMENT'家庭住址',
office_phone_number varchar(255) COMMENT'办公电话号码',
home_phone_number varchar(255) COMMENT'住宅电话号码',
fax_number varchar(255) COMMENT'传真号码',
home_broadband_number varchar(255) COMMENT'家庭宽带号码',
home_broadband_name varchar(255) COMMENT'宽带用户名'
) COMMENT = '基本属性表';


DROP TABLE IF EXISTS `family_info`;
CREATE TABLE `family_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
home_member_relation varchar(255) COMMENT'家庭关系',
home_member_id varchar(255) COMMENT'家庭成员ID',
home_member_name varchar(255) COMMENT'家庭成员名字'
) COMMENT = '家庭表';


DROP TABLE IF EXISTS `work_info`;
CREATE TABLE `work_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
employer varchar(255) COMMENT'任职机构',
office varchar(255) COMMENT'所在处室',
department varchar(255) COMMENT'本土隶属部门',
job_title varchar(255) COMMENT'职务',
work_station varchar(255) COMMENT'工作驻地',
work_address varchar(255) COMMENT'办公地址',
`resume` varchar(255) COMMENT'个人履历'
) COMMENT = '工作表';


DROP TABLE IF EXISTS `other_info`;
CREATE TABLE `other_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
involve_mission varchar(255) COMMENT'涉及任务',
involve_direction_or_nation varchar(255) COMMENT'涉及方向/国家'
) COMMENT = '其他表';


DROP TABLE IF EXISTS `phone_info`;
CREATE TABLE `phone_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
phone_type varchar(255) COMMENT'手机品牌型号',
phone_num varchar(255) COMMENT'手机号码',
IMSI varchar(255) COMMENT'IMSI',
IMEI varchar(255) COMMENT'IMEI',
phone_nation_name varchar(255) COMMENT'手机所属国家名称',
phone_nation_id varchar(255) COMMENT'手机所属国家代码'
) COMMENT = '手机表';


DROP TABLE IF EXISTS `email_info`;
CREATE TABLE `email_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
email_type varchar(255) COMMENT'电子邮箱类型',
email_address varchar(255) COMMENT'电子邮箱地址',
email_use varchar(255) COMMENT'电子邮箱用途',
email_domain varchar(255) COMMENT'电子邮箱域名',
email_domain_type varchar(255) COMMENT'电子邮箱域名性质',
nick_name varchar(255) COMMENT'电子邮箱昵称'
) COMMENT = '邮箱表';


DROP TABLE IF EXISTS `social_app_info`;
CREATE TABLE `social_app_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
social_app_name varchar(255) COMMENT'社交应用名称',
login_account varchar(255) COMMENT'登录账号',
login_nick_name varchar(255) COMMENT'登录昵称'
) COMMENT = '社交媒体表';


DROP TABLE IF EXISTS `often_messagepeople_info`;
CREATE TABLE `often_messagepeople_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
message_means varchar(255) COMMENT'通信手段',
often_messagepeople_name varchar(255) COMMENT'常通联对象姓名',
often_messagepeople_employer varchar(255) COMMENT'常通联对象任职机构',
often_messagepeople_job_title varchar(255) COMMENT'常通联对象职务'
) COMMENT = '常通联对象';


DROP TABLE IF EXISTS `often_people_info`;
CREATE TABLE `often_people_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
often_people_name varchar(255) COMMENT'常同行人姓名',
often_people_job_title varchar(255) COMMENT'常同行人职务'
) COMMENT = '常同行人';


DROP TABLE IF EXISTS `often_visit_info`;
CREATE TABLE `often_visit_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
often_visit_addresses varchar(255) COMMENT'常访问地地址',
often_visit_lon varchar(255) COMMENT'常访问地经度',
often_visit_lat varchar(255) COMMENT'常访问地纬度'
) COMMENT = '常访问地';


DROP TABLE IF EXISTS `often_app_info`;
CREATE TABLE `often_app_info`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
often_app_type varchar(255) COMMENT'常网络应用类型（设备、网站、APP）',
often_app_name varchar(255) COMMENT'常网络应用'
) COMMENT = '常网络应用';


DROP TABLE IF EXISTS `contact_behavior`;
CREATE TABLE `contact_behavior`(
id int(4) primary key not null auto_increment COMMENT 'ID',
contact_time varchar(255) COMMENT'通讯时间',
contact_type varchar(255) COMMENT'通讯平台',
caller_num varchar(255) COMMENT'通讯账户_本端',
caller_target_id varchar(255) COMMENT'本端_目标ID',
called_num varchar(255) COMMENT'通讯账户_对端',
called_target_id varchar(255) COMMENT'对端_目标ID',
called_job_title varchar(255) COMMENT'通讯对象职务',
called_name varchar(255) COMMENT'通讯对象姓名',
contact_info varchar(255) COMMENT'通讯内容'
) COMMENT = '通讯行为表';


DROP TABLE IF EXISTS `contact_wordcloud`;
CREATE TABLE `contact_wordcloud`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
social_app_name varchar(255) COMMENT'社交媒体名称',
social_app_rank varchar(255) COMMENT'社交媒体排名'
) COMMENT = '通讯行为词云';


DROP TABLE IF EXISTS `travel_behavior`;
CREATE TABLE `travel_behavior`(
id int(4) primary key not null auto_increment COMMENT 'ID',
travel_time varchar(255) COMMENT'出行时间',
target_id varchar(255) COMMENT'目标ID',
travel_addresses varchar(255) COMMENT'到达地点',
travel_lon varchar(255) COMMENT'到达经度',
travel_lat varchar(255) COMMENT'到达纬度',
if_sensitive varchar(255) COMMENT'涉及敏感区域'
) COMMENT = '出行行为表';


DROP TABLE IF EXISTS `online_behavior`;
CREATE TABLE `online_behavior`(
id int(4) primary key not null auto_increment COMMENT 'ID',
online_time varchar(255) COMMENT'上网开始时间',
target_id varchar(255) COMMENT'目标ID',
online_addresses varchar(255) COMMENT'访问网站/应用',
online_type varchar(255) COMMENT'操作方式'
) COMMENT = '网络行为表';


DROP TABLE IF EXISTS `overview`;
CREATE TABLE `overview`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT'目标ID',
target_name varchar(255) COMMENT'人员姓名',
target_level varchar(255) COMMENT'目标等级',
contact_time varchar(255) COMMENT'通讯时间',
contact_type varchar(255) COMMENT'通讯平台',
caller_num varchar(255) COMMENT'通讯账户_本端',
called_num varchar(255) COMMENT'通讯账户_对端',
called_target_id varchar(255) COMMENT'对端_目标ID',
called_name varchar(255) COMMENT'通讯对象姓名',
called_job_title varchar(255) COMMENT'通讯对象职务',
contact_info varchar(255) COMMENT'通讯内容',
travel_info varchar(255) COMMENT'出行行为动态',
online_info varchar(255) COMMENT'网络行为动态'
) COMMENT = '总览表';


DROP TABLE IF EXISTS `key_target_behavior`;
CREATE TABLE `key_target_behavior`(
id int(4) primary key not null auto_increment COMMENT 'ID',
target_id varchar(255) COMMENT '目标ID',
action_type varchar(255) COMMENT '行为类型',
action_num int(20) COMMENT '频次'
) COMMENT = '重点目标物理域行为';