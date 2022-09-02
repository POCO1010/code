
-- Ods层
-- 	Ddl包
                    -- ddl_ods_dpxp_lfsry_prod_ctcyq_ctc_n_user_into_shenyang_new
                    /**
                    * 大屏小屏-来返省 - 备案表
                    *
                    **/
                    drop table if exists ods_dpxp_lfsry_prod_ctcyq_ctc_n_user_into_shenyang_new;
                    CREATE TABLE IF NOT EXISTS ods_dpxp_lfsry_prod_ctcyq_ctc_n_user_into_shenyang_new(
                        id STRING,
                        name STRING,
                        card_no STRING,
                        mobile STRING,
                        his_city STRING comment '来沈前经过地城市',
                        is_highRisk STRING comment '14天内是否有中高风险旅居史 0：否 1：是',
                        is_hihtCity STRING comment '是否来自重点关注地区 0：否 1：是',
                        is_sqjc STRING comment '是否为社区健康监测人员 0否 1：是',
                        is_vaccines STRING comment '是否已接种新冠疫苗 0：否 1：是',
                        temperature STRING comment '提问情况 0正常 1发烧',
                        symptom STRING comment '是否有干咳、乏力、咽痛、嗅（味）觉减退、腹泻等症状 0：否 1：是',
                        del_flag STRING comment '删除 0：否1：是',
                        create_time TIMESTAMP comment '备案时间（创建时间）',
                        qr_code_id STRING comment '二维码',
                        department_id STRING comment '机构id',
                        hiht_city STRING comment '来自重点关注地区的哪个城市',
                        place_name STRING comment '场所名',
                        update_time TIMESTAMP comment '修改时间',
                        reason STRING comment '来沈原因',
                        address STRING comment '来沈地点',
                        mobile_coordinate STRING comment '手机号经纬度',
                        sqbd_result STRING comment '社区比对结果',
                        is_risk_area STRING comment '是否是风险地区（1-是，0-否）',
                        is_follow_area STRING comment '是否是关注地区（1-是，0-否）',
                        `sync` STRING comment '更新关注、风险地区状态 （0未同步 1已同步）',
                        sync_2 STRING comment '更新社区比对结果 （0未同步 1已同步）',
                        arrive_date STRING comment '到沈日期',
                        community_code STRING comment '社区编码',
                        community_name STRING comment '社区名称',
                        cz_state STRING comment '处置状态 0—未处置 1-离沈处置 2-隔离处置 3-失踪处置  4-横传',
                        cz_result STRING comment '处置结果',
                        handle_time TIMESTAMP comment '处置时间',
                        itinerary STRING comment '14天行程',
                        certificate_type STRING comment '证件类型（1-身份证 2-港澳台通行证 3-护照 4-台胞证）',
                        nucleic_acid_test STRING comment '核酸检测',
                        emergency_contact STRING comment '紧急联系人',
                        emergency_contact_phone STRING comment '紧急联系人电话',
                        health_code_status STRING comment '健康码状态(1-绿码，3-黄码，4-红码)',
                        head_img STRING comment '上传人像  港澳台拍个人脸',
                        risk_area STRING comment '是否经过中高风险地区（前端存数据）',
                        filing_community_code STRING comment '备案社区编码（前端传的）',
                        draft_id STRING comment '字段含义横穿id',
                        transportation STRING comment '交通方式（1-飞机、2-火车、3-长客、4-自驾）',
                        traffic_number STRING comment '交通编号  来沈航班号(飞机) 车次(火车)、车牌号(长客、自驾)',
                        departure STRING comment '出发地(全国 省市区街道 4级筛选)',
                        departure_details_address STRING comment '出发地详细地址',
                        destination STRING comment '目的地(省市区 三级筛选如果判断目的地不是在沈阳，则会弹出下方 到沈中转方式)',
                        transit_method STRING comment '到沈中转方式(1-航空 2-铁路 3-公路)',
                        is_entry STRING comment '是否入境(1-是 0-否)',
                        country_before_entry STRING comment '入境前国家',
                        date_of_entry STRING comment '入境日期',
                        back_shen_residence STRING comment '来返沈住所(1-酒店 2-居家)',
                        residence_details_address STRING comment '住所详情地址',
                        hotel_name STRING comment '酒店名称',
                        is_abnormal STRING comment '是否异常（0-否 1-是）',
                        abnormal_reason STRING comment '异常原因',
                        nucleic_acid_sampling_time TIMESTAMP comment '核酸采样时间'
                    ) COMMENT '备案表' 
                    partitioned by (ds string) 
                    STORED AS ORC

                    ddl_ods_dpxp_lfsry_prod_ctcyq_ctc_n_user_not_filing_new

                    /**
                    * 大屏小屏-来返省 - 未备案表
                    *
                    **/
                    drop table if exists ods_dpxp_lfsry_prod_ctcyq_ctc_n_user_not_filing_new;
                    CREATE TABLE IF NOT EXISTS ods_dpxp_lfsry_prod_ctcyq_ctc_n_user_not_filing_new(
                        id STRING comment '主键',
                        da STRING comment '档案',
                        xm STRING comment '姓名',
                        sfz STRING comment '身份证',
                        sjh STRING comment '手机号',
                        gsd STRING comment '归属地',
                        lysf STRING comment '来源省份',
                        lyds STRING comment '来源地市（前14日所有途径地分别列明）',
                        lydsddsj TIMESTAMP comment '来源地市到达时间',
                        lydslksj TIMESTAMP comment '来源地市离开时间',
                        lssj TIMESTAMP comment '离沈时间',
                        dssj TIMESTAMP comment '到沈时间',
                        jd STRING comment '经度',
                        wd STRING comment '纬度',
                        create_time timestamp comment '创建时间',
                        update_time timestamp,
                        mobile_coordinate STRING comment '手机号经纬度',
                        sqbd_result STRING comment '社区比对结果',
                        is_risk_area STRING comment '是否是风险地区（1-是，0-否）',
                        is_follow_area STRING comment '是否是关注地区（1-是，0-否）',
                        `sync` STRING comment '更新关注、风险地区状态 （0未同步 1已同步）',
                        sync_2 STRING comment '更新社区比对结果 （0未同步 1已同步）',
                        company_code STRING comment '社区编码',
                        company_name STRING comment '社区名称',
                        community_code STRING comment '社区编码',
                        community_name STRING comment '社区名称',
                        cz_state STRING comment '处置状态 0—未处置 1-离沈处置 2-隔离处置 3-失踪处置 4-横传',
                        cz_result STRING comment '处置结果',
                        handle_time TIMESTAMP comment '处置时间',
                        filing_community_code STRING comment '备案社区编码（前端传的）',
                        draft_id STRING comment '字段含义横穿id',
                        nucleic_acid_sampling_time TIMESTAMP comment '核酸采样时间'
                    ) COMMENT '未备案表' 
                    partitioned by (ds string) 
                    STORED AS ORC

                    ddl_ods_dpxp_txz_yyslssjdjk_dxlysj
                    /**
                    * 大屏小屏-运营商-电信表
                    *
                    **/
                    drop table if exists ods_dpxp_txz_yyslssjdjk_dxlysj;
                    CREATE TABLE IF NOT EXISTS ods_dpxp_txz_yyslssjdjk_dxlysj(
                        xm STRING comment '姓名',
                        sfz STRING comment '身份证',
                        sjh STRING comment '手机号',
                        gsd STRING comment '归属地',
                        lyds STRING comment '来源地市（前14日所有途径地分别列明）',
                        lydsddsj TIMESTAMP comment '来源地市到达时间',
                        lydslksj TIMESTAMP comment '来源地市离开时间',
                        lssj TIMESTAMP comment '离沈时间',
                        dssj TIMESTAMP comment '到沈时间',
                        jd STRING comment '经度',
                        wd STRING comment '纬度',
                        zj int comment '主键',
                        create_time timestamp comment '创建时间',
                        update_time timestamp comment '修改时间'
                    ) COMMENT '电信表' 
                    partitioned by (ds string) 
                    STORED AS ORC

                    ddl_ods_dpxp_txz_yyslssjdjk_ltlysj

                    /**
                    * 大屏小屏-运营商-联通表
                    *
                    **/
                    drop table if exists ods_dpxp_txz_yyslssjdjk_ltlysj;
                    CREATE TABLE IF NOT EXISTS ods_dpxp_txz_yyslssjdjk_ltlysj(
                        da STRING comment '档案',
                        xm STRING comment '姓名',
                        sfz STRING comment '身份证',
                        sjh STRING comment '手机号',
                        gsd STRING comment '归属地',
                        lysf STRING comment '来源省份',
                        lyds STRING comment '来源地市（前14日所有途径地分别列明）',
                        lydsddsj TIMESTAMP comment '来源地市到达时间',
                        lydslksj TIMESTAMP comment '来源地市离开时间',
                        lssj TIMESTAMP comment '离沈时间',
                        dssj TIMESTAMP comment '到沈时间',
                        jd STRING comment '经度',
                        wd STRING comment '纬度',
                        zj int comment '主键',
                        create_time timestamp comment '创建时间',
                        update_time timestamp
                    ) COMMENT '联通表' 
                    partitioned by (ds string) 
                    STORED AS ORC

                    ddl_ods_dpxp_txz_yyslssjdjk_ydlysj

                    /**
                    * 大屏小屏-运营商-移动表
                    *
                    **/
                    drop table if exists ods_dpxp_txz_yyslssjdjk_ydlysj;
                    CREATE TABLE IF NOT EXISTS ods_dpxp_txz_yyslssjdjk_ydlysj(
                        xm STRING comment '姓名',
                        sfz STRING comment '身份证',
                        sjh STRING comment '手机号',
                        gsd STRING comment '归属地',
                        lyds STRING comment '来源地市（前14日所有途径地分别列明）',
                        lydsddsj TIMESTAMP comment '来源地市到达时间',
                        lydslksj TIMESTAMP comment '来源地市离开时间',
                        lssj TIMESTAMP comment '离沈时间',
                        dssj TIMESTAMP comment '到沈时间',
                        jd STRING comment '经度',
                        wd STRING comment '纬度',
                        zj int comment '主键',
                        create_time timestamp comment '创建时间',
                        update_time timestamp comment '修改时间'
                    ) COMMENT '移动表' 
                    partitioned by (ds string) 
                    STORED AS ORC

