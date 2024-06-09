-- Clean DIM_Customers Table 

SELECT
	c.CustomerKey AS CustomerKey,
     --,[GeographyKey]
     --,[CustomerAlternateKey]
     --,[Title]
      c.FirstName AS [FirstName],
     --,[MiddleName]
      c.LastName AS [LastName],
	  c.FirstName + '' + c.LastName AS [FullName],
     --,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
      CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender],
     -- ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
     -- ,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
     -- ,[AddressLine1]
     -- ,[AddressLine2]
     -- ,[Phone]
      c.DateFirstPurchase AS [DateFirstPurchase],
	  g.City AS [CustomerCity] -- From Gerography table join
     -- ,[CommuteDistance]
  FROM 
	[dbo].[DimCustomer] AS c
	LEFT JOIN dbo.DimGeography AS g on g.GeographyKey = c.GeographyKey
  ORDER BY
	CustomerKey ASC

