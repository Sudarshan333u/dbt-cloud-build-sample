-- models/my_first_dbt_model.sql

{{ config(materialized='table') }}
SELECT
  greeting_text,
  run_timestamp
FROM {{ ref('greeting_summary') }}

WHERE
  greeting_text IS NOT NULL