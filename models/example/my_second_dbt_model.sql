
-- Use the `ref` function to select from other models

/*
select *
from {{ ref('my_first_dbt_model') }}
where id = 1
*/

/*
select *
from (
    select 1 as id
    union all
    --select -2 as id
    --union all
    select 3 as id
) t
*/

/*
--{{config (materialized='view')}}
{{config (materialized='incremental')}}

select * from (
    select 1 as id
    union all
    select -1 as id
) t -- source table

{%if is_incremental()%}
    where id > (select max(id) from {{this}})
{% endif %}

*/

/*
{{config (materialized='view')}}

select *
from {{ ref('my_first_dbt_model') }}
*/

/*
{{config (materialized='view')}}

select *
from (
    select 6 as id
    union all
    select 3 as id
) t
*/

/*
{{ config(
    materialized='incremental',
    unique_key='id'
) }}

-- 1st run
-- select *
-- from (
--     select 1 as id, 100 as amount
--     union all
--     select 2 as id, 200 as amount
--     union all
--     select 3 as id, 300 as amount
-- ) t

-- 2nd run
select *
from (
    select 2 as id, 250 as amount
    union all
    select 3 as id, 350 as amount
    union all
    select 4 as id, 400 as amount
) t

*/

{{config (materialized='view')}}

select * from {{ ref('my_first_dbt_model') }}
