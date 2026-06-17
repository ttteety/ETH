{{ config(materialized='view') }}

select 
    addess as address,
    block_number,
    bytecode,
    date,
    last_modified
from {{ source('eth', 'contracts') }}