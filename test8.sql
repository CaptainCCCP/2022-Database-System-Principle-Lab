--��ѯ��ĥ���ֵ��μ������˴����������ٵ�¥��
select top(1) C.¥��,count(distinct A.���֤��)as �μ�����
from ((((���� A inner join ס�� B
on A.���ƺ� = B.���ƺ�)inner join ¥ C
on C.¥�� = B.¥��)inner join С�� D
on D.С����� = C.С�����)inner join �ֵ����´� E
on E.��� = D.�ֵ����´����),(����ֵ�����ӱ� F inner join �ֵ�� G 
on F.�ֵ����� = G.�ֵ�����)
where A.���֤�� = F.���֤��
group by C.¥��
order by �μ����� desc
--order by �μ����� asc����
--order by �μ����� desc���