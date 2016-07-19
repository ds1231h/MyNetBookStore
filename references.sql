use MyNetBookStore
alter table tb_AdminInfo
   add constraint FK_TB_ADMI_REFERENCE_TB_USRIN foreign key (UsrId)
      references tb_UsrInfo (UsrId)
go

alter table tb_CustomerInfo
   add constraint FK_TB_CUST_REFERENCE_TB_USRIN foreign key (UsrId)
      references tb_UsrInfo (UsrId)
go
 
alter table tb_Order
   add constraint FK_TB_ORDER_REFERENCE_TB_CUSTO foreign key (CustomerId)
      references tb_CustomerInfo (CustomerId)
go
 
alter table tb_OrderDetail
   add constraint FK_TB_ORDER_REFERENCE_TB_ORDER foreign key (OrderId)
      references tb_Order (OrderId)
go
 
alter table tb_OrderDetail
   add constraint FK_TB_ORDER_REFERENCE_TB_BOOKI foreign key (BookId)
      references tb_BookInfo (BookId)
go

alter table tb_Comment
   add constraint FK_TB_COMME_REFERENCE_TB_BOOKI foreign key (BookId)
      references tb_BookInfo (BookId)
go
 
alter table tb_Comment
   add constraint FK_TB_COMME_REFERENCE_TB_CUSTO foreign key (CustomerId)
      references tb_CustomerInfo (CustomerId)
go