job包
                    --job_ods_dpxp_txz_prod_sst_shop_brand_shop_user_oauth

                    /**
                    ** 合并brand_shop_user_oauth	大屏小屏-一码通城-用户身份权限表 数据
                    ** auto：chenmin
                    **/
                    insert overwrite table ods_dpxp_txz_prod_sst_shop_brand_shop_user_oauth partition (ds = '${bizdate}')
                    select 
                        t.id,
                        t.name, -- 姓名
                        t.card_no, -- 身份证号
                        t.mobile, -- 手机号
                        t.house_num, -- 门牌号
                        t.area, -- 社区
                        t.street, -- 街道
                        t.community,
                        t.area_type,
                        t.area_id,
                        t.street_id,
                        t.community_id,
                        t.address,
                        t.loc_province,
                        t.loc_city,
                        t.loc_title,
                        t.loc_address,
                        t.longitude,
                        t.latitude,
                        t.create_time,
                        t.update_time,
                        t.company_code,
                        t.building, -- 小区
                        t.building_no, -- 楼号
                        t.building_unit, -- 单元楼层
                        t.room_no, -- 房间号
                        t.modify_flag, -- 身份修改几次，默认0
                        t.qr_str, -- 扫描那个二维码
                        t.openid,
                        t.type, -- 人员状态。1：本人。2；父母，3子女
                        t.sources, -- 注册来源 1-微信 2-盛世通 app
                        t.cer_status, -- 实名状态 -1 初始状态0-注册未实名1-已上传身份照片 2-已实名认证 3-已进行活体认证 4-已绑定
                        t.sync_status, -- 0:同步失败，1：同步成功
                        t.`sync`, -- 0未同步 1已同步
                        t.mvmobile,
                        t.relation, -- d代办关系
                        t.bind_mobile, -- 绑定手机号
                        t.bind_icloud, -- 苹果ID
                        t.bind_app_openid, -- app 端 openId 
                        t.bind_account, -- app端 账号
                        t.bind_aliyun, -- 支付宝账号
                        t.bind_wx_xcx, -- 小程序
                        t.p1,
                        t.ios_push_id,
                        t.android_push_id,
                        t.wx_open_medical_status, -- h5开通医保标志 0未开通 1 已开通
                        t.wx_oauthcode, -- 渠道个人授权码
                        t.wx_place_code, -- 微信设置医保默认地址
                        t.wx_place_name, -- 微信设置医保默认地址名称
                        t.wx_password_flag, -- 微信密码是否设置 0未设置 1已设置
                        t.app_open_medical_status, -- app开通医保标志 0 未开通 1已开通
                        t.app_oauthcode, -- app渠道个人授权码
                        t.app_place_code, -- app 设置医保默认地址
                        t.app_place_name, -- app设置医保默认地址名称
                        t.app_password_flag, -- app密码是否设置 0未设置 1已设置
                        t.im_token,
                        t.sign, -- 1 没有医保。2 有医保 3 开通医保
                        t.`password`, -- 密码
                        t.area_code, -- 区id
                        t.street_code, -- 街道id
                        t.community_code, -- 社区id
                        t.old_user_mobile_statis, -- 0 待跑定时任务 1 成功 2 失败
                        t.custom_avatar, -- 用户自定义头像
                        t.bind_aliyun_xcx, -- 支付宝小程序
                        t.bind_aliyun_code -- 支付宝 扫码'
                    from (select     
                        a.id,
                        a.name, -- 姓名
                        a.card_no, -- 身份证号
                        a.mobile, -- 手机号
                        a.house_num, -- 门牌号
                        a.area, -- 社区
                        a.street, -- 街道
                        a.community,
                        a.area_type,
                        a.area_id,
                        a.street_id,
                        a.community_id,
                        a.address,
                        a.loc_province,
                        a.loc_city,
                        a.loc_title,
                        a.loc_address,
                        a.longitude,
                        a.latitude,
                        a.create_time,
                        a.update_time,
                        a.company_code,
                        a.building, -- 小区
                        a.building_no, -- 楼号
                        a.building_unit, -- 单元楼层
                        a.room_no, -- 房间号
                        a.modify_flag, -- 身份修改几次，默认0
                        a.qr_str, -- 扫描那个二维码
                        a.openid,
                        a.type, -- 人员状态。1：本人。2；父母，3子女
                        a.sources, -- 注册来源 1-微信 2-盛世通 app
                        a.cer_status, -- 实名状态 -1 初始状态0-注册未实名1-已上传身份照片 2-已实名认证 3-已进行活体认证 4-已绑定
                        a.sync_status, -- 0:同步失败，1：同步成功
                        a.`sync`, -- 0未同步 1已同步
                        a.mvmobile,
                        a.relation, -- d代办关系
                        a.bind_mobile, -- 绑定手机号
                        a.bind_icloud, -- 苹果ID
                        a.bind_app_openid, -- app 端 openId 
                        a.bind_account, -- app端 账号
                        a.bind_aliyun, -- 支付宝账号
                        a.bind_wx_xcx, -- 小程序
                        a.p1,
                        a.ios_push_id,
                        a.android_push_id,
                        a.wx_open_medical_status, -- h5开通医保标志 0未开通 1 已开通
                        a.wx_oauthcode, -- 渠道个人授权码
                        a.wx_place_code, -- 微信设置医保默认地址
                        a.wx_place_name, -- 微信设置医保默认地址名称
                        a.wx_password_flag, -- 微信密码是否设置 0未设置 1已设置
                        a.app_open_medical_status, -- app开通医保标志 0 未开通 1已开通
                        a.app_oauthcode, -- app渠道个人授权码
                        a.app_place_code, -- app 设置医保默认地址
                        a.app_place_name, -- app设置医保默认地址名称
                        a.app_password_flag, -- app密码是否设置 0未设置 1已设置
                        a.im_token,
                        a.sign, -- 1 没有医保。2 有医保 3 开通医保
                        a.`password`, -- 密码
                        a.area_code, -- 区id
                        a.street_code, -- 街道id
                        a.community_code, -- 社区id
                        a.old_user_mobile_statis, -- 0 待跑定时任务 1 成功 2 失败
                        a.custom_avatar, -- 用户自定义头像
                        a.bind_aliyun_xcx, -- 支付宝小程序
                        a.bind_aliyun_code, -- 支付宝 扫码'
                        row_number() over(partition by a.id order by a.ds desc) as row_num
                    from ods_dpxp_txz_prod_sst_shop_brand_shop_user_oauth a where ds in ('${bizdate-1}','${bizdate+1}')) t where row_num = 1;

                    --job_ods_dpxp_txz_sjgx_audit_grid_user

                    /**
                    ** 合并audit_grid_user	大屏小屏-网格化表 数据
                    ** auto：chenmin
                    **/
                    insert overwrite table ods_dpxp_txz_sjgx_audit_grid_user partition (ds = '${bizdate}')
                    select 
                        t.id ,
                        t.user_type, -- 是否常住，0：常住，1：流动
                        t.huji_type, -- 是否户籍，0：是户籍，1：非户籍
                        t.is_kgh, -- 是否空挂户   0:是，1:否
                        t.user_name, -- 姓名
                        t.juzhu_type, -- 是否居住，0：居住，1：非居住
                        t.cardno ,
                        t.company_code, -- 社区编码
                        t.area_id, -- 区id
                        t.street_id, -- 街道id
                        t.community_id, -- 社区id
                        t.garden_id, -- 小区id
                        t.building_id, -- 楼id
                        t.unit_id, -- 单元id
                        t.floor_id, -- 层id
                        t.doorplate_id, -- 户id
                        t.del_flag, -- 是否删除  1删除 0正常
                        t.create_by, -- 创建人
                        t.create_time, -- 创建时间
                        t.update_by, -- 更新人
                        t.update_time, -- 更新时间
                        t.source_type ,
                        t.relation, -- 与户主关系
                        t.kk_type, -- 是否办理过盛事通
                        t.sb_type ,
                        t.dzm_type 
                    from (select     
                            a.id ,
                            a.user_type, -- 是否常住，0：常住，1：流动
                            a.huji_type, -- 是否户籍，0：是户籍，1：非户籍
                            a.is_kgh, -- 是否空挂户   0:是，1:否
                            a.user_name, -- 姓名
                            a.juzhu_type, -- 是否居住，0：居住，1：非居住
                            a.cardno ,
                            a.company_code, -- 社区编码
                            a.area_id, -- 区id
                            a.street_id, -- 街道id
                            a.community_id, -- 社区id
                            a.garden_id, -- 小区id
                            a.building_id, -- 楼id
                            a.unit_id, -- 单元id
                            a.floor_id, -- 层id
                            a.doorplate_id, -- 户id
                            a.del_flag, -- 是否删除  1删除 0正常
                            a.create_by, -- 创建人
                            a.create_time, -- 创建时间
                            a.update_by, -- 更新人
                            a.update_time, -- 更新时间
                            a.source_type ,
                            a.relation, -- 与户主关系
                            a.kk_type, -- 是否办理过盛事通
                            a.sb_type ,
                            a.dzm_type,
                        row_number() over(partition by a.id order by a.ds desc) as row_num
                    from ods_dpxp_txz_sjgx_audit_grid_user a where ds in ('${bizdate-1}','${bizdate+1}')) t where row_num = 1;


                    -- job_ods_dpxp_txz_yyslssjdjk_dxlysj

                    /**
                    ** 合并dxlysj	大屏小屏-运营商-电信表 数据
                    ** auto：chenmin
                    **/
                    insert overwrite table ods_dpxp_txz_yyslssjdjk_dxlysj partition (ds = '${bizdate}')
                    select 
                        t.xm, -- 姓名
                        t.sfz, -- 身份证
                        t.sjh, -- 手机号
                        t.gsd, -- 归属地
                        t.lyds, -- 来源地市（前14日所有途径地分别列明）
                        t.lydsddsj, -- 来源地市到达时间
                        t.lydslksj, -- 来源地市离开时间
                        t.lssj, -- 离沈时间
                        t.dssj, -- 到沈时间
                        t.jd, -- 经度
                        t.wd, -- 纬度
                        t.zj, -- 主键
                        t.create_time, -- 创建时间
                        t.update_time -- 修改时间
                    from (select     
                            a.xm, -- 姓名
                            a.sfz, -- 身份证
                            a.sjh, -- 手机号
                            a.gsd, -- 归属地
                            a.lyds, -- 来源地市（前14日所有途径地分别列明）
                            a.lydsddsj, -- 来源地市到达时间
                            a.lydslksj, -- 来源地市离开时间
                            a.lssj, -- 离沈时间
                            a.dssj, -- 到沈时间
                            a.jd, -- 经度
                            a.wd, -- 纬度
                            a.zj, -- 主键
                            a.create_time, -- 创建时间
                            a.update_time, -- 修改时间
                        row_number() over(partition by a.zj order by a.ds desc) as row_num
                    from ods_dpxp_txz_yyslssjdjk_dxlysj a where ds in ('${bizdate-1}','${bizdate+1}')) t where row_num = 1;


