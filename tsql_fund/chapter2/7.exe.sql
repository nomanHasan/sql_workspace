
SELECT TOP 3
    shipcountry, AVG(freight)
FROM Sales.Orders
WHERE YEAR(shippeddate)=2015
GROUP BY shipcountry
ORDER BY AVG(freight) DESC