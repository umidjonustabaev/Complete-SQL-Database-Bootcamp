
/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Assuming a student's minimum age for the class is 15, what is the average age of a student?
*/

SELECT AVG(COALESCE(age, 15)) AS average_age
FROM "Student";

-- result: 30.4000000000000000

/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Replace all empty first or last names with a default?
*/
SELECT
    id,
    COALESCE(name, 'name') AS first_name,
    COALESCE(lastname, 'lastname') AS last_name,
    age
FROM "Student";