--DWD层
--ddl包
                --ddl_dwd_dpxp_lfsry_notfill_info_di
                /**
                * 大屏小屏-非备案
                *
                **/
                drop table if exists dwd_dpxp_lfsry_notfill_info_di;
                CREATE TABLE IF NOT EXISTS dwd_dpxp_lfsry_notfill_info_di(
                    id STRING comment '主键',
                    da STRING comment '档案',
                    xm STRING comment '姓名',
                    sfz STRING comment '身份证',
                    sjh STRING comment '手机号',
                    gsd STRING comment '归属地',
                    lysf STRING comment '来源省份',
                    lyds STRING comment '来源地市（前14日所有途径地分别列明）',
                    lydsddsj TIMESTAMP comment '来源地市到达时间',
                    lydslksj TIMESTAMP comment '来源地市离开时间',
                    lssj TIMESTAMP comment '离沈时间',
                    dssj TIMESTAMP comment '到沈时间',
                    jd STRING comment '经度',
                    wd STRING comment '纬度',
                    create_time timestamp comment '创建时间',
                    update_time timestamp,
                    mobile_coordinate STRING comment '手机号经纬度',
                    sqbd_result STRING comment '社区比对结果',
                    is_risk_area STRING comment '是否是风险地区（1-是，0-否）',
                    is_follow_area STRING comment '是否是关注地区（1-是，0-否）',
                    `sync` STRING comment '更新关注、风险地区状态 （0未同步 1已同步）',
                    sync_2 STRING comment '更新社区比对结果 （0未同步 1已同步）',
                    company_code STRING comment '社区编码',
                    company_name STRING comment '社区名称',
                    community_code STRING comment '社区编码',
                    community_name STRING comment '社区名称',
                    cz_state STRING comment '处置状态 0—未处置 1-离沈处置 2-隔离处置 3-失踪处置 4-横传',
                    cz_result STRING comment '处置结果',
                    handle_time TIMESTAMP comment '处置时间',
                    filing_community_code STRING comment '备案社区编码（前端传的）',
                    draft_id STRING comment '字段含义横穿id',
                    nucleic_acid_sampling_time TIMESTAMP comment '核酸采样时间'
                ) COMMENT '大屏小屏-非备案' 
                partitioned by (ds string) 
                STORED AS ORC
                --ddl_dwd_dpxp_lfsry_operator_di

                /**
                * 大屏小屏-运营商来返人员
                *
                **/
                drop table if exists dwd_dpxp_lfsry_operator_di;
                CREATE TABLE IF NOT EXISTS dwd_dpxp_lfsry_operator_di(
                    da STRING comment '档案',
                    xm STRING comment '姓名',
                    sfz STRING comment '身份证',
                    sjh STRING comment '手机号',
                    gsd STRING comment '归属地',
                    lysf STRING comment '来源省份',
                    lyds STRING comment '来源地市（前14日所有途径地分别列明）',
                    lydsddsj STRING comment '来源地市到达时间',
                    lydslksj STRING comment '来源地市离开时间',
                    lssj STRING comment '离沈时间',
                    dssj STRING comment '到沈时间',
                    jd STRING comment '经度',
                    wd STRING comment '纬度',
                    zj STRING comment '主键',
                    create_time STRING comment '创建时间',
                    update_time STRING comment '修改时间',
                    rank_num int comment '当日有多条数据排序'
                ) COMMENT '大屏小屏-运营商来返人员' 
                partitioned by (operator string comment '运营商名称',ds string) 
                STORED AS ORC
