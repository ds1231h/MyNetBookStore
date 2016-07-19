use MyNetBookStore
insert into tb_UsrInfo(UsrName, IsManagement) 
values ('admin', 'true')
insert into tb_UsrInfo(UsrName, IsManagement) 
values ('customer', 'false')

select *from tb_UsrInfo

insert into tb_AdminInfo(UsrId, Pwd, Name, AdminFlag, Email, LogTime)
values (1, 'aaa', 'management', 3, 'aaa@126.com', 2016-07-15)

select *from tb_AdminInfo

insert into tb_CustomerInfo(UsrId, Pwd, Name, CustomerQues, CustomerAns, LogTime, IsVIP)
values (2, 'bbb', 'customer', 'who am i', 'bbb', 2016-07-15, 'true')

select *from tb_CustomerInfo

insert into tb_BookInfo(BookName, BookAuTa, BookType, BookPress, BookPackstyle, BookIsbn, BookPubDate, 
BookOutline, BookPic, BookStoreTime, BookMprice, BookVIPprice, BookDiscount, BookLookmount, BookStoremount)
values('sql server', 'mcsf', 'database', 'mcsf', 'paper', '0000-0000-0000-0001', 2008-01-01, 
'database of sql server', 'C://1.jpg', '2008-02-02', '100', '80', '0.8', 2048, 1024)

select *from tb_BookInfo

insert into tb_Order(CustomerId, ReceiverName, ReceiverAddr, ReceiverTel, CustomerEmail, 
CustomerPostcode, OrderDate, TotalPrice, PayMethod, PostMethod, AllOrderMount, Message, Memo)
values(1, (select Name from tb_CustomerInfo where CustomerId = 1), 'sduwh', '13846870410', 'Tom@gmail.com', '215235', 2016-07-15, 160, 'band card', 'car', 2, 'nothing', 'nothing')
insert into tb_BookInfo(BookName, BookAuTa, BookType, BookPress, BookPackstyle, BookIsbn, BookPubDate, 
BookOutline, BookPic, BookStoreTime, BookMprice, BookVIPprice, BookDiscount, BookLookmount, BookStoremount)
values('Html', 'Dw', 'html', 'Dw', 'paper', '0000-0000-0000-0002', 2010-01-01, 
'language for Web', 'C://2.jpg', '2010-02-02', '100', '80', '0.8', 2048, 1024)

select *from tb_Order

insert into tb_OrderDetail(OrderId, BookId, OrderMount, SingleTotalPrice, PostStatus, RecevStatus)
values(1, 1, 2, 80, 'false', 'false')

select *from tb_OrderDetail

insert into tb_Comment(BookId, CustomerId, CustomerName, CommentDate, CommentContent, CommentFlag)
values(1, 1, 1, 2016-07-15, 'good', 'true')

select *from tb_Comment