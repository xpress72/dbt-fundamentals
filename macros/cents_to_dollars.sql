{% macro cents_to_dollars(amount_field, decimal_amount=2 ) -%}
round({{ amount_field }} / 100, {{decimal_amount}})
{%- endmacro %}