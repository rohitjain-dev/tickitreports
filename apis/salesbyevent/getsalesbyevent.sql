
{% req eventidcount %}
    SELECT COUNT(*) as count FROM sales WHERE eventid = {{context.params.id}};
{% endreq %}

{% cache %}
{% if eventidcount.value()[0].count == 0 %}
    {% error "STORE_NOT_FOUND" %}
{% endif %} 
        SELECT * FROM sales1_cache WHERE eventid = {{ context.params.id }};
{% endcache %}    