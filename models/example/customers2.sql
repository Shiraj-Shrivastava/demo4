with cte1 as 
(
select "CustomerID","Annual Income ($)","Profession","Gender", 
Row_Number() over(partition by "Profession" order by "Annual Income ($)" desc) as rownum
from 
--customers
{{source ('customers_raw','customers')}} --postgres.staging.customers
where lower("Gender") = 'female'
)
select * from cte1 where rownum <=50