job包

                    -- job_dwd_dpxp_lfsry_notfill_info_di
                    /**
                    * 大屏小屏-非备案
                    * 全量表
                    * auto: chenmin
                    * createdate: 20220525
                    **/

                    set mapreduce.map.memory.mb=101500; 
                    set mapreduce.map.java.opts=-Xmx61440m;
                    set mapreduce.reduce.memory.mb=101500; 
                    set mapreduce.reduce.java.opts=-Xmx81200m;

                    -- 运营商来沈数据不在备案表的为未备案人员，需要将这些人员插入到未备案表中。（备案表有备案时间需要与时间对应）
                    -- 比对到沈后24小时内做没有核酸，将核酸采样信息插入到备案和未备案表。
                    -- 比对社区及社区编码，将人员信息插入社区及社区编码信息，备案和未备案都需要比对（用网格化数据比对，没比对到的用电子围栏接口补齐）

                    -- insert overwrite table dwd_dpxp_lfsry_notfill_info_di partition(ds)
                    select
                        id, -- 主键
                        a.da, -- 档案
                        a.xm, -- 姓名
                        a.sfz, -- 身份证
                        a.sjh, -- 手机号
                        a.gsd, -- 归属地
                        a.lysf, -- 来源省份
                        a.lyds, -- 来源地市（前14日所有途径地分别列明）
                        a.lydsddsj, -- 来源地市到达时间
                        a.lydslksj, -- 来源地市离开时间
                        a.lssj, -- 离沈时间
                        a.dssj, -- 到沈时间
                        a.jd, -- 经度
                        a.wd, -- 纬度
                        a.create_time, -- 创建时间
                        a.update_time timestamp,
                        concat(a.jd,',',a.wd) mobile_coordinate, -- 手机号经纬度
                        sqbd_result, -- 社区比对结果
                        is_risk_area, -- 是否是风险地区（1-是，0-否）
                        is_follow_area, -- 是否是关注地区（1-是，0-否）
                        `sync`, -- 更新关注、风险地区状态 （0未同步 1已同步）
                        '' as sync_2, -- 更新社区比对结果 （0未同步 1已同步）
                        '' as company_code, -- 社区编码
                        '' as company_name, -- 社区名称
                        '' as community_code, -- 社区编码
                        '' as community_name, -- 社区名称
                        '' as cz_state, -- 处置状态 0—未处置 1-离沈处置 2-隔离处置 3-失踪处置 4-横传
                        '' as cz_result, -- 处置结果
                        '' as handle_time, -- 处置时间
                        filing_community_code, -- 备案社区编码（前端传的）
                        draft_id, -- 字段含义横穿id
                        nvl(a.nucleic_acid_sampling_time,rcp.cy_time) as nucleic_acid_sampling_time, -- 核酸采样时间
                        case when nvl(a.nucleic_acid_sampling_time,rcp.cy_time) is not null then 1 else 0 end as isnucleic_acid_sampling -- 是否核酸采样
                        a.ds -- 到沈时间
                    from dwd_dpxp_lfsry_operator_di a -- 运营商数据表
                    left join ods_dpxp_lfsry_prod_ctcyq_ctc_n_user_into_shenyang_new b on a.sfz = b.card_no and a.ds = replace(substr(b.arrive_date,1,10),'-','') -- 备案表
                    join ods_dpxp_txz_rdp_rcp_collect_data rcp on a.card_no = rcp.idenno and a.arrive_date >= substr(rcp.cy_time,1,10) 
                            and a.arrive_date <= date_add(substr(rcp.cy_time,1,10),+1) and rcp.ds = '${bizdate}' 
                            -- and replace(substr(rcp.cy_time,1,10),'-','') >= '${bizdate-7}'
                    where a.rank_num = 1 and b.sfz is null;
                    -- where a.ds = '${bizdate}' and replace(substr(a.arrive_date,1,10),'-','') >= '${bizdate-7}';
                    -- ods_dpxp_lfsry_prod_ctcyq_ctc_n_user_not_filing_new -- 未备案表' ;

                    -- job_dwd_dpxp_lfsry_operator_di
                    /**
                    * 大屏小屏-运营商表
                    * 全量表
                    * auto: chenmin
                    * createdate: 20220525
                    **/
                    -- set hive.exec.dynamic.partition = true;
                    -- set hive.exec.dynamic.partition.mode = nonstrict;
                    -- set hive.optimize.sort.dynamic.partition = true;
                    -- set mapred.max.split.size = 67108864;
                    -- set mapred.job.reduce.memory.mb = 8GB;
                    -- set hive.map.aggr = false;

                    set mapreduce.map.memory.mb=101500; 
                    set mapreduce.map.java.opts=-Xmx61440m;
                    set mapreduce.reduce.memory.mb=101500; 
                    set mapreduce.reduce.java.opts=-Xmx81200m;

                    insert overwrite table dwd_dpxp_lfsry_operator_di partition(operator='ChinaMobile',ds)
                    select 
                        '1' as da, -- 档案
                        t.xm, -- 姓名
                        t.sfz, -- 身份证
                        t.sjh, -- 手机号
                        t.gsd, -- 归属地
                        '1' as lysf, -- 来源省份
                        t.lyds, -- 来源地市（前14日所有途径地分别列明）
                        t.lydsddsj, -- 来源地市到达时间
                        t.lydslksj, -- 来源地市离开时间
                        t.lssj, -- 离沈时间
                        t.dssj, -- 到沈时间
                        t.jd, -- 经度
                        t.wd, -- 纬度
                        t.zj, -- 主键
                        t.create_time, -- 创建时间
                        t.update_time, -- 修改时间
                        row_number() over(partition by t.dssj,t.sjh order by t.zj desc) as rank_num, -- 当日有多条数据排序
                        replace(substr(t.dssj,1,10),'-','') as ds
                    from ods_dpxp_txz_yyslssjdjk_ydlysj t where 1 = 1 and t.ds = '${bizdate}';

                    insert overwrite table dwd_dpxp_lfsry_operator_di partition(operator='ChinaUnicom',ds)
                    select 
                        t.da, -- 档案
                        t.xm, -- 姓名
                        t.sfz, -- 身份证
                        t.sjh, -- 手机号
                        t.gsd, -- 归属地
                        t.lysf, -- 来源省份
                        t.lyds, -- 来源地市（前14日所有途径地分别列明）
                        t.lydsddsj, -- 来源地市到达时间
                        t.lydslksj, -- 来源地市离开时间
                        t.lssj, -- 离沈时间
                        t.dssj, -- 到沈时间
                        t.jd, -- 经度
                        t.wd, -- 纬度
                        t.zj, -- 主键
                        t.create_time, -- 创建时间
                        t.update_time, -- 修改时间    
                        row_number() over(partition by t.dssj,t.sjh order by t.zj desc) as rank_num, -- 当日有多条数据排序
                        replace(substr(t.dssj,1,10),'-','') as ds
                    from ods_dpxp_txz_yyslssjdjk_ltlysj t where t.ds = '${bizdate+1}';

                    insert overwrite table dwd_dpxp_lfsry_operator_di partition(operator='ChinaTelecom',ds)
                    select 
                        '1' as da, -- 档案
                        t.xm, -- 姓名
                        t.sfz, -- 身份证
                        t.sjh, -- 手机号
                        t.gsd, -- 归属地
                        '1' as lysf, -- 来源省份
                        t.lyds, -- 来源地市（前14日所有途径地分别列明）
                        t.lydsddsj, -- 来源地市到达时间
                        t.lydslksj, -- 来源地市离开时间
                        t.lssj, -- 离沈时间
                        t.dssj, -- 到沈时间
                        t.jd, -- 经度
                        t.wd, -- 纬度
                        t.zj, -- 主键
                        t.create_time, -- 创建时间
                        t.update_time, -- 修改时间    
                        row_number() over(partition by t.dssj,t.sjh order by t.zj desc) as rank_num, -- 当日有多条数据排序
                        replace(substr(t.dssj,1,10),'-','') as ds
                    from ods_dpxp_txz_yyslssjdjk_dxlysj t where t.ds = '${bizdate+1}';

