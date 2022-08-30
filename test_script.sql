SELECT
    "PurchaseHour",
    AVG("OrderTotal") AS "OrderTotal_Avg",
    COUNT(*) AS "NumTransactions",
    MAX("MerchantURL") AS "MerchantURL"
FROM
     "CCFRAUDADVCODEMODULE_ecommerce_transactions_sql"
WHERE
    "MerchantURL" LIKE  '%${merchant_name}%'
GROUP BY
    "PurchaseHour"
ORDER BY
    "PurchaseHour" ASC
