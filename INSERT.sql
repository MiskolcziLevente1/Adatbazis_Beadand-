INSERT INTO Gyarto (ID, nev, orszag) VALUES
(1, 'Bugatti', 'Franciaország'),
(2, 'Koenigsegg', 'Svédország'),
(3, 'Rimac', 'Horvátország'),
(4, 'Pagani', 'Olaszország'),
(5, 'McLaren', 'Egyesült Királyság'),
(6, 'Aston Martin', 'Egyesült Királyság'),
(7, 'Lamborghini', 'Olaszország'),
(8, 'Ferrari', 'Olaszország');

INSERT INTO Auto (ID, nev, gyartasi_ev, ar, gyarto_ID) VALUES
(1, 'Bugatti Chiron Super Sport', 2021, 390000000, 1),
(2, 'Koenigsegg Jesko Absolut', 2022, 350000000, 2),
(3, 'Rimac Nevera', 2022, 280000000, 3),
(4, 'Pagani Huayra Roadster BC', 2020, 320000000, 4),
(5, 'McLaren Speedtail', 2020, 220000000, 5),
(6, 'Aston Martin Valkyrie', 2022, 260000000, 6),
(7, 'Lamborghini Sian FKP 37', 2021, 280000000, 7),
(8, 'Ferrari SF90 Stradale', 2021, 180000000, 6),
(9, 'Koenigsegg Regera', 2019, 330000000, 2),
(10, 'Bugatti Chiron Super Sport Plus', 2023, 420000000, 1);

INSERT INTO Tulajdonos (ID, nev, orszag) VALUES
(1, 'James Hunt', 'Egyesült Királyság'),
(2, 'Luca Ferrari', 'Olaszország'),
(3, 'Elon Musk', 'USA'),
(4, 'Cristiano Ronaldo', 'Portugália'),
(5, 'Jay Leno', 'USA'),
(6, 'Mansour bin Zayed', 'Egyesült Arab Emírségek'),
(7, 'Lewis Hamilton', 'Egyesült Királyság'),
(8, 'HyperCar Múzeum', 'Egyesült Arab Emírségek');

INSERT INTO Tulajdonlas (ID, auto_ID, tulajdonos_ID, vasarlas_datuma) VALUES
(1, 1, 1, '2022-05-14'),
(2, 2, 3, '2023-01-10'),
(3, 3, 3, '2023-06-21'),
(4, 4, 2, '2021-11-30'),
(5, 5, 4, '2021-04-15'),
(6, 6, 6, '2022-08-09'),
(7, 7, 4, '2022-12-22'),
(8, 8, 5, '2023-02-28'),
(9, 9, 7, '2023-07-01'),
(10, 1, 5, '2021-01-20'),
(11, 3, 7, '2022-01-10'),
(12, 4, 3, '2023-08-01'),
(13, 2, 4, '2023-04-03'),
(14, 6, 8, '2023-10-10');

INSERT INTO Specifikacio (ID, auto_ID, vegsebesseg_kmh, gyorsulas_0_100, motor_tipus) VALUES
(1, 1, 490, 2.4, '8.0L W16 Quad-Turbo'),
(2, 2, 530, 2.2, '5.0L Twin-Turbo V8'),
(3, 3, 412, 1.85, '4 motoros elektromos'),
(4, 4, 383, 2.5, '6.0L V12 Twin-Turbo'),
(5, 5, 403, 3.0, '4.0L V8 Hybrid'),
(6, 6, 350, 2.5, '6.5L V12 Hybrid'),
(7, 7, 350, 2.8, '6.5L V12 Mild-Hybrid'),
(8, 8, 340, 2.5, '4.0L V8 Plug-in Hybrid'),
(9, 9, 410, 2.8, '5.0L V8 Hybrid Direct Drive'),
(10, 10, 510, 2.3, '8.0L W16 Quad-Turbo');