TDM层

ddl层
                -- ddl_tdm_dpxp_lfsry_alarm_handle_in

                /**
                *
                *	来返沈告警处置下钻个人详细信息表
                * 
                **/
                drop table if exists tdm_dpxp_lfsry_alarm_handle_in;
                CREATE TABLE IF NOT EXISTS tdm_dpxp_lfsry_alarm_handle_in(
                    date_time string comment '日期',
                    type string comment '类型',
                    district string comment '区县',
                    street string comment '街道',
                    community string comment '社区',
                    village string comment '小区',
                    name string comment '姓名',
                    id_num string comment '身份证号',
                    phone_num string comment '电话号',
                    is_not_nucleic_acid_push string comment '是否核酸未检推送',
                    is_not_nucleic_acid_handle string comment '是否核酸未检处置',
                    is_covid_19_symptoms_push string comment '是否新冠症状推送',
                    is_covid_19_symptoms_handle string comment '是否新冠症状处置',
                    is_abnomal_temperature_push string comment '是否体温超标推送',
                    is_abnomal_temperature_handle string comment '是否体温超标处置',
                    is_from_risk_area_push string comment '是否风险地区来返人员推送',
                    is_from_risk_area_handle string comment '是否风险地区来返人员处置',
                    create_time string comment '创建时间'
                ) COMMENT '来返沈告警处置下钻个人详细信息表' 
                -- partitioned by (ds string) 
                STORED AS ORC;


                -- ddl_tdm_dpxp_lfsry_people_info

                /**
                *
                *	来返省人员统计
                * 
                **/
                drop table if exists tdm_dpxp_lfsry_people_info;
                CREATE TABLE IF NOT EXISTS tdm_dpxp_lfsry_people_info(
                    date_id 		string comment '日ID',
                    date_code 		string comment '日编码',
                    date_name 		string comment '日名称',
                    week_id 		string comment '周ID',
                    month_id 		string comment '月份ID',
                    season_id 		string comment '季度ID',
                    year_id 		string comment '年份ID',
                    type string comment '类型',
                    district string comment '区县',
                    street string comment '街道',
                    community string comment '社区',
                    village string comment '小区',
                    lfs_type string comment '备案状态',
                    is_filing string comment '是否备案',
                    his_city_name String comment '来源城市',
                    reason String comment '来返沈标记',
                    lfs_nums int comment '人数统计'
                ) COMMENT '下钻个人详细信息表' 
                -- partitioned by (ds string) 
                STORED AS ORC;

