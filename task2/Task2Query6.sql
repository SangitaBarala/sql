use Task2;
/*.TASK2 Q6: Create a tabled valued function that takes allows you to pass Coutry name to the
function. This function should join the Customers table to the Orders table and
you should also be able to filter by Order date (ie Show me a list of Customers
from Germany who ordered products between 1996 and 1997)*/

create function fn_customerPlusOrders(@country varchar(30),@from datetime2(5),@to datetime2(5))
returns table
as 
return(select dbo.Customers.Country,dbo.Orders.OrderDate
from dbo.Customers
inner join dbo.Orders
on dbo.Customers.CustomerID=dbo.Orders.CustomerID
where Country=@country and OrderDate between @from and @to);

select * from fn_customerPlusOrders('Germany','1996','1998')