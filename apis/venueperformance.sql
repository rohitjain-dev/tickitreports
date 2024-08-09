{%cache%}
SELECT 
    venuecache.venueid, 
    venuecache.venuename, 
    COUNT(event4.eventid) AS total_events_hosted,
    SUM(sales4.qtysold) AS total_tickets_sold,
    SUM(sales4.pricepaid) AS total_revenue
FROM 
    venuecache
JOIN 
    event4 ON venuecache.venueid = event4.venueid
JOIN 
    sales4 ON event4.eventid = sales4.eventid
GROUP BY 
    venuecache.venueid, venuecache.venuename
ORDER BY 
    total_tickets_sold DESC, total_events_hosted DESC
{%endcache%}