create table LicVendorProfile_Subsidiary
(
    ID                 int identity
        constraint PK_LicVendorProfile_Subsidiary_ID
            primary key,
    SiteName           varchar(50)                                              not null,
    OperatorId         varchar(50)                                              not null,
    API_VendorID       varchar(50)                                              not null,
    Disable            bit
        constraint DF__LicVendor__Disab__395884C4 default 0,
    Display_SiteName   varchar(50),
    ContactEmail       varchar(100),
    Remark             nvarchar(100),
    Status             tinyint
        constraint DF_LicVendorProfile_Subsidiary_Status default 0              not null,
    CreatedUserID      varchar(20),
    LastModifiedUserID varchar(20),
    CreatedTime        datetime
        constraint DF_LicVendorProfile_Subsidiary_CreatedTime default getdate() not null,
    ModifiedTime       datetime,
    FundLimit          bit,
    WhiteLabelID       int
)
go

create index IX_API_VendorID
    on LicVendorProfile_Subsidiary (API_VendorID)
go

create index IX_LicVendorProfile_Subsidiary_SiteName
    on LicVendorProfile_Subsidiary (SiteName, OperatorId)
go

