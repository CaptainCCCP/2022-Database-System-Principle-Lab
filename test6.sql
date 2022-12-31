--查询南磨房街道落户人口数最多的单元房，每套单元房的平均落户人口数
--关联查询
select outside.门牌号,avg(outside.人口数)as 平均落户人数
from(
	select top(2) A.门牌号,count(身份证号)as 人口数
	from (((居民 A inner join 住户 B on A.门牌号 = B.门牌号)inner join 楼 C
	on C.楼号 = B.楼号)inner join 小区 D 
	on D.小区编号 = C.小区编号)inner join 街道办事处 E
	on E.编号 = D.街道办事处编号
	where 名称='南磨房'
	group by A.门牌号
	order by 人口数 desc
)as outside
group by outside.门牌号
--子查询**
--select 住户编号,count(*)as 最多人口数
--from 住户 inner join 居民
--on 住户.门牌号 = 居民.门牌号
--where 住户.楼号 in(select 楼号--南磨房的楼12347
--				   from  楼
--				   where 小区编号 in(select 小区编号
--								 from 小区
--									 where 街道办事处编号 = 
--													(select 编号
--													 from  街道办事处 
--													 where 名称='南磨房'
--													 )
--												 )
--				)
--group by 住户编号
--order by 最多人口数 desc