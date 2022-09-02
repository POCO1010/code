insert overwrite table xingzhengquyu_3
select
*
from
x
(
select 
cloume1	 ,
cloume2	 ,
cloume3	 
from xingzhengquyu
union all
select 
cloume4	 ,
cloume5	 ,
cloume6	 
from xingzhengquyu
union all
select 
cloume7	 ,
cloume8	 ,
cloume9	 
from xingzhengquyu
)x

select * from xingzhengquyu_3;