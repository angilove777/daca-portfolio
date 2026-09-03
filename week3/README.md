UrbanStyle Marketing Data. Angelina Sivkov. Nädal 3
ROLL	Roll B: "Kadunud klientide" tuvastamine
ÜLESANNE	LEFT JOIN: millised kliendid pole kunagi midagi ostnud? Koosta Anna jaoks "kadunud klientide" nimekiri koos soovitustega.
SISEND	Tabelid: customers, sales
VÄLJUND	SQL päringud (.sql fail) + tulemuste screenshot + "kadunud klientide" raport Annale


Peamised leiud (3 punkti — üks igalt rollilt):
2551 on aktiivsed kliendid ja 599 pole kunagi ühtegi ostu teinud.

Suurim üllatus: Palju kliente kes pole ostu teinud

Soovitus Annale: Keskenduda klientide analüüsile miks nad on andmebaasis ja pole kunagi midagi ostnud, mis oli põhjus.

Puuduvad andmed: Kampaaniate mõju ja maksumus, kliendi rahulolu ja tagasiside.

Kadunud klientide nimekiri on lõpus

--Leia kliendid, kellel pole ühtegi ostu:
SELECT c.first_name, c.last_name,  c.email,  c.city,  c.registration_date,  s.sale_id    
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id    
WHERE s.sale_id IS NULL 

--Loe kokku, mitu "kadunud" klienti on: (599)
SELECT COUNT(*) AS kadunud_kliente    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id    
WHERE s.sale_id IS NULL;    

--Analüüsi kadunud kliente linnade kaupa: (SQL failis)
SELECT        c.city,        COUNT(*) AS kadunud_kliente    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id    
WHERE s.sale_id IS NULL    
GROUP BY c.city    
ORDER BY kadunud_kliente DESC;    

---Uuri registreerimise kuupäeva (Millal kadunud kliendid registreerusid?) (SQL failis)
SELECT        c.first_name || ' ' || c.last_name AS klient,        c.registration_date,        c.city,        c.loyalty_tier    
FROM customers c    
LEFT JOIN sales s ON c.customer_id = s.customer_id    
WHERE s.sale_id IS NULL    
ORDER BY c.registration_date DESC;    

 --Võrdle kadunud vs aktiivsete klientide arvu: (ostnud 2551-aktiivne, kadunud 599-pole ostnud) 
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

