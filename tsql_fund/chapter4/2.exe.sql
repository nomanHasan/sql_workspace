SELECT custid, orderid, orderdate, empid
    FROM Sales.Orders
    WHERE custid = (SELECT O.custid
        FROM Sales.Orders as O
        GROUP BY O.custid
        HAVING COUNT(O.custid) = (SELECT MAX(OC.OrderCount)
            FROM (SELECT O.custid, COUNT(O.custid) as OrderCount
                FROM Sales.Orders as O
                GROUP BY O.custid) as OC)
        )