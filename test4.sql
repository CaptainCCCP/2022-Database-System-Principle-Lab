--查询南磨房街道各个小区落户的人口数
--关联查询
select 小区.小区编号,count(*)as 南磨房落户的人口数
from ((住户 inner join 楼 on 住户.楼号 = 楼.楼号)inner join 小区
on 小区.小区编号 = 楼.小区编号)inner join 街道办事处
on 街道办事处.编号 = 小区.街道办事处编号
where 名称='南磨房'
group by 小区.小区编号
--子查询
select 小区编号,count(*)as 南磨房落户的人口数
from 住户 inner join 楼
on 住户.楼号 = 楼.楼号
where 住户.楼号 in(select 楼号
			  from  楼
			  where 小区编号 in(select 小区编号
								from 小区
								where 街道办事处编号 = 
													(select 编号
													 from  街道办事处 
													 where 名称='南磨房'
													 )
													 )
			  group by 楼号
				)
group by 小区编号