WITH EventData AS (
    SELECT
        public.event.eventid,
        public.event.eventname,
        public.venue.venuename,
        public.venue.venuecity,
        public.sales.buyerid,
        public.users.username AS buyer_name,
        public.sales.priceperticket
    FROM public.event
    JOIN public.venue ON public.event.venueid = public.venue.venueid
    JOIN public.sales ON public.event.eventid = public.sales.eventid
    JOIN public.users ON public.sales.buyerid = public.users.userid
),
NestedResults AS (
    SELECT
        eventid,
        eventname,
        JSON_BUILD_OBJECT('name', venuename, 'city', venuecity) AS venue,
        JSON_AGG(JSON_BUILD_OBJECT('buyer', buyer_name, 'price', public.sales.priceperticket)) AS sales
    FROM EventData
    GROUP BY eventid, eventname, venuename, venuecity
)
SELECT * FROM NestedResults LIMIT 10;