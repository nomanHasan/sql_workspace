SELECT DISTINCT C.country FROM Sales.Customers as C
    WHERE C.country NOT IN (
        SELECT E.country FROM HR.Employees as E
    )