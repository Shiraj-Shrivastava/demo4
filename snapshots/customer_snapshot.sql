{%snapshot customer_snapshot%}

{{
    config(
        target_schema = 'transformed',
        unique_key = 'userid',
        strategy = 'check',
        check_cols = ['username']
    )
}}

select * from transformed.customer_master

{% endsnapshot %}