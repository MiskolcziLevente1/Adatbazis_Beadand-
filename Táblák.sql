CREATE TABLE Gyarto (
    ID INTEGER PRIMARY KEY,
    nev TEXT NOT NULL,
    orszag TEXT
);

CREATE TABLE Auto (
    ID INTEGER PRIMARY KEY,
    nev TEXT NOT NULL,
    gyartasi_ev INTEGER,
    ar REAL,
    gyarto_ID INTEGER,
    FOREIGN KEY (gyarto_ID) REFERENCES Gyarto(ID)
);

CREATE TABLE Tulajdonos (
    ID INTEGER PRIMARY KEY,
    nev TEXT NOT NULL,
    orszag TEXT
);

CREATE TABLE Tulajdonlas (
    ID INTEGER PRIMARY KEY,
    auto_ID INTEGER,
    tulajdonos_ID INTEGER,
    vasarlas_datuma TEXT,
    FOREIGN KEY (auto_ID) REFERENCES Auto(ID),
    FOREIGN KEY (tulajdonos_ID) REFERENCES Tulajdonos(ID)
);

CREATE TABLE Specifikacio (
    ID INTEGER PRIMARY KEY,
    auto_ID INTEGER,
    vegsebesseg_kmh INTEGER,
    gyorsulas_0_100 REAL,
    motor_tipus TEXT,
    FOREIGN KEY (auto_ID) REFERENCES Auto(ID)
);