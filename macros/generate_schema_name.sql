{% macro generate_schema_name(custom_schema_name, node) -%}
    {% set env = target.name | lower %}
    {% set is_marts_model = node.path is not none and 'marts/' in node.path %}

    {%- if env == 'dev' -%}
        {# DEV environment logic #}
        {%- if is_marts_model -%}
            {{ custom_schema_name if custom_schema_name is not none else target.schema }}
        {%- else -%}
            {%- if custom_schema_name is none -%}
                {{ target.schema }}
            {%- else -%}
                {{ target.schema ~ '_' ~ custom_schema_name | trim }}
            {%- endif -%}
        {%- endif -%}
    {%- else -%}
        {# TEST/PROD logic: always use custom_schema_name if specified, else target.schema #}
        {{ custom_schema_name if custom_schema_name is not none else target.schema }}
    {%- endif -%}
{%- endmacro %}