{% cache %}
SELECT category_cache.catname, SUM(qtysold) AS total_tickets
FROM category_cache
JOIN event_cache ON category_cache.catid = event_cache.catid
JOIN sales_cache ON event_cache.eventid = sales_cache.eventid
GROUP BY category_cache.catname;
{% endcache %}
