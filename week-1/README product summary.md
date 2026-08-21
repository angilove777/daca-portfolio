Nädal: 1          Meeskond: [ANgelina Sivkov]          Roll: C
ROLL: Tooteandmete uurija (Product Data Explorer)

Uuri products tabelit: mitu toodet on? Millised kategooriad? Milline on hinnavahemik? Kas on puuduvaid andmeid

https://github.com/laura-johanson/urbanstyle-marketing-data/commit/a7baebb0cd97b02d736adce4ebacaac81554a3de

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- Mitu toodet on kokku? 362
SELECT COUNT(*) AS toodete_arv FROM products; 

-- Millised veerud ja andmed tabelis on?
SELECT * FROM products LIMIT 10;

-- Kõik unikaalsed tootekategooriad
SELECT DISTINCT category FROM products; (jalanõud, laste_riided, aksessuaarid, naiste_riided, meeste_riided)

-- 10 kallemat toodet
SELECT product_name, category, retail_price
FROM products
ORDER BY retail_price DESC
LIMIT 10;

-- 10 odavamat toodet
SELECT product_name, category, retail_price
FROM products
ORDER BY retail_price ASC
LIMIT 10;

-- Näite: kõik kindla kategooria tooted
SELECT * FROM products
WHERE category = 'naiste_riided'
ORDER BY retail_price DESC;

-- Puuduvad hinnad (0)
SELECT COUNT(*) - COUNT(retail_price) AS puuduvad_hinnad
FROM products;

-- Puuduvad kategooriad (0)
SELECT COUNT(*) - COUNT(category) AS puuduvad_kategooriad
FROM products;

lisaülesanne
●	Loe tooted kategooriati kokku:
SELECT category, COUNT(*) AS toodete_arv
FROM products
GROUP BY category
ORDER BY toodete_arv DESC;

●	Leia keskmised hinnad kategooriati:
SELECT category,
       COUNT(*) AS toodete_arv,
       MIN(retail_price) AS min_hind,
       MAX(retail_price) AS max_hind
FROM products
GROUP BY category
ORDER BY max_hind DESC;

●	Kombineeri tingimused: Leia tooted, mille hind on üle 50 EUR konkreetses kategoorias:
SELECT * FROM products
WHERE retail_price > 50 AND category = 'naiste_riided'
ORDER BY retail_price DESC;

"Mina uurisin sales tabelit. Leidsin, et seal on 15 234 rida ja 8 veergu. Suurim tehing oli 1 247 EUR. See tähendab, et UrbanStyle'il on piisavalt müügiandmeid analüüsiks, aga ma märkasin ka puuduvaid kliendi-ID-sid."
1	Mis oli suurim üllatus?	Mis ei olnud ootuslaadne? Mis number või leid tekitas küsimusi?
2	Milline on meie soovitus Toomasele?	Mida Toomas peaks nende andmetega järgmiseks tegema?



SELECT COUNT(*) AS toodete_arv FROM products; 
count (*) eco_certified