job包
                -- job_tdm_dpxp_lfsry_alarm_handle_in


                -- date_time string comment '日期',
                -- type string comment '类型',
                -- district string comment '区县',
                -- street string comment '街道',
                -- community string comment '社区',
                -- village string comment '小区',
                -- name string comment '姓名',
                -- id_num string comment '身份证号',
                -- phone_num string comment '电话号',
                -- is_not_nucleic_acid_push int comment '是否核酸未检推送',
                -- is_not_nucleic_acid_handle int comment '是否核酸未检处置',
                -- is_covid_19_symptoms_push int comment '是否新冠症状推送',
                -- is_covid_19_symptoms_handle int comment '是否新冠症状处置',
                -- is_abnomal_temperature_push int comment '是否体温超标推送',
                -- is_abnomal_temperature_handle int comment '是否体温超标处置',
                -- is_from_risk_area_push int comment '是否风险地区来返人员推送',
                -- is_from_risk_area_handle int comment '是否风险地区来返人员处置',

                insert overwrite table tdm_dpxp_lfsry_alarm_handle_in
                select
                    a.date_time,
                    a.type,
                    a.district,
                    a.street,
                    a.community,
                    a.village,
                    a.name,
                    a.id_num,
                    a.phone_num,
                    a.is_not_nucleic_acid_push,
                    a.is_not_nucleic_acid_handle,
                    a.is_covid_19_symptoms_push,
                    a.is_covid_19_symptoms_handle,
                    a.is_abnomal_temperature_push,
                    a.is_abnomal_temperature_handle,
                    a.is_from_risk_area_push,
                    a.is_from_risk_area_handle,
                    a.create_time
                from (select
                    d.date_code as date_time,
                    -- 日期,
                    '来返沈告警处置' as type,
                    get_json_object(t.address, "$.area") as district,
                    get_json_object(t.address, "$.street") as street,
                    get_json_object(t.address, "$.community") as community,
                    get_json_object(t.address, "$.village") as village,
                    t.name,
                    t.card_no as id_num,
                    t.mobile as phone_num,
                    case when t.isnucleic_acid_sampling = 1 then '已核酸采样' else '未核酸采样' end as is_not_nucleic_acid_push,
                    -- 是否核酸采样
                    case when t.cz_state = 0 then '未处置' else '已处置' end as is_not_nucleic_acid_handle,
                    t.symptom as is_covid_19_symptoms_push,
                    -- 是否有干咳、乏力、咽痛、嗅（味）觉减退、腹泻等症状 0：否 1：是
                    case when t.cz_state = 0 then '未处置' else '已处置' end as is_covid_19_symptoms_handle,
                    case when t.temperature = 0 then '未体温超标' else '体温超标' end as is_abnomal_temperature_push,
                    -- 提问情况 0正常 1发烧
                    case when t.cz_state = 0 then '未处置' else '已处置' end as is_abnomal_temperature_handle,
                    case when t.is_highrisk = 0 then '非风险地区来返人员' else '风险地区来返人员' end as is_from_risk_area_push,
                    -- 14天内是否有中高风险旅居史 0：否 1：是
                    case when t.cz_state = 0 then '未处置' else '已处置' end as is_from_risk_area_handle,
                    row_number() over(partition by d.date_code,t.card_no order by t.arrive_date desc) as card_row_num,
                    from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as create_time
                from
                    dim_date_day d
                left join dwd_dpxp_lfsry_userfill_info_di t on  t.arrive_date = d.date_code
                where d.date_id >= '20220401' and d.date_id <= ${bizdate})a where card_row_num = 1;


                -- job_tdm_dpxp_lfsry_people_info

                /**
                * 大屏小屏-下转个人详细信息表
                * 全量表
                * auto: zhaichao
                * createdate: 20220525
                * 
                **/

                insert overwrite table tdm_dpxp_lfsry_people_info
                select 
                    d.date_id as date_id, 				-- 日ID
                    d.date_code as date_code, 			-- 日编码
                    d.date_name as date_name, 			-- 日名称
                    d.week_id as week_id, 				-- 周ID
                    d.month_id as month_id, 			-- 月份ID
                    d.season_id as season_id, 			-- 季度ID
                    d.year_id as year_id, 				-- 年份ID
                    a.type, -- 类型
                    a.district, -- 区县
                    a.street, -- 街道
                    a.community, -- 社区
                    a.village, -- 小区
                    a.lfs_type, -- 备案状态
                    a.is_filing, -- 是否备案
                    a.his_city_name, -- 来源城市
                    a.reason, -- 来返沈标记
                    count(*) as lfs_nums
                from dwd_dpxp_lfsry_people_info_di a 
                left join dim_date_day d on a.ds = d.date_id
                where a.district is not null and a.district <> ''
                    and a.district is not null and a.district <> ''
                    and a.street is not null and a.street <> ''
                    and a.community is not null and a.community <> ''
                    and a.cardno_row_num = 1
                group by
                    d.date_id, 				-- 日ID
                    d.date_code, 			-- 日编码
                    d.date_name, 			-- 日名称
                    d.week_id, 				-- 周ID
                    d.month_id, 			-- 月份ID
                    d.season_id, 			-- 季度ID
                    d.year_id, 				-- 年份ID
                    a.type, -- 类型
                    a.district, -- 区县
                    a.street, -- 街道
                    a.community, -- 社区
                    a.village, -- 小区
                    a.lfs_type, -- 备案状态
                    a.is_filing, -- 是否备案
                    a.his_city_name, -- 来源城市
                    a.reason; -- 来返沈标记
