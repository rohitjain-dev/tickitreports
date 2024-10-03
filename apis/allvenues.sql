SELECT 
    v.venue_name, 
    e.event_name
FROM 
    venues v
JOIN 
    events e ON v.venue_id = e.venue_id
ORDER BY 
    v.venue_name, e.event_name;
