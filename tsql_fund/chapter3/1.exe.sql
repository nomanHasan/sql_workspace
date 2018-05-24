SELECT a.empid, a.firstname, a.lastname, b.n
    FROM HR.Employees as a
    CROSS JOIN dbo.Nums as b 
    WHERE b.n <= 5