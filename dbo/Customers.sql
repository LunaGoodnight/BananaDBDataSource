create table Customers
(
    CustomerId   nchar(5)     not null
        constraint PK_Customers
            primary key,
    CompanyName  nvarchar(40) not null,
    ContactName  nvarchar(30),
    ContactTitle nvarchar(30),
    Address      nvarchar(60),
    City         nvarchar(15),
    Region       nvarchar(15),
    PostalCode   nvarchar(10),
    Country      nvarchar(15),
    Phone        nvarchar(24),
    Fax          nvarchar(24)
)
go

create index City
    on Customers (City)
go

create index CompanyName
    on Customers (CompanyName)
go

create index PostalCode
    on Customers (PostalCode)
go

create index Region
    on Customers (Region)
go

