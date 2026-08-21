lisaülesanne

●	Kombineeri tingimused: Leia tooted, mille hind on üle 50 EUR konkreetses kategoorias:
SELECT * FROM products
WHERE retail_price > 50 AND category = 'naiste_riided'
ORDER BY retail_price DESC;

product_id,product_name,category,subcategory,supplier,cost_price,retail_price,eco_certified,created_at
1293,Boheemlaslik linane pullover,naiste_riided,pusad,Balti Mood OÜ,217.33,351.33,false,2021-08-11
1006,Praktiline džersii seelik,naiste_riided,seelikud,Leedu Linane UAB,208.86,319.42,false,2020-09-07
1049,Boheemlaslik puuvillane tuulejope,naiste_riided,jakid,Leedu Linane UAB,200.72,308.84,true,2022-11-02
1143,Õhuline linane jakk,naiste_riided,jakid,Itaalia Moda SRL,182.53,307.83,false,2020-12-03
1149,Trendikas viskoosne topik,naiste_riided,pluusid,Haapsalu Villased OÜ,208.81,304.14,true,2023-08-26
1296,Kerge džersii pluus,naiste_riided,pluusid,Soome Tehdas OY,181.98,301.97,true,2023-04-03
1256,Klassikaline puuvillane skaterkleit,naiste_riided,kleidid,Türgi Tekstil A.Ş.,176.78,296.4,null,2020-07-28
1079,Trendikas džersii pullover,naiste_riided,pusad,Leedu Linane UAB,197.7,291.36,null,2022-07-19
1319,Vintage džersii tuunika,naiste_riided,pluusid,Vilma Design OÜ,174.45,290.55,false,2021-02-12
1039,Sportlik džersii parka,naiste_riided,jakid,Nordic Fashion Group OÜ,188.32,282.95,false,2020-02-28
1150,Soe siidine särk-pluus,naiste_riided,pluusid,Soome Tehdas OY,191.67,280.02,true,2024-09-14
1273,Trendikas puuvillane skaterkleit,naiste_riided,kleidid,Vilma Design OÜ,194.73,274.37,false,2020-06-04
1337,Praktiline viskoosne õhtukleit,naiste_riided,kleidid,Itaalia Moda SRL,193.79,272.05,true,2023-02-28
1250,Sportlik linane jakk,naiste_riided,jakid,Vilma Design OÜ,174.06,265.2,null,2024-12-08
1278,Soe satiinne pluus,naiste_riided,pluusid,Vilma Design OÜ,174.86,263.13,false,2023-06-10
1251,Moodne kashmiir pullover,naiste_riided,pusad,Haapsalu Villased OÜ,183.83,257.39,true,2023-04-02
1187,Mugav kashmiir pusa,naiste_riided,pusad,Tartu Tekstiil AS,150.21,252.33,false,2022-11-03
1214,Luksuslik merino villane kapuutsiga pusa,naiste_riided,pusad,Leedu Linane UAB,176.29,250.17,false,2024-12-12
1300,Luksuslik merino villane chino püksid,naiste_riided,püksid,Soome Tehdas OY,170.6,247.52,false,2021-04-11
1176,Boheemlaslik merino villane kapuutsiga pusa,naiste_riided,pusad,Tartu Tekstiil AS,159.4,245.59,false,2024-05-10
1071,Klassikaline viskoosne õhtukleit,naiste_riided,kleidid,Soome Tehdas OY,140.42,237.71,false,2023-05-18
1186,Õhuline viskoosne jakk,naiste_riided,jakid,Tartu Tekstiil AS,157.21,234.99,true,2024-08-26
1259,Elegantne džersii cargo püksid,naiste_riided,püksid,Eesti Nahk AS,143.56,229.55,false,2020-12-28
1345,Klassikaline kashmiir pusa,naiste_riided,pusad,Balti Mood OÜ,160.82,225.81,false,2022-06-03
1361,Klassikaline kashmiir pusa,naiste_riided,pusad,Balti Mood OÜ,160.82,225.81,false,2022-06-03
1324,Boheemlaslik satiinne seelik,naiste_riided,seelikud,Pärnu Kudumid OÜ,135.32,224.19,false,2024-10-01
1224,Trendikas viskoosne tuulejope,naiste_riided,jakid,Nordic Fashion Group OÜ,155.31,222.1,false,2024-03-30
1156,Sportlik puuvillane slim-fit püksid,naiste_riided,püksid,Nordic Fashion Group OÜ,130.81,221.89,false,2023-06-08
1054,Elegantne linane bleiser,naiste_riided,jakid,Leedu Linane UAB,144.94,219.19,false,2024-11-15
1013,Boheemlaslik džersii teksapüksid,naiste_riided,püksid,Haapsalu Villased OÜ,141.58,218.99,true,2020-03-27
1027,Praktiline viskoosne jakk,naiste_riided,jakid,Nordic Fashion Group OÜ,346.7,213.35,false,2023-12-25
1309,Moodne viskoosne plisseeseelik,naiste_riided,seelikud,Nordic Fashion Group OÜ,129.14,211.35,false,2020-08-31
1229,Soe puuvillane teksapüksid,naiste_riided,püksid,Tallinna Rõivatehas OÜ,138.05,210.76,false,2022-12-12
1155,Stiilne kashmiir jakk,naiste_riided,jakid,Tallinna Rõivatehas OÜ,148.43,209.05,true,2024-08-21
1051,Soe merino villane topik,naiste_riided,pluusid,Balti Mood OÜ,131.92,208.83,null,2023-04-28
1301,Kerge satiinne jakk,naiste_riided,jakid,Haapsalu Villased OÜ,140.06,206.52,true,2024-07-13
1122,Moodne kashmiir plisseeseelik,naiste_riided,seelikud,Tartu Tekstiil AS,133.1,202.57,false,2022-11-10
1126,Mugav kashmiir skaterkleit,naiste_riided,kleidid,Saare Käsitöö OÜ,141.7,200.77,false,2021-09-07
1137,Soe džersii cargo püksid,naiste_riided,püksid,Saare Käsitöö OÜ,133.47,194.46,false,2020-10-15
1212,Minimalistlik kashmiir bleiser,naiste_riided,jakid,Tallinna Rõivatehas OÜ,276.2,185.46,false,2021-10-28
1353,Minimalistlik kashmiir bleiser,naiste_riided,jakid,Tallinna Rõivatehas OÜ,276.2,185.46,false,2021-10-28
1129,Elegantne siidine teksapüksid,naiste_riided,püksid,Balti Mood OÜ,119.04,182.77,true,2023-09-12
1182,Mugav džersii pusa,naiste_riided,pusad,Riia Stils SIA,109.17,180.14,null,2023-02-28
1164,Luksuslik puuvillane jakk,naiste_riided,jakid,Pärnu Kudumid OÜ,117.75,179.35,false,2022-05-13
1015,Mugav merino villane dressipluus,naiste_riided,pusad,Rakvere Tekstiil OÜ,104.83,168.34,false,2021-09-06
1026,Vintage siidine skaterkleit,naiste_riided,kleidid,Tallinna Rõivatehas OÜ,107.22,166.27,true,2024-02-10
1131,Praktiline merino villane pusa,naiste_riided,pusad,Leedu Linane UAB,102.23,166.27,true,2020-10-28
1234,Klassikaline siidine tuulejope,naiste_riided,jakid,Vilma Design OÜ,101.94,162.86,true,2023-06-03
1170,Elegantne kashmiir tuulejope,naiste_riided,jakid,Leedu Linane UAB,102.33,158.51,true,2021-12-29
1174,Mugav viskoosne plisseeseelik,naiste_riided,seelikud,Rakvere Tekstiil OÜ,103.46,150.11,false,2024-02-13
1070,Trendikas džersii miniseelik,naiste_riided,seelikud,Haapsalu Villased OÜ,96.46,139.74,false,2022-11-13
1177,Minimalistlik linane tuunika,naiste_riided,pluusid,Türgi Tekstil A.Ş.,87.88,135.99,false,2022-07-20
1260,Minimalistlik džersii pullover,naiste_riided,pusad,Haapsalu Villased OÜ,89,130.36,false,2022-07-31
1269,Kerge viskoosne suvekleit,naiste_riided,kleidid,Haapsalu Villased OÜ,77.48,125.98,true,2021-01-01
1068,Moodne satiinne bleiser,naiste_riided,jakid,Leedu Linane UAB,77.2,122.45,false,2021-10-01
1233,Vintage viskoosne püksid,naiste_riided,püksid,Riia Stils SIA,67.78,111.26,false,2023-07-28
1329,Moodne viskoosne teksapüksid,naiste_riided,püksid,Vilma Design OÜ,65.74,110.02,false,2020-07-11
1192,Soe džersii suvekleit,naiste_riided,kleidid,Itaalia Moda SRL,67.16,109.62,true,2022-03-12
1218,Luksuslik satiinne teksapüksid,naiste_riided,püksid,Leedu Linane UAB,72.15,108.09,true,2024-03-07
1315,Õhuline viskoosne miniseelik,naiste_riided,seelikud,Rakvere Tekstiil OÜ,56.54,95.5,true,2020-11-28
1099,Vintage viskoosne kapuutsiga pusa,naiste_riided,pusad,Türgi Tekstil A.Ş.,60.88,86.8,false,2021-06-06
1044,Moodne kashmiir seelik,naiste_riided,seelikud,Vilma Design OÜ,49,83.23,true,2022-05-11
1239,Minimalistlik viskoosne skaterkleit,naiste_riided,kleidid,Saare Käsitöö OÜ,47.31,78.09,false,2020-10-26
1208,Luksuslik linane bleiser,naiste_riided,jakid,Vilma Design OÜ,51.35,76.7,false,2022-04-09
1238,Minimalistlik džersii chino püksid,naiste_riided,püksid,Leedu Linane UAB,48.98,72.73,false,2022-08-07
1007,Soe viskoosne skaterkleit,naiste_riided,kleidid,Pärnu Kudumid OÜ,37.36,60.37,false,2021-05-23
1305,Sportlik siidine cargo püksid,naiste_riided,püksid,Soome Tehdas OY,35.66,50.77,false,2024-09-09
