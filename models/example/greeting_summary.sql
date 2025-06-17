{{ config(materialized='table') }}

SELECT
  a.greeting_text,
  a.run_timestamp
FROM
  {{ ref('my_first_dbt_model') }} a

  JOIN 
  {{ ref('my_second_dbt_model') }} b
  on 
  a.greeting_text=b.greeting_text