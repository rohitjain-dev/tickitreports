SELECT 
    v.venue_name, 
    e.event_name
FROM 
    venue v
JOIN 
    event e ON v.venue_id = e.venue_id
ORDER BY 
    v.venue_name, e.event_name;
