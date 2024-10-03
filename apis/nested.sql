SELECT
    'Venuedetails' AS venue_details,
    v.venueid AS venue_id,
    v.venuename AS venue_name,
    v.venuecity AS venue_city,
    e.eventname AS event_name
FROM public.venue AS v
JOIN public.event AS e ON v.venueid = e.venueid;
