select * from 
{{ref('my_second_dbt_model')}}
where id = 2
-- those records where id is 2 are invalid and are not desired in final table. so if this test returns some rows it means that the model has failed in test.
