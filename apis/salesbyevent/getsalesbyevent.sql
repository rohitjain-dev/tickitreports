{% cache %} 
{% req eventidcount %}
    SELECT COUNT(*) as count FROM sales WHERE eventid = {{context.params.id}};
{% endreq %}

{% if eventidcount.value()[0].count == 0 %}
    {% error "EVENT_NOT_FOUND" %}
{% endif %}

    SELECT * FROM sales1_cache WHERE eventid = {{ context.params.id }};
{% endcache %}    