--��ѯ�ڱ�ϵͳ�����·������ľ���μ������Ĵ���
select count(�ֵ�����)as ����
from
(
	select ���֤��
	from
	   (	select top(1) ����,count(����)as ������
			from ס��
			group by ����
			order by ������ desc
		) A,���� B
	where A.���� = B.����
) C inner join ����ֵ�����ӱ� 
on C.���֤�� = ����ֵ�����ӱ�.���֤��