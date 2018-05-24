SELECT O.orderid, O.orderdate, O.custid, O.empid
    FROM Sales.Orders as O
    WHERE O.orderdate = (SELECt MAX(orderdate) FROM Sales.Orders)