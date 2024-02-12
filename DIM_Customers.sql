--Cleaning the Dim_Customers Table

SELECT TOP (1000) c.CustomerKey as CustomerKey
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName as FirstName
      --,[MiddleName]
      ,c.LastName as LastName
	  ,c.FirstName + ' ' + c.LastName as FullName
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      , CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase as[DateFirstPurchase]
	  ,g.City AS [Counter City]
      --,[CommuteDistance]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] as c
  LEFT JOIN dbo.DimGeography AS g 
  ON g.GeographyKey= c.GeographyKey
  Order by
  CustomerKey ASC
