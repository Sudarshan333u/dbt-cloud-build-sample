-- models/my_first_dbt_model.sql

{{ config(materialized='table') }}
SELECT
  greeting_text,
  run_timestamp
FROM {{ source('raw_us', 'source_table_1') }}
WHERE
  greeting_text IS NOT NULL