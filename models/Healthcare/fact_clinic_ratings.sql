{{ config(materialized='table', schema='SPECIALITYSCHEMA') }}
 
WITH Location_CTE AS (
    SELECT
        VALUE:id::INTEGER AS LOCATION_ID,
        VALUE:location.category::STRING AS CATEGORY,
        VALUE:location.address::STRING AS ADDRESS,
        VALUE:location.latitude::FLOAT AS LATITUDE,
        VALUE:location.longitude::FLOAT AS LONGITUDE,
        VALUE:location.city_id::INTEGER AS CITY_ID,
        VALUE:location.province_name::STRING AS PROVINCE_NAME,
        VALUE:location.country_name::STRING AS COUNTRY_NAME
    FROM "ROW_LOCATION",
         LATERAL FLATTEN(INPUT => PARSE_JSON(DOCTOR_LOCATIONS))
)
 
SELECT *
FROM Location_CTE
