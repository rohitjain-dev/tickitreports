{% cache %}
SELECT * FROM sales1 WHERE eventid = {{ context.params.id }};       
{% endcache %}