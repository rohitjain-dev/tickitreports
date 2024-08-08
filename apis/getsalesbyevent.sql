
{% req eventidcount %}
    SELECT COUNT(*) as count FROM sales WHERE eventid = {{context.params.id}};
{% endreq %}

{% cache %} 
{%if eventidcount.value()[0].count == 0 %}
    {% error "EVENT_NOT_FOUND" %}
{%else %}
 SELECT * FROM sales_cache WHERE eventid = {{ context.params.id }};    
{% endif %}
   
{% endcache %}    