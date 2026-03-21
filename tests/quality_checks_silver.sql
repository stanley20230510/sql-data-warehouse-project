
--Check For Nulls or Duplicates in Primary Key
--Expectation: No Result

SELECT
prd_id,
COUNT(*)
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL

--Check for unwanted Spaces
--Expectation: No Results
SELECT 
    cst_lastname
FROM [DataWarehouse].[silver].[crm_cust_info]
WHERE cst_lastname != TRIM(cst_lastname)

--Data Standardization & Consistency
SELECT DISTINCT 
    [cst_gndr]
FROM [DataWarehouse].[silver].[crm_cust_info]

SELECT *
FROM silver.crm_prd_info

