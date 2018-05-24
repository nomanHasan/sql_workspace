SELECT E.empid, DATEDIFF(dd, '20160612', '20160616') as DIFF, DATEADD(DD, N.n - 1, '20160612')
    FROM HR.Employees as E
    CROSS JOIN dbo.Nums as N
    WHERE N.n <= DATEDIFF(dd, '20160612', '20160616') + 1
    ORDER BY empid
