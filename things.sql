use MyNetBookStore
go
begin transaction store_check

if((select BookStoremount from tb_BookInfo where BookId = 1) - (select OrderMount from #tb_ShopCarInfo where BookId = 1) >= 0)
	begin
		insert into tb_OrderDetail(OrderId, BookId, OrderMount, SingleTotalPrice, PostStatus, RecevStatus)
		values(1, 1, (select OrderMount from #tb_ShopCarInfo where CustomerId = 1), (select BookVIPprice from tb_BookInfo where BookId = 1), 'false', 'false')
		print'订单提交成功'
		commit transaction
	end
else
	begin
	print'库存量不足！'
	rollback transaction
end

select *from tb_OrderDetail

delete from #tb_ShopCarInfo where ShopCarId = 1
select *from #tb_ShopCarInfo