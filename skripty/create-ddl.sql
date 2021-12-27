-- zalozeni tabulky METROPOLE
CREATE TABLE metropole (
    id_metropole    INTEGER             NOT NULL,
    nazev           VARCHAR2 (25 CHAR)  NOT NULL,
    stat            VARCHAR2 (25 CHAR)  NOT NULL
);

-- primarni klic pro tabulku METROPOLE
ALTER TABLE metropole ADD CONSTRAINT metropole_pk PRIMARY KEY (id_metropole);

-------------------------------------------------------------------------------
-- zalozeni tabulky PRODEJNA
CREATE TABLE prodejna (
    id_prodejna     INTEGER             NOT NULL,
    nazev           VARCHAR2 (50 CHAR)  NOT NULL,
    ulice           VARCHAR2 (50 CHAR)  NOT NULL,
    cislo_popisne   NUMBER (5)          NOT NULL,
    zip             NUMBER (5)          NOT NULL,
    id_metropole    INTEGER             NOT NULL
);

-- primarni klic pro tabulku PRODEJNA
ALTER TABLE prodejna ADD CONSTRAINT prodejna_pk PRIMARY KEY (id_prodejna);

-- definice ciziho klice tabulky PRODEJNA
ALTER TABLE prodejna ADD CONSTRAINT prodejna_metropole_fk
    FOREIGN KEY (id_metropole) REFERENCES metropole (id_metropole);

-------------------------------------------------------------------------------
-- zalozeni tabulky PRODEJCE
CREATE TABLE prodejce (
    id_prodejce     INTEGER             NOT NULL,
    jmeno           VARCHAR2 (25 CHAR)  NOT NULL,
    prijmeni        VARCHAR2 (25 CHAR)  NOT NULL,
    tel_cislo       VARCHAR2 (12 CHAR)  NOT NULL,
    email           VARCHAR2 (50 CHAR)  NOT NULL,
    id_prodejna     INTEGER             NOT NULL
);

-- primarni klic pro tabulku PRODEJCE
ALTER TABLE prodejce ADD CONSTRAINT prodejce_pk PRIMARY KEY (id_prodejce);

-- definice ciziho klice tabulky PRODEJCE
ALTER TABLE prodejce ADD CONSTRAINT prodejce_prodejna_fk
    FOREIGN KEY (id_prodejna) REFERENCES prodejna (id_prodejna);

-------------------------------------------------------------------------------
-- zalozeni tabulky KATEGORIE
CREATE TABLE kategorie (
    id_kategorie    INTEGER             NOT NULL,
    nazev           VARCHAR2 (25 CHAR)  NOT NULL
);

-- primarni klic pro tabulku KATEGORIE
ALTER TABLE kategorie ADD CONSTRAINT kategorie_pk PRIMARY KEY (id_kategorie);

-------------------------------------------------------------------------------
-- zalozeni tabulky PRODUKT
CREATE TABLE produkt (
    id_produkt      INTEGER             NOT NULL,
    nazev           VARCHAR2 (25 CHAR)  NOT NULL,
    popis           CLOB                NOT NULL,
    cena            NUMBER (6)          NOT NULL,
    id_kategorie    INTEGER             NOT NULL
);

-- primarni klic pro tabulku PRODUKT
ALTER TABLE produkt ADD CONSTRAINT produkt_pk PRIMARY KEY (id_produkt);

-- definice ciziho klice pro tabulku PRODUKT
ALTER TABLE produkt ADD CONSTRAINT produkt_kategorie_fk 
    FOREIGN KEY (id_kategorie) REFERENCES kategorie (id_kategorie);
    
------------------------------------------------------------------------------
-- zalozeni tabulky STAV
CREATE TABLE stav (
    id_stav     INTEGER             NOT NULL,
    nazev       VARCHAR2 (25 CHAR)  NOT NULL
);

--primarni klic pro tabulku STAV
ALTER TABLE stav ADD CONSTRAINT stav_pk PRIMARY KEY (id_stav);

