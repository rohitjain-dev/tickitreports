SELECT
    public.venue.venuename,
    public.venue.venuecity,
    public.users.username AS buyer,
FROM public.event
JOIN public.venue ON public.event.venueid = public.venue.venueid
JOIN public.sales ON public.event.eventid = public.sales.eventid
JOIN public.users ON public.sales.buyerid = public.users.userid
WHERE public.event.eventid = {{context.params.id}}
LIMIT 10;