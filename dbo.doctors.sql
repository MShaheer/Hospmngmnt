CREATE TABLE [dbo].[doctors]
(
	[d_id] INT NOT NULL PRIMARY KEY, 
    [d_name] NVARCHAR(50) NULL, 
    [d_lastname] NVARCHAR(50) NULL, 
    [d_dob] NVARCHAR(50) NULL, 
    [d_address] NVARCHAR(50) NULL, 
    [d_city] NVARCHAR(50) NULL, 
    [d_state] NVARCHAR(50) NULL, 
    [d_landline] NVARCHAR(50) NULL, 
    [d_mobile] NVARCHAR(50) NULL, 
    [d_gender] NVARCHAR(50) NULL, 
    [d_hiredate] NVARCHAR(50) NULL, 
    [d_salary] NVARCHAR(50) NULL, 
    [d_qualification] NVARCHAR(50) NULL, 
    [d_visitinghours] NVARCHAR(50) NULL, 
    [d_visitingdays] NVARCHAR(50) NULL
)
