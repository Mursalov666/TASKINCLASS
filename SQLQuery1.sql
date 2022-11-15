create database P228Task

use P228Task

Create table Brands(
	Id int identity primary key,
	Name nvarchar(100)
)

Create table Notebooks(
	Id int identity primary key ,
	Name nvarchar(100),
	Price money
)

Create table Phones(
	Id int identity primary key ,
	Name nvarchar(100),
	Price money
)

Alter table Phones add BrandId int references Brands(Id)

Alter table Notebooks add BrandId int references Brands(Id)

Select n.Name , b.Name as 'BrandName' , n.Price from Notebooks n
left join 
Brands b on n.BrandId = b.Id

Select p.Name , b.Name as 'BrandName' , p.Price from Phones p
left join
Brands b on p.BrandId = b.Id

Select n.Name , b.Name as 'BrandName' , n.Price from Notebooks n
left join 
Brands b on n.BrandId = b.Id where n.price > 2000 and n.Price < 5000

Select p.Name , b.Name as 'BrandName' , p.Price from Phones p
left join 
Brands b on p.BrandId = b.Id where p.price > 1000 and p.Price < 1500

