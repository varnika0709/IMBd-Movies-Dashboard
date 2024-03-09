use supply_chaindb;

CREATE TABLE Product (
    ProductType VARCHAR(255),
    SKU VARCHAR(50) PRIMARY KEY,
    Price DECIMAL(10, 2),
    Vacancy INT,
    ProductsSold INT,
    RevenueGenerated DECIMAL(15, 2),
    CustomerDemographics TEXT,
    StockLevels INT,
    LeadTimes INT,
    OrderQuantities INT,
    ShippingTimes INT,
    ShippingCarriers VARCHAR(100),
    ShippingCosts DECIMAL(10, 2),
    SupplierName VARCHAR(100),
    Location VARCHAR(255),
    LeadTime INT,
    ProductionVolumes INT,
    ManufacturingLeadTime INT,
    ManufacturingCosts DECIMAL(15, 2),
    InspectionResults TEXT,
    DefectRates DECIMAL(5, 2),
    TransportationModes TEXT,
    Routes TEXT,
    Costs DECIMAL(10, 2)
);

BULK INSERT dbo.product
FROM 'C:\Users\Admin\OneDrive\Desktop\supply chain dataset.csv'
WITH (
    FIELDTERMINATOR = ',',  -- Specify the field delimiter (e.g., ',')
    ROWTERMINATOR = '\n',  -- Specify the row delimiter (usually '\n')
    FIRSTROW = 2,          -- If your file has a header row, skip it by setting this to 2
    DATAFILETYPE = 'char', -- Specify 'char' or 'native' based on your file encoding
    TABLOCK             -- For improved performance, consider using TABLOCK
);

SELECT * FROM dbo.Product;

