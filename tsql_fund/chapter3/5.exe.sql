SELECT C.custid, C.companyname, O.orderid
    FROM Sales.Customers as C
    LEFT JOIN Sales.Orders as O
        ON C.custid = O.custid
    WHERE O.orderid IS NULL