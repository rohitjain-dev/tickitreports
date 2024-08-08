{% cache %}
SELECT * FROM sales1_cache WHERE buyerid = {{context.params.bid}};
{% endcache %}