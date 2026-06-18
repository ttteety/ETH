select *
from  {{ ref('stg_transactions_enriched') }}
where from_address in ('0xcf7f06192ad837653be626bf30ff0b85dccae385', '0xf4822839101f87d79a0d2f6d3db423c3ea3bebd1')