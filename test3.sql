-- 查询南磨房街道的单元房总套数
--关联查询
select sum(房屋套数)as 南磨房单元房总数
from (楼 inner join 小区 on 楼.小区编号 = 小区.小区编号)inner join 街道办事处
on 小区.街道办事处编号 = 街道办事处.编号
where 名称='南磨房'
--子查询
select sum(房屋套数)as 南磨房单元房总数
from  楼
where 小区编号 in(select 小区编号
					from 小区
					where 街道办事处编号 = 
									(select 编号
								  	 from  街道办事处
									 where 名称='南磨房'
									 )
									 )