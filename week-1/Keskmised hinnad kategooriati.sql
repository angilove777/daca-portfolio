lisaülesanne

●	Leia keskmised hinnad kategooriati:
SELECT category,
       COUNT(*) AS toodete_arv,
       MIN(retail_price) AS min_hind,
       MAX(retail_price) AS max_hind
FROM products
GROUP BY category
ORDER BY max_hind DESC;

category,toodete_arv,min_hind,max_hind
jalanöusid,73,58.49,434.08
meeste_riided,82,48.85,374.54
naiste_riided,70,32.93,351.33
aksessuaarid,67,13.53,231.13
laste_riided,70,22.7,168.82
