select orderid,
    SUM(qty * unitprice) as totalvalue
    from Sales.OrderDetails
    GROUP BY orderid
    HAVING SUM(qty * unitprice) > 10000
    Order BY totalvalue DESC