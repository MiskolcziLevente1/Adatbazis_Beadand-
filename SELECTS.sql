SELECT Auto.nev AS auto_nev, Auto.ar, Gyarto.nev AS gyarto_nev
FROM Auto
JOIN Gyarto ON Auto.gyarto_ID = Gyarto.ID;

SELECT nev, ar
FROM Auto
ORDER BY ar DESC
LIMIT 1;

SELECT Tulajdonos.nev AS tulajdonos_nev, Auto.nev AS auto_nev, vasarlas_datuma
FROM Tulajdonlas
JOIN Tulajdonos ON Tulajdonlas.tulajdonos_ID = Tulajdonos.ID
JOIN Auto ON Tulajdonlas.auto_ID = Auto.ID;

SELECT Auto.nev, Specifikacio.vegsebesseg_kmh, Specifikacio.gyorsulas_0_100, Specifikacio.motor_tipus
FROM Auto
JOIN Specifikacio ON Auto.ID = Specifikacio.auto_ID
ORDER BY Specifikacio.vegsebesseg_kmh DESC;

SELECT Gyarto.nev, COUNT(Auto.ID) AS auto_darab
FROM Gyarto
LEFT JOIN Auto ON Gyarto.ID = Auto.gyarto_ID
GROUP BY Gyarto.nev;

SELECT Auto.nev
FROM Tulajdonlas
JOIN Auto ON Tulajdonlas.auto_ID = Auto.ID
JOIN Tulajdonos ON Tulajdonlas.tulajdonos_ID = Tulajdonos.ID
WHERE Tulajdonos.nev = 'Elon Musk';

