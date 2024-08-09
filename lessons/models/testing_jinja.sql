{#-
    A comment that won't appear in the compiled SQL
-#}

-- A regular SQL comment 

 {# {%  %} used for a variety of things, something that is doing something 'python like'#}

{%- set my_long_variable -%}
    SELECT 1 AS my_col
{%+ endset -%}

{% set my_list = ['user_id', 'created_at']  %}

SELECT
{%- for item in my_list %}
    {{ item }}{% if not loop.last%},{% endif %}
{%- endfor %}
FROM [sometable]

{{ my_list }}