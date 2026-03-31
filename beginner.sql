-- Select all the data from a table.
SELECT * FROM Country;

-- Select specific attributes from a table.
SELECT Name, Capital FROM Country;
SELECT Name, Description FROM TouristAttraction;

-- You can use aliases to rename columns within a table.
-- We can also rename the table to, say, 'c' to refer to the table so we can then call its attributes (or columns) such as c.Name
SELECT c.Name as CountryName, c.Capital, c.CurrencyCode as Currency from Country c;

--- You can also call them with quotation marks
SELECT 
	"Country name" = c.Name,
    c.Capital,
    'Currency code' = c.CurrencyCode
FROM Country c;

--- Sorting 

SELECT 
	Name 
FROM Country c
ORDER BY c.Name; -- By default, it is in ascending order.

SELECT
	"Name" = c.Name,
    "Capital" = c.Capital
FROM Country c
ORDER BY c.Capital DESC; -- Descending order, ASC could be used for ascending order but that's just too much.

-- Multiple sorting at the same time 

SELECT 
	c.Name,
    c.EuropeUnionMember,
    c.Population
FROM Country c
ORDER BY c.EuropeUnionMember DESC, c.Population DESC;

-- Select Top 5

SELECT TOP 5
	*
FROM Country c
ORDER BY c.Population ASC;

-- Conditionals

SELECT 
	* 
FROM Country c
WHERE c.Capital = 'Madrid';

SELECT
    *
FROM Country c
WHERE c.Population > 50000000;

SELECT 
	*
FROM Country c
WHERE c.Id != 2;

SELECT 
    *
FROM Country c
WHERE c.Id <= 3;

SELECT 
    *
FROM Country c
where c.Population >= 44e6; -- 44 millions -> 44,000,000

SELECT
    *
FROM Country c
WHERE c.EuropeUnionMember = 1 AND c.CurrencyCode != 'EUR';

SELECT
    *
FROM Country c
WHERE c.Capital = 'Amsterdam'
OR c.Capital = 'Paris'
OR c.Capital = 'Madrid';