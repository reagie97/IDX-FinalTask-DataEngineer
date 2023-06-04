USE [DWH_PROJECT]
GO

UPDATE [dbo].[DimCustomer]
   SET [CustomerID] = <CustomerID, int,>
      ,[FirstName] = <FirstName, varchar(50),>
      ,[LastName] = <LastName, varchar(50),>
      ,[Age] = <Age, int,>
      ,[Gender] = <Gender, varchar(50),>
      ,[City] = <City, varchar(50),>
      ,[NoHp] = <NoHp, varchar(50),>
 WHERE <Search Conditions,,>
GO

