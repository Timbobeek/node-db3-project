-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select productname, category.categoryname from product
join category on product.categoryid = category.id;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select id, shipper.companyname from 'order'
join shipper on 'order'.shipvia = shipper.id
where orderdate < '2012-08-09';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select productname, orderdetail.quantity from product
join orderdetail on product.id = orderdetail.productid
where orderid = '10251'
group by productname


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select 
    id as OrderID,
    customer.CompanyName,
    employee.LastName as `Employee LastName`
from 'order'
    join customer on 'order'.CustomerId = customer.Id
    join employee on 'order'.EmployeeId = employee.Id
