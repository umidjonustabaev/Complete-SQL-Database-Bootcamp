/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and if it is lower than or equal to 10 you show 'cheap'.
*/
SELECT
    prod_id,
    title,
    price,
    CASE
        WHEN price > 20 THEN 'expensive'
        WHEN (price BETWEEN 10 AND 20) THEN 'average'
        WHEN price < 10 THEN 'cheap' -- not including 10 because prev clause covers it
    END
    AS price_class
FROM products;
