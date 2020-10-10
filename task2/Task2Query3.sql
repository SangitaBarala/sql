

create view CustomersView as
select CompanyName,Address,City,OrderDate from dbo.Orders
inner join dbo.Customers
on dbo.customers.CustomerID=dbo.Orders.CustomerID;

select * from CustomersView;