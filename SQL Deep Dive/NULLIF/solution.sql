/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

SELECT
    prod_id,
    title,
    price,
    COALESCE(NULLIF(special::TEXT, '0'), 'null') AS "special"
FROM products;
