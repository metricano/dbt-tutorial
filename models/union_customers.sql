{{ config(materialized='table') }}

select * from {{ ref('customers') }}

union all

select * from {{ source('dbt_ycy1990', 'customers_raw_source') }}
