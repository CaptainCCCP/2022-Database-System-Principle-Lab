-- ��ѯ��ĥ���ֵ��ĵ�Ԫ��������
--������ѯ
select sum(��������)as ��ĥ����Ԫ������
from (¥ inner join С�� on ¥.С����� = С��.С�����)inner join �ֵ����´�
on С��.�ֵ����´���� = �ֵ����´�.���
where ����='��ĥ��'
--�Ӳ�ѯ
select sum(��������)as ��ĥ����Ԫ������
from  ¥
where С����� in(select С�����
					from С��
					where �ֵ����´���� = 
									(select ���
								  	 from  �ֵ����´�
									 where ����='��ĥ��'
									 )
									 )