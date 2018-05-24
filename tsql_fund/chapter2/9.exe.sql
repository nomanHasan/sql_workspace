SELECT empid, firstname, lastname, titleofcourtesy,
    case titleofcourtesy
        WHEN 'Mr.' THEN 'Male'
        WHEN 'Ms.' THEN 'Female'
        WHEN 'Mrs.' THEN 'Female'
        ELSE 'Unknown'
    END AS gender
    FROM HR.Employees