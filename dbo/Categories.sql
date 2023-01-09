create table Categories
(
    CategoryId   int identity
        constraint PK_Categories
            primary key,
    CategoryName nvarchar(15) not null,
    Description  nvarchar(max),
    Picture      varbinary(max)
)
go

create index CategoryName
    on Categories (CategoryName)
go

