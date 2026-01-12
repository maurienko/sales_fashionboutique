WITH brand_revenue AS (
    SELECT 
        season,
        brand,
        SUM(current_price) AS net_revenue
    FROM optimal-sentry-467208-m0.fashiondataset4.hmdataset
    WHERE is_returned = FALSE
    GROUP BY season, brand
)
SELECT * FROM (
    SELECT 
        *,
        DENSE_RANK() OVER(PARTITION BY season ORDER BY net_revenue DESC) as brand_rank
    FROM brand_revenue
) t
WHERE brand_rank <= 3;