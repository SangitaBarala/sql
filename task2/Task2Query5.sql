/*query1*/
create procedure prod_list @price varchar(20)
as
select ProductName,UnitPrice from Products where UnitPrice=@price;
go
exec prod_list @price=15;

/*query2*/
create procedure SP_productsList @product varchar(30)
as
select ProductName,SupplierID from Products where SupplierID=@product;
go
exec SP_productsList @product=1;

