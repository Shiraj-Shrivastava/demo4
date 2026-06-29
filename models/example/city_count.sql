{{config (materialized = 'view')}}

select count(*) as total_cities 
from {{ref('city_details')}}

