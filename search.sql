use MyNetBookStore

select *from tb_BookInfo
select *from tb_BookInfo where BookName = 'sql server'--��һ������ѯ
select *from tb_BookInfo where BookName like 's%' and BookAuTa = 'mcsf'--ģ����ѯ

select *from tb_Order where ReceiverAddr like 'ɽ��%'--�ͻ���ַ��ɽ��ʡ��

select *from tb_CustomerInfo where IsVIP = 'true'--��VIP�Ĺ˿�

select *from tb_OrderDetail where PostStatus = 'false'--δ�����Ķ���

select *from tb_Comment where CommentFlag = 'true'--���ͨ��������