--Kadunud klientide nimekiri
first_name,last_name,email,city,registration_date,sale_id
Piret ,Lepp,piret.lepp@mail.ee,Tallinn,2020-07-18,null
Sirje,Rand,null,Viljandi,2024-01-23,null
Riina,Paas,riina.paas@gmail.com,Tallinn,2024-04-03,null
Liina,Sepp,liina.sepp@hot.ee,Rakvere,2024-11-22,null
Mihkel,Mägi,mihkel.magi@hot.ee,Tallinn,2024-02-18,null
Merle ,Järv,merle.jarv@hot.ee,Tartu,2024-11-07,null
Kaido,Toom,kaido.toom@hot.ee,Tallinn,2024-06-13,null
Kaido,Sild,kaido.sild@hot.ee,Tallinn,2021-07-12,null
Liis,Raid,liis.raid@gmail.com,Tallinn,2024-03-21,null
Sandra,Mägi,sandra.magi@mail.ee,Tallinn,2024-08-20,null
Urmas,Talvik,urmas.talvik@outlook.com,Tallinn,2025-01-29,null
KADRI,Mitt,kadri.mitt@yahoo.com,Jõhvi,2024-02-11,null
karin,Järv,karin.jarv@hot.ee,Paide,2020-05-06,null
Mart,Sepp,mart.sepp@mail.ee,Tartu,2024-11-03,null
Erkki,Paas,erkki.paas@hot.ee,Tartu,2024-02-06,null
Kersti,Rosin,null,Pärnu,2024-07-28,null
Maris,Rand,null,Tartu,2024-11-25,null
Nele,Salu,nele.salu@gmail.com,Tallinn,2024-11-23,null
Sirje,Kuusk,null,Valga,2025-01-29,null
Kati ,Kask,kati.kask@telia.ee,Pärnu,2024-03-26,null
sander,Lill,sander.lill@outlook.com,Tartu,2021-02-22,null
Sandra,Lõhmus,sandra.lohmus@yahoo.com,Võru,2024-10-25,null
Enn,Kuusik,enn.kuusik@mail.ee,Narva,2024-10-09,null
Kalev,Kallas,kalev.kallas@yahoo.com,Tartu,2024-12-18,null
Reet,Saar,reet.saar@yahoo.com,Võru,2025-01-12,null
Väino,Nurk,vaino.nurk@hot.ee,Tallinn,2025-02-27,null
Sandra,veski,sandra.veski@mail.ee,Tallinn,2021-10-23,null
raivo,Nõmm,raivo.nomm@yahoo.com,Kuressaare,2025-01-25,null
sander,Mägi,sander.magi@hot.ee,Pärnu,2020-04-02,null
sandra,Koppel,null,Pärnu,2022-10-18,null
Olev,Sepp,olev.sepp@outlook.com,Rakvere,2023-08-31,null
lea,Mets,lea.mets@telia.ee,Pärnu,2020-02-08,null
Liis,Aas,liis.aas@outlook.com,Pärnu,2023-12-26,null
Elis,sild,elis.sild@telia.ee,Tallinn,2020-02-23,null
sirje,Kuusk,null,Valga,2025-01-29,null
Kristi,Orav,kristi.orav@yahoo.com,Narva,2024-09-22,null
Marko,Lõhmus,marko.lohmus@outlook.com,Valga,2024-09-16,null
Margus ,Rosin,margus.rosin@outlook.com,Tallinn,2020-04-14,null
Reet,Saar,reet.saar@gmail.com,Tallinn,2025-01-20,null
Maie,Roots,maie.roots@yahoo.com,Tartu,2025-02-25,null
Enn,Ilves,enn.ilves@gmail.com,Tartu,2024-05-03,null
jüri,Liiv,juri.liiv@yahoo.com,Kuressaare,2022-01-01,null
Aivar,Mägi,aivar.magi@mail.ee,Tartu,2024-11-06,null
Peeter,Raid,peeter.raid@telia.ee,Pärnu,2024-08-24,null
Taavi,Toom,taavi.toom@yahoo.com,Tallinn,2025-01-29,null
Peeter,Lass,peeter.lass@yahoo.com,Tallinn,2024-09-18,null
Indrek,Tamm,indrek.tamm@mail.ee,Kuressaare,2024-04-30,null
Taavi,Lepik,taavi.lepik@mail.ee,Pärnu,2024-11-09,null
Arvo,Orav,arvo.orav@yahoo.com,Paide,2024-12-29,null
Madis,Koppel,madis.koppel@mail.ee,Tallinn,2024-07-29,null
Reet,Raid,reet.raid@outlook.com,Tartu,2020-08-27,null
Tiina,Puusepp,tiina.puusepp@telia.ee,Tartu,2025-01-30,null
Rain,Männik,rain.mannik@hot.ee,Tallinn,2025-02-19,null
Aivar,Must,aivar.must@yahoo.com,Tartu,2024-10-20,null
Ene,paju,ene.paju@hot.ee,Valga,2021-10-25,null
Ragnar,Roots,ragnar.roots@yahoo.com,Narva,2025-02-02,null
Sandra,Orav,sandra.orav@hot.ee,Tallinn,2023-02-08,null
Olev,Rosin,olev.rosin@yahoo.com,Tartu,2024-03-18,null
Kaido,Pihl,kaido.pihl@outlook.com,Pärnu,2024-12-20,null
Henri,kivi,henri.kivi@outlook.com,Tallinn,2021-02-22,null
lauri,Kukk,lauri.kukk@yahoo.com,Tallinn,2023-06-21,null
Hille,Põld,null,Tallinn,2024-11-03,null
Katrin,Lass,katrin.lass@telia.ee,Tartu,2024-12-14,null
Maris,Pihl,null,Pärnu,2024-11-24,null
Heino,Lõoke,heino.looke@yahoo.com,Tallinn,2024-09-18,null
Grete,Kõiv,grete.koiv@telia.ee,Tallinn,2024-06-21,null
Külli,mitt,null,Jõhvi,2022-02-07,null
Olev,Org,olev.org@gmail.com,Pärnu,2024-09-11,null
Jaak,Salu,jaak.salu@gmail.com,Tartu,2025-02-27,null
Lauri,Värk,lauri.vark@telia.ee,Pärnu,2024-08-21,null
Peeter,Rand,peeter.rand@yahoo.com,Valga,2025-01-11,null
Tiina,Puusepp,tiina.puusepp@mail.ee,Tallinn,2023-09-17,null
Liis,Lõhmus,liis.lohmus@hot.ee,Tallinn,2025-02-03,null
Olev,Ilves,olev.ilves@telia.ee,Tartu,2025-01-03,null
Rain,Toom,rain.toom@gmail.com,Tartu,2023-08-15,null
katrin,Paas,katrin.paas@mail.ee,Tallinn,2022-11-23,null
Indrek,Kull,indrek.kull@gmail.com,Tallinn,2024-12-22,null
Terje,Kukk,terje.kukk@yahoo.com,Tallinn,2024-11-01,null
Heli,Mägi,heli.magi@mail.ee,Kuressaare,2024-11-18,null
Väino,Luik,vaino.luik@hot.ee,Tartu,2024-12-11,null
marko,Nõmm,marko.nomm@telia.ee,Tallinn,2021-03-02,null
lea,Mets,null,Tartu,2023-04-11,null
Jaak,Mägi,jaak.magi@gmail.com,Tartu,2023-07-01,null
Hille,Kuusik,null,Jõhvi,2023-09-23,null
MARKO,Oja,marko.oja@gmail.com,Tartu,2022-07-13,null
Kristiina,Hurt,kristiina.hurt@mail.ee,Viljandi,2024-10-15,null
Tiina,Talvik,tiina.talvik@telia.ee,Pärnu,2021-02-01,null
Indrek,Sild,indrek.sild@mail.ee,Valga,2024-12-14,null
Laura,Kangur,laura.kangur@gmail.com,Tallinn,2022-04-09,null
Kevin,lõhmus,kevin.lohmus2@mail.ee,Tallinn,2023-03-17,null
Heino,Põld,heino.pold@telia.ee,Tallinn,2024-12-27,null
Arvo,vaher,arvo.vaher@telia.ee,Võru,2023-09-09,null
KATI,Lill,kati.lill@mail.ee,Tartu,2020-06-22,null
Nele,Põld,nele.pold@hot.ee,Tartu,2025-01-09,null
Eha,Luik,eha.luik@telia.ee,Haapsalu,2024-09-07,null
Sigrid,Rand,sigrid.rand@gmail.com,Pärnu,2024-12-20,null
Külli,Ilves,kulli.ilves@mail.ee,Tallinn,2020-05-28,null
Mart,Ilves,mart.ilves@gmail.com,Tallinn,2025-02-09,null
sander,Liiv,sander.liiv@outlook.com,Võru,2021-04-25,null
Kevin,Valk,kevin.valk@mail.ee,Tallinn,2023-09-24,null



