--��ѯ�μ���22�괺�ڻ�Ҳμ���73���������������������߼���סַ
select top(1) C.����֤��,���ƺ�,����
from
		(------------------------��������μ��˵���
			select distinct A.����֤��
			from				(
							select *----------------------------------------------------������
							from ����ֵ�����ӱ�
							where �ֵ�����	in
									(
										select �ֵ�����---------------------------------------------���ڻ���
										from �ֵ��
										where �ֵ������ = '���ڻ1' or �ֵ������ = '���ڻ2'--------------
									) 
							) A,
							(
							select C.�ֵ�����,����֤��-------------������
											from(
												select �ֵ�����------------------------------����
												from �ֵ��
												where �ֵ������ = '73�������'
												) C,����ֵ�����ӱ� D
											where C.�ֵ����� = D.�ֵ�����
							) B
			where A.����֤�� = B.����֤��
			) C, ����
			where C.����֤�� = ����.����֤��
group by C.����֤��,���ƺ�,����
order by ���� desc