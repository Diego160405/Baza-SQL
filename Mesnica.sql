CREATE DATABASE IF NOT EXISTS mesnica;
USE mesnica;

-- Tablica vrsta mesa
CREATE TABLE vrste_mesa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL
);

INSERT INTO vrste_mesa (naziv) VALUES
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

-- Tablica junece meso
CREATE TABLE junece_meso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 1,
    CONSTRAINT fk_junece_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO junece_meso (naziv, tezina, cijena_po_kg) VALUES 
('Juneći but', 1, 13.80),
('Juneća plećka', 1, 12.30),
('Juneća prsa', 1, 7.80),
('Juneće mljeveno meso', 1, 12.50),
('Juneći biftek', 1, 42.47),
('Juneći ramstek', 1, 17.25),
('Juneći t-bon svježi', 1, 22.56),
('Juneći rib-eye mokro odležani', 1, 16.59),
('Juneći rib-eye suho odležani', 1, 29.20);

-- Tablica telece meso
CREATE TABLE telece_meso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 2,
    CONSTRAINT fk_telece_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO telece_meso (naziv, tezina, cijena_po_kg) VALUES
('Teleća slabina', 1, 13.90),
('Teleća prsa', 1, 12.60),
('Teleća but', 1, 18.60),
('Teleća rolada', 1, 15.20);

-- Tablica svinjsko meso
CREATE TABLE svinjsko_meso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 3,
    CONSTRAINT fk_svinjsko_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO svinjsko_meso (naziv, tezina, cijena_po_kg) VALUES
('', 1, ),
('', 1, ),
('', 1, ),
('', 1, ),
('', 1, ); 


CREATE TABLE purece_i_pilece_meso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 4,
    CONSTRAINT fk_pilece_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO purece_i_pilece_meso (naziv, tezina, cijena_po_kg) VALUES
('Pureća prsa', 1, 10.40),
('Pileći file', 1, 9.20),
('Pileći gril', 1, 3.32),
('Pileći batak', 1, 4.31),
('Pileći zabatak', 1, 4.31); 


CREATE TABLE svjeze_mesne_preradevine (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 5,
    CONSTRAINT fk_svjeze_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO svjeze_mesne_preradevine (naziv, tezina, cijena_po_kg) VALUES
('Miješano mljeveno', 1, 10.00),
('Pljeskavica gurmanska', 1, 12.10),
('Istarska kobasica', 1, 7.50),
('Polpetine', 1, 12.50),
('Roštiljske kobasice', 1, 7.50),
('Ćevapčići juneći', 1, 10.20),
('Pljeskavice juneće', 1, 10.20),
('Burgeri', 1, 10.90),
('Svinjska rebra', 1, 9.30);


CREATE TABLE tartar (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 6,
    CONSTRAINT fk_tartar_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO tartar (naziv, tezina, cijena_po_kg) VALUES 
('Tartar', 1, 34.00),
('Tartar sa tartufima', 1, 35.00);


CREATE TABLE suho_dimljeno_meso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 7,
    CONSTRAINT fk_suho_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO suho_dimljeno_meso (naziv, tezina, cijena_po_kg) VALUES
('Suhe kosti', 1, 3.90),
('Suhi prsni vršci', 1, 5.90),
('Suhe koljenice', 1, 4.90),
('Hamburger pečeni', 1, 8.40),
('Dimljena vratina', 1, 8.90),
('Lax kare', 1, 9.20);

CREATE TABLE kobasice (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 8,
    CONSTRAINT fk_kobasice_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO kobasice (naziv, tezina, cijena_po_kg) VALUES
('Pučka kobasica', 1, 4.90),
('Kobasica za kuhanje', 1, 7.40),
('Hrenovke', 1, 9.30),
('Domaća istarska kobasica', 1, 9.70);


CREATE TABLE salame_polutrajne (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 9,
    CONSTRAINT fk_salame_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO salame_polutrajne (naziv, tezina, cijena_po_kg) VALUES
('Šunka u ovitku', 1, 7.60),
('Salzburška šunka', 1, 9.20),
('kuhani pršut', 1, 9.20);

CREATE TABLE pest (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 10,
    CONSTRAINT fk_pest_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO pest (naziv, tezina, cijena_po_kg) VALUES
('Domaći pešt', 1, 12.00);


CREATE TABLE trajni_proizvodi (
    id INT PRIMARY KEY AUTO_INCREMENT,
    naziv VARCHAR(100) NOT NULL,
    cijena_po_kg DECIMAL(10,2),
    tezina DECIMAL(10,2),
    vrsta_mesa_id INT NOT NULL DEFAULT 11,
    CONSTRAINT fk_trajni_vrsta FOREIGN KEY (vrsta_mesa_id) REFERENCES vrste_mesa(id)
);

INSERT INTO trajni_proizvodi (naziv, tezina, cijena_po_kg) VALUES
('Suha istarska kobasica', 1, 18.00),
('kosnica suha salama', 1, 20.80),
('Suho ombolo', 1, 22.40),
('Panceta', 1, 19.00);

CREATE TABLE kupac (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ime VARCHAR(100) NOT NULL,
    prezime VARCHAR(100) NOT NULL
);

CREATE TABLE transakcija (
    id INT PRIMARY KEY AUTO_INCREMENT,
    kupac_id INT NOT NULL,
    vrsta_mesa_id INT NOT NULL,
    proizvod_id INT NOT
