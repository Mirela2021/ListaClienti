

create table ListaClienti 
(FirstName VARCHAR (30), 
 LastName VARCHAR (30), 
 Email VARCHAR (30) );

alter table customers.dbo.ListaClienti add 
CustomerID int, 
Address varchar (30), 
City varchar(30);

insert into customers.dbo.ListaClienti 
(FirstName, LastName, Email, Address, City) 
values
('Ana','Marinescu','am...@gmail.com', 'Popesti nr.4', 'Bucuresti'),
('Ionel','Burcheci', 'ib...@gmail.com', 'Spiridus nr 20', 'Bacau'),
('Mirelus','Avramescu', 'ma...@gmail.com', 'Coposu nr 56', 'Iasi' ),
('Maricica','Puricica', 'mp...@yahoo.ro', '20 Grozavesti', 'Italia');

use Customers;
update listaclienti
set email= 'mi...@gmail.com' where customerid=3; 

update ListaClienti
set Email='mp...@gmail.com' where CustomerID=3;


select * from ListaClienti where Email like 'ib%';
delete ListaClienti where LastName like '%escu@%';


insert into customers.dbo.ListaClienti 
(FirstName, LastName, Email, Address, City) 
values
('Ana','Marinescu','am...@gmail.com', 'Popesti nr.4', 'Bucuresti'),
('Mirelus','Avramescu', 'ma...@gmail.com', 'Coposu nr 56', 'Iasi' );


SELECT FirstName, LastName, Email from Customers.dbo.ListaClienti
order by LastName asc;
