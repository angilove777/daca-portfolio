
ALAÜLESANDE KAART A: Müügiandmete Puhastamine. Angelina Sivkov
Element	Kirjeldus
ROLL A Müügiandmete puhastaja (Sales Data Cleaner)
ÜLESANNE	Leia duplikaadid, NULL väärtused ja vigased kuupäevad sales tabelis. Loo test koopia, puhasta ja dokumenteeri kõik muudatused.
SISEND	Tabel: sales (Supabase)
VÄLJUND	Puhastamisraport (duplikaadid leitud, NULL-id leitud, formaadivead, soovitused) + SQL skript
SAMM-SAMMULT JUHEND:

│  SUURIM ÜLLATUS:                                             
│  Palju dublikaate                                       
│                                                              
│  SOOVITUS TOOMASELE:                                         
│   Andmeid võib kasutada andmekvaliteedi kontrollimiseks ja vigade leidmiseks, kuid mitte veel täielikult usaldusväärsete äriotsuste tegemiseks sest parandused veel tegemata (nt. linnanime formaat)│
│                                                              
│  PUUDUVAD ANDMED:                                            
 Customer_id puudub paljudel klientidel 

Samm 1. Loo test koopia (ära tööta production tabelil!):
CREATE TABLE sales_test AS SELECT * FROM sales;
-- Taga unikaalne rea-tunnus dedup'i jaoks (lisab `id` AINULT siis, kui see puudub).
-- NB: `CREATE TABLE ... AS SELECT` ei pärandata alati `id`-d — see rida teeb Sammu 3 töökindlaks.
ALTER TABLE sales_test ADD COLUMN IF NOT EXISTS id SERIAL;
-- Kontrolli ridade arvu
SELECT COUNT(*) AS ridade_arv FROM sales_test;
Kirjuta üles: 15234 rida.

Samm 2. Leia duplikaadid — millised tellimused (arved) korduvad?
SELECT invoice_id, COUNT(*) AS koopiate_arv
FROM sales_test
GROUP BY invoice_id
HAVING COUNT(*) > 1
ORDER BY koopiate_arv DESC;
Kirjuta üles: 100tk duplikaatset invoice_id.

Samm 3. Loe kokku duplikaatsete ridade arv: 
SELECT COUNT(*) AS duplikaat_read
FROM sales_test
WHERE id NOT IN (
    SELECT MIN(id)
    FROM sales_test
    GROUP BY invoice_id
);
Kirjuta üles: 5116 rida on duplikaadid.

Samm 4. Leia NULL väärtused kriitilistes väljades:
SELECT
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE sale_date IS NULL) AS null_sale_date,
    COUNT(*) FILTER (WHERE total_price IS NULL) AS null_total_price
FROM sales_test;
Kirjuta üles: 1487 NULL customer_id, 0 NULL sale_date, 0 NULL total_price.

Samm 5. Kontrolli kuupäevade formaati — kas on tuleviku kuupäevi?
SELECT COUNT(*) AS tuleviku_kuupaevad
FROM sales_test
WHERE sale_date > CURRENT_DATE;
Kirjuta üles:0 tuleviku kuupäeva. (kirjeldus allpool kuidas otsisin)

SELECT COUNT(*) AS tuleviku_kuupaevad
FROM sales_test
WHERE CASE
    WHEN sale_date LIKE '__/__/____'
        THEN TO_DATE(sale_date, 'DD/MM/YYYY')
    WHEN sale_date LIKE '____-__-__'
        THEN TO_DATE(sale_date, 'YYYY-MM-DD')
END > CURRENT_DATE;

SELECT DISTINCT sale_date
FROM sales_test
LIMIT 20;

with script SELECT COUNT(*) AS tuleviku_kuupaevad 
FROM sales_test 
WHERE TO_DATE(sale_date, 'DD/MM/YYYY') > CURRENT_DATE;


SELECT COUNT(*) AS tuleviku_kuupaevad
FROM sales_test
WHERE CASE
    WHEN sale_date LIKE '__/__/____'
        THEN TO_DATE(sale_date, 'DD/MM/YYYY')
    WHEN sale_date LIKE '____-__-__'
        THEN TO_DATE(sale_date, 'YYYY-MM-DD')
END > CURRENT_DATE;


SELECT sale_date
FROM sales_test
LIMIT 10;

Kategooria	Leitud probleeme	Kirjeldus
Duplikaadid	?	Korduvad invoice_id väärtused (duplikaattellimused) 100tk duplikaatset invoice_id, 5116 rida on duplikaadid.
NULL customer_id	?	1487 NULL customer_ id
NULL sale_date	?	 0 NULL sale_date
NULL total_price	?	0 NULL total_price.
Tuleviku kuupäevad	?	Kuupäev > tänane
KOKKU probleeme	?	 3 probleemi kokku




Lisaülesanne:
1. Kui baastase on valmis ja aega jääb, proovi ka puhastamine läbi viia:
-- Kustuta duplikaadid (jäta alles ainult esimene rida iga invoice_id kohta)
DELETE FROM sales_test
WHERE id NOT IN (
    SELECT MIN(id)
    FROM sales_test
    GROUP BY invoice_id
);

2. 
