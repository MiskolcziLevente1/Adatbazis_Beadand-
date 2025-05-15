Gyarto: Az autó gyártóit tárolja.
  ID: A gyártó egyedi azonosítója (egész szám, elsődleges kulcs).
  nev: A gyártó neve (szöveg, nem lehet üres).
  orszag: A gyártó országa (szöveg).
  
Auto: Az autókat tárolja.
  ID: Az autó egyedi azonosítója (egész szám, elsődleges kulcs).
  nev: Az autó neve (szöveg, nem lehet üres).
  gyartasi_ev: A gyártási év (egész szám).
  ar: Az autó ára (valós szám).
  gyarto_ID: A gyártó azonosítója, ami a Gyarto tábla ID oszlopára hivatkozik (egész szám, idegen kulcs).

Tulajdonos: Az autó tulajdonosait tárolja.
ID: A tulajdonos egyedi azonosítója (egész szám, elsődleges kulcs).
nev: A tulajdonos neve (szöveg, nem lehet üres).
orszag: A tulajdonos országa (szöveg).
Tulajdonlas: Azt tárolja, hogy melyik autó kihez tartozik.
ID: A tulajdonlás egyedi azonosítója (egész szám, elsődleges kulcs).
auto_ID: Az autó azonosítója, ami az Auto tábla ID oszlopára hivatkozik (egész szám, idegen kulcs).
tulajdonos_ID: A tulajdonos azonosítója, ami a Tulajdonos tábla ID oszlopára hivatkozik (egész szám, idegen kulcs).
vasarlas_datuma: A vásárlás dátuma.

Specifikacio: Az autók műszaki adatait tárolja.
ID: A specifikáció egyedi azonosítója (egész szám, elsődleges kulcs).
auto_ID: Az autó azonosítója, ami az Auto tábla ID oszlopára hivatkozik (egész szám, idegen kulcs).
vegsebesseg_kmh: A végsebesség km/h-ban (egész szám).
gyorsulas_0_100: A gyorsulás 0-ról 100 km/h-ra (valós szám).
motor_tipus: A motor típusa (szöveg).
