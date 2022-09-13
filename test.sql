create table basic_virtue
(
    id                    int auto_increment comment 'ID'
        primary key,
    group_id              varchar(255) null comment '群组ID',
    group_name            varchar(255) null comment '群组名称',
    target_id             varchar(255) null comment '目标ID',
    target_level          varchar(255) null comment '目标等级',
    nation                varchar(255) null comment '国籍',
    nation_name           varchar(255) null comment '本国名',
    zh_name               varchar(255) null comment '中文名',
    en_name               varchar(255) null comment '英文名',
    used_name             varchar(255) null comment '曾用名',
    nick_name             varchar(255) null comment '昵称',
    gender                varchar(255) null comment '性别',
    birthday              varchar(255) null comment '出生日期',
    age                   varchar(255) null comment '年龄',
    photo                 varchar(255) null comment '照片',
    marital_status        varchar(255) null comment '家庭婚姻状况',
    home_address          varchar(255) null comment '家庭住址',
    office_phone_number   varchar(255) null comment '办公电话号码',
    home_phone_number     varchar(255) null comment '住宅电话号码',
    fax_number            varchar(255) null comment '传真号码',
    home_broadband_number varchar(255) null comment '家庭宽带号码',
    home_broadband_name   varchar(255) null comment '宽带用户名'
)
    comment '基本属性表';

create table contact_behavior
(
    id               int auto_increment comment 'ID'
        primary key,
    contact_time     varchar(255) null comment '通讯时间',
    contact_type     varchar(255) null comment '通讯平台',
    caller_num       varchar(255) null comment '通讯账户_本端',
    caller_target_id varchar(255) null comment '本端_目标ID',
    called_num       varchar(255) null comment '通讯账户_对端',
    called_target_id varchar(255) null comment '对端_目标ID',
    called_job_title varchar(255) null comment '通讯对象职务',
    called_name      varchar(255) null comment '通讯对象姓名',
    contact_info     varchar(255) null comment '通讯内容'
)
    comment '通讯行为表';

create table contact_wordcloud
(
    id              int auto_increment comment 'ID'
        primary key,
    target_id       varchar(255) null comment '目标ID',
    social_app_name varchar(255) null comment '社交媒体名称',
    social_app_rank varchar(255) null comment '社交媒体排名'
)
    comment '通讯行为词云';

create table email_info
(
    id                int auto_increment comment 'ID'
        primary key,
    target_id         varchar(255) null comment '目标ID',
    email_type        varchar(255) null comment '电子邮箱类型',
    email_address     varchar(255) null comment '电子邮箱地址',
    email_use         varchar(255) null comment '电子邮箱用途',
    email_domain      varchar(255) null comment '电子邮箱域名',
    email_domain_type varchar(255) null comment '电子邮箱域名性质',
    nick_name         varchar(255) null comment '电子邮箱昵称'
)
    comment '邮箱表';

create table family_info
(
    id                   int auto_increment comment 'ID'
        primary key,
    target_id            varchar(255) null comment '目标ID',
    home_member_relation varchar(255) null comment '家庭关系',
    home_member_id       varchar(255) null comment '家庭成员ID',
    home_member_name     varchar(255) null comment '家庭成员名字'
)
    comment '家庭表';

create table key_target_behavior
(
    id          int auto_increment comment 'ID'
        primary key,
    target_id   varchar(255) null comment '目标ID',
    action_type varchar(255) null comment '行为类型',
    action_num  int          null comment '频次'
)
    comment '重点目标物理域行为';

create table often_app_info
(
    id             int auto_increment comment 'ID'
        primary key,
    target_id      varchar(255) null comment '目标ID',
    often_app_type varchar(255) null comment '常网络应用类型（设备、网站、APP）',
    often_app_name varchar(255) null comment '常网络应用'
)
    comment '常网络应用';

create table often_messagepeople_info
(
    id                            int auto_increment comment 'ID'
        primary key,
    target_id                     varchar(255) null comment '目标ID',
    message_means                 varchar(255) null comment '通信手段',
    often_messagepeople_name      varchar(255) null comment '常通联对象姓名',
    often_messagepeople_employer  varchar(255) null comment '常通联对象任职机构',
    often_messagepeople_job_title varchar(255) null comment '常通联对象职务'
)
    comment '常通联对象';

