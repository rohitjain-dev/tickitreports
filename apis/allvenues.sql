SELECT v.venue_name,
       e.event_name,
       e.event_date
FROM Venue v
LEFT JOIN Event e ON v.venue_id = e.venue_id
ORDER BY v.venue_name, e.event_date;
