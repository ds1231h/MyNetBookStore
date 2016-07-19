use MyNetBookStore

select *from tb_BookInfo
select *from tb_BookInfo where BookName = 'sql server'--单一条件查询
select *from tb_BookInfo where BookName like 's%' and BookAuTa = 'mcsf'--模糊查询

select *from tb_Order where ReceiverAddr like '山东%'--送货地址在山东省内

select *from tb_CustomerInfo where IsVIP = 'true'--是VIP的顾客

select *from tb_OrderDetail where PostStatus = 'false'--未发货的订单

select *from tb_Comment where CommentFlag = 'true'--审核通过的评论