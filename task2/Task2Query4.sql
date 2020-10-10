
/*TASK2 Q4: Once the CustomersView is created query the view to show only Customers from London*/

create view CustomerView as
select ContactName,CompanyName,Address,City,OrderDate from dbo.Orders
inner join dbo.Customers
on dbo.customers.CustomerID=dbo.Orders.CustomerID;

Select * from CustomerView;

select ContactName,City from CustomerView where city='London';