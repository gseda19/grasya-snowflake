{% macro generate_schema_name(custom_schema_name, node) -%}
  {%- set default_schema = target.schema -%}

  {%- if target.name == 'prod' -%}
    {# In prod, use the +schema config, e.g. "marts" #}
    {{ custom_schema_name }}

  {%- else -%}
    {# In non-prod, just use whatever schema is set on the environment #}
    {{ default_schema }}

  {%- endif -%}
{%- endmacro %}