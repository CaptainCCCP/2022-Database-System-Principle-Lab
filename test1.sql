-- ��ѯ2022��һ��֮�������ġ��μ�����������5�˵�������
--�ù�����ѯ
select �ֵ������
from �ֵ�� A inner join ����ֵ�����ӱ� B
on A.�ֵ����� = B.�ֵ�����
where �ֵ������ like '2022%'
group by �ֵ������
having count(���֤��)>4  
--���Ӳ�ѯ
select �ֵ������ 
from �ֵ��
where �ֵ������ like '2022%' and �ֵ����� in
				(select �ֵ����� 
				 from  ����ֵ�����ӱ� 
				 group by �ֵ�����
				 having count(���֤��)>4  
				 )