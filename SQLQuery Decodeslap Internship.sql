create database [Decodeslab Internship]
select * from [Decodeslab Internship Dataset]

--Data Cleaning

select * from [Decodeslab Internship Dataset]
where CouponCode is NULL
update [Decodeslab Internship Dataset]
set CouponCode = 'NO COUPON' where CouponCode is NULL
update [Decodeslab Internship Dataset]
set UnitPrice =round  (UnitPrice,2),
TotalPrice = round (TotalPrice,2)

--Basic Querying and Filtering 

select Product, PaymentMethod,OrderStatus, TotalPrice 
from [Decodeslab Internship Dataset]
where OrderStatus = 'Delivered'
select * from [Decodeslab Internship Dataset]
where Product = 'Monitor'
select Product, Quantity, OrderStatus, TotalPrice 
from [Decodeslab Internship Dataset]
where Product = 'chair'
order by TotalPrice desc

--Group by & Data Aggregation 

--Total Revenue
select sum(TotalPrice) as TotalRevenue
from [Decodeslab Internship Dataset]

--Total Average Revenue

select avg (TotalPrice) as AverageOrder
from [Decodeslab Internship Dataset]

--Total Count of Orders

select count(orderid) as TotalOrders
from [Decodeslab Internship Dataset]

--Top 5 Product by Revenue
select top 5 Product, sum(TotalPrice) as TotalRevenue
from [Decodeslab Internship Dataset]
group by Product
order by TotalRevenue desc

--Total Revenue by Payment Method
select PaymentMethod, sum(TotalPrice) as TotalRevenue
from [Decodeslab Internship Dataset]
group by PaymentMethod
order by TotalRevenue desc






