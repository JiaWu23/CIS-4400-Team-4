{{ config(materialized='table', schema='SPECIALITYSCHEMA') }}

WITH raw_date_cte AS (
    SELECT
        TO_TIMESTAMP(CREATED) AS ISO_TIMESTAMP_EST -- Convert CREATED to timestamp
    FROM "SPECIALITYSCHEMA"."ROW_LOCATION"
),
-- Second CTE: Generate date dimension fields
date_cte AS (
    SELECT
        TO_CHAR(ISO_TIMESTAMP_EST, 'YYYYMMDDHH') AS date_id,      -- Unique date-time ID
        ISO_TIMESTAMP_EST AS date_iso,                           -- ISO timestamp
        EXTRACT(YEAR FROM ISO_TIMESTAMP_EST) AS year_number,     -- Year
        EXTRACT(MONTH FROM ISO_TIMESTAMP_EST) AS month_number,   -- Month
        EXTRACT(DAY FROM ISO_TIMESTAMP_EST) AS day_number,       -- Day of the month
        EXTRACT(HOUR FROM ISO_TIMESTAMP_EST) AS hour_number,     -- Hour
        EXTRACT(QUARTER FROM ISO_TIMESTAMP_EST) AS quarter_number, -- Quarter
        TO_CHAR(ISO_TIMESTAMP_EST, 'Month') AS month_name,       -- Month name
        TO_CHAR(ISO_TIMESTAMP_EST, 'Day') AS day_name,           -- Day name
        EXTRACT(DAYOFWEEK FROM ISO_TIMESTAMP_EST) AS day_of_week, -- Day of week (1=Sunday)
        CEIL(EXTRACT(DAY FROM ISO_TIMESTAMP_EST) / 7) AS week_of_month, -- Week of the month
        EXTRACT(WEEK FROM ISO_TIMESTAMP_EST) AS week_of_year     -- Week of the year
    FROM raw_date_cte
)

-- Final SELECT to populate the `dim_date` table
SELECT *
FROM date_cte;
