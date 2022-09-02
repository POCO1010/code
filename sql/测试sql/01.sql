-- 表映射
-- org_accountingbook 	ods_fin_nc_org_accountingbook_df
-- gl_balance 			ods_fin_nc_gl_balance_df
-- gl_detail1			ods_fin_nc_gl_detail1_df
-- gl_docfree1			ods_fin_nc_gl_docfree1_df
-- bd_accasoa			ods_fin_nc_bd_accasoa_df
-- bd_account			ods_fin_nc_bd_account_df
-- bd_currtype			ods_fin_nc_bd_currtype_df
-- bd_vouchertype		ods_fin_nc_bd_vouchertype_df
-- gl_voucher			ods_fin_nc_gl_voucher_df
-- bd_accassitem		ods_fin_nc_bd_accassitem_df
-- bd_accass			ods_fin_nc_bd_accass_df
-- gl_contrastruleass	ods_fin_nc_gl_contrastruleass_df

GLAmt('6001010101','2021','01','','贷','本币','N','10105','组织本币','0001') 结果为 8030.65（万元）
参数列表：
1)科目 可以理解为指标
2)年度 年份
3)期间 月份
4)辅助项 莫名其妙的一些东西
5)方向 借或者贷
6)币种 本币，辅币什么的
7)包含未记账 是否将没有结算的哪些帐也算进去
8)主体 子公司
9)返回币种 
10)账簿 小公司 子公司>小公司

查询结果表为 gl_balance，通过关联其他表，来相关参数的修改
1、科目的筛选字段为pa_accasoa,寻找这个字段的参数需要关联其他两个表
a.首先执行sql
select 
	book.pk_curraccchart 
from 
	org_orgs  org
	left join org_accountingbook book on org.pk_org = book.pk_relorg 
where 
	org.code = '101' 
    and org.isbusinessunit = 'Y';  
-- 101 函数主体，即第八个参数 ；Y 写死 结果 10011A100000000045WL
b.再执行sql
select 
	a.pk_accasoa 
from 
	ods_fin_nc_bd_accasoa_df a 
    left join ods_fin_nc_bd_account_df b on a.pk_account = b.pk_account 
where 
	b.code = '6001010103' 
    and a.pk_accchart='10011A100000000045WL'
-- 6001010103 代码科目，即第一个参数， 10011A100000000045WL 为上一条sql的查询结果， 
-- 本条sql的查询结果为 10011A10000000009M1W

-- 注意：当本字段长度为4，代表其为一级科目，长度为6时，代表其为二级科目，长度为8时，代表其为三级科目，以此类推
-- 一级科目的数据无法直接获取，要先获取它下属的二级科目，获得所有的二级科目的数据后，进行累加；
-- 获取一级科目下的二级科目ID的sql为：
select 
	code 
from 
	FR_Report_Form.bd_account 
where 
	pid in (select 
            	pk_account 
            from 
            	FR_Report_Form.bd_account 
            where 
            	code ='6001' and 
            	acclev = '1.0');
--   其中6001为一级科目的科目id，1.0代表一级科目，写死  
2、年份
年份可在gl_balance表中直接找到，对应的字段为yearv，其中文备注为会计年度
3、期间
期间代表月份，可在gl_balance表中直接找到，对应的字段为adjustperiod，其中文备注为调整期间
4、辅助项
辅助项为一个比较特殊的参数，其该参数通过assid字段来进行关联，关联的数据需要通过多个表进行关联得到
a.首先执行sql
select 
	pk_accassitem 
from 
	bd_accassitem  
where 
	name = '预算指标辅助';
-- 其中 预算指标辅助 为glamt函数参数列表中该参数中文部分，即第4个参数的中文部分
-- 此次查询结果为 10011A100000000008KQ
b.运行sql 
select 
	num 
from 
	fi_freemap 
where 
	mod = '00' 
    and pk_checktype = '10011A100000000008KQ';
-- 其中mod为写死的数字，10011A100000000008KQ 为上一个sql的查询结果
-- 此次查询结果为 19
c.执行sql
select 
	defaulttablename 
from 
	bd_accassitem item 
    left join md_class clazz on item.classid = clazz.id 
where 
	item.name = '预算指标辅助';
