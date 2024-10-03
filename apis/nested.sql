SELECT
    public.venue.venueid,
    public.venue.venuename,
    JSON_AGG(JSON_BUILD_OBJECT('eventname', public.event.eventname, 'city', public.venue.venuecity)) AS eventhosted
FROM public.venue
JOIN public.event ON public.venue.venueid = public.event.venueid
GROUP BY public.venue.venueid, public.venue.venuename LIMIT 5;