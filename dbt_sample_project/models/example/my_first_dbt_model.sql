-- models/my_first_dbt_model.sql

{{ config(materialized='table') }}
SELECT
  greeting_text,
  run_timestamp
FROM {{ source('dbt_sample_data', 'my_first_dbt_model2') }}
WHERE
  greeting_text IS NOT NULL