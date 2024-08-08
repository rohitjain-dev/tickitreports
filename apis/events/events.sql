{% cache %}
SELECT eventid, eventname, venueid, catid, dateid, starttime FROM events_cache;
{% endcache %}