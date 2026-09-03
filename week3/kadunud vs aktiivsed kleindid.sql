 Võrdle kadunud vs aktiivsete klientide arvu: (ostnud 2558-aktiivne, kadunud 592-pole ostnud) Oige 2551, oige 599
 SELECT        CASE            
 WHEN s.sale_id IS NULL THEN 'Kadunud (pole ostnud)'            
 ELSE 'Aktiivne (on ostnud)'        
 END AS staatus,        
 COUNT(DISTINCT c.customer_id) AS kliente    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id    
GROUP BY        CASE            WHEN s.sale_id IS NULL 
THEN 'Kadunud (pole ostnud)'            
ELSE 'Aktiivne (on ostnud)'        
END;    `

599 kadunud, 2251 aktiivsed