-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries
SELECT AVG(salary)
AS avg_salary
FROM salaries;

-- result: 63810.744836143706



-- Question 2: What year was the youngest person born in the company?
-- Table: employees
SELECT MIN(birth_date)
AS youngest_employee
FROM employees;

-- result: 1952-02-01



-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
SELECT COUNT(towns)
AS total_count
FROM towns;

-- result: 36684



-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT COUNT(language)
AS official_languages_count
FROM countrylanguage
WHERE isofficial = TRUE;

-- result: 238



-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT AVG(lifeexpectancy)
AS avg_life_expectancy
FROM country;

-- result: 66.48603611164265



-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
SELECT AVG(population)
AS avg_population_NLD
FROM city
WHERE countrycode = (
    SELECT code FROM country WHERE name = 'Netherlands'
);

-- result: 185001.750000000000