-- 其中 预算指标辅助 为函数参数列表辅助项的中文部分，即第四个参数的中文部分
-- 本次查询的结果为 bd_defdoc
d.执行sql
select 
	pk_defdoc 
from 
	bd_defdoc doc 
WHERE 
	doc.CODE = '04010204';
-- 其中 04010204 为函数参数列表辅助项的数字部分，即第四个参数的数字部分; 表bd_defdoc为上一条sql的查询结果
-- 本次查询结果为 10011A10000000007AVF
e.最后，执行sql
select 
	assid 
from 
	gl_docfree1 
where 
	F19 = '10011A10000000007AVF'
-- 其中 10011A10000000007AVF 为上一个sql的查询结果，F19中的 19 为b sql的查询结果，即第二条sql的查询结果
-- 本次查询结果有三条 为10011A1000000001VWWC， 10011A10000000028RQ4， 10011A1000000006NSK3
-- 将本次sql的查询结果作为gl_balance表assid的参数带入，进行查询
5、方向
这个方向代表 借/贷 可以简单的理解为借为支出，贷为收入
该参数不需要加入到结果查询sql的where条件上，直接在结果字段上选择
分别有不同的结果字段带表对应的方向
6、币种
该币种参数为默认的，不会变
该参数同样不需要加入到结果查询sql的where条件上，直接在结果字段上选择
分别有不同的结果字段带表对应的不同的币种
7、包含未记账
包含未记账为一个比较特殊的参数，该参数需要将结果表换掉
gl_balance 表中的数据为已经记账的数据，在该表中找不到未记账的结果数据，
未记账的数据在gl_detail表中，同时需要满足字段 pk_managerv 的值为 'N/A'
8)主体 
主题代表某一个子公司，该参数不直接参与结果的，作为其他查询条件的辅助条件
9）返回币种
同币种相同，该参数为默认的，不会变
该参数同样不需要加入到结果查询sql的where条件上，直接在结果字段上选择
分别有不同的结果字段带表对应的不同的币种
10）账簿 
不同的小公司有不同的账簿，该参数作为结果表中gl_detail中的pk_accountingbook的where查询条件参与查询
该值来源于表org_accountingbook，查询方式为：
select 
	pk_accountingbook 
from 
	ORG_ACCOUNTINGBOOK 
where code = '101-0001';
-- 其中'101-0001' 为函数中主体和账簿参数通过 '-' 进行拼接，即第八个和第十个参数。

最终的结果查询sql为
select 
	distinct gl_balan.pk_accountingbook,
    gl_balan.pk_accasoa,
    sum(gl_balan.debitquantity) debitquantitysum, -- 借方数量
    sum(gl_balan.creditquantity) creditquantitysum, -- 贷方数量
    sum(gl_balan.debitamount) debitamountsum, -- 原币借发生额
    sum(gl_balan.creditamount) creditamountsum, -- 原币贷发生额
    sum(gl_balan.fracdebitamount) fracdebitamountsum, -- 辅币借发生额
    sum(gl_balan.fraccreditamount) fraccreditamountsum, -- 辅币贷发生额
    sum(gl_balan.localdebitamount) localdebitamountsum, -- 本币借发生额
    sum(gl_balan.localcreditamount) localcreditamountsum, -- 本币贷发生额
    sum(gl_balan.groupdebitamount) groupdebitamountsum, -- 集团本币借发生额
    sum(gl_balan.globaldebitamount) globaldebitamountsum, -- 全局本币借发生额
    sum(gl_balan.groupcreditamount) groupcreditamountsum, -- 集团本币贷发生额
    sum(gl_balan.globalcreditamount) globalcreditamountsum -- 全局本币贷发生额
from 
	gl_balance gl_balan
where 
	gl_balan.pk_accountingbook = '10011A10000000003T0P' -- 核算账簿
    and gl_balan.year = '2021' --会计年
    and gl_balan.adjustperiod >= '01' --会计期间
    and gl_balan.adjustperiod <= '01' --会计期间
    -- and gl_balan.voucherkind <> 5
    and gl_balan.pk_accasoa = '10011A10000000009M1W' --会计科目
group by gl_balan.pk_accountingbook, gl_balan.pk_accasoa
order by gl_balan.pk_accountingbook, gl_balan.pk_accasoa