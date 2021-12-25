{% macro dev_limitation(filed_name, dev_days = 3, is_where = true) %}
{%- if target.name == 'default' %}
{%- if is_where %}
where 
{%- endif %}
    {{ filed_name }} > current_timestamp - interval '{{dev_days}} days'
{% endif %}
{% endmacro %}