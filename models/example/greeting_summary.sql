{{ config(materialized='table') }}

SELECT
  greeting_text,
  COUNT(*) AS greeting_count,
  MIN(run_timestamp) AS first_seen,
  MAX(run_timestamp) AS last_seen
FROM
  {{ ref('my_first_dbt_model') }}
GROUP BY
  greeting_text
ORDER BY
greeting_text
