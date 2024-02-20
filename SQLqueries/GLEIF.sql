create table GLEIF (
[LEI] nvarchar(50) NOT NULL, 
[Entity.LegalName] nvarchar(MAX) NULL,  
[Entity.LegalAddress.Country] nvarchar(10) NULL, 
[Entity.EntityStatus] nvarchar(50) NULL, 
[Registration.InitialRegistrationDate] nvarchar(100) NULL, 
[Registration.LastUpdateDate] nvarchar(100) NULL, 
[Registration.RegistrationStatus] nvarchar(100) NULL, 
[Registration.ValidationSources] nvarchar(100) NULL,
PRIMARY KEY (LEI)
);

select count(*) from GLEIF

select * from GLEIF