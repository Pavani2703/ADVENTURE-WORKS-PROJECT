-- Clean DIM_Product Table 
SELECT 
	p.[ProductKey],
    p.[ProductAlternateKey] AS [Product Item Code],
    --  ,[ProductSubcategoryKey]
    --  ,[WeightUnitMeasureCode]
    --  ,[SizeUnitMeasureCode]
    p.[EnglishProductName] AS [Product Name],
	ps.EnglishProductSubcategoryName AS [Sub Category],
	pc.EnglishProductCategoryName AS [Product Category],
    --  ,[SpanishProductName]
    --  ,[FrenchProductName]
    --  ,[StandardCost]
    --  ,[FinishedGoodsFlag]
    p.[Color] AS [Product Color],
    --  ,[SafetyStockLevel]
    --  ,[ReorderPoint]
    --  ,[ListPrice]
    p.[Size] AS [Product Size],
    --  ,[SizeRange]
    --  ,[Weight]
    --  ,[DaysToManufacture]
    p.[ProductLine] AS [Product Line],
    --  ,[DealerPrice]
    --  ,[Class]
    --  ,[Style]
    p.[ModelName] AS [Product Model Name],
    --  ,[LargePhoto]
    --  ,[EnglishDescription]
    -- ,[FrenchDescription]
    --  ,[ChineseDescription]
    --  ,[ArabicDescription]
    --  ,[HebrewDescription]
    --  ,[ThaiDescription]
    --  ,[GermanDescription]
    --  ,[JapaneseDescription]
    --  ,[TurkishDescription]
    --  ,[StartDate]
    --  ,[EndDate]
    ISNULL (p.[Status], 'Outdated') AS [Product Status]
  FROM 
	[dbo].[DimProduct] as p
	LEFT JOIN dbo.DimProductSubcategory as ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY 
	p.ProductKey ASC
