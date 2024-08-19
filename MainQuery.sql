-->			Creating a database for Whole sell managment		    	<--

Create database WholeSaleManagment		Use WholeSaleManagment

-->			Creating a Table of Product which can store 				<--
Create table Product(PrID int not null,PrName varchar(30),PrUnitPrice
						money,PrQuantity int,
						PrCaID int foreign key references 
						ProductCategory(PrCaID) on delete cascade on 
						update cascade)

Alter table Product Add Primary key (PrID)

Alter table Product Add StID int foreign key references Store(StID)
           on delete cascade on update cascade

Insert into Product 
           (PrID,PrName,PrUnitPrice,PrQuantity,PrCaID,StID)
values     (1,'Chai',1800,50,4,1),(2,'Juice',400,550,4,1),
          (3,'TV',5000,150,1,1),(4,'Head phone',250,50,1,1)

select * from Product
-->			Creating a Table of ProductCategory whice store 		<--


create table ProductCategory
			(PrCaID int not null,PrCaName varchar(30))

Alter table ProductCategory Add Primary key (PrCaID)

Insert into ProductCategory
values		(1,'Electronics'),(2,'Clothes'),(3,'Furniture'),(4,'Edable')

select * from ProductCategory

-->		      	Join table of Product and category                	<--
Select  Product.PrName,Product.PrUnitPrice,
       ProductCategory.PrCaName
From  Product,ProductCategory
Where Product.PrCaID = ProductCategory.PrCaID
-->		   	Creating a Table of Customer whice store the data   	<--


Create table Customer
			 (CusID int not null primary key,CusName varchar(30),
			 CusEmail varchar(30),CusAddres varchar(40))

Insert into Customer
values		(1,'Niaz','momandniazkhan@gmail.com','Nurrar'),
			(2,'Khan','millikahn72@gmail.com','Bannu'),
			(3,'Amjad','amjadkhan34@gmail.com','Mamushkhel'),
			(4,'Salman','salkhanman23@gmail.com','Nurrar'),
			(5,'Hameed','hameedullah45@gmail.com','Kakki')

Select * from Customer


-->        Creating a Table of Supplier whice store the data of     <--
Create table Supplier
			 (SupID int not null primary key,SupName varchar(30),
			 SupEmail varchar(40),SupPhoneNo bigint)

Insert into Supplier
values     (2,'Ali','aliShahzor@gmail.com',03161054952),
           (3,'Zohib','zohib234@gmail.com',03161054952),
		   (4,'Sher','Shirahzor@gmail.com',03161054952),
		   (5,'Fayaz','fayazShahzor@gmail.com',03161054952),
		   (6,'Gurbaz','GurbazShahzor@gmail.com',03161054952)

Select * from Supplier


-->        Creating a Table of Supplier whice store the data of     <--
Create table Supply
             (SupplyID int not null Primary key,SupplierID int not null,
			 PrID int not null)

Alter table Supply
Add        Foreign key (PrID) references Product(PrID)on delete 
			cascade on update cascade

Alter table Supply
Add        Foreign key (SupplierID) references Supplier(SupID)on delete 
			cascade on update cascade

insert into Supply(SupplyID,SupplierID, PrID)
values             (1,2,1)

Select * from


-->        Creating a Table of Order whice store the data of       <--
Create table OrderTbl
             (OrID int not null Primary key,OrDescription varchar(50),
			 CusID int not null,PrID int not null,PrQuantity int)
Alter table OrderTbl
Add        Foreign key (CusID) references Customer(CusID) on delete
            cascade on update cascade

Alter table OrderTbl
Add        Foreign key (PrID) references Product(PrID) on delete
            cascade on update cascade


-->        Creating a Table of Order whice store the data of       <--
Create table Store
             (StID int not null Primary key,StName varchar(30),
			 StAdd varchar(30),StQuantity int)

Insert into Store
           (StID,StName,StQuantity,StAdd)
Values     (1,'godam',50000,'Nurrar')


-->            A Commond which can Delete Whole data base       <--

Drop database WholeSellManagment
