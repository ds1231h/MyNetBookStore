use MyNetBookStore
update tb_OrderDetail set PostStatus = 'true' where OrderDetailId = 1--�ѷ���
update tb_OrderDetail set RecevStatus = 'true' where OrderDetailId = 1--���ջ�
select *from tb_OrderDetail

--��������
delete from tb_OrderDetail where OrderId = 1
delete from tb_Order where OrderId = 1

--��ӵ����ﳵ��
update tb_BookInfo set BookStoremount = BookStoremount - 1 where BookId = 1
select *from tb_BookInfo

delete from tb_BookInfo where BookStoremount = 0