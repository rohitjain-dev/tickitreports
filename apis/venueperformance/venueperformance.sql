SELECT event.venueid, COUNT(event.eventid) AS total_events, SUM(sales.qtysold) AS total_tickets
FROM public.event
JOIN public.sales ON event.eventid = sales.eventid
WHERE event.venueid = {{context.params.id}}
GROUP BY event.venueid;
