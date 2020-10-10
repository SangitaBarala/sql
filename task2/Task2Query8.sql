/*TASK2 Q8
Full text search:
-> By index
-> By LIKE operator(linguistic search) 
here is to full text search using LIKE 
*/

select * from Orders;
select * from Orders where ShipName LIKE '%e' and ShipName LIKE 'C%'
select * from Orders where ShipAddress LIKE '%eim%'

/*By index*/
select * from Orders;
create FULLTEXT INDEX 
ON Orders(UnitPrice)
KEY INDEX Orders
ON OrderID 
WITH CHANGE_TRACKING AUTO
GO