------------------------------------------------------------------------------
-- zalozeni tabulky PRODUKT_NA_PRODEJNE
CREATE TABLE produkt_na_prodejne (
    id_produkt_na_prodejne  INTEGER             NOT NULL,
    seriove_cislo           VARCHAR2 (20 CHAR)  NOT NULL,
    id_prodejna             INTEGER             NOT NULL,
    id_produkt              INTEGER             NOT NULL,
    id_stav                 INTEGER             NOT NULL
);

-- primarni klic pro tabulku PRODUKT_NA_PRODJNE
ALTER TABLE produkt_na_prodejne ADD CONSTRAINT produkt_na_prodejne_pk 
    PRIMARY KEY (id_produkt_na_prodejne);

-- definice ciziho klice tabulky PRODUKT_NA_PRODEJNE
ALTER TABLE produkt_na_prodejne ADD CONSTRAINT produkt_na_prodejne_prodejna_fk 
    FOREIGN KEY (id_prodejna) REFERENCES prodejna (id_prodejna);
ALTER TABLE produkt_na_prodejne ADD CONSTRAINT produkt_na_prodejne_produkt_fk 
    FOREIGN KEY (id_produkt) REFERENCES produkt (id_produkt);
ALTER TABLE produkt_na_prodejne ADD CONSTRAINT produkt_na_prodejne_stav_fk
    FOREIGN KEY (id_stav) REFERENCES stav (id_stav);

-------------------------------------------------------------------------------
-- zalozeni tabulky ZAKAZNIK
CREATE TABLE zakaznik (
    id_zakaznik     INTEGER             NOT NULL,
    jmeno           VARCHAR2 (25 CHAR)  NOT NULL,
    prijmeni        VARCHAR2 (25 CHAR)  NOT NULL,
    tel_cislo       VARCHAR2 (12 CHAR)  NOT NULL,
    email           VARCHAR2 (50 CHAR)  NOT NULL
);

-- primarni klic pro tabulku ZAKAZNIK
ALTER TABLE zakaznik ADD CONSTRAINT zakaznik_pk PRIMARY KEY (id_zakaznik);

-------------------------------------------------------------------------------
-- zalozeni tabulky FAKTURA
CREATE TABLE faktura (
    id_faktura       INTEGER    NOT NULL,
    datum_vystaveni  DATE       NOT NULL,
    datum_splatnosti DATE       NOT NULL,
    id_prodejce      INTEGER    NOT NULL,
    id_zakaznik      INTEGER    NOT NULL
);

-- primarni klic pro tabulku FAKTURA
ALTER TABLE faktura ADD CONSTRAINT faktura_pk PRIMARY KEY (id_faktura);

-- definice ciziho klice tabulky FAKTURA
ALTER TABLE faktura ADD CONSTRAINT faktura_prodejce_fk 
    FOREIGN KEY (id_prodejce) REFERENCES prodejce (id_prodejce);
ALTER TABLE faktura ADD CONSTRAINT faktura_zakaznik_fk
    FOREIGN KEY (id_zakaznik) REFERENCES zakaznik (id_zakaznik);
    
-------------------------------------------------------------------------------
-- zalozeni tabulky POLOZKA
CREATE TABLE polozka (
    id_faktura              INTEGER     NOT NULL,
    id_produkt_na_prodejne  INTEGER     NOT NULL
);

-- primarni klic pro tabulku POLOZKA
ALTER TABLE polozka ADD CONSTRAINT polozka_pk 
    PRIMARY KEY (id_faktura, id_produkt_na_prodejne);

-- definice ciziho klice pro tabulku POLOZKA
ALTER TABLE polozka ADD CONSTRAINT polozka_faktura_fk 
    FOREIGN KEY (id_faktura) REFERENCES faktura (id_faktura);
ALTER TABLE polozka ADD CONSTRAINT polozka_produkt_na_prodejne_fk 
    FOREIGN KEY (id_produkt_na_prodejne) 
        REFERENCES produkt_na_prodejne (id_produkt_na_prodejne);


