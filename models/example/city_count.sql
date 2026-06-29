{{config (materialized = 'view')}}

select  count(*) as total_cities,
        min(cityid) as max_cityid,
        'abc' as test_col
from {{ref('city_details')}}
-- PR demo