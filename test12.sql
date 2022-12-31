--查询参加了73周年国庆活动人数最多的小区 12题
select 小区编号,count(小区编号)as 人数
from
	(
	select 楼号,户主
	from
				(
				select 门牌号
				from	
						居民 inner join
								(
										select 身份证号----------------------------参加人身份证
										from 居民街道活动连接表 A,
													(
													select 街道活动编号
													from 街道活动
													where 街道活动名称 = '73周年国庆活动'
													) B
										where A.街道活动编号 = B.街道活动编号------
								) C on 居民.身份证号 = C.身份证号
				) D , 住户
	where D.门牌号 = 住户.门牌号
	) E, 楼
where E.楼号 = 楼.楼号
group by 小区编号