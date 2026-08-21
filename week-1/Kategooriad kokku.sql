lisaülesanne
●	Loe tooted kategooriad kokku:
SELECT category, COUNT(*) AS toodete_arv
FROM products
GROUP BY category
ORDER BY toodete_arv DESC;

category,toodete_arv
meeste_riided,82
jalanöusid,73
laste_riided,70
naiste_riided,70
aksessuaarid,67

