SELECT 
    category,
    COUNT(*) AS total_items,
    SUM(CASE WHEN is_returned = TRUE THEN current_price ELSE 0 END) AS lost_revenue,
    ROUND(AVG(markdown_percentage), 2) AS avg_discount
FROM optimal-sentry-467208-m0.fashiondataset4.hmdataset
GROUP BY category
HAVING lost_revenue > 1000 
ORDER BY lost_revenue DESC;