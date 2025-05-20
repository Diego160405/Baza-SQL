CREATE DATABASE IF NOT EXISTS mesnica;
USE mesnica;

CREATE TABLE  vrste_mesa (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL
);
INSERT INTO vrste_mesa (Naziv) VALUES
('Juneće meso'),
('Telece meso'),
('Svinjsko meso'),
('Purece i pilece meso'),
('Svjeze mesne preradevine'),
('Tartar'),
('Suseno dimljeno meso'),
('Kobasice'),
('Salame polutrajne'),
('Pest'),
('Trajni proizvodi');

CREATE TABLE junece_meso (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
     Tezina DECIMAL(10,2)
);
INSERT INTO junece_meso (Naziv, Tezina, Cjena_po_kg) VALUES 
('Juneći but', 1, 13.80),
('Juneća plećka', 1, 12.30),
('Juneća prsa', 1, 7.80),
('Juneće mljeveno meso', 1, 12.50),
('Juneći biftek', 1, 42.47),
('Juneći ramstek', 1, 17.25),
('Juneći t-bon svježi ', 1, 22.56),
('Juneći rib-eye mokro odležani', 1, 16.59),
('Juneći rib-eye suho odležani', 1, 29.20);

CREATE TABLE telece_meso (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL(10,2)
);


INSERT INTO telece_meso (Naziv, Tezina, Cjena_po_kg) VALUES
('Teleća slabina', 1, 13.90),
('Teleća prsa', 1, 12.60),
('Teleća but', 1, 18.60),
('Teleća rolada', 1, 15.20);

CREATE TABLE purece_i_pilece_meso (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL (10,2)
);


INSERT INTO purece_i_pilece_meso (Naziv, Tezina, Cjena_po_kg) VALUES
('Pureća prsa', 1, 10.40),
('Pileći file', 1, 9.20),
('Pileći gril', 1, 3.32),
('Pileći batak', 1, 4.31),
('Pileći zabatak', 1, 4.31); 

CREATE TABLE tartar (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL (10,2)
);
INSERT INTO tartar (Naziv, Tezina, Cjena_po_kg) VALUES 
('Tartar', 1, 34.00),
('Tartar sa tartufima', 1, 35.00);

CREATE TABLE svjeze_mesne_preradevine (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL(10,2)
);


INSERT INTO svjeze_mesne_preradevine (Naziv, Tezina, Cjena_po_kg) VALUES
('Miješano mljeveno', 1, 10.00),
('Pljeskavica gurmanska', 1, 12.10),
('Istarska kobasica', 1, 7.50),
('Polpetine', 1, 12.50),
('Roštiljske kobasice', 1, 7.50),
('Ćevapčići juneći', 1, 10.20),
('Pljeskavice juneće', 1, 10.20),
('Burgeri', 1, 10.90),
('Svinjska rebra', 1, 9.30);

CREATE TABLE suho_dimljeno_meso (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL(10,2)
);


INSERT INTO suho_dimljeno_meso (Naziv, Tezina, Cjena_po_kg) VALUES
('Suhe kosti', 1, 3.90),
('Suhi prsni vršci', 1, 5.90),
('Suhe koljenice', 1, 4.90),
('Hamburger pečeni', 1, 8.40),
('Dimljena vratina', 1, 8.90),
('Lax kare', 1, 9.20);

CREATE TABLE kobasice (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL(10,2)
);


INSERT INTO kobasice (Naziv, Tezina, Cjena_po_kg) VALUES
('Pučka kobasica', 1, 4.90),
('Kobasica za kuhanje', 1, 7.40),
('Hrenovke', 1, 9.30),
('Domaća istarska kobasica', 1, 9.70);


CREATE TABLE salame_polutrajne (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL(10,2)
);


INSERT INTO salame_polutrajne (Naziv, Tezina, Cjena_po_kg) VALUES
('Šunka u ovitku', 1, 7.60),
('Salzburška šunka', 1, 9.20),
('kuhani pršut', 1, 9.20);


CREATE TABLE pest (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL(10,2)
);


INSERT INTO pest (Naziv, Tezina, Cjena_po_kg) VALUES
('Domaći pešt', 1, 12.00);



CREATE TABLE trajni_proizvodi (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Naziv VARCHAR(100) NOT NULL,
    Cjena_po_kg DECIMAL(10,2),
    Tezina DECIMAL(10,2)
);


INSERT INTO trajni_proizvodi (Naziv, Tezina, Cjena_po_kg) VALUES
('Suha istarska kobasica', 1, 18.00),
('kosnica suha salama', 1, 20.80),
('Suho ombolo', 1, 22.40),
('Panceta', 1, 19.00);