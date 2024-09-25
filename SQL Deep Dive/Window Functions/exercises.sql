/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/

SELECT
    name,
    continent,
    population,
    SUM(population) OVER(PARTITION BY continent) AS pop_per_cont
FROM country;



/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop ulation
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/

SELECT
    name,
    continent,
    population,
    SUM(population) OVER(PARTITION BY continent) AS p_continent,
    SUM(population) OVER() AS p_total,
    ROUND(
        (
            (
                SUM(population) OVER (PARTITION BY continent)::FLOAT 
                / 
                SUM(population) OVER ()
            ) * 100
        )::NUMERIC, 2
    ) AS percent_world
FROM country;




/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/

SELECT
    DISTINCT(r.code) AS reg_code,
    r.name,
    COUNT(t.code) OVER(PARTITION BY r.code) AS "towns #"
FROM regions AS r
JOIN departments AS d
ON r.code = d.region
JOIN towns AS t
ON d.code = t.department
ORDER BY (r.code);
