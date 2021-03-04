--create database MyDatabase--

--Pirveli Sakitxi--

use MyDatabase1;
if object_id('Employees','u')
is not null
drop table Employees 
go
create table Employees(
EmployeeId int primary key,
EmployeeName nvarchar(50),
EmployeeSurname nvarchar(50),
Role nvarchar(50),
Salary int not null
)

insert into Employees(EmployeeId,EmployeeName,EmployeeSurname,Role,Salary) values('1','Nikoloz','Bakhtadze','Role1','700');
insert into Employees(EmployeeId,EmployeeName,EmployeeSurname,Role,Salary) values('2','Nikoloz','Bakhtadze','Role2','1700');
insert into Employees(EmployeeId,EmployeeName,EmployeeSurname,Role,Salary) values('3','Nikoloz','Bakhtadze','Role1','750');
insert into Employees(EmployeeId,EmployeeName,EmployeeSurname,Role,Salary) values('4','Nikoloz','Bakhtadze','Role2','2700');

SELECT a.[Role], a.[Salary]
FROM Employees a
JOIN (SELECT MAX(Salary) As MaxSalary, Role FROM dbo.Employees GROUP BY Role) b
ON a.Salary = b.MaxSalary

--Meore Sakitxi--

SELECT a.EmployeeName,a.EmployeeSurname,a.Role, a.[Salary]
FROM Employees a
JOIN (SELECT MAX(Salary) As MaxSalary, Role FROM dbo.Employees GROUP BY Role) b
ON a.Salary = b.MaxSalary

--Mesame Sakitxi--

insert into Employees(EmployeeId,EmployeeName,EmployeeSurname,Role,Salary) values('5','Nikoloz','Bakhtadze','Role1','400');
insert into Employees(EmployeeId,EmployeeName,EmployeeSurname,Role,Salary) values('6','Nikoloz','Bakhtadze','Role2','300');

Select Role,SUM(Salary) as 'Total Salary'
from Employees
where Salary between 300 and 600
group by Role

--Meotxe Sakitxi--
if object_id('PriceList','u')
is not null
drop Table PriceList
go 
create Table PriceList
(
ProductId int primary key,
Product nvarchar(50),
PriceList nvarchar(50)
)
insert into PriceList(ProductId,Product,PriceList) values('1','Product1','PriceList1');
insert into PriceList(ProductId,Product,PriceList) values('2','Product2','PriceList1');
insert into PriceList(ProductId,Product,PriceList) values('3','Product3','PriceList1');
insert into PriceList(ProductId,Product,PriceList) values('4','Product1','PriceList2');
insert into PriceList(ProductId,Product,PriceList) values('5','Product1','PriceList2');
insert into PriceList(ProductId,Product,PriceList) values('6','Product2','PriceList2');

SELECT PriceList, COUNT(*) AS CountOf
FROM dbo.PriceList
GROUP BY PriceList
HAVING COUNT(*)>1

--Mexute Sakitxi--
SELECT PriceList,Product, COUNT(*) AS CountOf
FROM dbo.PriceList
GROUP BY PriceList,Product
HAVING COUNT(*)>1