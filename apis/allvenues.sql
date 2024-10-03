SELECT 
    v.venuename, 
    e.eventname
FROM 
    venue v
JOIN 
    event e ON v.venueid = e.venueid
ORDER BY 
    v.venuename, e.eventname;
