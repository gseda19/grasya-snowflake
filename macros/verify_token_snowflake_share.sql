{% macro verify_token_snowflake_share(tenant_id, product, verification_token) %}
    {# whatever “expected” logic you want – this is just an example #}
    {% set expected_token = 'BONTERRA_IMPACTHUB_' ~ product ~ '_' ~ tenant_id %}

    {% if verification_token != expected_token %}
        {{ exceptions.raise_compiler_error(
            'verify_token: token mismatch.'
        ) }}
    {% endif %}

    -- if it matched, you could do a simple no-op
    select 1 as ok
{% endmacro %}