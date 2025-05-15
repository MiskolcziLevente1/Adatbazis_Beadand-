Gyarto: Autógyártókat tárolja

ID: A gyártó egyedi azonosítója (elsődleges kulcs)

nev: A gyártó neve (nem lehet null)

orszag: A gyártó országa


Auto: Autókat tárolja

ID: Az autó egyedi azonosítója (elsődleges kulcs)

nev: Az autó neve (nem lehet null)

gyartasi_ev: Az autó gyártási éve

ar: Az autó ára

gyarto_ID: A gyártó azonosítója, hivatkozik a Gyarto tábla ID oszlopára (idegen kulcs)

Tulajdonos: Autótulajdonosokat tárolja

ID: A tulajdonos egyedi azonosítója (elsődleges kulcs)

nev: A tulajdonos neve (nem lehet null)

orszag: A tulajdonos országa

Tulajdonlas: Azt tárolja, hogy melyik autónak ki a tulajdonosa és mikor vásárolta

ID: A tulajdonlás egyedi azonosítója (elsődleges kulcs)

auto_ID: Az autó azonosítója, hivatkozik az Auto tábla ID oszlopára (idegen kulcs)

tulajdonos_ID: A tulajdonos azonosítója, hivatkozik a Tulajdonos tábla ID oszlopára (idegen kulcs)

vasarlas_datuma: A vásárlás dátuma
  
Specifikacio: Az autók specifikációit tárolja

ID: A specifikáció egyedi azonosítója (elsődleges kulcs)

auto_ID: Az autó azonosítója, hivatkozik az Auto tábla ID oszlopára (idegen kulcs)

vegsebesseg_kmh: Az autó végsebessége km/h-ban

gyorsulas_0_100: Az autó gyorsulása 0-ról 100 km/h-ra másodpercben

motor_tipus: Az autó motorjának típusa