ADM层
ddl包
                -- ddl_adm_dpxp_lfsry_alarm_handle
                /**
                *
                *	来返沈告警处置表
                * 
                **/
                drop table if exists adm_dpxp_lfsry_alarm_handle;
                CREATE TABLE IF NOT EXISTS adm_dpxp_lfsry_alarm_handle(
                    date_time string comment '日期',
                    region_name string comment '区/县',
                    not_nucleic_acid_push_num int comment '核酸未检推送人数',
                    not_nucleic_acid_handle_num int comment '核酸未检处置人数',
                    covid_19_symptoms_push_num int comment '新冠症状推送人数',
                    covid_19_symptoms_handle_num int comment '新冠症状处置人数',
                    abnomal_temperature_push_num int comment '体温超标推送人数',
                    abnomal_temperature_handle_num int comment '体温超标处置人数',
                    from_risk_area_push_num int comment '风险地区来返人员推送数',
                    from_risk_area_handle_num int comment '风险地区来返人员处置数',
                    create_time string comment '创建时间'
                ) COMMENT '来返沈告警处置表' 
                -- partitioned by (ds string) 
                STORED AS ORC;


                -- job_adm_dpxp_lfsry_back_forth_gene
                /**
                *
                *	来返人员概览表
                * 
                **/
                drop table if exists adm_dpxp_lfsry_back_forth_gene;
                CREATE TABLE IF NOT EXISTS adm_dpxp_lfsry_back_forth_gene(
                    date_time string comment '日期',
                    region_name string comment '区/县',
                    back_sum_num int comment '累计来返沈',
                    back_day_num int comment '当日来返沈',
                    filing_num int comment '备案人员',
                    unfiling_num int comment '未备案人员',
                    create_time string comment '创建时间'
                ) COMMENT '来返人员概览表' 
                -- partitioned by (ds string) 
                STORED AS ORC;
