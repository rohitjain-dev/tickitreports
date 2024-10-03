SELECT
    public.venue.venueid,
    public.venue.venuename,
    JSON_AGG(JSON_BUILD_OBJECT('eventname'::text, public.event.eventname::text, 'city'::text, public.venue.venuecity::text)) AS eventhosted
FROM public.venue
JOIN public.event ON public.venue.venueid = public.event.venueid
GROUP BY public.venue.venueid, public.venue.venuename;