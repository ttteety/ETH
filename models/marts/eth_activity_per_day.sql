select 
    date,
    transaction_category,
    count(*) as tx_count,
    {{ethereum_conversion('value')}} as total_value

from {{ ref('stg_transactions_enriched')}}
group by 1,2 
