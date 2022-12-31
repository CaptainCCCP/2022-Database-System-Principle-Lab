--查询在本系统中名下房产最多的居民参加文体活动的次数
select count(街道活动编号)as 次数
from
(
	select 身份证号
	from
	   (	select top(1) 户主,count(户主)as 房产数
			from 住户
			group by 户主
			order by 房产数 desc
		) A,居民 B
	where A.户主 = B.姓名
) C inner join 居民街道活动连接表 
on C.身份证号 = 居民街道活动连接表.身份证号