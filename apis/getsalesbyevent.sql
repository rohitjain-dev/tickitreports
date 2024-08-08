{% cache %}
 SELECT * FROM sales1_cache WHERE eventid = {{ context.params.id }};       
{% endcache %}    