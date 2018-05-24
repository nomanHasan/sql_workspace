SELECT E.empid, E.firstname, E.lastname 
    FROM HR.Employees as E
    WHERE E.empid IN (
        SELECT O.empid
            FROM Sales.Orders as O
            GROUP BY O.empid
            HAVING MAX(O.orderdate) < CAST('20160501' as DATE) 
    )
