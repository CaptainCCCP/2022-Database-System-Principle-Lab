--��ѯ��ĥ���ֵ��μ�������������ͳ�ƴ�����ռ�仧��������������ߵ�¥���С��
select top(10)С�����,cast(С���μ���*1.0/С��ס���� as decimal(10,2))as С������,¥��,¥����
from
(select top(10)С�����,sum(distinct ¥ס����)as С��ס����,sum(distinct �μ�����)as С���μ���,
	¥��,¥����
	from
	(select One.¥��,С�����,�μ�����,¥ס����,cast(�μ�����*1.0/¥ס���� as decimal(10,2))as ¥����--,С����������
	from (select top(10) C.¥��,D.С�����,count(distinct A.���֤��)as �μ�����--,count()as С����������
			from 
			((((
			���� A inner join ס�� B on A.���ƺ� = B.���ƺ�)
			inner join ¥ C on C.¥�� = B.¥��)
			inner join С�� D on D.С����� = C.С�����)
			inner join �ֵ����´� E on E.��� = D.�ֵ����´����),

			(����ֵ�����ӱ� F inner join �ֵ�� G on F.�ֵ����� = G.�ֵ�����)
			where A.���֤�� = F.���֤��
			group by C.¥��,D.С�����
			order by �μ����� desc
			)as One 
			inner join
			(select A.¥��,count(���֤��)as ¥ס����
					   from ¥ A inner join ס�� B
					   on A.¥�� = B.¥��
					   inner join ���� C
					   on B.���ƺ� = C.���ƺ�
					   group by A.¥��)as Two on One.¥�� = Two.¥��)as Main
group by С�����,¥��,¥����)as MMain