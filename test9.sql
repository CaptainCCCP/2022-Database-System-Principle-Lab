--查询南磨房街道参加文体活动人数（不统计次数）占落户居民人数比例最高的楼宇和小区
select top(10)小区编号,cast(小区参加数*1.0/小区住人数 as decimal(10,2))as 小区比例,楼号,楼比例
from
(select top(10)小区编号,sum(distinct 楼住人数)as 小区住人数,sum(distinct 参加人数)as 小区参加数,
	楼号,楼比例
	from
	(select One.楼号,小区编号,参加人数,楼住人数,cast(参加人数*1.0/楼住人数 as decimal(10,2))as 楼比例--,小区参与人数
	from (select top(10) C.楼号,D.小区编号,count(distinct A.身份证号)as 参加人数--,count()as 小区参与人数
			from 
			((((
			居民 A inner join 住户 B on A.门牌号 = B.门牌号)
			inner join 楼 C on C.楼号 = B.楼号)
			inner join 小区 D on D.小区编号 = C.小区编号)
			inner join 街道办事处 E on E.编号 = D.街道办事处编号),

			(居民街道活动连接表 F inner join 街道活动 G on F.街道活动编号 = G.街道活动编号)
			where A.身份证号 = F.身份证号
			group by C.楼号,D.小区编号
			order by 参加人数 desc
			)as One 
			inner join
			(select A.楼号,count(身份证号)as 楼住人数
					   from 楼 A inner join 住户 B
					   on A.楼号 = B.楼号
					   inner join 居民 C
					   on B.门牌号 = C.门牌号
					   group by A.楼号)as Two on One.楼号 = Two.楼号)as Main
group by 小区编号,楼号,楼比例)as MMain