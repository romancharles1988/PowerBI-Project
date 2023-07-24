CREATE VIEW [dbo].[ADVENTURE_WORKS_POWERBI_VIEW] AS
SELECT
[SalesOrderNumber] AS "SALES_ORDER_NUMBER", 
  [SalesOrderLineNumber] AS "SALES_ORDER_LINE_NUMBER", 
  [RevisionNumber] AS "REVISION_NUMBER",
  [OrderQuantity] AS "ORDER_QTY", 
  [UnitPrice] AS "UNIT_PRICE", 
  [ExtendedAmount] AS "EXT_AMT", 
  [UnitPriceDiscountPct] AS "UNIT_PRICE_DISC_PCT", 
  [DiscountAmount] AS "DISC_AMT", 
  [ProductStandardCost] AS "PRD_STANDARD_COST", 
  [TotalProductCost] AS "TOTAL PRODUCT_COST", 
  [SalesAmount] AS "SALES_AMOUNT", 
  [TaxAmt] AS "TAX_AMOUNT", 
  [Freight] AS "FREIGHT", 
  [CarrierTrackingNumber] AS "CARRIER_TRACK_NO", 
  [CustomerPONumber] AS "CUSTOMER_PO", 
  [OrderDate] AS "ORDER_DATE", 
  [DueDate] AS "DUE DATE", 
  [ShipDate] AS "SHIP_DATE",
  A.[ProductKey] AS "PRODUCT_KEY", 
  B.[EnglishProductName] AS "PRODUCT_NAME", 
  B.ProductSubcategoryKey AS "SUB_CATEGORY_KEY", 
  C.ProductCategoryKey AS "PRODUCT_CATEGORY_KEY", 
  C.[EnglishProductSubcategoryName] AS "PRODUCT_SUBCAT_NAME", 
  D.EnglishProductCategoryName AS "PRODUCT_CAT_NAME", 
  A.[CustomerKey] AS "CUSTOMER_KEY", 
  F.[GeographyKey] AS "GEOGRAPHY_KEY", 
  G.[City] AS "CITY", 
  G.[StateProvinceCode] AS "STATE_PROVINCE_CODE", 
  G.[StateProvinceName] AS "STATE_PROVINCE_NAME", 
  G.[CountryRegionCode] AS "COUNTRY_REGION_CODE", 
  G.[EnglishCountryRegionName] AS "REGION_NAME", 
  G.[PostalCode] AS "POSTAL_CODE", 
  F.[Title] AS "TITLE", 
  F.[FirstName] AS "FIRST_NAME", 
  F.[MiddleName] AS "MIDDLE_NAME", 
  F.[LastName] AS "LAST_NAME",  
  F.[BirthDate] AS "BIRTH_DATE", 
  F.[MaritalStatus] AS "MARITAL_STATUS", 
  F.[Gender] AS "GENDER", 
  F.[EmailAddress] AS "EMAIL_ADDRESS", 
  F.[YearlyIncome] AS "YEARLY_INCOME", 
  F.[TotalChildren] AS "TOTAL_CHILDREN", 
  F.[NumberChildrenAtHome] AS "TOTAL_CHILDREN_AT_HOME", 
  F.[EnglishEducation] AS "EDUCATION",
  F.[EnglishOccupation] AS "OCCUPATION", 
  F.[HouseOwnerFlag] AS "HOUSE OWNER FLAG",
  F.[NumberCarsOwned] AS "NUMBER_CARS_OWNED", 
  F.[AddressLine1] AS "ADDRESSLINE1",
  F.[AddressLine2]  AS "ADDRESSLINE2",
  F.[Phone] AS "PHONE NUMBER", 
  F.[DateFirstPurchase] AS "DATE_FIRST_PURCHASE", 
  F.[CommuteDistance] AS "COMMUTE_DISTANCE", 
  A.[CurrencyKey] AS "CURRENCY_KEY", 
  E.[CurrencyName] AS "CURRENCY_NAME", 
  A.[SalesTerritoryKey] AS "SALES_TERRI_KEY", 
  H.[SalesTerritoryRegion] AS "SALES_REGION" , 
  H.[SalesTerritoryCountry] AS "SALES_COUNTRY", 
  H.[SalesTerritoryGroup] AS "SALES_TERRI_GROUP"
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] as "A" 
  INNER JOIN [AdventureWorksDW2022].[dbo].[DimProduct] as "B" ON A.[ProductKey] = B.[ProductKey] 
  INNER JOIN [AdventureWorksDW2022].[dbo].[DimProductSubcategory] as "C" ON B.[ProductSubcategoryKey] = C.[ProductSubcategoryKey] 
  INNER JOIN [AdventureWorksDW2022].[dbo].[DimProductCategory] as "D" ON C.[ProductCategoryKey] = D.[ProductCategoryKey] 
  INNER JOIN [AdventureWorksDW2022].[dbo].[DimCurrency] as "E" ON A.[CurrencyKey] = E.[CurrencyKey] 
  INNER JOIN [AdventureWorksDW2022].[dbo].[DimCustomer] as "F" ON A.[CustomerKey] = F.[CustomerKey] 
  INNER JOIN [AdventureWorksDW2022].[dbo].[DimGeography] as "G" ON F.[GeographyKey] = G.[GeographyKey] 
  INNER JOIN [AdventureWorksDW2022].[dbo].[DimSalesTerritory] as "H" ON A.[SalesTerritoryKey] = H.[SalesTerritoryKey]
--WHERE YEAR([OrderDate]) = 2013;


SELECT * FROM [ADVENTURE_WORKS_POWERBI_VIEW];