--
--
{% snapshot snp_customers_var %}

{{
    config(
      target_schema='core',
      unique_key='id',
      strategy='check',
      check_cols=['first_name', 'last_name', 'postal_code']
    )
}}

select
    *
from
    {{ source('jaffleshop', 'jaffleshop__customers') }}

{% endsnapshot %}
