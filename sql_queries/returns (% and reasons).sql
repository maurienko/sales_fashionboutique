SELECT 
    brand,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN is_returned = TRUE THEN 1 ELSE 0 END) AS returns_count,
    ROUND(SUM(CASE WHEN is_returned = TRUE THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS return_rate_pct
FROM optimal-sentry-467208-m0.fashiondataset4.hmdataset
GROUP BY brand
ORDER BY return_rate_pct DESC;

SELECT 
    return_reason, 
    COUNT(*) AS reason_count
FROM optimal-sentry-467208-m0.fashiondataset4.hmdataset
WHERE is_returned = TRUE
GROUP BY return_reason
ORDER BY reason_count DESC;