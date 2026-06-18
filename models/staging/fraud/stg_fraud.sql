{{ config(group = 'fraud_risk', access='private') }}

select 
    t.from_address,
    c.bytecode,
    count(c.bytecode) as bytecode_count

from {{ ref('stg_transactions_enriched')}} t
left join {{ ref('stg_contracts')}} c 
on t.receipt_contract_address = c.address 

where t.transaction_category = 'contract_creation'
and c.bytecode is not null 

group by 1,2 

-- 0xcf7f06192ad837653be626bf30ff0b85dccae385
-- 0xf4822839101f87d79a0d2f6d3db423c3ea3bebd1