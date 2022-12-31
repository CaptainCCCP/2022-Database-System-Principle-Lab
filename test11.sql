--查询在本系统中名下有房产而从不参加文体活动的居民
select 身份证号
from(
select C.身份证号,街道活动编号-----------------------------
from
(
	select 身份证号--------------------------有房产的身份证号
	from
	   (	select 户主,count(户主)as 房产数
			from 住户
			group by 户主
		) A,居民 B
	where A.户主 = B.姓名--------------------
) C left join 居民街道活动连接表 
on C.身份证号 = 居民街道活动连接表.身份证号
group by C.身份证号,居民街道活动连接表.街道活动编号)as New-------
where New.街道活动编号 is NULL