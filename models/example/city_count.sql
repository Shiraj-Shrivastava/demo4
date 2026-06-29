
{{config (materialized = 'view')}}

select  count(*) as total_cities,
        min(cityid) as max_cityid
from {{ref('city_details')}}



    