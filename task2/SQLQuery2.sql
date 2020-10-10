/*TASK2 Q2: */

select dbo.Customers.CompanyName, dbo.Customers.Address,
dbo.[Order Details].Quantity
from dbo.Customers
inner join dbo.Orders
on dbo.Customers.CustomerID=dbo.Orders.CustomerID
inner join dbo.[Order Details] 
on dbo.Orders.OrderID=dbo.[Order Details].OrderID;


/*
select Quantity from [Order Details];
select CompanyName from Customers group by CompanyName;
*/
/*
select Customers.CompanyName,Customers.Address,sum([Order Details].Quantity)
from Customers
inner join Orders
on Customers.CustomerID=Orders.CustomerID
inner join dbo.[Order Details] 
on Orders.OrderID=[Order Details].OrderID
group by Quantity;
*/