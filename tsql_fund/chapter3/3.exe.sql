SELECT C.custid, COUNT(C.custid) as numorders, SUM(OD.qty) as totalqty
    FROM Sales.Customers as C
    LEFT JOIN Sales.Orders as O
        ON C.custid = O.custid
    LEFT JOIN Sales.OrderDetails as OD
        ON O.orderid = OD.orderid
    WHERE C.country = 'USA'
    GROUP BY C.custid