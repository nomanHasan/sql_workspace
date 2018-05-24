SELECT custid, orderdate, orderid,
   ROW_NUMBER() OVER(PARTITION BY custid ORDER BY orderdate, orderid) as rownum
    FROM sales.Orders
    ORDER BY custid, rownum