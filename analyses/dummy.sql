-- {{ codegen.generate_source(schema_name="eth_schema", database_name = "eth", generate_columns=True, include_data_types=False)}}

-- {{ codegen.generate_model_yaml(['stg_transactions'])}}

-- select 
-- {{ dbt_utils.star(from = ref('stg_transactions_enriched'), except=['new_field', 'hash'], quote_identifiers=False, prefix='stg_')}}
-- from {{ ref('stg_transactions_enriched')}}