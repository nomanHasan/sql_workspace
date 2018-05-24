SELECT C.custid, C.companyname, O.orderid, O.orderdate 
    FROM Sales.Customers as C
    LEFT JOIN Sales.Orders as O
        ON C.custid = O.custid