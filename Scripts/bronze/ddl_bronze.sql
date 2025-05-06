-- Drop table if it exists and create crm_customer_info
IF OBJECT_ID('bronze.crm_customer_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_customer_info;
GO
CREATE TABLE bronze.crm_customer_info (
    customer_id          INT,
    customer_key         NVARCHAR(50),
    first_name           NVARCHAR(50),
    last_name            NVARCHAR(50),
    marital_status       NVARCHAR(50),
    gender               NVARCHAR(50),
    creation_date        DATE
);
GO

-- Drop and create crm_product_info
IF OBJECT_ID('bronze.crm_product_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_product_info;
GO
CREATE TABLE bronze.crm_product_info (
    product_id           INT,
    product_key          NVARCHAR(50),
    product_name         NVARCHAR(50),
    product_cost         DECIMAL(10, 2),
    product_launch_date  DATE,
    product_end_date     DATE
);
GO

-- Drop and create crm_sales_details
IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
GO
CREATE TABLE bronze.crm_sales_details (
    sales_order_number   NVARCHAR(50),
    product_key          NVARCHAR(50),
    customer_id          INT,
    order_date           DATE,
    ship_date            DATE,
    due_date             DATE,
    sales_amount         DECIMAL(10, 2),
    quantity             INT,
    unit_price           DECIMAL(10, 2)
);
GO

-- Drop and create erp_location_info
IF OBJECT_ID('bronze.erp_location_info', 'U') IS NOT NULL
    DROP TABLE bronze.erp_location_info;
GO
CREATE TABLE bronze.erp_location_info (
    customer_id          NVARCHAR(50),
    country              NVARCHAR(50)
);
GO

-- Drop and create erp_customer_demographics
IF OBJECT_ID('bronze.erp_customer_demographics', 'U') IS NOT NULL
    DROP TABLE bronze.erp_customer_demographics;
GO
CREATE TABLE bronze.erp_customer_demographics (
    customer_id          NVARCHAR(50),
    birth_date           DATE,
    gender               NVARCHAR(50)
);
GO

-- Drop and create erp_product_category
IF OBJECT_ID('bronze.erp_product_category', 'U') IS NOT NULL
    DROP TABLE bronze.erp_product_category;
GO
CREATE TABLE bronze.erp_product_category (
    product_id           NVARCHAR(50),
    category             NVARCHAR(50),
    subcategory          NVARCHAR(50),
    maintenance_status   NVARCHAR(50)
);
GO
