--查询南磨房街道各个小区的楼宇数。
--关联查询
select 楼.小区编号,count(*)as 南磨房各小区楼宇数
from (楼 inner join 小区 on 楼.小区编号 = 小区.小区编号)inner join 街道办事处
on 小区.街道办事处编号 = 街道办事处.编号
where 名称='南磨房'
group by 楼.小区编号
--子查询
select 小区编号,count(*)as 南磨房各小区楼宇数
from  楼
where 小区编号 in(select 小区编号
					from 小区
					where 街道办事处编号 = 
									(select 编号
									 from  街道办事处 
									 where 名称='南磨房'
									 )
									 )
group by 小区编号