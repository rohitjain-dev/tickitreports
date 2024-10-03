SELECT 
    v.venuename,
    LISTAGG(e.eventname, ', ') WITHIN GROUP (ORDER BY e.eventname) AS eventhosted
FROM 
    venue v
JOIN 
    event e ON v.venueid = e.venueid
GROUP BY 
    v.venuename
ORDER BY 
    v.venuename;
