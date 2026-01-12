WITH seasonal_sales AS (
    SELECT 
        season,
        category,
        SUM(current_price) AS revenue,
        DENSE_RANK() OVER (PARTITION BY season ORDER BY SUM(current_price) DESC) as rank
    FROM optimal-sentry-467208-m0.fashiondataset4.hmdataset
    WHERE is_returned = FALSE
    GROUP BY season, category
)
SELECT * FROM seasonal_sales WHERE rank <= 3;