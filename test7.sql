--��ѯ��ĥ���ֵ��μ������˴����������ٵ�С��
select top(1) D.С�����,count(distinct A.���֤��)as �μ�����
from ((((���� A inner join ס�� B
on A.���ƺ� = B.���ƺ�)inner join ¥ C
on C.¥�� = B.¥��)inner join С�� D
on D.С����� = C.С�����)inner join �ֵ����´� E
on E.��� = D.�ֵ����´����),(����ֵ�����ӱ� F inner join �ֵ�� G 
on F.�ֵ����� = G.�ֵ�����)
where A.���֤�� = F.���֤��
group by D.С�����
order by �μ����� asc
--order by �μ����� asc����
--order by �μ����� desc���