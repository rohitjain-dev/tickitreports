WITH BuyerEventCounts AS (
    SELECT
        public.users.userid,
        COUNT(DISTINCT public.event.eventid) AS event_count
    FROM public.event
    JOIN public.sales ON public.event.eventid = public.sales.eventid
    JOIN public.users ON public.sales.buyerid = public.users.userid
    GROUP BY public.users.userid
),
TopBuyers AS (
    SELECT
        userid,
        event_count
    FROM BuyerEventCounts
    ORDER BY event_count DESC
    LIMIT 10
)
SELECT
    public.users.username,
    public.event.eventname,
    public.venue.venuename,
    public.venue.venuecity
FROM public.event
JOIN public.sales ON public.event.eventid = public.sales.eventid
JOIN public.users ON public.sales.buyerid = public.users.userid
JOIN public.venue ON public.event.venueid = public.venue.venueid
WHERE public.users.userid IN (SELECT userid FROM TopBuyers);