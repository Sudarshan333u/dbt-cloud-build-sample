-- models/my_fiaarst_dddbt_jjmsxxodel.sql

{{ config(materialized='table') }}
SELECT
  greeting_text,
  run_timestamp
FROM {{ ref('my_first_dbt_model') }}
WHERE
  greeting_text IS NOT NULL
