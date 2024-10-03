SELECT 
    e.EventID,
    e.EventName,
    ARRAY_AGG(DISTINCT p) AS Performances,
    ARRAY_AGG(DISTINCT a) AS Attendees
FROM 
    Event e
LEFT JOIN 
    Performance p ON e.EventID = p.EventID
LEFT JOIN 
    Attendee a ON e.EventID = a.EventID
GROUP BY 
    e.EventID, e.EventName
LIMIT 10;
