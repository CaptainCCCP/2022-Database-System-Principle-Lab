--��ѯ��ĥ���ֵ�����С����¥������
--������ѯ
select ¥.С�����,count(*)as ��ĥ����С��¥����
from (¥ inner join С�� on ¥.С����� = С��.С�����)inner join �ֵ����´�
on С��.�ֵ����´���� = �ֵ����´�.���
where ����='��ĥ��'
group by ¥.С�����
--�Ӳ�ѯ
select С�����,count(*)as ��ĥ����С��¥����
from  ¥
where С����� in(select С�����
					from С��
					where �ֵ����´���� = 
									(select ���
									 from  �ֵ����´� 
									 where ����='��ĥ��'
									 )
									 )
group by С�����