SELECT
    public.venue.venueid,
    public.venue.venuename,
    public.event.eventname,
    public.venue.venuecity
FROM public.venue
JOIN public.event ON public.venue.venueid = public.event.venueid LIMIT 10;