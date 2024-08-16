{% macro create_table(table_name) %}
    {% set sql %}
        CREATE TABLE IF NOT EXISTS {{ table_name }} (
            id INT,
            name STRING
        );
    {% endset %}

    {% do run_query(sql) %}
{% endmacro %}