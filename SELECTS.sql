-- 1. egyszeru lekrdezesek

-- Autó + ár + gyártó
SELECT Auto.nev AS auto_nev, Auto.ar, Gyarto.nev AS gyarto_nev
FROM Auto
JOIN Gyarto ON Auto.gyarto_ID = Gyarto.ID;

-- Legdrágább autó
SELECT nev, ar
FROM Auto
ORDER BY ar DESC
LIMIT 1;

-- Ki mit vett
SELECT Tulajdonos.nev, Auto.nev, vasarlas_datuma
FROM Tulajdonlas
JOIN Tulajdonos ON Tulajdonlas.tulajdonos_ID = Tulajdonos.ID
JOIN Auto ON Tulajdonlas.auto_ID = Auto.ID;

-- Autók sebesség szerint
SELECT Auto.nev, Specifikacio.vegsebesseg_kmh, Specifikacio.gyorsulas_0_100, Specifikacio.motor_tipus
FROM Auto
JOIN Specifikacio ON Auto.ID = Specifikacio.auto_ID
ORDER BY Specifikacio.vegsebesseg_kmh DESC;

-- Melyik gyártónak mennyi autója van
SELECT Gyarto.nev, COUNT(Auto.ID) AS auto_darab
FROM Gyarto
LEFT JOIN Auto ON Gyarto.ID = Auto.gyarto_ID
GROUP BY Gyarto.nev;

-- Elon Musk autói
SELECT Auto.nev
FROM Tulajdonlas
JOIN Auto ON Tulajdonlas.auto_ID = Auto.ID
JOIN Tulajdonos ON Tulajdonlas.tulajdonos_ID = Tulajdonos.ID
WHERE Tulajdonos.nev = 'Elon Musk';

-- 2. összetett lekrdezések

-- Tulajdonosonként összérték
SELECT t.nev AS tulajdonos_nev, SUM(a.ar) AS ossz_ertek
FROM Tulajdonlas tl
JOIN Tulajdonos t ON tl.tulajdonos_ID = t.ID
JOIN Auto a ON tl.auto_ID = a.ID
GROUP BY t.nev
ORDER BY ossz_ertek DESC;

-- Kié a legdrágább autó
SELECT t.nev AS tulajdonos_nev, a.nev AS auto_nev, a.ar
FROM Tulajdonlas tl
JOIN Tulajdonos t ON tl.tulajdonos_ID = t.ID
JOIN Auto a ON tl.auto_ID = a.ID
ORDER BY a.ar DESC
LIMIT 1;

-- Leggyorsabb autó + gyártó
SELECT g.nev AS gyarto, a.nev AS auto, s.vegsebesseg_kmh
FROM Specifikacio s
JOIN Auto a ON s.auto_ID = a.ID
JOIN Gyarto g ON a.gyarto_ID = g.ID
ORDER BY s.vegsebesseg_kmh DESC
LIMIT 1;

-- gyorsulás rangsor szerint
SELECT 
a.nev AS auto_nev,
s.gyorsulas_0_100,
RANK() OVER (ORDER BY s.gyorsulas_0_100 ASC) AS gyorsulas_rank
FROM Auto a
JOIN Specifikacio s ON a.ID = s.auto_ID;


