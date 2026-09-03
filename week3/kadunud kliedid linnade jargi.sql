SELECT        c.city,        COUNT(*) AS kadunud_kliente    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id    
WHERE s.sale_id IS NULL    
GROUP BY c.city    
ORDER BY kadunud_kliente DESC;  

city,kadunud_kliente
Tallinn,229
Tartu,131
P채rnu,70
Narva,32
Valga,24
Kuressaare,18
Rakvere,17
Viljandi,17
Haapsalu,16
V천ru,15
J천hvi,12
Paide,11

