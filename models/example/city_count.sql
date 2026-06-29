{{config (materialized = 'view')}}
select  count(*) as total_cities,
        max(cityid) as max_cityid,
        'abc' as test_col
from {{ref('city_details')}}