{{ config(materialized='table') }}

select *
from {{ ref('cities') }}
