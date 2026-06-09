```Select * from Customers;
Select * from Products;
Select* From Orders;
Select * from OrderDetails;
Select count(Distinct OrderID ) as TotalORders From OrderDetails od;
-- We have 38 Orders from Different Customers-- 
Select c.CustomerID,c.CustomerName,SUM(od.Quantity*od.UnitPrice*(1-od.Discount)) as TotalPurchaes from Customers as c inner join Orders as o on c.CustomerID=o.CustomerID inner join OrderDetails as od on o.OrderID=od.OrderID group by c.CustomerID ,c.CustomerName order by TotalPurchaes desc limit 3;
-- Now we can recognize our 3 MOST PROFITABLE  Customers;
Select Country,CustomerName,PhoneNumber  From Customers where CustomerID in (17,31,46);
--We found them with their Countries and now we can contact them for bonuses and rewards--
select SUM(Quantity*UnitPrice*(1-Discount)) as TotalSales from OrderDetails;
--The total sales for out timeline is 397.9 Euros--
select STRFTIME(('%Y-%m'),o.orderDate) as SellMonth ,sum(od.Quantity*od.UnitPrice*(1-od.Discount)) as SellperMonth From Orders as o inner join OrderDetails as od on o.OrderID=od.OrderID group by SellMonth order by  SellMonth asc;
--shows the Total sales per month--
Select p.productName,P.ProductID,p.Cost,sum(od.Quantity*od.UnitPrice*(1-od.Discount)-(p.Cost*od.Quantity)) as NetProfit from Products as p inner join OrderDetails as od on p.ProductID=od.ProductID group by  p.productName,P.ProductID,p.Cost order by  NetProfit Desc LIMIT 5;
/*based on this Qurry , Beef Steak
Olive Oil
Salmon Fillet
Orange Juice
Cola 1.5L
were the Most Profitablr Items by the Net Prodit they generated*/```sql
