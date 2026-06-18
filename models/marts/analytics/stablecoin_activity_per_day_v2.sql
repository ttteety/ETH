{{ config(grants={"+select": ["TESTER"]})}}

select
    t.date,

    s.type, 

    {{conversion('t.value', 's.decimals')}} as total_usd_value

from {{ ref("stg_token_transfers")}} t 
 join {{ ref("stablecoins")}} s 
on t.token_address = s.contract_address


group by 1,2