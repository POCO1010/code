insert overwrite local directory '/opt/module/hive-3.1.2/datas/insert-result' 
select * from emptest;

insert overwrite local directory '/opt/module/hive-3.1.2/datas/insert-result'
row format delimited fields terminated by ':'
select * from emptest;

insert overwrite  directory '/insert-result'
row format delimited fields terminated by ':'
select * from emptest;

alter TABLE emptest ADD COLUMNS (sal DOUBLE);

alter TABLE emptest ADD COLUMNS (adres string);

export table emptest to '/emptest';

