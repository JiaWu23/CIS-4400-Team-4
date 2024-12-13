{{ config(materialized='table', schema='SPECIALITYSCHEMA') }}

WITH Location_CTE AS (
    SELECT
        VALUE:id::INTEGER AS LOCATION_ID,
        VALUE:location.category::STRING AS CATEGORY,
        VALUE:location.latitude::FLOAT AS LATITUDE,
        VALUE:location.longitude::FLOAT AS LONGITUDE
    FROM "ROW_LOCATION",
         LATERAL FLATTEN(INPUT => PARSE_JSON(DOCTOR_LOCATIONS))
)
SELECT *
FROM Location_CTE