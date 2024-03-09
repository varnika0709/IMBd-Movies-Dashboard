

--Retrieve the average price for all products:
SELECT AVG(Price) AS AveragePrice FROM dbo.Products;

--Find the product with the highest price:
SELECT TOP 1 ProductType, SKU, Price
FROM dbo.Products
ORDER BY Price DESC;

--Calculate the total revenue generated for each product type:
SELECT ProductType, SUM(RevenueGenerated) AS TotalRevenue
FROM dbo.Products
GROUP BY ProductType;

--List products with no recorded sales:
SELECT ProductType, SKU
FROM dbo.Products
WHERE [ProductsSold] = 0;

--Find the customers who have purchased the most products:
SELECT CAST(CustomerDemographics AS NVARCHAR(MAX)) AS CustomerDemographics,
    SUM(ProductsSold) AS TotalPurchased
FROM dbo.Products
GROUP BY CAST(CustomerDemographics AS NVARCHAR(MAX))
ORDER BY TotalPurchased DESC;

--Determine the total shipping costs for each shipping carrier:
SELECT [ShippingCarriers], SUM([ShippingCosts]) AS TotalCost
FROM dbo.Products
GROUP BY [ShippingCarriers];

--Find the supplier with the shortest lead time:
SELECT [SupplierName], MIN([LeadTime]) AS ShortestLeadTime
FROM dbo.Products
GROUP BY [SupplierName]
ORDER BY ShortestLeadTime DESC;

--Calculate the total manufacturing costs for each product type:
SELECT ProductType, SUM([ManufacturingCosts]) AS TotalManufacturingCosts
FROM dbo.Products
GROUP BY ProductType;

--Identify products with defect rates above a certain threshold (e.g., 5%):
SELECT ProductType, SKU
FROM dbo.Products
WHERE [DefectRates] > 0.05;









