job包

                    insert overwrite table adm_dpxp_lfsry_alarm_handle
                    select
                        a.date_time,
                        a.district,
                        SUM(a.not_nucleic_acid_push_num) OVER(PARTITION BY a.district ORDER BY a.date_time) AS not_nucleic_acid_push_num,
                        SUM(a.not_nucleic_acid_handle_num) OVER(PARTITION BY a.district ORDER BY a.date_time) AS not_nucleic_acid_handle_num,
                        SUM(a.covid_19_symptoms_push_num) OVER(PARTITION BY a.district ORDER BY a.date_time) AS covid_19_symptoms_push_num,
                        SUM(a.covid_19_symptoms_handle_num) OVER(PARTITION BY a.district ORDER BY a.date_time) AS covid_19_symptoms_handle_num,
                        SUM(a.abnomal_temperature_push_num) OVER(PARTITION BY a.district ORDER BY a.date_time) AS abnomal_temperature_push_num,
                        SUM(a.abnomal_temperature_handle_num) OVER(PARTITION BY a.district ORDER BY a.date_time) AS abnomal_temperature_handle_num,
                        SUM(a.from_risk_area_push_num) OVER(PARTITION BY a.district ORDER BY a.date_time) AS from_risk_area_push_num,
                        SUM(a.from_risk_area_handle_num) OVER(PARTITION BY a.district ORDER BY a.date_time) AS from_risk_area_handle_num,
                        from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as create_time
                    from
                    (select
                        date_time,
                        district,
                        count (if(is_not_nucleic_acid_push = '未核酸采样',1,null)) as not_nucleic_acid_push_num,
                        count (if(is_not_nucleic_acid_handle != '未处置',1,null)) as not_nucleic_acid_handle_num,
                        count (if(is_covid_19_symptoms_push != '无疫情症状',1,null)) as covid_19_symptoms_push_num,
                        count (if(is_covid_19_symptoms_handle != '未处置',1,null)) as covid_19_symptoms_handle_num,
                        count (if(is_abnomal_temperature_push = '体温超标',1,null )) as abnomal_temperature_push_num,
                        count (if(is_abnomal_temperature_handle != '未处置',1,null)) as abnomal_temperature_handle_num,
                        count (if(is_from_risk_area_push = '风险地区来返人员',1,null)) as from_risk_area_push_num,
                        count (if(is_from_risk_area_handle != '未处置',1,null)) as from_risk_area_handle_num
                    from tdm_dpxp_lfsry_alarm_handle_in
                    where district is not null
                    group by date_time,district
                    union all
                    select
                        date_time,
                        '全市' as district,
                        count (if(is_not_nucleic_acid_push = '未核酸采样',1,null)) as not_nucleic_acid_push_num,
                        count (if(is_not_nucleic_acid_handle != '未处置',1,null)) as not_nucleic_acid_handle_num,
                        count (if(is_covid_19_symptoms_push != '无疫情症状',1,null)) as covid_19_symptoms_push_num,
                        count (if(is_covid_19_symptoms_handle != '未处置',1,null)) as covid_19_symptoms_handle_num,
                        count (if(is_abnomal_temperature_push = '体温超标',1,null )) as abnomal_temperature_push_num,
                        count (if(is_abnomal_temperature_handle != '未处置',1,null)) as abnomal_temperature_handle_num,
                        count (if(is_from_risk_area_push = '风险地区来返人员',1,null)) as from_risk_area_push_num,
                        count (if(is_from_risk_area_handle != '未处置',1,null)) as from_risk_area_handle_num
                    from tdm_dpxp_lfsry_alarm_handle_in
                    where district is not null
                    group by date_time
                    )a;


                    -- insert overwrite table adm_dpxp_lfsry_alarm_handle_in
                    select
                        a.date_time,
                        a.hierarchy,
                        a.place_name,
                        a.next_name,
                        sum(a.not_nucleic_acid_push_num) over(partition by hierarchy,place_name,next_name order by date_time rows between unbounded preceding and current row) as not_nucleic_acid_push_num,
                        sum(a.not_nucleic_acid_handle_num) over(partition by hierarchy,place_name,next_name order by date_time rows between unbounded preceding and current row) as not_nucleic_acid_push_num,
                        sum(a.covid_19_symptoms_push_num) over(partition by hierarchy,place_name,next_name order by date_time rows between unbounded preceding and current row) as not_nucleic_acid_push_num,
                        sum(a.covid_19_symptoms_handle_num) over(partition by hierarchy,place_name,next_name order by date_time rows between unbounded preceding and current row) as not_nucleic_acid_push_num,
                        sum(a.abnomal_temperature_push_num) over(partition by hierarchy,place_name,next_name order by date_time rows between unbounded preceding and current row) as not_nucleic_acid_push_num,
                        sum(a.abnomal_temperature_handle_num) over(partition by hierarchy,place_name,next_name order by date_time rows between unbounded preceding and current row) as not_nucleic_acid_push_num,
                        sum(a.from_risk_area_push_num) over(partition by hierarchy,place_name,next_name order by date_time rows between unbounded preceding and current row) as not_nucleic_acid_push_num,
                        sum(a.from_risk_area_handle_num) over(partition by hierarchy,place_name,next_name order by date_time rows between unbounded preceding and current row) as not_nucleic_acid_push_num,
                        a.create_time
                    from(select
                        date_time,
                        '区县' as hierarchy,
                        district as place_name,
                        street as next_name,
                        count (if(is_not_nucleic_acid_push = '未核酸采样',1,null)) as not_nucleic_acid_push_num,
                        count(if(is_not_nucleic_acid_handle != '未处置',1,null)) as not_nucleic_acid_handle_num,
                        count (if(is_covid_19_symptoms_push != '无疫情症状',1,null)) as covid_19_symptoms_push_num,
                        count(if(is_covid_19_symptoms_handle != '未处置',1,null)) as covid_19_symptoms_handle_num,
                        count (if(is_abnomal_temperature_push = '体温超标',1,null )) as abnomal_temperature_push_num,
                        count(if(is_abnomal_temperature_handle != '未处置',1,null)) as abnomal_temperature_handle_num,
                        count (if(is_from_risk_area_push = '风险地区来返人员',1,null)) as from_risk_area_push_num,
                        count(if(is_from_risk_area_handle != '未处置',1,null)) as from_risk_area_handle_num,
                        from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as create_time
                    from tdm_dpxp_lfsry_alarm_handle_in
                    where
                        district is not null
                    group by date_time,district,street
                    union all
                    select
                        date_time,
                        '街道' as hierarchy,
                        street as place_name,
                        community as next_name,
                        count (if(is_not_nucleic_acid_push = '未核酸采样',1,null)) as not_nucleic_acid_push_num,
                        count(if(is_not_nucleic_acid_handle != '未处置',1,null)) as not_nucleic_acid_handle_num,
                        count (if(is_covid_19_symptoms_push != '无疫情症状',1,null)) as covid_19_symptoms_push_num,
                        count(if(is_covid_19_symptoms_handle != '未处置',1,null)) as covid_19_symptoms_handle_num,
                        count (if(is_abnomal_temperature_push = '体温超标',1,null )) as abnomal_temperature_push_num,
                        count(if(is_abnomal_temperature_handle != '未处置',1,null)) as abnomal_temperature_handle_num,
                        count (if(is_from_risk_area_push = '风险地区来返人员',1,null)) as from_risk_area_push_num,
                        count(if(is_from_risk_area_handle != '未处置',1,null)) as from_risk_area_handle_num,
                        from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') as create_time
                    from tdm_dpxp_lfsry_alarm_handle_in
                    where street is not null
                    group by date_time,street,community
                    ) a order by a.date_time desc;