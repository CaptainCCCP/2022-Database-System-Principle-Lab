--��ѯ��ĥ���ֵ��仧�˿������ĵ�Ԫ����ÿ�׵�Ԫ����ƽ���仧�˿���
--������ѯ
select outside.���ƺ�,avg(outside.�˿���)as ƽ���仧����
from(
	select top(2) A.���ƺ�,count(���֤��)as �˿���
	from (((���� A inner join ס�� B on A.���ƺ� = B.���ƺ�)inner join ¥ C
	on C.¥�� = B.¥��)inner join С�� D 
	on D.С����� = C.С�����)inner join �ֵ����´� E
	on E.��� = D.�ֵ����´����
	where ����='��ĥ��'
	group by A.���ƺ�
	order by �˿��� desc
)as outside
group by outside.���ƺ�
--�Ӳ�ѯ**
--select ס�����,count(*)as ����˿���
--from ס�� inner join ����
--on ס��.���ƺ� = ����.���ƺ�
--where ס��.¥�� in(select ¥��--��ĥ����¥12347
--				   from  ¥
--				   where С����� in(select С�����
--								 from С��
--									 where �ֵ����´���� = 
--													(select ���
--													 from  �ֵ����´� 
--													 where ����='��ĥ��'
--													 )
--												 )
--				)
--group by ס�����
--order by ����˿��� desc