/*TASK2 Q7*/
/* Create Non-Clustered index on primary key of Customers Table*/

select * from Customers;

create NONCLUSTERED INDEX nonClusterOnPK
ON Customers(CustomerID);

/*create clustered index on any attribute of a table
here a clustered index is created on 'OrderID' attribute from Orders table*/

select * from [Order Details];

create clustered index clusterOnOrderID on [Order Details] (OrderID);