create table often_people_info
(
    id                     int auto_increment comment 'ID'
        primary key,
    target_id              varchar(255) null comment '目标ID',
    often_people_name      varchar(255) null comment '常同行人姓名',
    often_people_job_title varchar(255) null comment '常同行人职务'
)
    comment '常同行人';

create table often_visit_info
(
    id                    int auto_increment comment 'ID'
        primary key,
    target_id             varchar(255) null comment '目标ID',
    often_visit_addresses varchar(255) null comment '常访问地地址',
    often_visit_lon       varchar(255) null comment '常访问地经度',
    often_visit_lat       varchar(255) null comment '常访问地纬度'
)
    comment '常访问地';

create table online_behavior
(
    id               int auto_increment comment 'ID'
        primary key,
    online_time      varchar(255) null comment '上网开始时间',
    target_id        varchar(255) null comment '目标ID',
    online_addresses varchar(255) null comment '访问网站/应用',
    online_type      varchar(255) null comment '操作方式'
)
    comment '网络行为表';

create table other_info
(
    id                          int auto_increment comment 'ID'
        primary key,
    target_id                   varchar(255) null comment '目标ID',
    involve_mission             varchar(255) null comment '涉及任务',
    involve_direction_or_nation varchar(255) null comment '涉及方向/国家'
)
    comment '其他表';

create table overview
(
    id               int auto_increment comment 'ID'
        primary key,
    target_id        varchar(255) null comment '目标ID',
    target_name      varchar(255) null comment '人员姓名',
    target_level     varchar(255) null comment '目标等级',
    contact_time     varchar(255) null comment '通讯时间',
    contact_type     varchar(255) null comment '通讯平台',
    caller_num       varchar(255) null comment '通讯账户_本端',
    called_num       varchar(255) null comment '通讯账户_对端',
    called_target_id varchar(255) null comment '对端_目标ID',
    called_name      varchar(255) null comment '通讯对象姓名',
    called_job_title varchar(255) null comment '通讯对象职务',
    contact_info     varchar(255) null comment '通讯内容',
    travel_info      varchar(255) null comment '出行行为动态',
    online_info      varchar(255) null comment '网络行为动态'
)
    comment '总览表';

create table phone_info
(
    id                int auto_increment comment 'ID'
        primary key,
    target_id         varchar(255) null comment '目标ID',
    phone_type        varchar(255) null comment '手机品牌型号',
    phone_num         varchar(255) null comment '手机号码',
    IMSI              varchar(255) null comment 'IMSI',
    IMEI              varchar(255) null comment 'IMEI',
    phone_nation_name varchar(255) null comment '手机所属国家名称',
    phone_nation_id   varchar(255) null comment '手机所属国家代码'
)
    comment '手机表';

create table social_app_info
(
    id              int auto_increment comment 'ID'
        primary key,
    target_id       varchar(255) null comment '目标ID',
    social_app_name varchar(255) null comment '社交应用名称',
    login_account   varchar(255) null comment '登录账号',
    login_nick_name varchar(255) null comment '登录昵称'
)
    comment '社交媒体表';

create table social_elationship
(
    target_id               varchar(20) null comment '目标ID',
    social_elationship_type varchar(20) null comment '社会关系类型（父亲、母亲、儿子、女儿、同事、朋友等）',
    social_elationship_name varchar(20) null comment '社会关系对象姓名'
)
    comment '社会关系表';

create table travel_behavior
(
    id               int auto_increment comment 'ID'
        primary key,
    travel_time      varchar(255) null comment '出行时间',
    target_id        varchar(255) null comment '目标ID',
    travel_addresses varchar(255) null comment '到达地点',
    travel_lon       varchar(255) null comment '到达经度',
    travel_lat       varchar(255) null comment '到达纬度',
    if_sensitive     varchar(255) null comment '涉及敏感区域'
)
    comment '出行行为表';

create table work_info
(
    id           int auto_increment comment 'ID'
        primary key,
    target_id    varchar(255) null comment '目标ID',
    employer     varchar(255) null comment '任职机构',
    office       varchar(255) null comment '所在处室',
    department   varchar(255) null comment '本土隶属部门',
    job_title    varchar(255) null comment '职务',
    work_station varchar(255) null comment '工作驻地',
    work_address varchar(255) null comment '办公地址',
    resume       varchar(255) null comment '个人履历'
)
    comment '工作表';

