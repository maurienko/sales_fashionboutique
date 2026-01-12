SELECT 
    CASE 
        WHEN markdown_percentage > 30 THEN 'High Discount (>30%)'
        ELSE 'Standard/Low Discount'
    END AS discount_tier,
    COUNT(*) AS total_sales,
    ROUND(AVG(CASE WHEN is_returned = TRUE THEN 1.0 ELSE 0 END) * 100, 2) AS return_rate_pct
FROM optimal-sentry-467208-m0.fashiondataset4.hmdataset
GROUP BY 1;