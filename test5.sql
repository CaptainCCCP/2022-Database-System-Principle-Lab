--查询南磨房街道落户人口数最多的楼宇
--关联查询
select top(1)住户.楼号,count(住户.楼号)as 最多人口数
from ((住户 inner join 楼 on 住户.楼号 = 楼.楼号)inner join 小区
on 小区.小区编号 = 楼.小区编号)inner join 街道办事处
on 小区.街道办事处编号 = 街道办事处.编号
where 名称='南磨房'
group by 住户.楼号
order by 最多人口数 desc
--子查询
select top(1)住户.楼号,count(住户.楼号)as 最多人口数
from 住户
where 住户.楼号 in(select 楼号--南磨房的楼12347
				   from  楼
				   where 小区编号 in(select 小区编号
									 from 小区
									 where 街道办事处编号 = 
													(select 编号
													 from  街道办事处 
													 where 名称='南磨房'
													 )
												 )
				)
group by 住户.楼号
order by 最多人口数 desc