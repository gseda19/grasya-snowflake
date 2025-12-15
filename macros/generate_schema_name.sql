-- macros/generate_schema_name.sql
{% macro generate_schema_name(custom_schema_name, node) -%}
  {%- set default_schema = target.schema -%}

  {# In prod: use the custom schema from dbt_project.yml (staging / marts) #}
  {%- if target.name == 'prod' and custom_schema_name is not none -%}
    {{ custom_schema_name | trim }}

  {# In non-prod (dev/ci/etc): just use the environment's target.schema #}
  {%- else -%}
    {{ default_schema }}

  {%- endif -%}
{%- endmacro %}