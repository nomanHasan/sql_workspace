SELECt * from sales.Orders
    WHERE orderdate = EOMONTH(Orders.orderdate)