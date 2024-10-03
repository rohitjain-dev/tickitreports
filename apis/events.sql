
{%req eventcount %}
    {% cache varcount %}
    SELECT COUNT(*) as ecount from events_cache
    {% endcache %}
{% endreq %}
{% if eventcount.value()[0].ecount != 0 %}
    {% error "No events" %}
{% endif %}    
{% cache %}
SELECT eventid, eventname, venueid, catid, dateid, starttime FROM events_cache;
{% endcache %}