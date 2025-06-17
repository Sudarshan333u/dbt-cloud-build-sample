{% snapshot greeting_snapshot %}

{{
    config(
      unique_key='greeting_text',
          target_schema='hydrated_us',

      strategy='check',
      check_cols='all'
    )
}}

SELECT *
-- FROM {{ source('raw_us', 'source_table_1') }}
FROM {{ ref('my_second_dbt_model2') }}


{% endsnapshot %}