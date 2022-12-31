-- 查询2022年一年之中启动的、参加人数不少于5人的文体活动。
--用关联查询
select 街道活动名称
from 街道活动 A inner join 居民街道活动连接表 B
on A.街道活动编号 = B.街道活动编号
where 街道活动日期 like '2022%'
group by 街道活动名称
having count(身份证号)>4  
--用子查询
select 街道活动名称 
from 街道活动
where 街道活动日期 like '2022%' and 街道活动编号 in
				(select 街道活动编号 
				 from  居民街道活动连接表 
				 group by 街道活动编号
				 having count(身份证号)>4  
				 )