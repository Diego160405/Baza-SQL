DROP DATABASE MESNICA;
CREATE DATABASE mesnica;
USE mesnica;

CREATE TABLE vrste_mesa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL
);

INSERT INTO vrste_mesa (naziv) VALUES
('Juneće meso'),
('Teleće meso'),
('Svinjsko meso'),
('Pureće i pileće meso'),
('Svježe mesne prerađevine'),
('Tartar'),
('Suho dimljeno meso'),
('Kobasice'),
('Salame polutrajne'),
('Pešt'),
('Trajni proizvodi');


CREATE TABLE proizvod (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    vrsta_mesa_id INT NOT NULL,
    cijena_po_kg DECIMAL(10,2) NOT NULL,
    kolicina DECIMAL(10,2) DEFAULT 1,
    CONSTRAINT fk_proizvod_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO proizvod (naziv, vrsta_mesa_id, cijena_po_kg, kolicina) VALUES
 -- Junjetina
('Juneći but', 1, 13.80, 1),
('Juneća plećka', 1, 12.30, 1),
('Juneća prsa', 1, 7.80, 1),
('Juneće mljeveno meso', 1, 12.50, 1),
('Juneći biftek', 1, 42.47, 1),
('Juneći ramstek', 1, 17.25, 1),
('Juneći t-bon svježi', 1, 22.56, 1),
('Juneći rib-eye mokro odležani', 1, 16.59, 1),
('Juneći rib-eye suho odležani', 1, 29.20, 1),
-- Teletina
('Teleća slabina', 2, 13.90, 1),
('Teleća prsa', 2, 12.60, 1),
('Teleća but', 2, 18.60, 1),
('Teleća rolada', 2, 15.20, 1),
-- Svinjetina
('Svinjski vrat', 3, 10.00, 1),
('Svinjska rebra', 3, 9.30, 1),
('Svinjska leđa', 3, 11.50, 1),
('Svinjski file', 3, 12.00, 1),
('Svinjski but', 3, 9.80, 1),
-- Piletina i puretina
('Pureća prsa', 4, 10.40, 1),
('Pileći file', 4, 9.20, 1),
('Pileći gril', 4, 3.32, 1),
('Pileći batak', 4, 4.31, 1),
('Pileći zabatak', 4, 4.31, 1),
-- Svijeze mesne preradevine
('Miješano mljeveno', 5, 10.00, 1),
('Pljeskavica gurmanska', 5, 12.10, 1),
('Istarska kobasica', 5, 7.50, 1),
('Polpetine', 5, 12.50, 1),
('Roštiljske kobasice', 5, 7.50, 1),
('Ćevapčići juneći', 5, 10.20, 1),
('Pljeskavice juneće', 5, 10.20, 1),
('Burgeri', 5, 10.90, 1),
('Svinjska rebra', 5, 9.30, 1),
-- Tartar
('Tartar', 6, 34.00, 1),
('Tartar sa tartufima', 6, 35.00, 1),
-- Suseno dimljeno meso
('Suhe kosti', 7, 3.90, 1),
('Suhi prsni vršci', 7, 5.90, 1),
('Suhe koljenice', 7, 4.90, 1),
('Hamburger pečeni', 7, 8.40, 1),
('Dimljena vratina', 7, 8.90, 1),
('Lax kare', 7, 9.20, 1),
-- Kobasice
('Pučka kobasica', 8, 4.90, 1),
('Kobasica za kuhanje', 8, 7.40, 1),
('Hrenovke', 8, 9.30, 1),
('Domaća istarska kobasica', 8, 9.70, 1),
-- Polutrajne salame
('Šunka u ovitku', 9, 7.60, 1),
('Salzburška šunka', 9, 9.20, 1),
('Kuhani pršut', 9, 9.20, 1),
-- Pest
('Domaći pešt', 10, 12.00, 1),
-- Trajni proizvodi
('Suha istarska kobasica', 11, 18.00, 1),
('Kosnica suha salama', 11, 20.80, 1),
('Suho ombolo', 11, 22.40, 1),
('Panceta', 11, 19.00, 1);


CREATE TABLE kupac (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ime VARCHAR(100) NOT NULL,
    prezime VARCHAR(100) NOT NULL
);

INSERT INTO kupac (ime, prezime) VALUES
('Ivan', 'Horvat'),
('Ana', 'Kovač'),
('Ivan', 'Šimić'),
('Maja', 'Novak'),
('Luka', 'Perić'),
('Ivana', 'Radić'),
('Petar', 'Kralj'),
('Jelena', 'Šarić'),
('Tomislav', 'Matić'),
('Sara', 'Jurić');

CREATE TABLE zaposlenik (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ime VARCHAR(100) NOT NULL,
    prezime VARCHAR(100) NOT NULL
);

INSERT INTO zaposlenik (ime, prezime) VALUES
('Marko', 'Vidović'),
('Ivan', 'Benković'),
('Petar', 'Krešić'),
('Luka', 'Dolenec'),
('Mark', 'Šestan'),
('Josip', 'Grgić'),
('Davor', 'Ledić'),
('Nikola', 'Čolak'),
('Mario', 'Šimunović'),
('Andrija', 'Zvijer');

CREATE TABLE radno_vrijeme_mesnice (
    id INT PRIMARY KEY AUTO_INCREMENT,
    dan_u_tjednu VARCHAR(20) NOT NULL, 
    otvaranje TIME NOT NULL,
    zatvaranje TIME NOT NULL
);

INSERT INTO radno_vrijeme_mesnice (dan_u_tjednu, otvaranje, zatvaranje) VALUES
('Ponedjeljak', '07:00:00', '23:00:00'),
('Utorak', '07:00:00', '23:00:00'),
('Srijeda', '07:00:00', '23:00:00'),
('Četvrtak', '07:00:00', '23:00:00'),
('Petak', '07:00:00', '23:00:00'),
('Subota', '07:00:00', '15:00:00'),
('Nedjelja', '00:00:00', '00:00:00'); -- zatvoreno

CREATE TABLE smjena (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv ENUM('Jutarnja', 'Popodnevna') NOT NULL,
    pocetak TIME NOT NULL,
    kraj TIME NOT NULL
    );
    
    INSERT INTO smjena (naziv, pocetak, kraj) VALUES
('Jutarnja', '07:00:00', '15:00:00'),
('Popodnevna', '15:00:00', '23:00:00');

CREATE TABLE zaposlenik_smjena (
    id INT PRIMARY KEY AUTO_INCREMENT,
    zaposlenik_id INT NOT NULL,
    smjena_id INT NOT NULL,
    FOREIGN KEY (zaposlenik_id) REFERENCES zaposlenik(id),
    FOREIGN KEY (smjena_id) REFERENCES smjena(id)
);

INSERT INTO zaposlenik_smjena (zaposlenik_id, smjena_id) VALUES
(1, 1),  -- Marko Vidović - Jutarnja
(2, 2),  -- Ivan Benković - Popodnevna
(3, 1),  -- Petar Krešić - Jutarnja
(4, 2),  -- Luka Dolenec - Popodnevna
(5, 1),  -- Mark Šestan - Jutarnja
(6, 2),  -- Josip Grgić - Popodnevna
(7, 1),  -- Davor Ledić - Jutarnja
(8, 2),  -- Nikola Čolak - Popodnevna
(9, 1),  -- Mario Šimunović - Jutarnja
(10, 2); -- Andrija Zvijer - Popodnevna

CREATE TABLE nabava (
    id INT PRIMARY KEY AUTO_INCREMENT,
    dobavljac VARCHAR(100) NOT NULL,
    proizvod_id INT NOT NULL,
    kolicina DECIMAL(10,2) NOT NULL,
    datum_nabave DATETIME NOT NULL,
    FOREIGN KEY (proizvod_id) REFERENCES proizvod(id)
);

INSERT INTO nabava (dobavljac, proizvod_id, kolicina, datum_nabave) VALUES
('Farmerova Farma', 1, 50.00, '2025-05-01 08:00:00'),
('Zeleni Bregovi', 5, 30.50, '2025-05-01 09:30:00'),
('Plodovi Doline', 10, 20.00, '2025-05-02 10:15:00'),
('Eko Farma Sunce', 15, 100.00, '2025-05-02 12:00:00'),
('Stara Livada', 20, 75.00, '2025-05-03 14:45:00'),
('Farma Vrh', 25, 40.00, '2025-05-14 04:00:00'),
('Dolina Mirisa', 30, 60.00, '2025-05-04 15:30:00'),
('Lovačka Farma', 35, 25.00, '2025-05-05 13:00:00'),
('Bistra Voda', 40, 80.00, '2025-05-05 09:00:00'),
('Zlatni Polje', 45, 55.00, '2025-05-06 16:20:00');

CREATE TABLE narudzba (
    id INT PRIMARY KEY AUTO_INCREMENT,
    kupac_id INT NOT NULL,
    datum_narudzbe DATETIME NOT NULL,
    ukupna_cijena DECIMAL(10,2),
    FOREIGN KEY (kupac_id) REFERENCES kupac(id)
);

INSERT INTO narudzba (kupac_id, datum_narudzbe, ukupna_cijena) VALUES
(1, '2025-05-01 10:15:00', 25.80),
(2, '2025-05-01 12:45:00', 47.20),
(3, '2025-05-02 09:30:00', 115.00),
(4, '2025-05-02 14:00:00', 33.40),
(5, '2025-05-03 11:20:00', 41.90),
(6, '2025-05-04 16:35:00', 22.50),
(7, '2025-05-05 13:15:00', 18.70),
(8, '2025-05-05 17:45:00', 29.60),
(9, '2025-05-06 10:00:00', 39.00),
(10, '2025-05-06 15:30:00', 44.30);

CREATE TABLE stavka_narudzbe (
    id INT PRIMARY KEY AUTO_INCREMENT,
    narudzba_id INT NOT NULL,
    proizvod_id INT NOT NULL,
    kolicina DECIMAL(10,2) NOT NULL,
    cijena_po_kg DECIMAL(10,2) NOT NULL,
    ukupna_cijena DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (narudzba_id) REFERENCES narudzba(id),
    FOREIGN KEY (proizvod_id) REFERENCES proizvod(id)
);

INSERT INTO stavka_narudzbe (narudzba_id, proizvod_id, kolicina, cijena_po_kg, ukupna_cijena) VALUES
-- Narudzba 1
(1, 1, 1.00, 13.80, 13.80),
(1, 20, 1.00, 12.00, 12.00),

-- Narudzba 2
(2, 15, 2.00, 9.30, 18.60),
(2, 22, 3.00, 9.20, 27.60),
(2, 33, 0.50, 2.00, 1.00), 

-- Narudzba 3
(3, 32, 1.00, 35.00, 35.00), 
(3, 52, 1.00, 22.40, 22.40), 
(3, 5, 1.30, 42.47, 55.21),  

-- Narudzba 4
(4, 14, 2.00, 10.00, 20.00),
(4, 17, 1.00, 13.40, 13.40),

-- Narudzba 5
(5, 21, 2.00, 9.20, 18.40),
(5, 25, 2.00, 11.75, 23.50),

-- Narudzba 6
(6, 34, 1.00, 12.50, 12.50),
(6, 20, 1.00, 10.00, 10.00),

-- Narudzba 7
(7, 28, 2.00, 6.80, 13.60),
(7, 31, 1.00, 5.10, 5.10),

-- Narudzba 8
(8, 18, 1.50, 11.50, 17.25),
(8, 8, 1.00, 12.35, 12.35),

-- Narudzba 9
(9, 13, 2.00, 9.50, 19.00),
(9, 3, 2.00, 10.00, 20.00),

-- Narudzba 10
(10, 7, 1.00, 16.50, 16.50),
(10, 43, 2.00, 13.90, 27.80);

CREATE TABLE transakcija (
    id INT PRIMARY KEY AUTO_INCREMENT,
    kupac_id INT NOT NULL,
    zaposlenik_id INT NOT NULL,
    proizvod_id INT NOT NULL,
    kolicina DECIMAL(10,2) NOT NULL,
    ukupna_cijena DECIMAL(10,2) NOT NULL,
    datum DATETIME NOT NULL,
    FOREIGN KEY (kupac_id) REFERENCES kupac(id),
    FOREIGN KEY (zaposlenik_id) REFERENCES zaposlenik(id),
    FOREIGN KEY (proizvod_id) REFERENCES proizvod(id)
);

INSERT INTO transakcija (kupac_id, zaposlenik_id, proizvod_id, kolicina, ukupna_cijena, datum) VALUES
-- 1. Ivan Horvat - Marko Vidović
(1, 1, 1, 1.00, 13.80, '2025-05-01 10:30:00'),

-- 2. Ana Kovač - Ivan Benković
(2, 2, 15, 2.00, 18.60, '2025-05-01 13:00:00'),

-- 3. Ivan Šimić - Mark Šestan 
(3, 5, 5, 2.00, 84.94, '2025-05-02 11:00:00'),

-- 4. Maja Novak - Petar Krešić
(4, 3, 10, 1.50, 20.85, '2025-05-02 14:30:00'),

-- 5. Luka Perić - Luka Dolenec
(5, 4, 20, 2.00, 24.00, '2025-05-03 16:45:00'),

-- 6. Ivana Radić - Josip Grgić
(6, 6, 27, 1.20, 9.00, '2025-05-04 17:20:00'),

-- 7. Petar Kralj - Davor Ledić
(7, 7, 34, 2.00, 25.00, '2025-05-05 18:10:00'),

-- 8. Jelena Šarić - Nikola Čolak
(8, 8, 12, 1.00, 18.60, '2025-05-05 17:50:00'),

-- 9. Tomislav Matić - Mario Šimunović
(9, 9, 23, 3.00, 9.93, '2025-05-06 12:05:00'),

-- 10. Sara Jurić - Andrija Zvijer
(10, 10, 40, 1.50, 13.05, '2025-05-06 16:15:00');

CREATE TABLE recenzija (
    id INT PRIMARY KEY AUTO_INCREMENT,
    kupac_id INT NOT NULL,
    proizvod_id INT NOT NULL,
    ocjena INT CHECK (ocjena BETWEEN 1 AND 5),
    komentar TEXT,
    datum DATETIME NOT NULL,
    FOREIGN KEY (kupac_id) REFERENCES kupac(id),
    FOREIGN KEY (proizvod_id) REFERENCES proizvod(id)
);

INSERT INTO recenzija (kupac_id, proizvod_id, ocjena, komentar, datum) VALUES
-- Ivan Horvat
(1, 1, 4, 'Meso je bilo jako dobro, ali bi volio da je pakiranje čvršće.', '2025-05-01 20:23:00'),

-- Ana Kovač
(2, 10, 2, 'Teletina je bila žilava i nije svježa kao inače.', '2025-05-02 18:45:00'),

-- Ivan Šimić 
(3, 5, 5, 'Savršeno meso! Prodavač je bio ljubazan i sve objasnio. Vraćam se sigurno!', '2024-05-05 19:12:00'),

-- Maja Novak
(4, 18, 3, 'Svinjski but je bio dobar, ali ne vrijedi cijene.', '2025-05-05 20:30:00'),

-- Luka Perić
(5, 27, 5, 'Ćevapčići su bili izvrsni za roštilj! Djeca oduševljena.', '2025-05-03 19:55:00');

ALTER TABLE proizvod
ADD CONSTRAINT chk_cijena_po_kg CHECK (cijena_po_kg >= 0),
ADD CONSTRAINT chk_kolicina CHECK (kolicina > 0);

ALTER TABLE stavka_narudzbe
ADD CONSTRAINT chk_ukupna_cijena CHECK (ukupna_cijena >= 0),
ADD CONSTRAINT chk_stavka_kolicina CHECK (kolicina > 0);

