--��ѯ��ĥ���ֵ�����С���仧���˿���
--������ѯ
select С��.С�����,count(*)as ��ĥ���仧���˿���
from ((ס�� inner join ¥ on ס��.¥�� = ¥.¥��)inner join С��
on С��.С����� = ¥.С�����)inner join �ֵ����´�
on �ֵ����´�.��� = С��.�ֵ����´����
where ����='��ĥ��'
group by С��.С�����
--�Ӳ�ѯ
select С�����,count(*)as ��ĥ���仧���˿���
from ס�� inner join ¥
on ס��.¥�� = ¥.¥��
where ס��.¥�� in(select ¥��
			  from  ¥
			  where С����� in(select С�����
								from С��
								where �ֵ����´���� = 
													(select ���
													 from  �ֵ����´� 
													 where ����='��ĥ��'
													 )
													 )
			  group by ¥��
				)
group by С�����