SELECT O.custid, O.orderid, O.orderdate, O.empid 
    FROM Sales.Orders O
    WHERE O.orderdate = (
        SELECT MAX(O2.orderdate) as lastDay
            FROM Sales.Orders as O2
            GROUP BY O2.custid
            HAVING O2.custid = O.custid
    )
    ORDER BY O.custid
