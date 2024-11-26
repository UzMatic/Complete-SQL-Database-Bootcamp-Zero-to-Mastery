/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/
SELECT DISTINCT(c.continent),
    SUM(c.population) OVER (
    PARTITION BY c.continent
    ) AS "population"
FROM country as c;

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/
SELECT 
    c.continent,
    SUM(c.population) AS "population",
    CONCAT(
        ROUND(
            (SUM(c.population)::numeric / (SELECT SUM(population)::numeric FROM country)) * 100, 
            2
        ), '%'
    ) AS "world_population_percentage"
FROM 
    country AS c
GROUP BY 
    c.continent;


/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/

