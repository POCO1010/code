 TABLE IF EXISTS xingzhengquyu;
CREATE  TABLE IF NOT EXISTS xingzhengquyu (
cloume1	  string COMMENT '年份',
cloume2	  string COMMENT '区域编号',
cloume3	  string COMMENT '区域名称',
cloume4	  string COMMENT '年份',
cloume5	  string COMMENT '区域编号',
cloume6	  string COMMENT '区域名称',
cloume7	  string COMMENT '年份',
cloume8	  string COMMENT '区域编号',
cloume9	  string COMMENT '区域名称',
cloume10	  string COMMENT '年份',
cloume11	  string COMMENT '区域编号',
cloume12	  string COMMENT '区域名称',
cloume13	  string COMMENT '年份',
cloume14	  string COMMENT '区域编号',
cloume15	  string COMMENT '区域名称',
cloume16	  string COMMENT '年份',
cloume17	  string COMMENT '区域编号',
cloume18	  string COMMENT '区域名称',
cloume19	  string COMMENT '年份',
cloume20	  string COMMENT '区域编号',
cloume21	  string COMMENT '区域名称',
cloume22	  string COMMENT '年份',
cloume23	  string COMMENT '区域编号',
cloume24	  string COMMENT '区域名称',
cloume25	  string COMMENT '年份',
cloume26	  string COMMENT '区域编号',
cloume27	  string COMMENT '区域名称',
cloume28	  string COMMENT '年份',
cloume29	  string COMMENT '区域编号',
cloume30	  string COMMENT '区域名称',
cloume31	  string COMMENT '年份',
cloume32	  string COMMENT '区域编号',
cloume33	  string COMMENT '区域名称',
cloume34	  string COMMENT '年份',
cloume35	  string COMMENT '区域编号',
cloume36	  string COMMENT '区域名称',
cloume37	  string COMMENT '年份',
cloume38	  string COMMENT '区域编号',
cloume39	  string COMMENT '区域名称',
cloume40	  string COMMENT '年份',
cloume41	  string COMMENT '区域编号',
cloume42	  string COMMENT '区域名称',
cloume43	  string COMMENT '年份',
cloume44	  string COMMENT '区域编号',
cloume45	  string COMMENT '区域名称',
cloume46	  string COMMENT '年份',
cloume47	  string COMMENT '区域编号',
cloume48	  string COMMENT '区域名称',
cloume49	  string COMMENT '年份',
cloume50	  string COMMENT '区域编号',
cloume51	  string COMMENT '区域名称',
cloume52	  string COMMENT '年份',
cloume53	  string COMMENT '区域编号',
cloume54	  string COMMENT '区域名称',
cloume55	  string COMMENT '年份',
cloume56	  string COMMENT '区域编号',
cloume57	  string COMMENT '区域名称',
cloume58	  string COMMENT '年份',
cloume59	  string COMMENT '区域编号',
cloume60	  string COMMENT '区域名称',
cloume61	  string COMMENT '年份',
cloume62	  string COMMENT '区域编号',
cloume63	  string COMMENT '区域名称',
cloume64	  string COMMENT '年份',
cloume65	  string COMMENT '区域编号',
cloume66	  string COMMENT '区域名称',
cloume67	  string COMMENT '年份',
cloume68	  string COMMENT '区域编号',
cloume69	  string COMMENT '区域名称',
cloume70	  string COMMENT '年份',
cloume71	  string COMMENT '区域编号',
cloume72	  string COMMENT '区域名称',
cloume73	  string COMMENT '年份',
cloume74	  string COMMENT '区域编号',
cloume75	  string COMMENT '区域名称',
cloume76	  string COMMENT '年份',
cloume77	  string COMMENT '区域编号',
cloume78	  string COMMENT '区域名称',
cloume79	  string COMMENT '年份',
cloume80	  string COMMENT '区域编号',
cloume81	  string COMMENT '区域名称',
cloume82	  string COMMENT '年份',
cloume83	  string COMMENT '区域编号',
cloume84	  string COMMENT '区域名称',
cloume85	  string COMMENT '年份',
cloume86	  string COMMENT '区域编号',
cloume87	  string COMMENT '区域名称',
cloume88	  string COMMENT '年份',
cloume89	  string COMMENT '区域编号',
cloume90	  string COMMENT '区域名称',
cloume91	  string COMMENT '年份',
cloume92	  string COMMENT '区域编号',
cloume93	  string COMMENT '区域名称',
cloume94	  string COMMENT '年份',
cloume95	  string COMMENT '区域编号',
cloume96	  string COMMENT '区域名称',
cloume97	  string COMMENT '年份',
cloume98	  string COMMENT '区域编号',
cloume99	  string COMMENT '区域名称',
cloume100	  string COMMENT '年份',
cloume101	  string COMMENT '区域编号',
cloume102	  string COMMENT '区域名称',
cloume103	  string COMMENT '年份',
cloume104	  string COMMENT '区域编号',
cloume105	  string COMMENT '区域名称',
cloume106	  string COMMENT '年份',
cloume107	  string COMMENT '区域编号',
cloume108	  string COMMENT '区域名称',
cloume109	  string COMMENT '年份',
cloume110	  string COMMENT '区域编号',
cloume111	  string COMMENT '区域名称',
cloume112	  string COMMENT '年份',
cloume113	  string COMMENT '区域编号',
cloume114	  string COMMENT '区域名称',
cloume115	  string COMMENT '年份',
cloume116	  string COMMENT '区域编号',
cloume117	  string COMMENT '区域名称',
cloume118	  string COMMENT '年份',
cloume119	  string COMMENT '区域编号',
cloume120	  string COMMENT '区域名称',
cloume121	  string COMMENT '年份',
cloume122	  string COMMENT '区域编号',
cloume123	  string COMMENT '区域名称'
) 
COMMENT '行政区域导入' 
row format delimited fields terminated by ','
lines terminated by '\n'
STORED AS textfile;

LOAD DATA LOCAL INPATH '{xingzhengquyu.csv}' OVERWRITE INTO TABLE xingzhengquyu;


-- from_unixtime(unix_timestamp(), 'yyyy-MM-dd HH:dd:ss') 


select * from xingzhengquyu;