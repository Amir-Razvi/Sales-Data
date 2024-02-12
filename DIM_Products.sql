SELECT TOP (1000) p.[ProductKey] 
      ,p.[ProductAlternateKey] as [Product Item Code]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
	  ,pc.[EnglishProductCategoryName] as [Sub Category]
	  ,ps.[EnglishProductSubcategoryName] as [Product Category]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] as [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] as [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] as [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] as [Product Model Name]
      --,[LargePhoto]
      ,p.[EnglishDescription] as [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
        ,ISNULL(p.Status,'Outdated') as Status 
		--If the status is null ten populate it with outdated
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey= p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory as pc on ps.ProductCategoryKey=pc.ProductCategoryKey

  --First joining the subcategory table because it has a common column as Product table
  --then joining the category table as it has a common column as subcategory Table

  order by p.ProductKey ASC