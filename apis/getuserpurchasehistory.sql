{% cache %}
SELECT * FROM sales_cache1 WHERE buyerid = {{context.params.bid}};
{% endcache %}