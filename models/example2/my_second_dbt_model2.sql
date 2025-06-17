-- models/my_first_dbt_model.sql

{{ config(materialized='table') }}
SELECT
  greeting_text,
  run_timestamp
-- FROM {{ source('raw_us', 'greeting_summary') }}
FROM {{ ref('greeting_summary') }}

WHERE
  greeting_text IS NOT NULL