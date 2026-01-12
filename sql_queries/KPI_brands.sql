SELECT 
    brand,
    COUNT(*) AS units_sold,
    ROUND(SUM(current_price), 2) AS total_revenue,
    ROUND(AVG(current_price), 2) AS avg_selling_price
FROM optimal-sentry-467208-m0.fashiondataset4.hmdataset
WHERE is_returned = FALSE
GROUP BY brand
ORDER BY total_revenue DESC;