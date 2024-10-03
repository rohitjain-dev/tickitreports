SELECT
    public.event.eventid,
    public.event.eventname,
    public.venue.venuename,
    public.venue.venuecity,
    public.sales.buyerid,
    public.users.username AS buyer_name
FROM public.event
JOIN public.venue ON public.event.venueid = public.venue.venueid
JOIN public.sales ON public.event.eventid = public.sales.eventid
JOIN public.users ON public.sales.buyerid = public.users.userid
LIMIT 10;