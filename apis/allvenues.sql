SELECT 
    v.venuename,
    (
        SELECT 
            LISTAGG(e.eventname, ', ') WITHIN GROUP (ORDER BY e.eventname)
        FROM 
            event e
        WHERE 
            e.venueid = v.venueid
    ) AS eventhosted
FROM 
    venue v
ORDER BY 
    v.venuename;
