--查询南磨房街道参加文体活动人次数最多和最少的小区
select top(1) D.小区编号,count(distinct A.身份证号)as 参加人数
from ((((居民 A inner join 住户 B
on A.门牌号 = B.门牌号)inner join 楼 C
on C.楼号 = B.楼号)inner join 小区 D
on D.小区编号 = C.小区编号)inner join 街道办事处 E
on E.编号 = D.街道办事处编号),(居民街道活动连接表 F inner join 街道活动 G 
on F.街道活动编号 = G.街道活动编号)
where A.身份证号 = F.身份证号
group by D.小区编号
order by 参加人数 asc
--order by 参加人数 asc最少
--order by 参加人数 desc最多