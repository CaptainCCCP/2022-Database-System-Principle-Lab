--��ѯ��ĥ���ֵ��仧�˿�������¥��
--������ѯ
select top(1)ס��.¥��,count(ס��.¥��)as ����˿���
from ((ס�� inner join ¥ on ס��.¥�� = ¥.¥��)inner join С��
on С��.С����� = ¥.С�����)inner join �ֵ����´�
on С��.�ֵ����´���� = �ֵ����´�.���
where ����='��ĥ��'
group by ס��.¥��
order by ����˿��� desc
--�Ӳ�ѯ
select top(1)ס��.¥��,count(ס��.¥��)as ����˿���
from ס��
where ס��.¥�� in(select ¥��--��ĥ����¥12347
				   from  ¥
				   where С����� in(select С�����
									 from С��
									 where �ֵ����´���� = 
													(select ���
													 from  �ֵ����´� 
													 where ����='��ĥ��'
													 )
												 )
				)
group by ס��.¥��
order by ����˿��� desc